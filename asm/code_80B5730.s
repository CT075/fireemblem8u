	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	THUMB_FUNC_START sub_80B5730
sub_80B5730: @ 0x080B5730
	push {lr}
	ldr r2, _080B5758  @ gMPlayTable
	ldr r0, _080B575C  @ gSongTable
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r1, _080B5760  @ 0x8000FFFF
	ands r0, r1
	cmp r0, #0
	beq _080B5764
	movs r0, #1
	b _080B5766
	.align 2, 0
_080B5758: .4byte gMPlayTable
_080B575C: .4byte gSongTable
_080B5760: .4byte 0x8000FFFF
_080B5764:
	movs r0, #0
_080B5766:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B5730

	THUMB_FUNC_START sub_80B576C
sub_80B576C: @ 0x080B576C
	push {lr}
	ldr r0, _080B5784  @ gActiveUnit
	ldr r0, [r0]
	bl PrepareArena
	ldr r0, _080B5788  @ gUnknown_08A394DC
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_080B5784: .4byte gActiveUnit
_080B5788: .4byte gUnknown_08A394DC

	THUMB_FUNC_END sub_80B576C

	THUMB_FUNC_START sub_80B578C
sub_80B578C: @ 0x080B578C
	push {lr}
	ldr r0, _080B579C  @ gUnknown_08A3963C
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_080B579C: .4byte gUnknown_08A3963C

	THUMB_FUNC_END sub_80B578C

	THUMB_FUNC_START sub_80B57A0
sub_80B57A0: @ 0x080B57A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080B5948  @ gProcScr_MoveUnit
	ldr r1, _080B594C  @ MU_Hide
	bl Proc_ForEach
	bl sub_80B52CC
	ldr r7, _080B5950  @ gLCDControlBuffer
	ldrb r2, [r7, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r7, #0xc]
	ldrb r2, [r7, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #2
	mov r8, r2
	mov r3, r8
	orrs r0, r3
	strb r0, [r7, #0x10]
	ldrb r0, [r7, #0x14]
	ands r1, r0
	strb r1, [r7, #0x14]
	ldrb r0, [r7, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #2
	movs r2, #0
	bl sub_800680C
	bl ResetFaces
	movs r0, #1
	str r0, [sp]
	movs r0, #0x67
	movs r1, #0x20
	movs r2, #8
	movs r3, #3
	bl sub_8007938
	ldr r0, _080B5954  @ gUnknown_089AD934
	ldr r5, _080B5958  @ gUnknown_02020188
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r4, _080B595C  @ gBG1TilemapBuffer
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r4, #0
	adds r1, r5, #0
	bl CallARM_FillTileRect
	movs r5, #0x80
	lsls r5, r5, #2
	adds r4, r4, r5
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0xc
	movs r3, #0
	bl TileMap_FillRect
	movs r0, #2
	bl BG_EnableSyncByMask
	adds r0, r6, #0
	bl StartUiGoldBox
	ldrb r0, [r7, #1]
	movs r6, #0x20
	orrs r0, r6
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7, #1]
	movs r0, #0x34
	adds r0, r0, r7
	mov r9, r0
	ldrb r4, [r0]
	movs r5, #1
	orrs r4, r5
	mov r1, r8
	orrs r4, r1
	movs r0, #4
	orrs r4, r0
	movs r3, #8
	orrs r4, r3
	movs r0, #0x10
	orrs r4, r0
	movs r2, #0x35
	adds r2, r2, r7
	mov sl, r2
	ldrb r2, [r2]
	orrs r2, r5
	orrs r2, r1
	subs r6, #0x25
	ands r2, r6
	orrs r2, r3
	orrs r2, r0
	movs r1, #0x36
	adds r1, r1, r7
	mov ip, r1
	ldrb r1, [r1]
	orrs r1, r5
	mov r5, r8
	orrs r1, r5
	ands r1, r6
	orrs r1, r3
	orrs r1, r0
	adds r3, r7, #0
	adds r3, #0x2d
	movs r6, #0
	movs r0, #0x58
	strb r0, [r3]
	adds r3, #4
	movs r0, #0x48
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x2c
	movs r5, #0xf0
	strb r5, [r0]
	subs r3, #1
	movs r0, #0x98
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x2f
	strb r6, [r0]
	adds r3, #3
	movs r0, #8
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x2e
	strb r5, [r0]
	subs r3, #1
	movs r0, #0x38
	strb r0, [r3]
	subs r0, #0x59
	ands r4, r0
	mov r3, r9
	strb r4, [r3]
	movs r5, #0x20
	orrs r2, r5
	mov r3, sl
	strb r2, [r3]
	ands r1, r0
	mov r5, ip
	strb r1, [r5]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	str r6, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetA
	str r6, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	ldr r4, _080B5960  @ gUnknown_089A8F94
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B5964  @ gBG3TilemapBuffer
	ldr r1, _080B5968  @ gUnknown_089ABB70
	movs r2, #0xc0
	lsls r2, r2, #8
	bl CallARM_FillTileRect
	ldr r0, _080B596C  @ gUnknown_089AC024
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x80
	bl CopyToPaletteBuffer
	movs r0, #8
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5948: .4byte gProcScr_MoveUnit
_080B594C: .4byte MU_Hide
_080B5950: .4byte gLCDControlBuffer
_080B5954: .4byte gUnknown_089AD934
_080B5958: .4byte gUnknown_02020188
_080B595C: .4byte gBG1TilemapBuffer
_080B5960: .4byte gUnknown_089A8F94
_080B5964: .4byte gBG3TilemapBuffer
_080B5968: .4byte gUnknown_089ABB70
_080B596C: .4byte gUnknown_089AC024

	THUMB_FUNC_END sub_80B57A0

	THUMB_FUNC_START sub_80B5970
sub_80B5970: @ 0x080B5970
	push {lr}
	ldr r0, _080B598C  @ gUnknown_0203A8F0
	ldr r0, [r0]
	ldr r1, _080B5990  @ gBattleActor
	bl UpdateUnitFromBattle
	ldr r0, _080B5994  @ gActiveUnit
	ldr r0, [r0]
	bl MU_Create
	bl MU_SetDefaultFacing_Auto
	pop {r0}
	bx r0
	.align 2, 0
_080B598C: .4byte gUnknown_0203A8F0
_080B5990: .4byte gBattleActor
_080B5994: .4byte gActiveUnit

	THUMB_FUNC_END sub_80B5970

	THUMB_FUNC_START sub_80B5998
sub_80B5998: @ 0x080B5998
	push {lr}
	adds r2, r0, #0
	ldr r0, _080B59B8  @ gUnknown_0203A8F0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	lsrs r0, r0, #0x11
	movs r1, #7
	ands r0, r1
	cmp r0, #4
	bhi _080B59BC
	movs r0, #0x8d
	lsls r0, r0, #4
	adds r1, r2, #0
	bl sub_80B5C04
	b _080B59C4
	.align 2, 0
_080B59B8: .4byte gUnknown_0203A8F0
_080B59BC:
	ldr r0, _080B59C8  @ 0x000008D1
	adds r1, r2, #0
	bl sub_80B5C04
_080B59C4:
	pop {r0}
	bx r0
	.align 2, 0
_080B59C8: .4byte 0x000008D1

	THUMB_FUNC_END sub_80B5998

	THUMB_FUNC_START sub_80B59CC
sub_80B59CC: @ 0x080B59CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8031ECC
	bl sub_8008A18
	ldr r0, _080B59E8  @ 0x000008D2
	adds r1, r4, #0
	bl sub_80B5C04
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B59E8: .4byte 0x000008D2

	THUMB_FUNC_END sub_80B59CC

	THUMB_FUNC_START sub_80B59EC
sub_80B59EC: @ 0x080B59EC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetDialoguePromptResult
	cmp r0, #1
	beq _080B5A10
	ldr r0, _080B5A0C  @ 0x000008D4
	adds r1, r5, #0
	bl sub_80B5C04
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
	b _080B5A2E
	.align 2, 0
_080B5A0C: .4byte 0x000008D4
_080B5A10:
	bl sub_8031ECC
	adds r4, r0, #0
	bl GetPartyGoldAmount
	cmp r4, r0
	ble _080B5A2E
	ldr r0, _080B5A34  @ 0x000008DA
	adds r1, r5, #0
	bl sub_80B5C04
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
_080B5A2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5A34: .4byte 0x000008DA

	THUMB_FUNC_END sub_80B59EC

	THUMB_FUNC_START sub_80B5A38
sub_80B5A38: @ 0x080B5A38
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetPartyGoldAmount
	adds r4, r0, #0
	bl sub_8031ECC
	subs r4, r4, r0
	adds r0, r4, #0
	bl SetPartyGoldAmount
	ldr r0, _080B5A74  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B5A60
	movs r0, #0xb9
	bl m4aSongNumStart
_080B5A60:
	ldr r0, _080B5A78  @ gUnknown_02022E5E
	bl DisplayGoldBoxText
	adds r0, r5, #0
	bl sub_80B5C48
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5A74: .4byte gRAMChapterData
_080B5A78: .4byte gUnknown_02022E5E

	THUMB_FUNC_END sub_80B5A38

	THUMB_FUNC_START sub_80B5A7C
sub_80B5A7C: @ 0x080B5A7C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B5A8C  @ 0x000008D5
	bl sub_80B5C04
	pop {r0}
	bx r0
	.align 2, 0
_080B5A8C: .4byte 0x000008D5

	THUMB_FUNC_END sub_80B5A7C

	THUMB_FUNC_START sub_80B5A90
sub_80B5A90: @ 0x080B5A90
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B5AA0  @ 0x000008D3
	bl sub_80B5C04
	pop {r0}
	bx r0
	.align 2, 0
_080B5AA0: .4byte 0x000008D3

	THUMB_FUNC_END sub_80B5A90

	THUMB_FUNC_START sub_80B5AA4
sub_80B5AA4: @ 0x080B5AA4
	push {lr}
	movs r0, #1
	negs r0, r0
	bl Sound_FadeOutBGM
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5AA4

	THUMB_FUNC_START sub_80B5AB4
sub_80B5AB4: @ 0x080B5AB4
	push {r4, r5, r6, lr}
	movs r1, #7
	bl Proc_SetMark
	bl ResetDialogueScreen
	ldr r0, _080B5AF4  @ gProcScr_GoldBox
	bl Proc_EndEach
	ldr r5, _080B5AF8  @ gActionData
	movs r6, #0
	movs r0, #0x19
	strb r0, [r5, #0x11]
	ldr r4, _080B5AFC  @ gActiveUnit
	ldr r0, [r4]
	ldr r1, [r0, #0xc]
	movs r2, #0x40
	orrs r1, r2
	str r1, [r0, #0xc]
	bl sub_80A44C8
	bl MU_EndAll
	strb r6, [r5, #0x15]
	ldr r0, [r4]
	bl BattleGenerateArena
	bl BeginBattleAnimations
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B5AF4: .4byte gProcScr_GoldBox
_080B5AF8: .4byte gActionData
_080B5AFC: .4byte gActiveUnit

	THUMB_FUNC_END sub_80B5AB4

	THUMB_FUNC_START sub_80B5B00
sub_80B5B00: @ 0x080B5B00
	push {lr}
	bl sub_8014944
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5B00

	THUMB_FUNC_START sub_80B5B0C
sub_80B5B0C: @ 0x080B5B0C
	push {lr}
	bl sub_80B57A0
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5B0C

	THUMB_FUNC_START sub_80B5B18
sub_80B5B18: @ 0x080B5B18
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetPartyGoldAmount
	adds r4, r0, #0
	bl sub_8031ED8
	cmp r0, #2
	beq _080B5B5C
	cmp r0, #2
	bgt _080B5B34
	cmp r0, #1
	beq _080B5B3E
	b _080B5B90
_080B5B34:
	cmp r0, #3
	beq _080B5B6C
	cmp r0, #4
	beq _080B5B88
	b _080B5B90
_080B5B3E:
	bl sub_8031ECC
	lsls r0, r0, #1
	bl sub_8008A18
	ldr r0, _080B5B58  @ 0x000008D6
	adds r1, r5, #0
	bl sub_80B5C04
	bl sub_8031ECC
	lsls r0, r0, #1
	b _080B5B78
	.align 2, 0
_080B5B58: .4byte 0x000008D6
_080B5B5C:
	ldr r0, _080B5B68  @ 0x000008D7
	adds r1, r5, #0
	bl sub_80B5C04
	b _080B5B90
	.align 2, 0
_080B5B68: .4byte 0x000008D7
_080B5B6C:
	ldr r0, _080B5B84  @ 0x000008D9
	adds r1, r5, #0
	bl sub_80B5C04
	bl sub_8031ECC
_080B5B78:
	adds r4, r4, r0
	adds r0, r4, #0
	bl SetPartyGoldAmount
	b _080B5B90
	.align 2, 0
_080B5B84: .4byte 0x000008D9
_080B5B88:
	ldr r0, _080B5B98  @ 0x000008D8
	adds r1, r5, #0
	bl sub_80B5C04
_080B5B90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5B98: .4byte 0x000008D8

	THUMB_FUNC_END sub_80B5B18

	THUMB_FUNC_START sub_80B5B9C
sub_80B5B9C: @ 0x080B5B9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8031ED8
	cmp r0, #2
	beq _080B5BD6
	cmp r0, #2
	bgt _080B5BB2
	cmp r0, #1
	beq _080B5BB6
	b _080B5BD6
_080B5BB2:
	cmp r0, #3
	bne _080B5BD6
_080B5BB6:
	ldr r0, _080B5BDC  @ gUnknown_02022E5E
	bl DisplayGoldBoxText
	ldr r0, _080B5BE0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B5BCE
	movs r0, #0xb9
	bl m4aSongNumStart
_080B5BCE:
	adds r0, r4, #0
	movs r1, #0x3c
	bl NewBlockingTimer
_080B5BD6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5BDC: .4byte gUnknown_02022E5E
_080B5BE0: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B5B9C

	THUMB_FUNC_START sub_80B5BE4
sub_80B5BE4: @ 0x080B5BE4
	push {lr}
	ldr r0, _080B5BF8  @ gProcScr_GoldBox
	bl Proc_EndEach
	ldr r0, _080B5BFC  @ gProcScr_MoveUnit
	ldr r1, _080B5C00  @ MU_Show
	bl Proc_ForEach
	pop {r0}
	bx r0
	.align 2, 0
_080B5BF8: .4byte gProcScr_GoldBox
_080B5BFC: .4byte gProcScr_MoveUnit
_080B5C00: .4byte MU_Show

	THUMB_FUNC_END sub_80B5BE4

	THUMB_FUNC_START sub_80B5C04
sub_80B5C04: @ 0x080B5C04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_8006978
	bl sub_8008250
	adds r0, r4, #0
	bl GetStringFromIndex
	adds r2, r0, #0
	movs r0, #8
	movs r1, #2
	adds r3, r5, #0
	bl sub_800698C
	movs r0, #0
	bl sub_8006B10
	movs r0, #1
	bl sub_8006AA8
	movs r0, #2
	bl sub_8006AA8
	movs r0, #4
	bl sub_8006AA8
	movs r0, #1
	bl sub_8007838
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5C04

	THUMB_FUNC_START sub_80B5C48
sub_80B5C48: @ 0x080B5C48
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #9
	movs r2, #0x10
	movs r3, #6
	bl DrawUiFrame2
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	ldr r4, _080B5CD4  @ gUnknown_02022F38
	ldr r0, _080B5CD8  @ gMid_Lv
	ldr r0, [r0]
	bl GetStringFromIndex
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_801443C
	adds r0, r4, #0
	adds r0, #8
	ldr r5, _080B5CDC  @ gUnknown_0203A8F0
	ldr r1, [r5, #4]
	movs r2, #8
	ldrsb r2, [r1, r2]
	movs r1, #2
	bl sub_8004B88
	adds r6, r4, #0
	adds r6, #0x80
	ldr r0, [r5, #4]
	ldr r0, [r0]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_801443C
	subs r6, #0x72
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r2, r0, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_801443C
	adds r4, #0x8e
	ldrh r0, [r5, #0x1c]
	bl GetItemName
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_801443C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B5CD4: .4byte gUnknown_02022F38
_080B5CD8: .4byte gMid_Lv
_080B5CDC: .4byte gUnknown_0203A8F0

	THUMB_FUNC_END sub_80B5C48

	THUMB_FUNC_START sub_80B5CE0
sub_80B5CE0: @ 0x080B5CE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8031ED8
	cmp r0, #1
	bne _080B5D08
	ldr r0, _080B5D04  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080B5D22
	movs r0, #0x3a
	movs r1, #0
	bl Sound_PlaySong8002448
	b _080B5D22
	.align 2, 0
_080B5D04: .4byte gRAMChapterData
_080B5D08:
	ldr r0, _080B5D28  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080B5D1C
	movs r0, #0x38
	movs r1, #0
	bl Sound_PlaySong8002448
_080B5D1C:
	adds r0, r4, #0
	bl Proc_End
_080B5D22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5D28: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B5CE0

	THUMB_FUNC_START sub_80B5D2C
sub_80B5D2C: @ 0x080B5D2C
	push {lr}
	movs r0, #0x38
	movs r1, #0
	movs r2, #0
	bl Sound_PlaySong80024E4
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5D2C

	THUMB_FUNC_START sub_80B5D3C
sub_80B5D3C: @ 0x080B5D3C
	push {lr}
	bl CallSuspendPromptEvent
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5D3C

	THUMB_FUNC_START sub_80B5D48
sub_80B5D48: @ 0x080B5D48
	push {lr}
	bl GetDialoguePromptResult
	cmp r0, #1
	bne _080B5D56
	movs r0, #1
	b _080B5D58
_080B5D56:
	movs r0, #0
_080B5D58:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B5D48

	THUMB_FUNC_START sub_80B5D5C
sub_80B5D5C: @ 0x080B5D5C
	push {lr}
	ldr r1, _080B5D70  @ gActionData
	movs r0, #0
	strb r0, [r1, #0x16]
	movs r0, #3
	bl SaveSuspendedGame
	pop {r0}
	bx r0
	.align 2, 0
_080B5D70: .4byte gActionData

	THUMB_FUNC_END sub_80B5D5C

	THUMB_FUNC_START sub_80B5D74
sub_80B5D74: @ 0x080B5D74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl GetGameTotalTurnCount2
	mov r9, r0
	movs r1, #0
	add r0, sp, #0xc
_080B5D8A:
	str r1, [r0]
	subs r0, #4
	cmp r0, sp
	bge _080B5D8A
	bl GetNextChapterWinDataEntryIndex
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bge _080B5E42
	ldr r6, _080B5E68  @ gChapterDataTable
	movs r7, #0x94
	movs r0, #0x2d
	adds r0, r0, r6
	mov sl, r0
_080B5DA8:
	adds r0, r5, #0
	bl GetChapterWinDataEntry
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	bl DoesThisChapterCount
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B5E3C
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x39
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x35
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #4]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x31
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #8]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	add r0, sl
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_080B5E3C:
	adds r5, #1
	cmp r5, r8
	blt _080B5DA8
_080B5E42:
	movs r5, #0
	mov r1, sp
_080B5E46:
	ldr r0, [r1]
	cmp r9, r0
	bgt _080B5E54
	adds r1, #4
	adds r5, #1
	cmp r5, #3
	ble _080B5E46
_080B5E54:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B5E68: .4byte gChapterDataTable

	THUMB_FUNC_END sub_80B5D74

	THUMB_FUNC_START sub_80B5E6C
sub_80B5E6C: @ 0x080B5E6C
	push {lr}
	sub sp, #4
	ldr r1, _080B5EA0  @ gUnknown_08205F1C
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_80B622C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
_080B5E84:
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge _080B5E98
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080B5E84
_080B5E98:
	adds r0, r1, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080B5EA0: .4byte gUnknown_08205F1C

	THUMB_FUNC_END sub_80B5E6C

	THUMB_FUNC_START sub_80B5EA4
sub_80B5EA4: @ 0x080B5EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_80A49A4
	mov r9, r0
	movs r1, #0
	add r0, sp, #0xc
_080B5EBA:
	str r1, [r0]
	subs r0, #4
	cmp r0, sp
	bge _080B5EBA
	bl GetNextChapterWinDataEntryIndex
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bge _080B5F72
	ldr r6, _080B5F98  @ gChapterDataTable
	movs r7, #0x94
	movs r0, #0x3e
	adds r0, r0, r6
	mov sl, r0
_080B5ED8:
	adds r0, r5, #0
	bl GetChapterWinDataEntry
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	bl DoesThisChapterCount
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B5F6C
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x56
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x4e
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #4]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #8]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r7, r1
	adds r0, r0, r1
	add r0, sl
	ldrh r1, [r0]
	ldr r0, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_080B5F6C:
	adds r5, #1
	cmp r5, r8
	blt _080B5ED8
_080B5F72:
	movs r5, #0
	mov r1, sp
_080B5F76:
	ldr r0, [r1]
	cmp r9, r0
	blt _080B5F84
	adds r1, #4
	adds r5, #1
	cmp r5, #3
	ble _080B5F76
_080B5F84:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B5F98: .4byte gChapterDataTable

	THUMB_FUNC_END sub_80B5EA4

	THUMB_FUNC_START sub_80B5F9C
sub_80B5F9C: @ 0x080B5F9C
	push {lr}
	sub sp, #4
	ldr r1, _080B5FCC  @ gUnknown_08205F20
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_80B6264
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
_080B5FB4:
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r2, r0
	blt _080B5FC4
	adds r1, #1
	cmp r1, #3
	ble _080B5FB4
_080B5FC4:
	adds r0, r1, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080B5FCC: .4byte gUnknown_08205F20

	THUMB_FUNC_END sub_80B5F9C

	THUMB_FUNC_START sub_80B5FD0
sub_80B5FD0: @ 0x080B5FD0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	bl GetPartyTotalGoldValue
	mov r8, r0
	movs r6, #0
	bl GetNextChapterWinDataEntryIndex
	adds r7, r0, #0
	movs r5, #0
	cmp r6, r7
	bge _080B6028
	ldr r0, _080B603C  @ gChapterDataTable[0].goldForFundsRankInEliwoodStoryNormal
	mov r9, r0
_080B5FF0:
	adds r0, r5, #0
	bl GetChapterWinDataEntry
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	bl DoesThisChapterCount
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B6022
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	movs r2, #0x94
	muls r1, r2, r1
	adds r0, r0, r1
	add r0, r9
	ldr r0, [r0]
	adds r6, r6, r0
_080B6022:
	adds r5, #1
	cmp r5, r7
	blt _080B5FF0
_080B6028:
	movs r0, #0x64
	mov r1, r8
	muls r1, r0, r1
	lsls r0, r6, #2
	adds r2, r0, r6
	lsls r0, r2, #4
	cmp r1, r0
	bcc _080B6040
	movs r0, #4
	b _080B6064
	.align 2, 0
_080B603C: .4byte gChapterDataTable+0x60
_080B6040:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	cmp r1, r0
	bcc _080B604E
	movs r0, #3
	b _080B6064
_080B604E:
	lsls r0, r2, #3
	cmp r1, r0
	bcc _080B6058
	movs r0, #2
	b _080B6064
_080B6058:
	lsls r0, r2, #2
	cmp r1, r0
	bcs _080B6062
	movs r0, #0
	b _080B6064
_080B6062:
	movs r0, #1
_080B6064:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B5FD0

	THUMB_FUNC_START sub_80B6070
sub_80B6070: @ 0x080B6070
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	ldr r4, _080B60C0  @ gUnknown_08A3CB04
	adds r0, r0, r4
	ldrb r6, [r0]
	adds r0, r4, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0xa
	adds r2, r2, r1
	adds r0, r6, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	adds r1, #5
	adds r3, r3, r1
	lsrs r0, r0, #0x10
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	adds r4, #0x14
	adds r5, r5, r4
	lsrs r0, r0, #0x10
	ldrb r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0
	ldr r1, _080B60C4  @ gUnknown_08A3CB1E
_080B60AC:
	ldrh r2, [r1]
	cmp r6, r2
	bcc _080B60BA
	adds r1, #2
	adds r0, #1
	cmp r0, #4
	ble _080B60AC
_080B60BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B60C0: .4byte gUnknown_08A3CB04
_080B60C4: .4byte gUnknown_08A3CB1E

	THUMB_FUNC_END sub_80B6070

	THUMB_FUNC_START sub_80B60C8
sub_80B60C8: @ 0x080B60C8
	push {r4, lr}
	ldr r3, _080B60FC  @ gUnknown_08A3CB2A
	adds r0, r0, r3
	ldrb r4, [r0]
	adds r0, r3, #5
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r3, #0xa
	adds r2, r2, r3
	adds r0, r4, r0
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	ldr r1, _080B6100  @ gUnknown_08A3CB3A
_080B60E8:
	ldrh r2, [r1]
	cmp r4, r2
	bcc _080B60F6
	adds r1, #2
	adds r0, #1
	cmp r0, #4
	ble _080B60E8
_080B60F6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B60FC: .4byte gUnknown_08A3CB2A
_080B6100: .4byte gUnknown_08A3CB3A

	THUMB_FUNC_END sub_80B60C8

	THUMB_FUNC_START sub_80B6104
sub_80B6104: @ 0x080B6104
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	bl sub_80B5D74
	mov r8, r0
	bl sub_80B5E6C
	adds r6, r0, #0
	bl sub_80B5FD0
	adds r5, r0, #0
	bl sub_80B5EA4
	adds r4, r0, #0
	bl sub_80B5F9C
	str r0, [sp]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_80B6070
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6104

	THUMB_FUNC_START sub_80B6144
sub_80B6144: @ 0x080B6144
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _080B61BC  @ gRAMChapterData
	ldrh r5, [r0, #0x10]
	movs r1, #0xe
	ldrsb r1, [r0, r1]
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, _080B61C0  @ gChapterDataTable
	adds r4, r1, r0
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x39
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [sp]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x35
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [sp, #4]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x31
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [sp, #8]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x2d
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [sp, #0xc]
	movs r2, #0
	mov r1, sp
_080B61A4:
	ldr r0, [r1]
	cmp r5, r0
	bgt _080B61B2
	adds r1, #4
	adds r2, #1
	cmp r2, #3
	ble _080B61A4
_080B61B2:
	adds r0, r2, #0
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B61BC: .4byte gRAMChapterData
_080B61C0: .4byte gChapterDataTable

	THUMB_FUNC_END sub_80B6144

	THUMB_FUNC_START sub_80B61C4
sub_80B61C4: @ 0x080B61C4
	push {lr}
	sub sp, #4
	ldr r1, _080B61F8  @ gUnknown_08205F24
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_80B6284
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
_080B61DC:
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge _080B61F0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080B61DC
_080B61F0:
	adds r0, r1, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080B61F8: .4byte gUnknown_08205F24

	THUMB_FUNC_END sub_80B61C4

	THUMB_FUNC_START sub_80B61FC
sub_80B61FC: @ 0x080B61FC
	push {lr}
	ldr r2, _080B6224  @ gUnknown_08A3CB46
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r2, #5
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r3, r3, r0
	movs r0, #0
	ldr r1, _080B6228  @ gUnknown_08A3CB50
_080B6210:
	ldrh r2, [r1]
	cmp r3, r2
	bcc _080B621E
	adds r1, #2
	adds r0, #1
	cmp r0, #4
	ble _080B6210
_080B621E:
	pop {r1}
	bx r1
	.align 2, 0
_080B6224: .4byte gUnknown_08A3CB46
_080B6228: .4byte gUnknown_08A3CB50

	THUMB_FUNC_END sub_80B61FC

	THUMB_FUNC_START sub_80B622C
sub_80B622C: @ 0x080B622C
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #1
_080B6232:
	adds r0, r4, #0
	bl GetUnit
	adds r1, r0, #0
	cmp r1, #0
	beq _080B6250
	ldr r0, [r1]
	cmp r0, #0
	beq _080B6250
	ldr r0, [r1, #0xc]
	ldr r1, _080B6260  @ 0x00010004
	ands r0, r1
	cmp r0, #4
	bne _080B6250
	adds r5, #1
_080B6250:
	adds r4, #1
	cmp r4, #0x3f
	ble _080B6232
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B6260: .4byte 0x00010004

	THUMB_FUNC_END sub_80B622C

	THUMB_FUNC_START sub_80B6264
sub_80B6264: @ 0x080B6264
	push {r4, lr}
	bl sub_80A4904
	adds r4, r0, #0
	bl sub_80A4928
	movs r1, #0x64
	muls r0, r1, r0
	adds r1, r4, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6264

	THUMB_FUNC_START sub_80B6284
sub_80B6284: @ 0x080B6284
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #1
_080B628A:
	adds r0, r4, #0
	bl GetUnit
	cmp r0, #0
	beq _080B62BE
	ldr r2, [r0]
	cmp r2, #0
	beq _080B62BE
	ldr r0, [r0, #0xc]
	ldr r1, _080B62D0  @ 0x00010004
	ands r0, r1
	cmp r0, #4
	bne _080B62BE
	ldrb r0, [r2, #4]
	bl BWL_GetEntry
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	ldr r0, _080B62D4  @ gRAMChapterData
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _080B62BE
	adds r5, #1
_080B62BE:
	adds r4, #1
	cmp r4, #0x3f
	ble _080B628A
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B62D0: .4byte 0x00010004
_080B62D4: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B6284

	THUMB_FUNC_START sub_80B62D8
sub_80B62D8: @ 0x080B62D8
	bx lr

	THUMB_FUNC_END sub_80B62D8

	THUMB_FUNC_START sub_80B62DC
sub_80B62DC: @ 0x080B62DC
	push {r4, r5, r6, lr}
	bl GetPartyTotalGoldValue
	ldr r1, _080B6324  @ gRAMChapterData
	ldr r5, [r1, #0x30]
	subs r5, r0, r5
	str r0, [r1, #0x30]
	bl GetNextChapterWinDataEntryIndex
	subs r0, #1
	bl GetChapterWinDataEntry
	adds r6, r0, #0
	ldr r4, _080B6328  @ gChapterDataTable
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	movs r2, #0x94
	muls r1, r2, r1
	adds r0, r0, r1
	adds r4, #0x60
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x64
	muls r5, r0, r5
	lsls r0, r1, #2
	adds r2, r0, r1
	lsls r0, r2, #4
	cmp r5, r0
	blt _080B632C
	movs r0, #4
	b _080B6350
	.align 2, 0
_080B6324: .4byte gRAMChapterData
_080B6328: .4byte gChapterDataTable
_080B632C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	cmp r5, r0
	blt _080B633A
	movs r0, #3
	b _080B6350
_080B633A:
	lsls r0, r2, #3
	cmp r5, r0
	blt _080B6344
	movs r0, #2
	b _080B6350
_080B6344:
	lsls r0, r2, #2
	cmp r5, r0
	bge _080B634E
	movs r0, #0
	b _080B6350
_080B634E:
	movs r0, #1
_080B6350:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B62DC

	THUMB_FUNC_START sub_80B6358
sub_80B6358: @ 0x080B6358
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	bl sub_80A4904
	adds r4, r0, #0
	bl sub_80A4928
	adds r5, r0, #0
	ldr r7, _080B638C  @ 0x000FFFFF
	cmp r4, r7
	ble _080B6374
	adds r4, r7, #0
_080B6374:
	cmp r5, r7
	ble _080B637A
	adds r5, r7, #0
_080B637A:
	ldr r6, _080B6390  @ gRAMChapterData
	ldr r0, [r6, #0x34]
	mov r8, r0
	lsls r0, r0, #0xc
	lsrs r2, r0, #0xc
	cmp r4, r2
	bne _080B6394
	movs r0, #0x28
	b _080B63DC
	.align 2, 0
_080B638C: .4byte 0x000FFFFF
_080B6390: .4byte gRAMChapterData
_080B6394:
	ldrh r1, [r6, #0x36]
	lsrs r1, r1, #4
	movs r3, #0x38
	adds r3, r3, r6
	mov r9, r3
	ldrb r0, [r3]
	lsls r0, r0, #0xc
	orrs r0, r1
	subs r0, r5, r0
	movs r1, #0x64
	muls r0, r1, r0
	subs r1, r4, r2
	bl __divsi3
	adds r3, r0, #0
	cmp r3, #0x64
	ble _080B63B8
	movs r3, #0x64
_080B63B8:
	ands r4, r7
	ldr r0, _080B63E8  @ 0xFFF00000
	mov r1, r8
	ands r0, r1
	orrs r0, r4
	str r0, [r6, #0x34]
	ldr r1, _080B63EC  @ 0x00000FFF
	ands r1, r5
	lsls r1, r1, #4
	ldrh r2, [r6, #0x36]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0x36]
	lsrs r0, r5, #0xc
	mov r1, r9
	strb r0, [r1]
	adds r0, r3, #0
_080B63DC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B63E8: .4byte 0xFFF00000
_080B63EC: .4byte 0x00000FFF

	THUMB_FUNC_END sub_80B6358

	THUMB_FUNC_START sub_80B63F0
sub_80B63F0: @ 0x080B63F0
	push {lr}
	sub sp, #4
	ldr r1, _080B6420  @ gUnknown_08205F20
	mov r0, sp
	movs r2, #4
	bl memcpy
	bl sub_80B6358
	adds r2, r0, #0
	movs r1, #0
_080B6406:
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r2, r0
	blt _080B6416
	adds r1, #1
	cmp r1, #3
	ble _080B6406
_080B6416:
	adds r0, r1, #0
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080B6420: .4byte gUnknown_08205F20

	THUMB_FUNC_END sub_80B63F0

	THUMB_FUNC_START sub_80B6424
sub_80B6424: @ 0x080B6424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0
	add r0, sp, #0xc
_080B642C:
	str r1, [r0]
	subs r0, #4
	cmp r0, sp
	bge _080B642C
	bl sub_80A49A4
	adds r1, r0, #0
	ldr r4, _080B64F4  @ 0x000FFFFF
	cmp r1, r4
	ble _080B6442
	adds r1, r4, #0
_080B6442:
	ldr r3, _080B64F8  @ gRAMChapterData
	ldr r2, [r3, #0x38]
	lsls r0, r2, #4
	lsrs r0, r0, #0xc
	subs r7, r1, r0
	ands r1, r4
	lsls r1, r1, #8
	ldr r0, _080B64FC  @ 0xF00000FF
	ands r0, r2
	orrs r0, r1
	str r0, [r3, #0x38]
	bl GetNextChapterWinDataEntryIndex
	subs r0, #1
	bl GetChapterWinDataEntry
	adds r5, r0, #0
	bl IsDifficultMode
	ldr r6, _080B6500  @ gChapterDataTable
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r5]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	movs r4, #0x94
	muls r1, r4, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x56
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r5]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r4, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x4e
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp, #4]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r5]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r4, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp, #8]
	bl IsDifficultMode
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	ldr r1, [r5]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	muls r1, r4, r1
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x3e
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	movs r2, #0
	mov r1, sp
_080B64DC:
	ldr r0, [r1]
	cmp r7, r0
	blt _080B64EA
	adds r1, #4
	adds r2, #1
	cmp r2, #3
	ble _080B64DC
_080B64EA:
	adds r0, r2, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B64F4: .4byte 0x000FFFFF
_080B64F8: .4byte gRAMChapterData
_080B64FC: .4byte 0xF00000FF
_080B6500: .4byte gChapterDataTable

	THUMB_FUNC_END sub_80B6424

	THUMB_FUNC_START ComputeChapterRankings
ComputeChapterRankings: @ 0x080B6504
	push {r4, r5, r6, lr}
	sub sp, #4
	bl GetNextChapterWinDataEntryIndex
	cmp r0, #0
	ble _080B65CE
	ldr r6, _080B65D8  @ gRAMChapterData
	ldrb r0, [r6, #0x1b]
	cmp r0, #3
	bgt _080B6586
	cmp r0, #1
	blt _080B6586
	bl sub_80B6144
	adds r5, r6, #0
	adds r5, #0x3e
	movs r4, #7
	ands r0, r4
	lsls r0, r0, #2
	ldrb r2, [r5]
	movs r1, #0x1d
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	bl sub_80B61C4
	lsls r0, r0, #5
	ldrb r2, [r5]
	movs r1, #0x1f
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	bl sub_80B62DC
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #0xf
	ldr r0, [r6, #0x3c]
	ldr r2, _080B65DC  @ 0xFFFC7FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #0x3c]
	bl sub_80B63F0
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #6
	ldrh r2, [r6, #0x3c]
	ldr r1, _080B65E0  @ 0xFFFFFE3F
	ands r1, r2
	orrs r1, r0
	strh r1, [r6, #0x3c]
	bl sub_80B6424
	adds r3, r6, #0
	adds r3, #0x3d
	ands r0, r4
	lsls r0, r0, #1
	ldrb r2, [r3]
	movs r1, #0xf
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080B6586:
	ldr r5, _080B65D8  @ gRAMChapterData
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	lsrs r1, r1, #5
	ldr r2, [r5, #0x3c]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x1d
	adds r3, r5, #0
	adds r3, #0x3d
	ldrb r3, [r3]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1d
	ldrh r4, [r5, #0x3c]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x1d
	str r4, [sp]
	bl sub_80B6070
	ldrh r2, [r5, #0x2c]
	lsls r1, r2, #0x13
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	cmp r1, #0xff
	ble _080B65BE
	movs r1, #0xff
_080B65BE:
	ldr r3, _080B65E4  @ 0x000001FF
	adds r0, r3, #0
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _080B65E8  @ 0xFFFFE00F
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x2c]
_080B65CE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B65D8: .4byte gRAMChapterData
_080B65DC: .4byte 0xFFFC7FFF
_080B65E0: .4byte 0xFFFFFE3F
_080B65E4: .4byte 0x000001FF
_080B65E8: .4byte 0xFFFFE00F

	THUMB_FUNC_END ComputeChapterRankings

	THUMB_FUNC_START sub_80B65EC
sub_80B65EC: @ 0x080B65EC
	ldr r0, _080B65F0  @ gCGDataTable
	bx lr
	.align 2, 0
_080B65F0: .4byte gCGDataTable

	THUMB_FUNC_END sub_80B65EC

	THUMB_FUNC_START sub_80B65F4
sub_80B65F4: @ 0x080B65F4
	bx lr

	THUMB_FUNC_END sub_80B65F4

	THUMB_FUNC_START sub_80B65F8
sub_80B65F8: @ 0x080B65F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r7, r1, #0
	mov r8, r2
	mov sl, r3
	ldr r0, [sp, #0x20]
	bl sub_80B65EC
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r7, r0
_080B661A:
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r4, r2
	adds r5, #1
	cmp r5, #9
	ble _080B661A
	ldr r1, [r6, #4]
	mov r3, r8
	lsls r2, r3, #0xc
	lsls r0, r7, #0x11
	lsrs r0, r0, #0x16
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r9
	bl CallARM_FillTileRect
	ldr r0, [r6, #8]
	mov r2, r8
	lsls r1, r2, #5
	mov r3, sl
	lsls r2, r3, #5
	bl CopyToPaletteBuffer
	ldr r0, [sp, #0x20]
	cmp r0, #0x7f
	bgt _080B6666
	movs r0, #0
	ldr r1, [sp, #0x20]
	bl sub_80A4064
_080B6666:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B65F8

	THUMB_FUNC_START sub_80B6674
sub_80B6674: @ 0x080B6674
	push {r4, r5, r6, r7, lr}
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r6, #0
	bl GetStringFromIndex
	adds r1, r5, #0
	bl sub_80AEABC
	adds r5, r0, #0
	movs r0, #1
	adds r1, r5, #0
	bl sub_80AEADC
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080B66B8
	ldr r0, _080B66B4  @ 0x00007FFF
	ands r4, r0
	adds r0, r4, #0
	bl sub_80BBA28
	b _080B6700
	.align 2, 0
_080B66B4: .4byte 0x00007FFF
_080B66B8:
	ldr r0, _080B66D0  @ 0x00007FFF
	ands r4, r0
	adds r0, r4, #0
	bl GetROMChapterStruct
	adds r0, #0x70
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r1, r0, #0
	b _080B66E8
	.align 2, 0
_080B66D0: .4byte 0x00007FFF
_080B66D4:
	cmp r2, #0x21
	bne _080B66E6
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080B66E6
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B66E6:
	adds r1, #1
_080B66E8:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080B66D4
	adds r0, r4, #0
	bl GetROMChapterStruct
	adds r0, #0x70
	ldrh r0, [r0]
	bl GetStringFromIndex
_080B6700:
	adds r1, r5, #0
	bl sub_80AEABC
	adds r5, r0, #0
	adds r0, r7, #0
	bl GetStringFromIndex
	adds r0, r0, r6
	adds r1, r5, #0
	bl sub_80AEABC
	adds r5, r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6674

	THUMB_FUNC_START sub_80B6720
sub_80B6720: @ 0x080B6720
	push {lr}
	adds r2, r0, #0
	ldr r1, _080B6728  @ gUnknown_08A3D1B0
	b _080B6738
	.align 2, 0
_080B6728: .4byte gUnknown_08A3D1B0
_080B672C:
	ldrb r0, [r1]
	cmp r0, r2
	bne _080B6736
	ldr r0, [r1, #4]
	b _080B6740
_080B6736:
	adds r1, #8
_080B6738:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B672C
	movs r0, #0
_080B6740:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6720

	THUMB_FUNC_START sub_80B6744
sub_80B6744: @ 0x080B6744
	push {lr}
	adds r2, r0, #0
	ldr r1, _080B674C  @ gUnknown_08A3D2C0
	b _080B675C
	.align 2, 0
_080B674C: .4byte gUnknown_08A3D2C0
_080B6750:
	ldrb r0, [r1]
	cmp r0, r2
	bne _080B675A
	ldrb r0, [r1, #1]
	b _080B6764
_080B675A:
	adds r1, #4
_080B675C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B6750
	movs r0, #0
_080B6764:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6744

	THUMB_FUNC_START sub_80B6768
sub_80B6768: @ 0x080B6768
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _080B67AC  @ gUnknown_08A3CD64
	ldr r6, [r0]
	adds r0, r4, #0
	bl sub_80B6744
	adds r5, r0, #0
	cmp r5, #4
	bne _080B6786
	movs r0, #0x7d
	bl CheckGlobalEventId
	movs r4, #0x80
	lsls r4, r4, #1
_080B6786:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl BWL_GetEntry
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	ldrb r0, [r0, #0xe]
	lsrs r0, r0, #7
	lsls r0, r0, #0xf
	orrs r1, r0
	cmp r5, #2
	beq _080B67C0
	cmp r5, #2
	bgt _080B67B0
	cmp r5, #0
	beq _080B67B6
	b _080B67D8
	.align 2, 0
_080B67AC: .4byte gUnknown_08A3CD64
_080B67B0:
	cmp r5, #5
	beq _080B67D4
	b _080B67D8
_080B67B6:
	ldr r0, _080B67BC  @ 0x000007D1
	movs r2, #0x22
	b _080B67C4
	.align 2, 0
_080B67BC: .4byte 0x000007D1
_080B67C0:
	ldr r0, _080B67CC  @ 0x000007D3
	ldr r2, _080B67D0  @ 0x000007D4
_080B67C4:
	adds r3, r6, #0
	bl sub_80B6674
	b _080B67D8
	.align 2, 0
_080B67CC: .4byte 0x000007D3
_080B67D0: .4byte 0x000007D4
_080B67D4:
	movs r0, #0
	b _080B67DC
_080B67D8:
	ldr r0, _080B67E4  @ gUnknown_08A3CD64
	ldr r0, [r0]
_080B67DC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B67E4: .4byte gUnknown_08A3CD64

	THUMB_FUNC_END sub_80B6768

	THUMB_FUNC_START sub_80B67E8
sub_80B67E8: @ 0x080B67E8
	push {lr}
	ldr r0, _080B6800  @ gUnknown_08A3F750
	ldr r1, _080B6804  @ 0x06004C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B6808  @ gUnknown_08B12DB4
	ldr r1, _080B680C  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	pop {r0}
	bx r0
	.align 2, 0
_080B6800: .4byte gUnknown_08A3F750
_080B6804: .4byte 0x06004C00
_080B6808: .4byte gUnknown_08B12DB4
_080B680C: .4byte 0x06008000

	THUMB_FUNC_END sub_80B67E8

	THUMB_FUNC_START sub_80B6810
sub_80B6810: @ 0x080B6810
	push {r4, r5, lr}
	ldr r0, _080B687C  @ gUnknown_08A3F710
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r0, _080B6880  @ gUnknown_08B1754C
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r4, _080B6884  @ gBG3TilemapBuffer
	movs r0, #3
	bl GetBackgroundTileDataOffset
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x14
	movs r0, #0xe0
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	ldr r3, _080B6888  @ 0x0000027F
_080B6846:
	adds r0, r2, r1
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	cmp r2, r3
	ble _080B6846
	ldr r4, _080B688C  @ gBG2TilemapBuffer
	ldr r1, _080B6890  @ gUnknown_08A3FFEC
	ldr r5, _080B6894  @ 0x0000C260
	adds r0, r4, #0
	adds r2, r5, #0
	bl CallARM_FillTileRect
	movs r0, #0x90
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _080B6898  @ gUnknown_08A40068
	adds r0, r4, #0
	adds r2, r5, #0
	bl CallARM_FillTileRect
	movs r0, #0xc
	bl BG_EnableSyncByMask
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B687C: .4byte gUnknown_08A3F710
_080B6880: .4byte gUnknown_08B1754C
_080B6884: .4byte gBG3TilemapBuffer
_080B6888: .4byte 0x0000027F
_080B688C: .4byte gBG2TilemapBuffer
_080B6890: .4byte gUnknown_08A3FFEC
_080B6894: .4byte 0x0000C260
_080B6898: .4byte gUnknown_08A40068

	THUMB_FUNC_END sub_80B6810

	THUMB_FUNC_START sub_80B689C
sub_80B689C: @ 0x080B689C
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #0x10
	adds r6, r0, #0
	mov r9, r1
	ldr r0, _080B6918  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r5, _080B691C  @ gUnknown_08A3D348
	ldr r0, [r5, #8]
	str r6, [sp]
	movs r1, #2
	add r1, r9
	mov r8, r1
	str r1, [sp, #4]
	movs r4, #0x1e
	str r4, [sp, #8]
	movs r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_80AC844
	ldr r0, [r5, #4]
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0x12
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_80AC844
	ldr r0, [r5]
	str r6, [sp]
	mov r1, r9
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0x14
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80AC844
	movs r0, #7
	bl BG_EnableSyncByMask
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B6918: .4byte gBG1TilemapBuffer
_080B691C: .4byte gUnknown_08A3D348

	THUMB_FUNC_END sub_80B689C

	THUMB_FUNC_START sub_80B6920
sub_80B6920: @ 0x080B6920
	push {r4, r5, r6, r7, lr}
	bl Font_InitForUIDefault
	ldr r7, _080B6968  @ gUnknown_08A3D358
	movs r6, #0x38
	movs r5, #0x28
	movs r4, #1
_080B692E:
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #0xf
	bl Text_Init
	ldr r0, [r7]
	adds r0, r0, r6
	movs r1, #0xa
	bl Text_Init
	adds r6, #8
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bge _080B692E
	movs r4, #0
	ldr r5, _080B6968  @ gUnknown_08A3D358
_080B6950:
	lsls r1, r4, #3
	ldr r0, [r5]
	adds r0, r0, r1
	movs r1, #0x1a
	bl Text_Init
	adds r4, #1
	cmp r4, #4
	ble _080B6950
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6968: .4byte gUnknown_08A3D358

	THUMB_FUNC_END sub_80B6920

	THUMB_FUNC_START sub_80B696C
sub_80B696C: @ 0x080B696C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	bl SetupBackgrounds
	bl ResetFaces
	bl sub_80B67E8
	bl SetDefaultColorEffects
	movs r1, #0
	strh r1, [r4, #0x2e]
	mov r0, sp
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	ldr r2, _080B69A8  @ 0x01000010
	bl CpuSet
	ldr r0, _080B69AC  @ gRAMChapterData
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	blt _080B69C2
	cmp r0, #2
	ble _080B69B0
	cmp r0, #3
	beq _080B69BC
	b _080B69C2
	.align 2, 0
_080B69A8: .4byte 0x01000010
_080B69AC: .4byte gRAMChapterData
_080B69B0:
	ldr r0, _080B69B8  @ gUnknown_08A3D1A8
	ldr r0, [r0]
	b _080B69C0
	.align 2, 0
_080B69B8: .4byte gUnknown_08A3D1A8
_080B69BC:
	ldr r0, _080B69D0  @ gUnknown_08A3D1A8
	ldr r0, [r0, #4]
_080B69C0:
	str r0, [r4, #0x30]
_080B69C2:
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x34]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B69D0: .4byte gUnknown_08A3D1A8

	THUMB_FUNC_END sub_80B696C

	THUMB_FUNC_START sub_80B69D4
sub_80B69D4: @ 0x080B69D4
	push {lr}
	ldr r0, _080B6A04  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B6A08  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B6A0C  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	bl ResetDialogueScreen
	bl sub_80B744C
	bl sub_80B6810
	movs r0, #7
	bl BG_EnableSyncByMask
	pop {r0}
	bx r0
	.align 2, 0
_080B6A04: .4byte gBG0TilemapBuffer
_080B6A08: .4byte gBG1TilemapBuffer
_080B6A0C: .4byte gBG2TilemapBuffer

	THUMB_FUNC_END sub_80B69D4

	THUMB_FUNC_START sub_80B6A10
sub_80B6A10: @ 0x080B6A10
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
_080B6A16:
	adds r0, r4, #0
	bl GetUnit
	adds r2, r0, #0
	cmp r2, #0
	beq _080B6A3E
	ldr r0, [r2]
	cmp r0, #0
	beq _080B6A3E
	ldrb r0, [r0, #4]
	cmp r0, r5
	bne _080B6A3E
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080B6A44
	adds r0, r2, #0
	b _080B6A46
_080B6A3E:
	adds r4, #1
	cmp r4, #0x3f
	ble _080B6A16
_080B6A44:
	movs r0, #0
_080B6A46:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6A10

	THUMB_FUNC_START sub_80B6A4C
sub_80B6A4C: @ 0x080B6A4C
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	bne _080B6A64
	b _080B6A78
_080B6A56:
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetUnitSupporterCharacter
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080B6A7A
_080B6A64:
	movs r4, #0
_080B6A66:
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetUnitSupportLevel
	cmp r0, #3
	beq _080B6A56
	adds r4, #1
	cmp r4, #6
	ble _080B6A66
_080B6A78:
	movs r0, #0
_080B6A7A:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6A4C

	THUMB_FUNC_START sub_80B6A80
sub_80B6A80: @ 0x080B6A80
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0]
	ldrb r6, [r1, #4]
	bl sub_80B6A4C
	adds r5, r0, #0
	cmp r5, #0
	beq _080B6AD8
	adds r0, r6, #0
	bl GetUnitFromCharId
	ldr r0, [r0, #0xc]
	movs r7, #4
	ands r0, r7
	cmp r0, #0
	bne _080B6AD8
	adds r0, r5, #0
	bl GetUnitFromCharId
	ldr r0, [r0, #0xc]
	ands r0, r7
	cmp r0, #0
	beq _080B6AD2
	b _080B6AD8
_080B6AB4:
	movs r0, #1
	b _080B6ADA
_080B6AB8:
	ldrb r0, [r4, #1]
	adds r1, r0, #0
	cmp r1, r6
	bne _080B6AC6
	ldrb r0, [r4, #2]
	cmp r0, r5
	beq _080B6AB4
_080B6AC6:
	cmp r1, r5
	bne _080B6AD0
	ldrb r0, [r4, #2]
	cmp r0, r6
	beq _080B6AB4
_080B6AD0:
	adds r4, #8
_080B6AD2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _080B6AB8
_080B6AD8:
	movs r0, #0
_080B6ADA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B6A80

	THUMB_FUNC_START sub_80B6AE0
sub_80B6AE0: @ 0x080B6AE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x38]
_080B6AEA:
	ldr r3, [r4, #0x30]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080B6AFC
	adds r0, r4, #0
	movs r1, #0x64
	bl Proc_Goto
	b _080B6BD2
_080B6AFC:
	ldrb r2, [r3, #1]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r6, #0x1f
	adds r1, r6, #0
	ands r1, r2
	ldr r0, [r0, #0x40]
	lsrs r0, r1
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _080B6BCA
	ldrb r2, [r3, #2]
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _080B6B32
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r1, r6, #0
	ands r1, r2
	ldr r0, [r0, #0x40]
	lsrs r0, r1
	ands r0, r5
	cmp r0, #0
	bne _080B6BCA
_080B6B32:
	ldrb r0, [r3, #1]
	bl sub_80B6A10
	adds r1, r0, #0
	str r1, [r4, #0x38]
	cmp r1, #0
	beq _080B6BCA
	ldr r0, [r4, #0x30]
	ldrb r2, [r0]
	adds r3, r0, #0
	cmp r2, #1
	beq _080B6B50
	cmp r2, #2
	beq _080B6B60
	b _080B6B92
_080B6B50:
	ldr r0, [r4, #0x34]
	bl sub_80B6A80
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B6BCA
	ldr r3, [r4, #0x30]
	b _080B6B92
_080B6B60:
	ldrb r0, [r3, #2]
	bl sub_80B6A10
	str r0, [r4, #0x3c]
	cmp r0, #0
	beq _080B6BCA
	ldr r0, [r4, #0x38]
	bl sub_80B6A4C
	ldr r1, [r4, #0x30]
	ldrb r2, [r1, #2]
	cmp r0, r2
	bne _080B6BCA
	ldr r0, [r4, #0x38]
	ldr r0, [r0, #0xc]
	movs r2, #4
	ands r0, r2
	cmp r0, #0
	bne _080B6BCA
	ldr r0, [r4, #0x3c]
	ldr r0, [r0, #0xc]
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	bne _080B6BCA
_080B6B92:
	ldrb r1, [r3, #1]
	lsrs r2, r1, #5
	lsls r2, r2, #2
	adds r2, r2, r4
	movs r6, #0x1f
	adds r0, r6, #0
	ands r0, r1
	movs r5, #1
	adds r1, r5, #0
	lsls r1, r0
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
	ldrb r1, [r3, #2]
	lsls r2, r1, #0x18
	cmp r2, #0
	beq _080B6BD2
	lsrs r2, r2, #0x1d
	lsls r2, r2, #2
	adds r2, r2, r4
	adds r0, r6, #0
	ands r0, r1
	adds r1, r5, #0
	lsls r1, r0
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
	b _080B6BD2
_080B6BCA:
	ldr r0, [r4, #0x30]
	adds r0, #8
	str r0, [r4, #0x30]
	b _080B6AEA
_080B6BD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B6AE0

	THUMB_FUNC_START sub_80B6BD8
sub_80B6BD8: @ 0x080B6BD8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x30]
	ldrb r1, [r0]
	cmp r1, #1
	beq _080B6BEA
	cmp r1, #2
	beq _080B6BF4
	b _080B6BFC
_080B6BEA:
	ldr r1, [r3, #0x38]
	adds r2, r3, #0
	bl sub_80B6F14
	b _080B6BFC
_080B6BF4:
	ldr r1, [r3, #0x38]
	ldr r2, [r3, #0x3c]
	bl sub_80B72A4
_080B6BFC:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B6BD8

	THUMB_FUNC_START sub_80B6C00
sub_80B6C00: @ 0x080B6C00
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x38]
	ldr r2, [r3, #0x3c]
	bl sub_80B742C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B6C00

	THUMB_FUNC_START sub_80B6C14
sub_80B6C14: @ 0x080B6C14
	push {lr}
	sub sp, #4
	movs r0, #0
	bl SetupBackgrounds
	bl ResetDialogueScreen
	bl sub_80B744C
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	ldr r2, _080B6C70  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B6C70: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B6C14

	THUMB_FUNC_START sub_80B6C74
sub_80B6C74: @ 0x080B6C74
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r2, #0x30]
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080B6C8E
	adds r0, r2, #0
	movs r1, #0x64
	bl Proc_Goto
_080B6C8E:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B6C74

	THUMB_FUNC_START sub_80B6C94
sub_80B6C94: @ 0x080B6C94
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B6CA4  @ gUnknown_08A3D35C
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080B6CA4: .4byte gUnknown_08A3D35C

	THUMB_FUNC_END sub_80B6C94

	THUMB_FUNC_START sub_80B6CA8
sub_80B6CA8: @ 0x080B6CA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
_080B6CB4:
	mov r0, r8
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080B6D0C
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl BWL_GetEntry
	adds r3, r0, #0
	mov r0, r8
	lsls r4, r0, #1
	adds r0, r7, #0
	adds r0, #0x3c
	adds r1, r0, r4
	ldrh r0, [r3, #0xc]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x14
	ldr r5, _080B6D20  @ 0x000003E7
	cmp r0, r5
	ble _080B6CE6
	adds r0, r5, #0
_080B6CE6:
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x40
	adds r6, r0, r4
	ldrb r2, [r3, #0xb]
	ldrb r0, [r3, #0xc]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #8
	orrs r0, r2
	cmp r0, r5
	ble _080B6D00
	adds r0, r5, #0
_080B6D00:
	strh r0, [r6]
	adds r0, r7, #0
	adds r0, #0x44
	adds r0, r0, r4
	ldrb r1, [r3]
	strh r1, [r0]
_080B6D0C:
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #1
	ble _080B6CB4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6D20: .4byte 0x000003E7

	THUMB_FUNC_END sub_80B6CA8

	THUMB_FUNC_START sub_80B6D24
sub_80B6D24: @ 0x080B6D24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_80B6920
	adds r0, r7, #0
	bl sub_80B6CA8
	ldr r5, _080B6EA8  @ gUnknown_08A3D348
	ldr r0, [r5]
	movs r1, #0
	bl BG_Fill
	ldr r0, [r5, #4]
	movs r1, #0
	bl BG_Fill
	ldr r0, [r5, #8]
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B6EAC  @ gUnknown_08A40204
	ldr r4, _080B6EB0  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, [r5, #8]
	ldr r6, _080B6EB4  @ 0x0000C260
	adds r1, r4, #0
	adds r2, r6, #0
	bl CallARM_FillTileRect
	ldr r0, _080B6EB8  @ gUnknown_08A400E4
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, [r5, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl CallARM_FillTileRect
	ldr r0, [r7, #0x38]
	ldrb r0, [r0, #1]
	bl sub_80B6720
	bl GetStringFromIndex
	adds r4, r0, #0
	movs r0, #0x78
	adds r1, r4, #0
	bl GetStringTextCenteredPos
	adds r3, r0, #0
	ldr r6, _080B6EBC  @ gUnknown_08A3D358
	ldr r0, [r6]
	adds r0, #0x28
	ldr r1, [r5]
	adds r1, #0xc2
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	str r4, [sp, #4]
	bl DrawTextInline
	ldr r0, _080B6EC0  @ 0x0000051F
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, #0x62
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0
	bl DrawTextInline
	movs r0, #0xa4
	lsls r0, r0, #3
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, #0x62
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0x20
	bl DrawTextInline
	ldr r0, _080B6EC4  @ 0x00000521
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, #0x62
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0x40
	bl DrawTextInline
	ldrh r0, [r7, #0x3c]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, #0x62
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r7, #0x3c]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	adds r4, r7, #0
	adds r4, #0x40
	ldrh r0, [r4]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, #0x6a
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r4]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	adds r4, #4
	ldrh r0, [r4]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, #0x72
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r4]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	ldr r2, _080B6EC8  @ gCharacterData
	ldr r0, [r7, #0x38]
	ldrb r0, [r0, #1]
	subs r0, #1
	movs r1, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r1, [r0, #6]
	movs r2, #0xd0
	lsls r2, r2, #1
	ldr r0, _080B6ECC  @ 0x00000502
	str r0, [sp]
	movs r0, #0
	movs r3, #0x38
	bl sub_80064F4
	ldr r0, [r7, #0x2c]
	ldr r0, [r0, #0xc]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B6E92
	movs r0, #0x16
	bl ArchivePalette
	movs r3, #0x80
	lsls r3, r3, #0xf
	movs r0, #0xc0
	movs r1, #0xc0
	movs r2, #0xc0
	bl WriteFadedPaletteFromArchive
_080B6E92:
	mov r0, r8
	str r0, [r7, #0x34]
	bl SetDefaultColorEffects
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6EA8: .4byte gUnknown_08A3D348
_080B6EAC: .4byte gUnknown_08A40204
_080B6EB0: .4byte gUnknown_02020188
_080B6EB4: .4byte 0x0000C260
_080B6EB8: .4byte gUnknown_08A400E4
_080B6EBC: .4byte gUnknown_08A3D358
_080B6EC0: .4byte 0x0000051F
_080B6EC4: .4byte 0x00000521
_080B6EC8: .4byte gCharacterData
_080B6ECC: .4byte 0x00000502

	THUMB_FUNC_END sub_80B6D24

	THUMB_FUNC_START sub_80B6ED0
sub_80B6ED0: @ 0x080B6ED0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0x1e
	ldr r0, _080B6F0C  @ gUnknown_08A3D40C
	ldr r1, [r6, #0x34]
	adds r0, r1, r0
	ldrb r5, [r0]
	adds r1, #1
	str r1, [r6, #0x34]
	subs r4, r4, r5
	lsls r1, r4, #3
	adds r1, #0xb0
	ldr r0, _080B6F10  @ 0x000001FF
	ands r1, r0
	movs r0, #0
	movs r2, #0x38
	bl sub_8006618
	adds r0, r4, #0
	movs r1, #0
	bl sub_80B689C
	cmp r5, #0x1e
	bne _080B6F06
	adds r0, r6, #0
	bl Proc_Break
_080B6F06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B6F0C: .4byte gUnknown_08A3D40C
_080B6F10: .4byte 0x000001FF

	THUMB_FUNC_END sub_80B6ED0

	THUMB_FUNC_START sub_80B6F14
sub_80B6F14: @ 0x080B6F14
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, _080B6F30  @ gUnknown_08A3D420
	bl Proc_StartBlocking
	str r4, [r0, #0x2c]
	movs r1, #0
	str r1, [r0, #0x30]
	str r5, [r0, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B6F30: .4byte gUnknown_08A3D420

	THUMB_FUNC_END sub_80B6F14

	THUMB_FUNC_START sub_80B6F34
sub_80B6F34: @ 0x080B6F34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_80B6920
	adds r0, r7, #0
	bl sub_80B6CA8
	ldr r5, _080B71A0  @ gUnknown_08A3D348
	ldr r0, [r5]
	movs r1, #0
	bl BG_Fill
	ldr r0, [r5, #4]
	movs r1, #0
	bl BG_Fill
	ldr r0, [r5, #8]
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B71A4  @ gUnknown_08A40470
	ldr r4, _080B71A8  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, [r5, #8]
	ldr r6, _080B71AC  @ 0x0000C260
	adds r1, r4, #0
	adds r2, r6, #0
	bl CallARM_FillTileRect
	ldr r0, _080B71B0  @ gUnknown_08A4034C
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, [r5, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	bl CallARM_FillTileRect
	ldr r0, [r7, #0x38]
	ldrb r0, [r0, #1]
	bl sub_80B6720
	bl GetStringFromIndex
	adds r4, r0, #0
	movs r0, #0x78
	adds r1, r4, #0
	bl GetStringTextCenteredPos
	adds r3, r0, #0
	ldr r6, _080B71B4  @ gUnknown_08A3D358
	ldr r0, [r6]
	adds r0, #0x28
	ldr r1, [r5]
	adds r1, #0xc2
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	str r4, [sp, #4]
	bl DrawTextInline
	ldr r3, _080B71B8  @ 0x0000051F
	mov sl, r3
	mov r0, sl
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x38
	ldr r1, [r5]
	adds r1, #0x62
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0
	bl DrawTextInline
	movs r0, #0xa4
	lsls r0, r0, #3
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x38
	ldr r1, [r5]
	adds r1, #0x62
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0x20
	bl DrawTextInline
	ldr r0, _080B71BC  @ 0x00000521
	mov r9, r0
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x38
	ldr r1, [r5]
	adds r1, #0x62
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0x40
	bl DrawTextInline
	ldrh r0, [r7, #0x3c]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, #0x62
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r7, #0x3c]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	adds r4, r7, #0
	adds r4, #0x40
	ldrh r0, [r4]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, #0x6a
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r4]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	adds r4, #4
	ldrh r0, [r4]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, #0x72
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r4]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	ldr r0, [r7, #0x38]
	ldrb r0, [r0, #2]
	bl sub_80B6720
	bl GetStringFromIndex
	adds r4, r0, #0
	movs r0, #0x78
	adds r1, r4, #0
	bl GetStringTextCenteredPos
	adds r3, r0, #0
	ldr r0, [r6]
	adds r0, #0x30
	ldr r1, [r5]
	ldr r2, _080B71C0  @ 0x0000045C
	adds r1, r1, r2
	mov r2, r8
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #0
	bl DrawTextInline
	mov r0, sl
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x40
	ldr r1, [r5]
	ldr r4, _080B71C4  @ 0x00000442
	adds r1, r1, r4
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0
	bl DrawTextInline
	movs r0, #0xa4
	lsls r0, r0, #3
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, r1, r4
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0x20
	bl DrawTextInline
	mov r0, r9
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [r6]
	adds r0, #0x40
	ldr r1, [r5]
	adds r1, r1, r4
	mov r3, r8
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0x40
	bl DrawTextInline
	ldrh r0, [r7, #0x3e]
	bl sub_80AEBEC
	lsls r0, r0, #1
	adds r0, r0, r4
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r7, #0x3e]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	adds r4, r7, #0
	adds r4, #0x42
	ldrh r0, [r4]
	bl sub_80AEBEC
	lsls r0, r0, #1
	ldr r1, _080B71C8  @ 0x0000044A
	adds r0, r0, r1
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r4]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	adds r4, #4
	ldrh r0, [r4]
	bl sub_80AEBEC
	lsls r0, r0, #1
	ldr r2, _080B71CC  @ 0x00000452
	adds r0, r0, r2
	ldr r1, [r5]
	adds r1, r1, r0
	ldrh r2, [r4]
	adds r0, r1, #0
	movs r1, #2
	bl sub_8004B88
	mov r3, r8
	str r3, [r7, #0x34]
	bl SetDefaultColorEffects
	ldr r5, _080B71D0  @ gCharacterData
	ldr r0, [r7, #0x38]
	ldrb r0, [r0, #1]
	subs r0, #1
	movs r4, #0x34
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r1, [r0, #6]
	movs r2, #0x98
	lsls r2, r2, #1
	ldr r0, _080B71D4  @ 0x00000503
	str r0, [sp]
	movs r0, #0
	movs r3, #0x30
	bl sub_80064F4
	ldr r0, [r7, #0x38]
	ldrb r0, [r0, #2]
	subs r0, #1
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r1, [r0, #6]
	movs r2, #0xd0
	lsls r2, r2, #1
	ldr r0, _080B71D8  @ 0x00000502
	str r0, [sp]
	movs r0, #1
	movs r3, #0x30
	bl sub_80064F4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B71A0: .4byte gUnknown_08A3D348
_080B71A4: .4byte gUnknown_08A40470
_080B71A8: .4byte gUnknown_02020188
_080B71AC: .4byte 0x0000C260
_080B71B0: .4byte gUnknown_08A4034C
_080B71B4: .4byte gUnknown_08A3D358
_080B71B8: .4byte 0x0000051F
_080B71BC: .4byte 0x00000521
_080B71C0: .4byte 0x0000045C
_080B71C4: .4byte 0x00000442
_080B71C8: .4byte 0x0000044A
_080B71CC: .4byte 0x00000452
_080B71D0: .4byte gCharacterData
_080B71D4: .4byte 0x00000503
_080B71D8: .4byte 0x00000502

	THUMB_FUNC_END sub_80B6F34

	THUMB_FUNC_START sub_80B71DC
sub_80B71DC: @ 0x080B71DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r5, #0x1e
	ldr r0, _080B7234  @ gUnknown_08A3D40C
	ldr r1, [r7, #0x34]
	adds r0, r1, r0
	ldrb r0, [r0]
	mov r8, r0
	adds r1, #1
	str r1, [r7, #0x34]
	subs r5, r5, r0
	lsls r4, r5, #3
	adds r1, r4, #0
	adds r1, #0x40
	ldr r6, _080B7238  @ 0x000001FF
	ands r1, r6
	movs r0, #0
	movs r2, #0x30
	bl sub_8006618
	adds r4, #0xb0
	ands r4, r6
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x30
	bl sub_8006618
	adds r0, r5, #0
	movs r1, #0
	bl sub_80B689C
	mov r0, r8
	cmp r0, #0x1e
	bne _080B722A
	adds r0, r7, #0
	bl Proc_Break
_080B722A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7234: .4byte gUnknown_08A3D40C
_080B7238: .4byte 0x000001FF

	THUMB_FUNC_END sub_80B71DC

	THUMB_FUNC_START sub_80B723C
sub_80B723C: @ 0x080B723C
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [r0, #0x34]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetB
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B723C

	THUMB_FUNC_START sub_80B7274
sub_80B7274: @ 0x080B7274
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	asrs r4, r0, #2
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	cmp r4, #8
	bne _080B729E
	adds r0, r5, #0
	bl Proc_Break
_080B729E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B7274

	THUMB_FUNC_START sub_80B72A4
sub_80B72A4: @ 0x080B72A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r1, r3, #0
	ldr r0, _080B72C0  @ gUnknown_08A3D440
	bl Proc_StartBlocking
	str r4, [r0, #0x2c]
	str r5, [r0, #0x30]
	str r6, [r0, #0x38]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B72C0: .4byte gUnknown_08A3D440

	THUMB_FUNC_END sub_80B72A4

	THUMB_FUNC_START sub_80B72C4
sub_80B72C4: @ 0x080B72C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r4, _080B7344  @ gUnknown_08A3D358
	ldr r0, [r4]
	str r0, [r6, #0x48]
	movs r1, #4
	str r1, [r6, #0x40]
	str r1, [r6, #0x3c]
	movs r1, #0
	bl Text_SetXCursor
	ldr r0, [r6, #0x48]
	movs r1, #0
	bl Text_SetColorId
	movs r5, #0
	mov r8, r4
	movs r7, #0xc0
	lsls r7, r7, #1
_080B72EE:
	lsls r4, r5, #3
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	bl Text_Clear
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	ldr r1, _080B7348  @ gUnknown_02022CAC
	adds r1, r7, r1
	bl Text_Draw
	adds r7, #0x80
	adds r5, #1
	cmp r5, #4
	ble _080B72EE
	movs r0, #1
	bl BG_EnableSyncByMask
	ldr r2, [r6, #0x30]
	ldr r0, [r2, #0xc]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7330
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	bl sub_80B6768
	str r0, [r6, #0x44]
	cmp r0, #0
	bne _080B733A
_080B7330:
	ldr r0, [r6, #0x2c]
	ldr r0, [r0, #4]
	bl GetStringFromIndex
	str r0, [r6, #0x44]
_080B733A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7344: .4byte gUnknown_08A3D358
_080B7348: .4byte gUnknown_02022CAC

	THUMB_FUNC_END sub_80B72C4

	THUMB_FUNC_START sub_80B734C
sub_80B734C: @ 0x080B734C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B7378  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B737C
	bl sub_80A4CB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B737C
	adds r0, r4, #0
	bl Proc_Break
	ldr r0, [r4, #0x14]
	movs r1, #0x64
	bl Proc_Goto
	b _080B7424
	.align 2, 0
_080B7378: .4byte gKeyStatusPtr
_080B737C:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _080B7386
	subs r0, #1
	b _080B7422
_080B7386:
	movs r0, #0
	bl SetFont
	ldr r0, [r4, #0x44]
	ldrb r0, [r0]
	cmp r0, #7
	bhi _080B7416
	lsls r0, r0, #2
	ldr r1, _080B73A0  @ _080B73A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B73A0: .4byte _080B73A4
_080B73A4: @ jump table
	.4byte _080B73C4 @ case 0
	.4byte _080B73CC @ case 1
	.4byte _080B7416 @ case 2
	.4byte _080B7416 @ case 3
	.4byte _080B73EE @ case 4
	.4byte _080B73F8 @ case 5
	.4byte _080B7402 @ case 6
	.4byte _080B740C @ case 7
_080B73C4:
	adds r0, r4, #0
	bl Proc_Break
	b _080B7420
_080B73CC:
	ldr r0, [r4, #0x44]
	adds r0, #1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	adds r0, #8
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x3c]
	adds r1, #0x10
	str r1, [r4, #0x3c]
	movs r1, #0
	bl Text_SetXCursor
	ldr r0, [r4, #0x48]
	movs r1, #0
	bl Text_SetColorId
	b _080B7420
_080B73EE:
	movs r0, #8
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, #1
	b _080B741E
_080B73F8:
	movs r0, #0x10
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, #1
	b _080B741E
_080B7402:
	movs r0, #0x20
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, #1
	b _080B741E
_080B740C:
	movs r0, #0x40
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, #1
	b _080B741E
_080B7416:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x44]
	bl Text_AppendChar
_080B741E:
	str r0, [r4, #0x44]
_080B7420:
	ldr r0, [r4, #0x40]
_080B7422:
	str r0, [r4, #0x3c]
_080B7424:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B734C

	THUMB_FUNC_START sub_80B742C
sub_80B742C: @ 0x080B742C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r0, _080B7448  @ gUnknown_08A3D478
	bl Proc_StartBlocking
	str r4, [r0, #0x2c]
	str r5, [r0, #0x30]
	str r6, [r0, #0x34]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B7448: .4byte gUnknown_08A3D478

	THUMB_FUNC_END sub_80B742C

	THUMB_FUNC_START sub_80B744C
sub_80B744C: @ 0x080B744C
	push {lr}
	ldr r0, _080B7458  @ gUnknown_08A3D478
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080B7458: .4byte gUnknown_08A3D478

	THUMB_FUNC_END sub_80B744C

	THUMB_FUNC_START sub_80B745C
sub_80B745C: @ 0x080B745C
	push {r4, lr}
	ldr r0, _080B7494  @ gUnknown_08A405B4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B7498  @ gUnknown_08A405D4
	ldr r1, _080B749C  @ 0x06001000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B74A0  @ gUnknown_08A409D0
	ldr r4, _080B74A4  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B74A8  @ gBG2TilemapBuffer
	ldr r2, _080B74AC  @ 0x0000E080
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7494: .4byte gUnknown_08A405B4
_080B7498: .4byte gUnknown_08A405D4
_080B749C: .4byte 0x06001000
_080B74A0: .4byte gUnknown_08A409D0
_080B74A4: .4byte gUnknown_02020188
_080B74A8: .4byte gBG2TilemapBuffer
_080B74AC: .4byte 0x0000E080

	THUMB_FUNC_END sub_80B745C

	THUMB_FUNC_START sub_80B74B0
sub_80B74B0: @ 0x080B74B0
	push {lr}
	adds r2, r0, #0
	adds r2, #0x4c
	movs r1, #0
	strh r1, [r2]
	str r1, [r0, #0x58]
	movs r0, #0
	bl SetupBackgrounds
	bl sub_80B745C
	movs r0, #0x56
	movs r1, #7
	movs r2, #0
	bl Sound_PlaySong8002574
	bl SetDefaultColorEffects
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B74B0

	THUMB_FUNC_START sub_80B74D8
sub_80B74D8: @ 0x080B74D8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	adds r0, #1
	str r0, [r2, #0x58]
	ldr r0, _080B74FC  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080B74F6
	adds r0, r2, #0
	bl Proc_Break
_080B74F6:
	pop {r0}
	bx r0
	.align 2, 0
_080B74FC: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80B74D8

	THUMB_FUNC_START sub_80B7500
sub_80B7500: @ 0x080B7500
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	adds r5, #0x4c
	strh r4, [r5]
	bl sub_80B745C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B7500

	THUMB_FUNC_START sub_80B7540
sub_80B7540: @ 0x080B7540
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x4c
	ldrh r4, [r5]
	adds r0, r4, #1
	strh r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x12
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	cmp r4, #0x10
	bne _080B756E
	adds r0, r6, #0
	bl Proc_Break
	movs r0, #0
	strh r0, [r5]
_080B756E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B7540

	THUMB_FUNC_START sub_80B7574
sub_80B7574: @ 0x080B7574
	push {lr}
	sub sp, #4
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B7574

	THUMB_FUNC_START sub_80B7598
sub_80B7598: @ 0x080B7598
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B75A8  @ gUnknown_08A3D498
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080B75A8: .4byte gUnknown_08A3D498

	THUMB_FUNC_END sub_80B7598

	THUMB_FUNC_START sub_80B75AC
sub_80B75AC: @ 0x080B75AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B75FC  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _080B7600  @ gUnknown_08A09A5C
	movs r1, #0xa0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B7604  @ Img_ChapterIntroFog
	ldr r1, _080B7608  @ 0x06004000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B760C  @ gBG2TilemapBuffer
	ldr r1, _080B7610  @ gUnknown_085A647C
	movs r2, #0xa4
	lsls r2, r2, #7
	bl CallARM_FillTileRect
	movs r0, #4
	bl BG_EnableSyncByMask
	adds r4, #0x4c
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B75FC: .4byte gLCDControlBuffer
_080B7600: .4byte gUnknown_08A09A5C
_080B7604: .4byte Img_ChapterIntroFog
_080B7608: .4byte 0x06004000
_080B760C: .4byte gBG2TilemapBuffer
_080B7610: .4byte gUnknown_085A647C

	THUMB_FUNC_END sub_80B75AC

	THUMB_FUNC_START sub_80B7614
sub_80B7614: @ 0x080B7614
	push {lr}
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	movs r1, #0
	ldrsh r2, [r0, r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	cmp r0, #0
	bge _080B762C
	adds r0, #7
_080B762C:
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	adds r0, r2, #0
	cmp r0, #0
	bge _080B7638
	adds r0, #3
_080B7638:
	lsls r2, r0, #0xe
	lsrs r2, r2, #0x10
	movs r0, #2
	bl BG_SetPosition
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B7614

	THUMB_FUNC_START sub_80B7648
sub_80B7648: @ 0x080B7648
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	movs r1, #0
	str r1, [r4, #0x30]
	movs r0, #0x20
	str r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	str r1, [r4, #0x2c]
	bl GetNextChapterWinDataEntryIndex
	adds r4, #0x38
	strb r0, [r4]
	ldr r5, _080B76FC  @ gLCDControlBuffer
	ldrb r1, [r5, #1]
	movs r4, #2
	negs r4, r4
	adds r0, r4, #0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	mov sl, r1
	ands r0, r1
	subs r1, #2
	mov r9, r1
	ands r0, r1
	subs r1, #4
	mov r8, r1
	ands r0, r1
	movs r6, #0x11
	negs r6, r6
	ands r0, r6
	strb r0, [r5, #1]
	movs r0, #0
	bl SetPrimaryHBlankHandler
	movs r0, #0
	bl SetupBackgrounds
	ldrb r0, [r5, #1]
	ands r4, r0
	mov r0, sl
	ands r4, r0
	mov r1, r9
	ands r4, r1
	mov r0, r8
	ands r4, r0
	ands r4, r6
	strb r4, [r5, #1]
	bl SetDefaultColorEffects
	bl Font_InitForUIDefault
	ldrb r1, [r5, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #1]
	ldr r0, _080B7700  @ gUnknown_08A40AD4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r0, _080B7704  @ gBG3TilemapBuffer
	ldr r1, _080B7708  @ gUnknown_08A40B14
	movs r2, #0xe0
	lsls r2, r2, #8
	bl CallARM_FillTileRect
	movs r0, #8
	bl BG_EnableSyncByMask
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B76FC: .4byte gLCDControlBuffer
_080B7700: .4byte gUnknown_08A40AD4
_080B7704: .4byte gBG3TilemapBuffer
_080B7708: .4byte gUnknown_08A40B14

	THUMB_FUNC_END sub_80B7648

	THUMB_FUNC_START sub_80B770C
sub_80B770C: @ 0x080B770C
	push {r4, r5, r6, lr}
	ldr r2, _080B77EC  @ 0x0000FF78
	movs r0, #1
	movs r1, #0
	bl BG_SetPosition
	ldr r0, _080B77F0  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x88
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x34
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r5, #4
	orrs r0, r5
	movs r4, #8
	orrs r0, r4
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r2]
	adds r2, #2
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	strb r0, [r2]
	movs r4, #0
	ldr r6, _080B77F4  @ gUnknown_08A3D674
	movs r5, #0x48
_080B7782:
	lsls r1, r4, #3
	ldr r0, [r6]
	adds r0, r0, r1
	movs r1, #5
	bl Text_Init
	ldr r0, [r6]
	adds r0, r0, r5
	movs r1, #0xd
	bl Text_Init
	adds r5, #8
	adds r4, #1
	cmp r4, #8
	ble _080B7782
	ldr r5, _080B77F4  @ gUnknown_08A3D674
	ldr r0, [r5]
	adds r0, #0x90
	movs r1, #4
	bl Text_Init
	ldr r0, [r5]
	adds r0, #0x98
	movs r1, #2
	bl Text_Init
	ldr r4, [r5]
	adds r4, #0x90
	ldr r0, _080B77F8  @ 0x0000015D
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_AppendString
	ldr r0, [r5]
	adds r0, #0x98
	movs r1, #3
	bl Text_SetColorId
	ldr r4, [r5]
	adds r4, #0x98
	ldr r0, _080B77FC  @ 0x00000157
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_AppendString
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B77EC: .4byte 0x0000FF78
_080B77F0: .4byte gLCDControlBuffer
_080B77F4: .4byte gUnknown_08A3D674
_080B77F8: .4byte 0x0000015D
_080B77FC: .4byte 0x00000157

	THUMB_FUNC_END sub_80B770C

	THUMB_FUNC_START sub_80B7800
sub_80B7800: @ 0x080B7800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl __modsi3
	str r0, [sp, #0xc]
	lsls r7, r4, #1
	movs r0, #0x1f
	ands r7, r0
	lsls r6, r7, #5
	lsls r0, r7, #6
	ldr r1, _080B78B8  @ gBG1TilemapBuffer
	mov r9, r1
	add r0, r9
	movs r1, #0x1f
	movs r2, #1
	movs r3, #0
	bl TileMap_FillRect
	movs r0, #2
	bl BG_EnableSyncByMask
	ldr r3, _080B78BC  @ gUnknown_08A3D674
	mov r8, r3
	ldr r0, [sp, #0xc]
	lsls r4, r0, #3
	ldr r0, [r3]
	adds r0, r0, r4
	bl Text_Clear
	adds r5, r4, #0
	adds r5, #0x48
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r5
	bl Text_Clear
	movs r0, #1
	negs r0, r0
	ldr r3, [sp, #8]
	cmp r3, r0
	bne _080B78C4
	bl GetGameTotalTurnCount
	adds r4, r0, #0
	ldr r0, _080B78C0  @ 0x0000015F
	bl GetStringFromIndex
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r5
	adds r1, r6, #0
	adds r1, #0xc
	lsls r1, r1, #1
	add r1, r9
	ldr r3, [sp, #0x10]
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #3
	movs r3, #0
	bl DrawTextInline
	adds r0, r6, #0
	adds r0, #0x17
	lsls r0, r0, #1
	add r0, r9
	movs r1, #2
	adds r2, r4, #0
	bl sub_8004B88
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x90
	adds r1, r6, #0
	adds r1, #0x18
	lsls r1, r1, #1
	add r1, r9
	bl Text_Draw
	movs r0, #0
	b _080B7B18
	.align 2, 0
_080B78B8: .4byte gBG1TilemapBuffer
_080B78BC: .4byte gUnknown_08A3D674
_080B78C0: .4byte 0x0000015F
_080B78C4:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _080B78CC
	b _080B7B16
_080B78CC:
	ldr r0, [r3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	mov sl, r0
	bl GetROMChapterStruct
	adds r0, #0x80
	ldrb r0, [r0]
	lsrs r0, r0, #1
	mov r9, r0
	mov r0, sl
	cmp r0, #0x23
	bls _080B78E8
	b _080B7A40
_080B78E8:
	lsls r0, r0, #2
	ldr r1, _080B78F4  @ _080B78F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B78F4: .4byte _080B78F8
_080B78F8: @ jump table
	.4byte _080B7988 @ case 0
	.4byte _080B7A40 @ case 1
	.4byte _080B7A40 @ case 2
	.4byte _080B7A40 @ case 3
	.4byte _080B7A40 @ case 4
	.4byte _080B79CC @ case 5
	.4byte _080B7A40 @ case 6
	.4byte _080B7A40 @ case 7
	.4byte _080B7A40 @ case 8
	.4byte _080B7A40 @ case 9
	.4byte _080B7A40 @ case 10
	.4byte _080B7A40 @ case 11
	.4byte _080B7A40 @ case 12
	.4byte _080B7A40 @ case 13
	.4byte _080B7A40 @ case 14
	.4byte _080B7A40 @ case 15
	.4byte _080B7A40 @ case 16
	.4byte _080B7A40 @ case 17
	.4byte _080B7A40 @ case 18
	.4byte _080B7A40 @ case 19
	.4byte _080B7A40 @ case 20
	.4byte _080B798E @ case 21
	.4byte _080B798E @ case 22
	.4byte _080B7A40 @ case 23
	.4byte _080B7A40 @ case 24
	.4byte _080B7A40 @ case 25
	.4byte _080B7A40 @ case 26
	.4byte _080B7A40 @ case 27
	.4byte _080B7A40 @ case 28
	.4byte _080B7A40 @ case 29
	.4byte _080B7A40 @ case 30
	.4byte _080B7A40 @ case 31
	.4byte _080B7A40 @ case 32
	.4byte _080B7A40 @ case 33
	.4byte _080B798E @ case 34
	.4byte _080B798E @ case 35
_080B7988:
	movs r0, #0xad
	lsls r0, r0, #1
	b _080B7990
_080B798E:
	ldr r0, _080B79C0  @ 0x00000159
_080B7990:
	bl GetStringFromIndex
	adds r3, r0, #0
	ldr r0, _080B79C4  @ gUnknown_08A3D674
	ldr r1, [sp, #0xc]
	lsls r5, r1, #3
	ldr r0, [r0]
	adds r0, r0, r5
	lsls r4, r7, #5
	adds r1, r4, #3
	lsls r1, r1, #1
	ldr r2, _080B79C8  @ gBG1TilemapBuffer
	adds r1, r1, r2
	movs r2, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #3
	movs r3, #0
	bl DrawTextInline
	mov r8, r4
	adds r6, r5, #0
	b _080B7A84
	.align 2, 0
_080B79C0: .4byte 0x00000159
_080B79C4: .4byte gUnknown_08A3D674
_080B79C8: .4byte gBG1TilemapBuffer
_080B79CC:
	ldr r3, _080B7A38  @ gUnknown_08A3D674
	mov r8, r3
	ldr r0, [r3]
	adds r0, #0x98
	lsls r6, r7, #5
	adds r1, r6, #3
	lsls r1, r1, #1
	ldr r5, _080B7A3C  @ gBG1TilemapBuffer
	adds r1, r1, r5
	bl Text_Draw
	mov r0, r9
	bl sub_80AEBEC
	adds r0, #1
	adds r0, #3
	adds r0, r6, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #2
	mov r2, r9
	bl sub_8004B88
	mov r0, r9
	bl sub_80AEBEC
	adds r4, r0, #0
	adds r4, #2
	adds r4, #3
	adds r4, r6, r4
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r0, #0xac
	lsls r0, r0, #1
	bl GetStringFromIndex
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	lsls r5, r0, #3
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r5
	movs r1, #0
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #0
	bl DrawTextInline
	mov r8, r6
	adds r6, r5, #0
	b _080B7A84
	.align 2, 0
_080B7A38: .4byte gUnknown_08A3D674
_080B7A3C: .4byte gBG1TilemapBuffer
_080B7A40:
	ldr r0, _080B7AAC  @ 0x00000157
	bl GetStringFromIndex
	adds r3, r0, #0
	ldr r0, _080B7AB0  @ gUnknown_08A3D674
	ldr r1, [sp, #0xc]
	lsls r6, r1, #3
	ldr r0, [r0]
	adds r0, r0, r6
	lsls r4, r7, #5
	adds r1, r4, #3
	lsls r1, r1, #1
	ldr r5, _080B7AB4  @ gBG1TilemapBuffer
	adds r1, r1, r5
	movs r2, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #3
	movs r3, #0
	bl DrawTextInline
	mov r0, r9
	bl sub_80AEBEC
	adds r0, #1
	adds r0, #3
	adds r0, r4, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #2
	mov r2, r9
	bl sub_8004B88
	mov r8, r4
_080B7A84:
	mov r3, sl
	cmp r3, #0x15
	blt _080B7AB8
	cmp r3, #0x16
	ble _080B7A96
	cmp r3, #0x23
	bgt _080B7AB8
	cmp r3, #0x22
	blt _080B7AB8
_080B7A96:
	ldr r1, [sp, #8]
	ldm r1!, {r0}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x17
	ldr r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	adds r7, r7, r0
	movs r3, #1
	str r3, [sp, #0x10]
	b _080B7AC0
	.align 2, 0
_080B7AAC: .4byte 0x00000157
_080B7AB0: .4byte gUnknown_08A3D674
_080B7AB4: .4byte gBG1TilemapBuffer
_080B7AB8:
	ldr r1, [sp, #8]
	ldr r0, [r1]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x17
_080B7AC0:
	mov r0, sl
	bl GetROMChapterStruct
	adds r0, #0x70
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r3, r0, #0
	ldr r5, _080B7B28  @ gUnknown_08A3D674
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, [r5]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #5
	adds r1, #3
	lsls r1, r1, #1
	ldr r4, _080B7B2C  @ gBG1TilemapBuffer
	adds r1, r1, r4
	movs r2, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl DrawTextInline
	mov r0, r8
	adds r0, #0x14
	adds r0, #3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #2
	adds r2, r7, #0
	bl sub_8004B88
	ldr r0, [r5]
	adds r0, #0x90
	mov r1, r8
	adds r1, #0x15
	adds r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	bl Text_Draw
_080B7B16:
	ldr r0, [sp, #0x10]
_080B7B18:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B7B28: .4byte gUnknown_08A3D674
_080B7B2C: .4byte gBG1TilemapBuffer

	THUMB_FUNC_END sub_80B7800

	THUMB_FUNC_START sub_80B7B30
sub_80B7B30: @ 0x080B7B30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	asrs r5, r0, #6
	adds r2, r5, #0
	subs r2, #0x88
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0
	bl BG_SetPosition
	movs r0, #0xf
	ands r0, r5
	cmp r0, #0
	bne _080B7BB2
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r5, r0, #0
	cmp r2, #0
	bge _080B7B60
	adds r2, #0xf
_080B7B60:
	asrs r0, r2, #4
	cmp r1, r0
	bne _080B7BB2
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	ldr r0, [r4, #0x2c]
	cmp r0, r2
	blt _080B7B96
	subs r0, r0, r2
	cmp r0, #1
	bne _080B7B82
	movs r0, #1
	negs r0, r0
	bl sub_80B7800
	b _080B7BA6
_080B7B82:
	cmp r0, #2
	ble _080B7B8E
	adds r0, r4, #0
	bl Proc_Break
	b _080B7BA6
_080B7B8E:
	movs r0, #0
	bl sub_80B7800
	b _080B7BA6
_080B7B96:
	bl GetChapterWinDataEntry
	ldrb r1, [r5]
	bl sub_80B7800
	ldr r1, [r4, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x2c]
_080B7BA6:
	ldr r0, [r4, #0x2c]
	adds r0, #1
	str r0, [r4, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080B7BB2:
	ldr r0, _080B7BD4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	ldr r1, [r4, #0x34]
	cmp r0, #0
	beq _080B7BC8
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
_080B7BC8:
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B7BD4: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80B7B30

	THUMB_FUNC_START sub_80B7BD8
sub_80B7BD8: @ 0x080B7BD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	ldr r3, _080B7DC8  @ gUnknown_08A3D540
	ldr r0, _080B7DCC  @ 0x00009480
	str r0, [sp]
	movs r0, #2
	movs r1, #0x18
	movs r2, #0x14
	bl PutSpriteExt
	ldr r3, _080B7DD0  @ gUnknown_08A3D5B4
	movs r0, #0xc9
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x80
	bl PutSpriteExt
	ldr r0, _080B7DD4  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080B7C16
	b _080B7E00
_080B7C16:
	ldr r3, _080B7DD8  @ gUnknown_08A3D560
	ldr r4, _080B7DDC  @ 0x00008480
	str r4, [sp]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x38
	bl PutSpriteExt
	ldr r3, _080B7DE0  @ gUnknown_08A3D56E
	str r4, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #0x38
	bl PutSpriteExt
	ldr r3, _080B7DE4  @ gUnknown_08A3D58A
	str r4, [sp]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x58
	bl PutSpriteExt
	ldr r3, _080B7DE8  @ gUnknown_08A3D5A6
	movs r0, #0xe9
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #0x58
	bl PutSpriteExt
	movs r7, #0
	ldr r0, [sp, #4]
	adds r0, #0x4c
	mov sl, r0
	ldr r1, _080B7DEC  @ gSinLookup
	mov r9, r1
	mov r8, sl
_080B7C62:
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0x10
	bls _080B7D10
	ldr r4, _080B7DF0  @ gCosLookup
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	ldrh r1, [r2]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r9
	movs r4, #0
	ldrsh r0, [r2, r4]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r4, r8
	ldrh r1, [r4]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, _080B7DF0  @ gCosLookup
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	movs r0, #1
	ands r0, r7
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	lsls r0, r7, #9
	adds r0, #0x50
	adds r1, r1, r0
	asrs r2, r7, #1
	lsls r2, r2, #5
	movs r4, #0x98
	lsls r4, r4, #1
	adds r2, r2, r4
	ldr r3, _080B7DF4  @ gUnknown_08A3D624
	ldr r0, [sp, #4]
	adds r0, #0x40
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	movs r4, #0xf
	ands r0, r4
	lsls r0, r0, #0xc
	movs r4, #0x90
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [sp]
	movs r0, #2
	bl PutSpriteExt
_080B7D10:
	movs r0, #2
	add r8, r0
	adds r7, #1
	cmp r7, #2
	ble _080B7C62
	lsls r0, r7, #1
	add sl, r0
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0x10
	bhi _080B7D28
	b _080B7FD2
_080B7D28:
	ldr r4, _080B7DEC  @ gSinLookup
	movs r2, #0x80
	adds r2, r2, r4
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r2, sl
	ldrh r1, [r2]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r1, r8
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	mov r2, sl
	ldrh r1, [r2]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	movs r0, #1
	ands r0, r7
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	lsls r0, r7, #9
	adds r0, #0x50
	adds r1, r1, r0
	asrs r2, r7, #1
	lsls r2, r2, #5
	movs r4, #0x98
	lsls r4, r4, #1
	adds r2, r2, r4
	ldr r3, _080B7DF8  @ gUnknown_08A3D63C
	ldr r0, [sp, #4]
	adds r0, #0x40
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldr r0, _080B7DFC  @ 0x0000F480
	str r0, [sp]
	movs r0, #2
	bl PutSpriteExt
	b _080B7FD2
	.align 2, 0
_080B7DC8: .4byte gUnknown_08A3D540
_080B7DCC: .4byte 0x00009480
_080B7DD0: .4byte gUnknown_08A3D5B4
_080B7DD4: .4byte gRAMChapterData
_080B7DD8: .4byte gUnknown_08A3D560
_080B7DDC: .4byte 0x00008480
_080B7DE0: .4byte gUnknown_08A3D56E
_080B7DE4: .4byte gUnknown_08A3D58A
_080B7DE8: .4byte gUnknown_08A3D5A6
_080B7DEC: .4byte gSinLookup
_080B7DF0: .4byte gCosLookup
_080B7DF4: .4byte gUnknown_08A3D624
_080B7DF8: .4byte gUnknown_08A3D63C
_080B7DFC: .4byte 0x0000F480
_080B7E00:
	ldr r3, _080B7FE4  @ gUnknown_08A3D560
	ldr r4, _080B7FE8  @ 0x00008480
	str r4, [sp]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x30
	bl PutSpriteExt
	ldr r3, _080B7FEC  @ gUnknown_08A3D56E
	str r4, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #0x30
	bl PutSpriteExt
	ldr r3, _080B7FF0  @ gUnknown_08A3D598
	str r4, [sp]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x48
	bl PutSpriteExt
	ldr r3, _080B7FF4  @ gUnknown_08A3D57C
	str r4, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #0x48
	bl PutSpriteExt
	ldr r3, _080B7FF8  @ gUnknown_08A3D58A
	str r4, [sp]
	movs r0, #2
	movs r1, #0x10
	movs r2, #0x60
	bl PutSpriteExt
	ldr r3, _080B7FFC  @ gUnknown_08A3D5A6
	movs r0, #0xe9
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #0x60
	bl PutSpriteExt
	movs r7, #0
	ldr r0, [sp, #4]
	adds r0, #0x4c
	mov sl, r0
	ldr r1, _080B8000  @ gSinLookup
	mov r9, r1
	mov r8, sl
_080B7E68:
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0x10
	bls _080B7F1A
	ldr r4, _080B8004  @ gCosLookup
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	ldrh r1, [r2]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r9
	movs r4, #0
	ldrsh r0, [r2, r4]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r4, r8
	ldrh r1, [r4]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, _080B8004  @ gCosLookup
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	movs r0, #1
	ands r0, r7
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	lsls r0, r7, #9
	adds r0, #0x50
	adds r1, r1, r0
	asrs r0, r7, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	movs r4, #0x94
	lsls r4, r4, #1
	adds r2, r2, r4
	ldr r3, _080B8008  @ gUnknown_08A3D624
	ldr r0, [sp, #4]
	adds r0, #0x40
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	movs r4, #0xf
	ands r0, r4
	lsls r0, r0, #0xc
	movs r4, #0x90
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [sp]
	movs r0, #2
	bl PutSpriteExt
_080B7F1A:
	movs r0, #2
	add r8, r0
	adds r7, #1
	cmp r7, #4
	ble _080B7E68
	lsls r0, r7, #1
	add sl, r0
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0x10
	bls _080B7FD2
	ldr r4, _080B8000  @ gSinLookup
	movs r2, #0x80
	adds r2, r2, r4
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r2, sl
	ldrh r1, [r2]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r1, r8
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	mov r2, sl
	ldrh r1, [r2]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	movs r0, #1
	ands r0, r7
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	lsls r0, r7, #9
	adds r0, #0x50
	adds r1, r1, r0
	asrs r0, r7, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	movs r4, #0x94
	lsls r4, r4, #1
	adds r2, r2, r4
	ldr r3, _080B800C  @ gUnknown_08A3D63C
	ldr r0, [sp, #4]
	adds r0, #0x40
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldr r0, _080B8010  @ 0x0000F480
	str r0, [sp]
	movs r0, #2
	bl PutSpriteExt
_080B7FD2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7FE4: .4byte gUnknown_08A3D560
_080B7FE8: .4byte 0x00008480
_080B7FEC: .4byte gUnknown_08A3D56E
_080B7FF0: .4byte gUnknown_08A3D598
_080B7FF4: .4byte gUnknown_08A3D57C
_080B7FF8: .4byte gUnknown_08A3D58A
_080B7FFC: .4byte gUnknown_08A3D5A6
_080B8000: .4byte gSinLookup
_080B8004: .4byte gCosLookup
_080B8008: .4byte gUnknown_08A3D624
_080B800C: .4byte gUnknown_08A3D63C
_080B8010: .4byte 0x0000F480

	THUMB_FUNC_END sub_80B7BD8

	THUMB_FUNC_START sub_80B8014
sub_80B8014: @ 0x080B8014
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080B8134  @ gBG2TilemapBuffer
	adds r0, r6, #0
	movs r1, #0
	bl BG_Fill
	ldr r5, _080B8138  @ gBG3TilemapBuffer
	adds r0, r5, #0
	movs r1, #0
	bl BG_Fill
	ldr r2, _080B813C  @ gLCDControlBuffer
	ldrb r3, [r2, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xc]
	ldrb r3, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r3
	movs r4, #1
	orrs r0, r4
	strb r0, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	ands r1, r0
	movs r3, #2
	orrs r1, r3
	strb r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #1]
	orrs r0, r4
	orrs r0, r3
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	movs r0, #1
	movs r1, #6
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r4, _080B8140  @ gUnknown_08A21658
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B8144  @ gUnknown_08A25DCC
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl CopyToPaletteBuffer
	ldr r1, _080B8148  @ gUnknown_08A25ECC
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r5, #0
	bl CallARM_FillTileRect
	ldr r4, _080B814C  @ gUnknown_08A26380
	movs r0, #2
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080B8150  @ 0x06004C00
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B8154  @ gUnknown_08A268F8
	ldr r4, _080B8158  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B815C  @ gUnknown_08A268D8
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r2, _080B8160  @ 0x00007260
	adds r0, r6, #0
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r0, #0xc
	bl BG_EnableSyncByMask
	ldr r0, _080B8164  @ gUnknown_02000000
	bl sub_80AB760
	movs r0, #0x46
	movs r1, #0
	bl Sound_PlaySong80024D4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B8134: .4byte gBG2TilemapBuffer
_080B8138: .4byte gBG3TilemapBuffer
_080B813C: .4byte gLCDControlBuffer
_080B8140: .4byte gUnknown_08A21658
_080B8144: .4byte gUnknown_08A25DCC
_080B8148: .4byte gUnknown_08A25ECC
_080B814C: .4byte gUnknown_08A26380
_080B8150: .4byte 0x06004C00
_080B8154: .4byte gUnknown_08A268F8
_080B8158: .4byte gUnknown_02020188
_080B815C: .4byte gUnknown_08A268D8
_080B8160: .4byte 0x00007260
_080B8164: .4byte gUnknown_02000000

	THUMB_FUNC_END sub_80B8014

	THUMB_FUNC_START sub_80B8168
sub_80B8168: @ 0x080B8168
	push {lr}
	bl sub_80AB77C
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B8168

	THUMB_FUNC_START sub_80B8174
sub_80B8174: @ 0x080B8174
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B8184  @ gUnknown_08A3D678
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080B8184: .4byte gUnknown_08A3D678

	THUMB_FUNC_END sub_80B8174

	THUMB_FUNC_START sub_80B8188
sub_80B8188: @ 0x080B8188
	bx lr

	THUMB_FUNC_END sub_80B8188

	THUMB_FUNC_START nullsub_7
nullsub_7: @ 0x080B818C
	bx lr

	THUMB_FUNC_END nullsub_7

	THUMB_FUNC_START sub_80B8190
sub_80B8190: @ 0x080B8190
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	movs r0, #0x1f
	mov r8, r0
	movs r2, #0xf8
	lsls r2, r2, #2
	mov ip, r2
	movs r7, #0xf8
	lsls r7, r7, #7
	mov r9, r7
	movs r6, #0xf
_080B81B2:
	ldrh r2, [r4]
	movs r0, #0x1f
	ands r0, r2
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	mov r0, r8
	ands r1, r0
	mov r0, ip
	ands r0, r2
	muls r0, r3, r0
	asrs r0, r0, #5
	mov r7, ip
	ands r0, r7
	adds r1, r1, r0
	mov r0, r9
	ands r0, r2
	muls r0, r3, r0
	asrs r0, r0, #5
	mov r2, r9
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _080B81B2
	bl EnablePaletteSync
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B8190

	THUMB_FUNC_START nullsub_5
nullsub_5: @ 0x080B81FC
	bx lr

	THUMB_FUNC_END nullsub_5

	THUMB_FUNC_START sub_80B8200
sub_80B8200: @ 0x080B8200
	push {lr}
	movs r0, #4
	bl Sound_FadeOutBGM
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B8200

	THUMB_FUNC_START sub_80B820C
sub_80B820C: @ 0x080B820C
	push {r4, lr}
	movs r2, #0
	ldr r1, _080B8238  @ 0x0000FFFF
	adds r4, r1, #0
	adds r1, r0, #0
	adds r1, #0x2c
	movs r3, #1
_080B821A:
	str r2, [r1, #4]
	strb r2, [r1, #0xa]
	strh r2, [r1, #2]
	strh r2, [r1]
	ldrh r0, [r1, #8]
	orrs r0, r4
	strh r0, [r1, #8]
	adds r1, #0xc
	subs r3, #1
	cmp r3, #0
	bge _080B821A
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8238: .4byte 0x0000FFFF

	THUMB_FUNC_END sub_80B820C

	THUMB_FUNC_START sub_80B823C
sub_80B823C: @ 0x080B823C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #0x2a]
	ldr r0, _080B8268  @ gUnknown_08A3D6E0
	adds r1, r5, #0
	bl Proc_Start
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x30
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B8268: .4byte gUnknown_08A3D6E0

	THUMB_FUNC_END sub_80B823C

	THUMB_FUNC_START sub_80B826C
sub_80B826C: @ 0x080B826C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	subs r2, #0x30
	adds r0, r2, #0
	cmp r2, #0
	bge _080B827E
	adds r0, r3, #0
	subs r0, #0x29
_080B827E:
	asrs r3, r0, #3
	lsls r0, r3, #3
	subs r0, r0, r2
	str r0, [r1]
	adds r0, r3, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B826C

	THUMB_FUNC_START sub_80B828C
sub_80B828C: @ 0x080B828C
	push {lr}
	ldr r0, _080B82A4  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _080B829E
	movs r1, #2
_080B829E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B82A4: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B828C

	THUMB_FUNC_START sub_80B82A8
sub_80B82A8: @ 0x080B82A8
	push {lr}
	ldr r0, _080B82C4  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r0, #0
	beq _080B82BE
	movs r1, #0xa0
	lsls r1, r1, #7
_080B82BE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B82C4: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B82A8

	THUMB_FUNC_START sub_80B82C8
sub_80B82C8: @ 0x080B82C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sl, r1
	adds r0, r2, #0
	adds r6, r3, #0
	ldr r1, [sp, #0x24]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	mov r1, sp
	bl sub_80B826C
	mov r8, r0
	adds r4, r6, #0
	cmp r6, #0
	bge _080B82F4
	adds r4, r6, #7
_080B82F4:
	asrs r4, r4, #3
	lsls r5, r4, #3
	subs r5, r5, r6
	adds r0, r7, #0
	bl BG_GetMapBuffer
	lsls r4, r4, #6
	adds r0, r0, r4
	mov r2, r8
	lsls r1, r2, #1
	adds r0, r0, r1
	mov r3, sl
	lsrs r1, r3, #5
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, r9
	lsls r2, r3, #0x18
	asrs r2, r2, #0x18
	bl sub_8006738
	movs r0, #1
	lsls r0, r7
	bl BG_EnableSyncByMask
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r2, r5, #0
	bl BG_SetPosition
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B82C8

	THUMB_FUNC_START sub_80B8350
sub_80B8350: @ 0x080B8350
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0x31
	ldrb r1, [r4]
	lsrs r1, r1, #1
	movs r2, #0x10
	subs r2, r2, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r1, r7, #0
	adds r1, #0x30
	ldrb r0, [r1]
	ldrb r2, [r4]
	adds r0, r0, r2
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B83D2
	movs r6, #0
	mov r8, r1
	movs r0, #1
	negs r0, r0
	mov r9, r0
	movs r4, #0
	movs r5, #0
_080B8392:
	ldr r1, [r7, #0x2c]
	adds r0, r1, #0
	adds r0, #0x30
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _080B83C4
	adds r0, r1, r4
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r9
	bne _080B83C4
	adds r0, r6, #0
	bl DeleteFaceByIndex
	ldr r0, [r7, #0x2c]
	adds r0, r0, r4
	adds r0, #0x36
	strb r5, [r0]
	ldr r0, [r7, #0x2c]
	adds r0, #0x30
	adds r0, r0, r4
	str r5, [r0]
_080B83C4:
	adds r4, #0xc
	adds r6, #1
	cmp r6, #1
	ble _080B8392
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_080B83D2:
	adds r0, r7, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _080B842A
	movs r2, #0x30
	adds r2, r2, r7
	mov r8, r2
	movs r5, #0
	movs r6, #1
_080B83E6:
	ldr r1, [r7, #0x2c]
	adds r0, r1, #0
	adds r0, #0x30
	adds r0, r0, r5
	ldr r4, [r0]
	cmp r4, #0
	beq _080B841C
	adds r0, r1, r5
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080B841C
	adds r0, r4, #0
	bl sub_80057A4
	ldr r1, _080B8438  @ 0xFFFFFBFF
	ands r1, r0
	adds r0, r4, #0
	bl sub_8005770
	ldr r0, [r7, #0x2c]
	adds r0, r0, r5
	adds r0, #0x36
	movs r1, #0
	strb r1, [r0]
_080B841C:
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bge _080B83E6
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_080B842A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B8438: .4byte 0xFFFFFBFF

	THUMB_FUNC_END sub_80B8350

	THUMB_FUNC_START sub_80B843C
sub_80B843C: @ 0x080B843C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, [r0, #0x2c]
	str r0, [sp, #8]
	bl sub_80B828C
	mov sl, r0
	ldr r0, [sp, #8]
	adds r0, #0x2e
	mov r9, r0
	ldr r1, [sp, #8]
	adds r1, #0x2c
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	movs r3, #1
	str r3, [sp, #4]
_080B8466:
	movs r7, #0
	ldr r0, [sp, #8]
	adds r0, #0x30
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080B8478
	b _080B8602
_080B8478:
	adds r6, r0, #0
	ldr r2, [sp, #0xc]
	movs r3, #0
	ldrsh r4, [r2, r3]
	mov r5, r9
	ldrh r2, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080B850C
	movs r1, #0xff
	ands r1, r2
	cmp r1, #0xf
	bhi _080B850C
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080B84BA
	movs r0, #0x10
	subs r0, r0, r1
	lsls r1, r0, #5
	muls r0, r1, r0
	cmp r0, #0
	bge _080B84B2
	adds r0, #0xff
_080B84B2:
	asrs r0, r0, #8
	adds r0, r4, r0
	strh r0, [r6, #0x34]
	movs r7, #1
_080B84BA:
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B84E2
	movs r0, #0xff
	ands r0, r1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r1, #5
	muls r0, r1, r0
	cmp r0, #0
	bge _080B84DA
	adds r0, #0xff
_080B84DA:
	asrs r0, r0, #8
	subs r0, r4, r0
	strh r0, [r6, #0x34]
	movs r7, #1
_080B84E2:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r3, #0xff
	ands r0, r3
	cmp r0, #0xf
	bls _080B850C
	movs r7, #2
	adds r0, r6, #0
	bl sub_80057A4
	ldr r1, _080B85AC  @ 0xFFFFBFFF
	ands r1, r0
	adds r0, r6, #0
	bl sub_8005770
	ldrh r0, [r5]
	ldr r2, _080B85B0  @ 0x0000F7FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
_080B850C:
	ldrh r1, [r5]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B85A2
	movs r0, #0xff
	mov r8, r0
	ands r0, r1
	cmp r0, #0xf
	bhi _080B85A2
	cmp r0, #0
	bne _080B853A
	adds r0, r6, #0
	bl sub_80057A4
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r1, r0
	adds r0, r6, #0
	bl sub_8005770
_080B853A:
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8566
	adds r2, r4, #0
	subs r2, #0x20
	mov r0, r8
	ands r0, r1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r1, #5
	muls r0, r1, r0
	cmp r0, #0
	bge _080B855E
	adds r0, #0xff
_080B855E:
	asrs r0, r0, #8
	adds r0, r2, r0
	strh r0, [r6, #0x34]
	movs r7, #1
_080B8566:
	ldrh r1, [r5]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8592
	adds r2, r4, #0
	adds r2, #0x20
	movs r0, #0xff
	ands r0, r1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r1, #5
	muls r0, r1, r0
	cmp r0, #0
	bge _080B858A
	adds r0, #0xff
_080B858A:
	asrs r0, r0, #8
	subs r0, r2, r0
	strh r0, [r6, #0x34]
	movs r7, #1
_080B8592:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xf
	bls _080B85A2
	movs r7, #2
_080B85A2:
	cmp r7, #1
	beq _080B85B4
	cmp r7, #2
	beq _080B85EC
	b _080B8602
	.align 2, 0
_080B85AC: .4byte 0xFFFFBFFF
_080B85B0: .4byte 0x0000F7FF
_080B85B4:
	mov r0, sl
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	bl sub_80B828C
	adds r4, r0, #0
	bl sub_80B82A8
	adds r1, r0, #0
	movs r3, #0x34
	ldrsh r2, [r6, r3]
	ldrh r0, [r5]
	lsrs r0, r0, #0xa
	ands r0, r7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x1c
	bl sub_80B82C8
	mov r0, sl
	lsls r7, r0
	adds r0, r7, #0
	bl BG_EnableSyncByMask
	b _080B8602
_080B85EC:
	mov r0, sl
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #1
	mov r1, sl
	lsls r0, r1
	bl BG_EnableSyncByMask
_080B8602:
	movs r2, #0xc
	add r9, r2
	ldr r3, [sp, #0xc]
	adds r3, #0xc
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r0, #0xc
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	subs r1, #1
	str r1, [sp, #4]
	cmp r1, #0
	blt _080B861E
	b _080B8466
_080B861E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B843C

	THUMB_FUNC_START sub_80B8630
sub_80B8630: @ 0x080B8630
	push {r4, lr}
	sub sp, #0x38
	adds r4, r0, #0
	ldr r1, _080B8678  @ gUnknown_08205F28
	mov r0, sp
	movs r2, #0x37
	bl memcpy
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	ldrh r0, [r4, #0x2a]
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080B8654
	movs r0, #0
	strh r0, [r4, #0x2a]
_080B8654:
	adds r0, r4, #0
	bl sub_80B843C
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B866E
	adds r0, r4, #0
	bl sub_80B8350
_080B866E:
	add sp, #0x38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8678: .4byte gUnknown_08205F28

	THUMB_FUNC_END sub_80B8630

	THUMB_FUNC_START nullsub_57
nullsub_57: @ 0x080B867C
	bx lr

	THUMB_FUNC_END nullsub_57

	THUMB_FUNC_START sub_80B8680
sub_80B8680: @ 0x080B8680
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B8690  @ gUnknown_08A3D700
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080B8690: .4byte gUnknown_08A3D700

	THUMB_FUNC_END sub_80B8680

	THUMB_FUNC_START sub_80B8694
sub_80B8694: @ 0x080B8694
	push {lr}
	ldr r0, _080B86A0  @ gUnknown_08A3D700
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080B86A0: .4byte gUnknown_08A3D700

	THUMB_FUNC_END sub_80B8694

	THUMB_FUNC_START sub_80B86A4
sub_80B86A4: @ 0x080B86A4
	push {r4, lr}
	ldr r4, _080B86BC  @ gUnknown_08A3D700
	adds r0, r4, #0
	bl Proc_Find
	adds r0, r4, #0
	bl Proc_Find
	cmp r0, #0
	bne _080B86C0
	movs r0, #0x10
	b _080B86C6
	.align 2, 0
_080B86BC: .4byte gUnknown_08A3D700
_080B86C0:
	adds r0, #0x31
	ldrb r0, [r0]
	lsrs r0, r0, #1
_080B86C6:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B86A4

	THUMB_FUNC_START sub_80B86CC
sub_80B86CC: @ 0x080B86CC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _080B8728  @ gUnknown_08A3D700
	bl Proc_Find
	mov r9, r0
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, #0x2c
	mov r2, r9
	ldr r1, [r2, #0x2c]
	adds r5, r1, r0
	ldr r0, _080B872C  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080B8730
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	b _080B874E
	.align 2, 0
_080B8728: .4byte gUnknown_08A3D700
_080B872C: .4byte gUnknown_03005280
_080B8730:
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
_080B874E:
	bl sub_80B828C
	adds r7, r0, #0
	bl sub_80B82A8
	adds r1, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080B8834
	strh r6, [r5, #8]
	movs r0, #0xff
	ands r0, r4
	strh r0, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r4
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	strh r0, [r5, #2]
	lsrs r0, r1, #5
	adds r1, r6, #0
	bl sub_80066FC
	movs r0, #4
	adds r1, r6, #0
	bl sub_800671C
	adds r0, r7, #0
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	ldr r1, _080B87D8  @ 0x00004482
	cmp r0, #0
	beq _080B87A4
	adds r1, #1
_080B87A4:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080B87B4
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
_080B87B4:
	str r1, [sp]
	mov r0, r8
	adds r1, r6, #0
	movs r3, #0x1c
	bl sub_80064F4
	adds r2, r0, #0
	str r2, [r5, #4]
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r0, r4, #0
	ands r0, r1
	cmp r0, r1
	bne _080B87DC
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #6
	b _080B8806
	.align 2, 0
_080B87D8: .4byte 0x00004482
_080B87DC:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080B87EE
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #5
	b _080B8806
_080B87EE:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _080B8800
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #4
	b _080B8806
_080B8800:
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #3
_080B8806:
	strb r0, [r1]
	mov r0, r8
	movs r1, #5
	bl sub_8006458
	movs r0, #1
	strb r0, [r5, #0xa]
	mov r1, r9
	adds r1, #0x30
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _080B8834
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
_080B8834:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B86CC

	THUMB_FUNC_START sub_80B8844
sub_80B8844: @ 0x080B8844
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080B8894  @ gUnknown_08A3D700
	bl Proc_Find
	adds r6, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	ldr r1, [r6, #0x2c]
	adds r4, r1, r0
	ldr r0, _080B8898  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080B889C
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	b _080B88BA
	.align 2, 0
_080B8894: .4byte gUnknown_08A3D700
_080B8898: .4byte gUnknown_03005280
_080B889C:
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
_080B88BA:
	bl sub_80B828C
	adds r5, r0, #0
	bl sub_80B82A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080B894E
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _080B894E
	lsrs r0, r2, #5
	movs r2, #8
	ldrsh r1, [r4, r2]
	bl sub_80066FC
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r0, #4
	bl sub_800671C
	adds r0, r5, #0
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	ldrh r0, [r4, #2]
	ldr r1, _080B8910  @ 0xFFFFFF00
	ands r1, r0
	movs r2, #0xc0
	lsls r2, r2, #2
	ands r2, r7
	cmp r2, #0
	beq _080B8918
	ldr r0, _080B8914  @ 0x0000FCFF
	ands r1, r0
	orrs r1, r2
	b _080B891C
	.align 2, 0
_080B8910: .4byte 0xFFFFFF00
_080B8914: .4byte 0x0000FCFF
_080B8918:
	ldr r0, _080B8958  @ 0x0000FCFF
	ands r1, r0
_080B891C:
	movs r0, #0xff
	lsls r0, r0, #8
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	strh r0, [r4, #2]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	adds r1, r6, #0
	adds r1, #0x30
	movs r0, #0xfe
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B894E
	movs r0, #0x20
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
_080B894E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B8958: .4byte 0x0000FCFF

	THUMB_FUNC_END sub_80B8844

	THUMB_FUNC_START sub_80B895C
sub_80B895C: @ 0x080B895C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _080B8A10  @ gUnknown_08A3D700
	bl Proc_Find
	adds r7, r0, #0
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0x2c
	mov r9, r0
	movs r1, #1
	mov r8, r1
_080B8994:
	ldr r0, [r7, #0x2c]
	mov r2, r9
	adds r5, r0, r2
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _080B89F0
	ldrh r1, [r5, #2]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B89F0
	adds r0, r4, #0
	bl sub_80057A4
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r1, r0
	adds r0, r4, #0
	bl sub_8005770
	ldrh r0, [r5, #2]
	ldr r2, _080B8A14  @ 0xFFFFFF00
	adds r1, r2, #0
	ands r0, r1
	adds r0, r0, r6
	strh r0, [r5, #2]
	movs r0, #0xff
	strb r0, [r5, #0xa]
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #0xfe
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080B89F0
	movs r0, #0x20
	strb r0, [r1]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
_080B89F0:
	movs r0, #0xc
	add r9, r0
	movs r1, #1
	negs r1, r1
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge _080B8994
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B8A10: .4byte gUnknown_08A3D700
_080B8A14: .4byte 0xFFFFFF00

	THUMB_FUNC_END sub_80B895C

	THUMB_FUNC_START WorldMap_Destruct
WorldMap_Destruct: @ 0x080B8A18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	bl Proc_End
	ldr r0, [r4, #0x44]
	bl Proc_End
	ldr r0, [r4, #0x48]
	bl Proc_End
	movs r0, #0
	bl SetSecondaryHBlankHandler
	bl sub_80C1D70
	movs r0, #0
	bl SetPrimaryHBlankHandler
	bl sub_8006A7C
	bl sub_8008250
	bl SMS_ClearUsageTable
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	bl sub_80BF15C
	bl sub_80C3E94
	ldr r2, _080B8A78  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	subs r1, #0x81
	ands r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8A78: .4byte gUnknown_03005280

	THUMB_FUNC_END WorldMap_Destruct

	THUMB_FUNC_START sub_80B8A7C
sub_80B8A7C: @ 0x080B8A7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r0, #0x40
	movs r2, #0
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r3, r7, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _080B8B00  @ gUnknown_03005280
	mov r8, r0
	strb r2, [r0, #1]
	ldr r0, [r7, #0x54]
	mov r4, sp
	adds r4, #0xa
	movs r1, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_80BE0A4
	add r0, sp, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0xe
	add r5, sp, #0xc
	mov r6, sp
	adds r6, #0xe
	adds r2, r5, #0
	adds r3, r6, #0
	bl GetWMCenteredCameraPosition
	mov r3, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r4, #0
	ldrsh r3, [r6, r4]
	movs r4, #2
	str r4, [sp]
	bl sub_80C0834
	asrs r0, r0, #2
	cmp r0, #1
	bgt _080B8B04
	ldrh r0, [r5]
	mov r1, r8
	strh r0, [r1, #2]
	ldrh r0, [r6]
	strh r0, [r1, #4]
	adds r0, r7, #0
	movs r1, #7
	bl Proc_Goto
	b _080B8B2E
	.align 2, 0
_080B8B00: .4byte gUnknown_03005280
_080B8B04:
	cmp r0, #0xf
	bgt _080B8B0C
	movs r0, #0x10
	b _080B8B12
_080B8B0C:
	cmp r0, #0x4b
	ble _080B8B12
	movs r0, #0x4b
_080B8B12:
	movs r1, #1
	negs r1, r1
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r4, #0
	ldrsh r3, [r6, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r1, #0
	bl sub_80BF404
_080B8B2E:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B8A7C

	THUMB_FUNC_START sub_80B8B3C
sub_80B8B3C: @ 0x080B8B3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80BF490
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B8B58
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080B8B58:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B8B3C

	THUMB_FUNC_START sub_80B8B60
sub_80B8B60: @ 0x080B8B60
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _080B8B90  @ gUnknown_03005280
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B8B9C
	movs r2, #4
	adds r1, r4, #0
	adds r1, #0x10
_080B8B7C:
	movs r4, #0x12
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _080B8B94
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080B8B94
	movs r0, #1
	b _080B8B9E
	.align 2, 0
_080B8B90: .4byte gUnknown_03005280
_080B8B94:
	adds r1, #4
	adds r2, #1
	cmp r2, #6
	ble _080B8B7C
_080B8B9C:
	movs r0, #0
_080B8B9E:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B8B60

	THUMB_FUNC_START sub_80B8BA4
sub_80B8BA4: @ 0x080B8BA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0x54]
	movs r1, #0
	bl sub_80BE12C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B8BBE
	b _080B8D50
_080B8BBE:
	adds r5, r6, #0
	adds r5, #0x40
	movs r4, #0
	ldrsb r4, [r5, r4]
	bl sub_80BD29C
	subs r0, #1
	mov r8, r5
	cmp r4, r0
	blt _080B8BD4
	b _080B8CEC
_080B8BD4:
	bl sub_80BD29C
	movs r1, #0
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	cmp r0, #2
	beq _080B8BFA
	adds r0, r1, #1
	bl sub_80BD28C
	bl sub_80BCA1C
	cmp r0, #0
	blt _080B8C40
	adds r0, r6, #0
	movs r1, #0x11
	bl Proc_Goto
	b _080B8D50
_080B8BFA:
	adds r0, r1, #1
	bl sub_80BD28C
	ldr r1, _080B8CB8  @ gUnknown_03005280
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B8C40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #1
	bl sub_80BD28C
	lsls r0, r0, #5
	ldr r1, _080B8CBC  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _080B8C40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #1
	bl sub_80BD28C
	adds r1, r6, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl Proc_Goto
_080B8C40:
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0
	bgt _080B8CC0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	bl sub_80BD28C
	adds r5, r0, #0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #1
	bl sub_80BD28C
	adds r4, r0, #0
	ldr r0, [r6, #0x54]
	movs r1, #0
	movs r2, #1
	bl MapMU_80BE108
	mov r0, sp
	movs r2, #0
	strb r2, [r0]
	strh r5, [r0, #6]
	strh r4, [r0, #8]
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0xc]
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	strb r0, [r1, #1]
	mov r0, sp
	strh r2, [r0, #0xa]
	movs r0, #1
	strb r0, [r1, #2]
	movs r0, #0xff
	strb r0, [r1, #3]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r0, [r6, #0x54]
	bl sub_80BDEB4
	movs r0, #8
	strb r0, [r7]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080B8D50
	.align 2, 0
_080B8CB8: .4byte gUnknown_03005280
_080B8CBC: .4byte gUnknown_082060B0
_080B8CC0:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B8CE0
	ldr r0, _080B8CE8  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8CE0
	subs r0, r2, #2
	strb r0, [r7]
_080B8CE0:
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	b _080B8D50
	.align 2, 0
_080B8CE8: .4byte gKeyStatusPtr
_080B8CEC:
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_80BD28C
	ldr r4, _080B8D28  @ gUnknown_03005280
	strb r0, [r4, #0x11]
	ldr r0, [r6, #0x54]
	movs r1, #0
	movs r2, #0
	bl MapMU_80BE108
	ldrb r2, [r4, #0x11]
	lsls r0, r2, #5
	ldr r1, _080B8D2C  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080B8D30
	adds r0, r6, #0
	movs r1, #0xe
	bl Proc_Goto
	b _080B8D50
	.align 2, 0
_080B8D28: .4byte gUnknown_03005280
_080B8D2C: .4byte gUnknown_082060B0
_080B8D30:
	adds r0, r2, #0
	bl sub_80B8B60
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B8D46
	adds r0, r6, #0
	movs r1, #0x10
	bl Proc_Goto
	b _080B8D50
_080B8D46:
	movs r0, #1
	strb r0, [r4, #1]
	adds r0, r6, #0
	bl Proc_Break
_080B8D50:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B8BA4

	THUMB_FUNC_START SetupGraphicSystemsForWorldMap
SetupGraphicSystemsForWorldMap: @ 0x080B8D5C
	push {r4, lr}
	movs r0, #0
	bl SetupBackgrounds
	ldr r4, _080B8DF8  @ gLCDControlBuffer
	ldrb r1, [r4, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r4, #1]
	ldr r0, _080B8DFC  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B8E00  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B8E04  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B8E08  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #6
	bl GetSaveDataLocation
	bl LoadLegacyUiFrameGraphics
	bl Font_InitForUIDefault
	bl ResetFaces
	ldr r0, _080B8E0C  @ gUnknown_08A3D728
	bl SetupFaceGfxData
	bl SMS_ClearUsageTable
	bl MU_Init
	bl SetupMapSpritesPalettes
	ldr r1, _080B8E10  @ gGameState
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8DF8: .4byte gLCDControlBuffer
_080B8DFC: .4byte gBG0TilemapBuffer
_080B8E00: .4byte gBG1TilemapBuffer
_080B8E04: .4byte gBG2TilemapBuffer
_080B8E08: .4byte gBG3TilemapBuffer
_080B8E0C: .4byte gUnknown_08A3D728
_080B8E10: .4byte gGameState

	THUMB_FUNC_END SetupGraphicSystemsForWorldMap

	THUMB_FUNC_START sub_80B8E14
sub_80B8E14: @ 0x080B8E14
	push {r4, lr}
	ldr r0, _080B8E48  @ gUnknown_08A97A40
	movs r1, #0x98
	lsls r1, r1, #2
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r0, _080B8E4C  @ gUnknown_08A96308
	ldr r1, _080B8E50  @ 0x06011000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B8E54  @ gUnknown_08A97410
	ldr r4, _080B8E58  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r1, _080B8E5C  @ 0x06010280
	adds r0, r4, #0
	movs r2, #0xc
	movs r3, #4
	bl CopyTileGfxForObj
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8E48: .4byte gUnknown_08A97A40
_080B8E4C: .4byte gUnknown_08A96308
_080B8E50: .4byte 0x06011000
_080B8E54: .4byte gUnknown_08A97410
_080B8E58: .4byte gUnknown_02020188
_080B8E5C: .4byte 0x06010280

	THUMB_FUNC_END sub_80B8E14

	THUMB_FUNC_START sub_80B8E60
sub_80B8E60: @ 0x080B8E60
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #0
	strh r5, [r0, #0x3a]
	bl SetDefaultColorEffects
	ldr r0, _080B8F74  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B8F78  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B8F7C  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B8F80  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0xf
	bl BG_EnableSyncByMask
	ldr r4, _080B8F84  @ gUnknown_0859ED70
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x40
	bl CopyToPaletteBuffer
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B8F88  @ gUnknown_08AA11D0
	ldr r4, _080B8F8C  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r1, _080B8F90  @ 0x06015300
	adds r0, r4, #0
	movs r2, #8
	movs r3, #2
	bl CopyTileGfxForObj
	bl sub_80B8E14
	ldr r0, _080B8F94  @ gUnknown_08A97FA4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B8F98  @ gUnknown_08A97ED8
	ldr r1, _080B8F9C  @ 0x06005000
	bl CopyDataWithPossibleUncomp
	bl LoadUiFrameGraphics
	bl Font_InitForUIDefault
	bl Font_ResetAllocation
	ldr r4, _080B8FA0  @ gLCDControlBuffer
	ldrb r1, [r4, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #0x36
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	movs r0, #4
	orrs r1, r0
	movs r0, #8
	orrs r1, r0
	movs r0, #0x10
	orrs r1, r0
	adds r3, r4, #0
	adds r3, #0x34
	ldrb r0, [r3]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r3]
	adds r3, #1
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	orrs r1, r2
	mov r0, ip
	strb r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_80AE168
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	bl sub_80C1D00
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B8F74: .4byte gBG0TilemapBuffer
_080B8F78: .4byte gBG1TilemapBuffer
_080B8F7C: .4byte gBG2TilemapBuffer
_080B8F80: .4byte gBG3TilemapBuffer
_080B8F84: .4byte gUnknown_0859ED70
_080B8F88: .4byte gUnknown_08AA11D0
_080B8F8C: .4byte gUnknown_02020188
_080B8F90: .4byte 0x06015300
_080B8F94: .4byte gUnknown_08A97FA4
_080B8F98: .4byte gUnknown_08A97ED8
_080B8F9C: .4byte 0x06005000
_080B8FA0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B8E60

	THUMB_FUNC_START DeployEveryUnit
DeployEveryUnit: @ 0x080B8FA4
	push {r4, lr}
	movs r4, #1
_080B8FA8:
	adds r0, r4, #0
	bl GetUnit
	adds r2, r0, #0
	cmp r2, #0
	beq _080B8FC4
	ldr r0, [r2]
	cmp r0, #0
	beq _080B8FC4
	ldr r0, [r2, #0xc]
	movs r1, #9
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0xc]
_080B8FC4:
	adds r4, #1
	cmp r4, #0x3f
	ble _080B8FA8
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END DeployEveryUnit

	THUMB_FUNC_START nullsub_22
nullsub_22: @ 0x080B8FD0
	bx lr

	THUMB_FUNC_END nullsub_22

	THUMB_FUNC_START sub_80B8FD4
sub_80B8FD4: @ 0x080B8FD4
	ldr r2, _080B8FE8  @ gUnknown_03005280
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080B8FE8: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B8FD4

	THUMB_FUNC_START sub_80B8FEC
sub_80B8FEC: @ 0x080B8FEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B9010  @ gUnknown_03005280
	bl sub_80BD014
	adds r1, r0, #0
	cmp r1, #0
	blt _080B9014
	ldr r0, [r4, #0x48]
	adds r0, #0x33
	strb r1, [r0]
	ldr r1, [r4, #0x48]
	adds r1, #0x32
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	b _080B9022
	.align 2, 0
_080B9010: .4byte gUnknown_03005280
_080B9014:
	ldr r0, [r4, #0x48]
	adds r0, #0x32
	ldrb r2, [r0]
	movs r1, #3
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_080B9022:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B8FEC

	THUMB_FUNC_START sub_80B9028
sub_80B9028: @ 0x080B9028
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r6, #0
	add r0, sp, #4
	mov r8, r0
	ldr r4, _080B906C  @ gUnknown_03005280
	ldr r1, _080B9070  @ gUnknown_082060B0
	mov r9, r1
	mov r7, sp
	adds r7, #6
_080B9044:
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080B90B6
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B9074
	ldr r0, [r5, #0x54]
	movs r1, #0x12
	ldrsh r2, [r4, r1]
	ldrb r1, [r4, #0x11]
	str r1, [sp]
	adds r1, r6, #0
	movs r3, #1
	negs r3, r3
	bl MapMU_SetUnitClass
	b _080B9088
	.align 2, 0
_080B906C: .4byte gUnknown_03005280
_080B9070: .4byte gUnknown_082060B0
_080B9074:
	ldr r0, [r5, #0x54]
	movs r3, #0x12
	ldrsh r2, [r4, r3]
	ldrb r1, [r4, #0x11]
	str r1, [sp]
	adds r1, r6, #0
	movs r3, #1
	negs r3, r3
	bl MapMU_SetUnitChar
_080B9088:
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #5
	add r0, r9
	ldrh r0, [r0, #0x18]
	mov r1, r8
	strh r0, [r1]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #5
	add r0, r9
	ldrh r0, [r0, #0x1a]
	strh r0, [r7]
	ldr r0, [r5, #0x54]
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	ldrsh r3, [r7, r1]
	adds r1, r6, #0
	bl sub_80BE35C
	ldr r0, [r5, #0x54]
	adds r1, r6, #0
	bl sub_80BDDC4
_080B90B6:
	adds r4, #4
	adds r6, #1
	cmp r6, #6
	ble _080B9044
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9028

	THUMB_FUNC_START sub_80B90CC
sub_80B90CC: @ 0x080B90CC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _080B9110  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B9102
	movs r5, #4
	adds r4, r2, #0
	adds r4, #0x20
_080B90E2:
	ldr r0, [r6, #0x54]
	adds r1, r5, #0
	bl MapMU_RemoveUnit
	movs r0, #0
	strh r0, [r4, #2]
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfe
	ands r0, r1
	strb r0, [r4]
	adds r4, #4
	adds r5, #1
	cmp r5, #6
	ble _080B90E2
_080B9102:
	adds r0, r6, #0
	bl sub_80B9028
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B9110: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B90CC

	THUMB_FUNC_START sub_80B9114
sub_80B9114: @ 0x080B9114
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _080B9140  @ gUnknown_03005280
	movs r6, #2
	adds r3, r0, #0
	adds r3, #0x30
	movs r5, #2
_080B9124:
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B9144
	ldr r0, [r4, #0x48]
	adds r0, #0x33
	strb r2, [r0]
	ldr r1, [r4, #0x48]
	adds r1, #0x32
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	b _080B914C
	.align 2, 0
_080B9140: .4byte gUnknown_03005280
_080B9144:
	adds r3, #4
	adds r2, #1
	cmp r2, #0x1c
	ble _080B9124
_080B914C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9114

	THUMB_FUNC_START sub_80B9154
sub_80B9154: @ 0x080B9154
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl SetupGraphicSystemsForWorldMap
	adds r0, r5, #0
	bl sub_80B8E60
	adds r0, r5, #0
	bl DeployEveryUnit
	movs r0, #5
	bl NewMapScreen
	str r0, [r5, #0x44]
	str r0, [sp]
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xa
	bl sub_80BB9A4
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x44]
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0xc
	bl NewGmapUnitContainer
	str r0, [r5, #0x4c]
	movs r1, #0x96
	lsls r1, r1, #5
	ldr r3, [r5, #0x44]
	movs r0, #5
	movs r2, #4
	bl NewGmapCursor
	str r0, [r5, #0x50]
	adds r0, r5, #0
	bl NewMapMU
	str r0, [r5, #0x54]
	ldr r4, _080B9210  @ gUnknown_03005280
	adds r0, r4, #0
	bl sub_80BCA0C
	adds r0, r5, #0
	bl sub_80C368C
	adds r0, r5, #0
	bl sub_80B8FEC
	adds r0, r5, #0
	bl sub_80B90CC
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B91D2
	adds r0, r5, #0
	bl sub_80B9114
_080B91D2:
	ldr r0, [r5, #0x44]
	ldr r1, [r0, #0x4c]
	adds r1, #0x31
	ldrb r2, [r1]
	movs r0, #3
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _080B9214  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B91FE
	bl sub_80BCFB4
	ldr r0, [r5, #0x48]
	adds r0, #0x32
	ldrb r2, [r0]
	movs r1, #3
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_080B91FE:
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B9210: .4byte gUnknown_03005280
_080B9214: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B9154

	THUMB_FUNC_START sub_80B9218
sub_80B9218: @ 0x080B9218
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r2, sp
	ldr r1, _080B9260  @ gUnknown_03005280
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	ldr r0, [r1, #0xc]
	asrs r0, r0, #8
	strh r0, [r4]
	add r2, sp, #4
	ldrh r0, [r1, #2]
	strh r0, [r2]
	mov r3, sp
	adds r3, #6
	ldrh r0, [r1, #4]
	strh r0, [r3]
	mov r0, sp
	ldrh r5, [r0]
	ldrh r0, [r2]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #0x1f
	bgt _080B9268
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080B9264
	adds r0, r5, #0
	subs r0, #0x20
	b _080B9282
	.align 2, 0
_080B9260: .4byte gUnknown_03005280
_080B9264:
	movs r0, #0
	b _080B9282
_080B9268:
	cmp r0, #0xd0
	ble _080B9284
	lsls r1, r5, #0x10
	ldr r0, _080B927C  @ 0x01BF0000
	cmp r1, r0
	bgt _080B9280
	adds r0, r5, #0
	subs r0, #0xd0
	b _080B9282
	.align 2, 0
_080B927C: .4byte 0x01BF0000
_080B9280:
	movs r0, #0xf0
_080B9282:
	strh r0, [r2]
_080B9284:
	ldrh r4, [r4]
	ldrh r0, [r3]
	subs r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _080B92A4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080B92A0
	adds r0, r4, #0
	subs r0, #0x20
	b _080B92BE
_080B92A0:
	movs r0, #0
	b _080B92BE
_080B92A4:
	cmp r0, #0x80
	ble _080B92C0
	lsls r1, r4, #0x10
	ldr r0, _080B92B8  @ 0x011F0000
	cmp r1, r0
	bgt _080B92BC
	adds r0, r4, #0
	subs r0, #0x80
	b _080B92BE
	.align 2, 0
_080B92B8: .4byte 0x011F0000
_080B92BC:
	movs r0, #0xa0
_080B92BE:
	strh r0, [r3]
_080B92C0:
	ldrh r0, [r2]
	strh r0, [r6, #2]
	ldrh r0, [r3]
	strh r0, [r6, #4]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9218

	THUMB_FUNC_START sub_80B92D0
sub_80B92D0: @ 0x080B92D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r7, _080B930C  @ gUnknown_03005280
	ldrb r0, [r7, #0x11]
	cmp r0, r4
	bne _080B9356
	lsls r0, r4, #2
	adds r0, r0, r7
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B9344
	lsls r0, r4, #5
	ldr r1, _080B9310  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _080B9344
	adds r0, r4, #0
	bl sub_80BCA1C
	cmp r0, #0
	blt _080B9314
	adds r0, r5, #0
	movs r1, #0x10
	b _080B934E
	.align 2, 0
_080B930C: .4byte gUnknown_03005280
_080B9310: .4byte gUnknown_082060B0
_080B9314:
	adds r0, r7, #0
	bl sub_80BD014
	adds r3, r0, #0
	ldr r2, _080B9340  @ gRAMChapterData
	ldrb r1, [r2, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B9338
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080B9338
	cmp r3, #2
	beq _080B93D6
_080B9338:
	adds r0, r5, #0
	movs r1, #0x12
	b _080B934E
	.align 2, 0
_080B9340: .4byte gRAMChapterData
_080B9344:
	adds r0, r5, #0
	adds r0, #0x3e
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0xe
_080B934E:
	bl Proc_Goto
_080B9352:
	movs r0, #1
	b _080B93D8
_080B9356:
	movs r0, #0x11
	ldrsb r0, [r7, r0]
	lsls r1, r4, #0x18
	asrs r6, r1, #0x18
	adds r1, r6, #0
	movs r2, #0
	bl sub_80BCCFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B938A
	bl sub_80BD29C
	adds r1, r0, #0
	cmp r1, #2
	bne _080B9384
	lsls r0, r4, #2
	adds r0, r0, r7
	adds r0, #0x30
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _080B9344
_080B9384:
	adds r0, r5, #0
	movs r1, #6
	b _080B934E
_080B938A:
	movs r0, #0x11
	ldrsb r0, [r7, r0]
	adds r1, r6, #0
	movs r2, #1
	bl sub_80BCCFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B93D6
	bl sub_80BD29C
	adds r2, r0, #0
	cmp r2, #2
	bne _080B93CC
	lsls r0, r4, #5
	ldr r1, _080B93C8  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _080B93C0
	lsls r0, r4, #2
	adds r0, r0, r7
	adds r0, #0x30
	ldrb r0, [r0]
	ands r2, r0
	cmp r2, #0
	bne _080B9344
_080B93C0:
	adds r0, r5, #0
	movs r1, #6
	b _080B934E
	.align 2, 0
_080B93C8: .4byte gUnknown_082060B0
_080B93CC:
	adds r0, r5, #0
	movs r1, #6
	bl Proc_Goto
	b _080B9352
_080B93D6:
	movs r0, #0
_080B93D8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B92D0

	THUMB_FUNC_START sub_80B93E0
sub_80B93E0: @ 0x080B93E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080B9408  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B940C
	movs r0, #2
	mov r8, r0
	adds r1, r7, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
	adds r6, r1, #0
	b _080B9414
	.align 2, 0
_080B9408: .4byte gKeyStatusPtr
_080B940C:
	movs r2, #4
	mov r8, r2
	adds r6, r7, #0
	adds r6, #0x2a
_080B9414:
	adds r5, r6, #0
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080B9426
	subs r0, r1, #1
	strb r0, [r5]
	b _080B954A
_080B9426:
	bl sub_80BF294
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B9432
	b _080B954A
_080B9432:
	ldr r0, _080B944C  @ gKeyStatusPtr
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080B9450
	movs r3, #0xf0
	ands r3, r2
	movs r0, #0xa
	strb r0, [r5]
	b _080B946E
	.align 2, 0
_080B944C: .4byte gKeyStatusPtr
_080B9450:
	ldrh r0, [r3, #8]
	movs r4, #0xf0
	adds r1, r4, #0
	ands r1, r0
	cmp r1, #0
	beq _080B9468
	movs r0, #0xa
	strb r0, [r5]
	ldrh r0, [r3, #8]
	adds r3, r4, #0
	ands r3, r0
	b _080B946E
_080B9468:
	adds r3, r4, #0
	ands r3, r2
	strb r1, [r6]
_080B946E:
	cmp r3, #0
	beq _080B954A
	ldr r2, _080B94A8  @ gUnknown_03005280
	ldr r0, [r2, #8]
	asrs r0, r0, #8
	cmp r0, #0
	bge _080B947E
	adds r0, #0xf
_080B947E:
	lsls r0, r0, #0xc
	lsrs r1, r0, #0x10
	ldr r0, [r2, #0xc]
	asrs r0, r0, #8
	cmp r0, #0
	bge _080B948C
	adds r0, #0xf
_080B948C:
	lsls r0, r0, #0xc
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	adds r4, r6, #0
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080B94AC
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	b _080B94B8
	.align 2, 0
_080B94A8: .4byte gUnknown_03005280
_080B94AC:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080B94BC
	lsls r0, r2, #0x10
	ldr r2, _080B94CC  @ 0xFFFF0000
_080B94B8:
	adds r0, r0, r2
	lsrs r2, r0, #0x10
_080B94BC:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080B94D0
	lsls r0, r4, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	b _080B94DC
	.align 2, 0
_080B94CC: .4byte 0xFFFF0000
_080B94D0:
	movs r0, #0x40
	ands r3, r0
	cmp r3, #0
	beq _080B94E0
	lsls r0, r4, #0x10
	ldr r3, _080B94EC  @ 0xFFFF0000
_080B94DC:
	adds r0, r0, r3
	lsrs r4, r0, #0x10
_080B94E0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _080B94F0
	movs r2, #1
	b _080B94F6
	.align 2, 0
_080B94EC: .4byte 0xFFFF0000
_080B94F0:
	cmp r0, #0x1c
	ble _080B94F6
	movs r2, #0x1c
_080B94F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _080B9502
	movs r4, #1
	b _080B9508
_080B9502:
	cmp r0, #0x12
	ble _080B9508
	movs r4, #0x12
_080B9508:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	lsls r4, r4, #0x10
	cmp r1, r0
	bne _080B9518
	lsls r0, r6, #0x10
	cmp r0, r4
	beq _080B954A
_080B9518:
	ldr r0, _080B9558  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B952A
	movs r0, #0x65
	bl m4aSongNumStart
_080B952A:
	lsls r0, r5, #4
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r1, r4, #0xc
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #4]
	str r7, [sp]
	movs r0, #0
	add r1, sp, #4
	mov r2, r8
	movs r3, #0
	bl sub_80BF210
_080B954A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B9558: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B93E0

	THUMB_FUNC_START sub_80B955C
sub_80B955C: @ 0x080B955C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r5, #0
	b _080B9566
_080B9564:
	adds r5, #1
_080B9566:
	cmp r5, #0x1c
	bgt _080B9574
	adds r0, r5, #0
	bl sub_80BBA4C
	cmp r0, r4
	bne _080B9564
_080B9574:
	movs r4, #1
	ldr r6, _080B959C  @ gUnknown_03005280
_080B9578:
	adds r0, r5, r4
	cmp r0, #0x1c
	ble _080B9580
	subs r0, #0x1d
_080B9580:
	bl sub_80BBA4C
	adds r2, r0, #0
	lsls r0, r2, #2
	adds r0, r0, r6
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B95A0
	adds r0, r2, #0
	b _080B95AA
	.align 2, 0
_080B959C: .4byte gUnknown_03005280
_080B95A0:
	adds r4, #1
	cmp r4, #0x1c
	ble _080B9578
	movs r0, #1
	negs r0, r0
_080B95AA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B955C

	THUMB_FUNC_START sub_80B95B0
sub_80B95B0: @ 0x080B95B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080B9614  @ gUnknown_03005280
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	mov r8, r1
	ldr r0, [r0, #0xc]
	asrs r7, r0, #8
	movs r5, #0xf0
	lsls r5, r5, #7
	movs r6, #0
	movs r4, #0
_080B95CC:
	ldr r1, _080B9614  @ gUnknown_03005280
	lsls r0, r4, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B9600
	lsls r1, r4, #5
	ldr r0, _080B9618  @ gUnknown_082060B0
	adds r1, r1, r0
	movs r0, #0x18
	ldrsh r2, [r1, r0]
	movs r0, #0x1a
	ldrsh r3, [r1, r0]
	movs r0, #5
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	bl sub_80C0834
	cmp r0, r5
	bge _080B9600
	adds r6, r4, #0
	adds r5, r0, #0
_080B9600:
	adds r4, #1
	cmp r4, #0x1c
	ble _080B95CC
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B9614: .4byte gUnknown_03005280
_080B9618: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80B95B0

	THUMB_FUNC_START sub_80B961C
sub_80B961C: @ 0x080B961C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	add r2, sp, #8
	lsls r1, r1, #5
	ldr r0, _080B96D0  @ gUnknown_082060B0
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x1a]
	strh r0, [r2]
	ldr r7, _080B96D4  @ gUnknown_03005280
	add r0, sp, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r7, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #8
	str r0, [r7, #0xc]
	add r0, sp, #8
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r5, sp, #0xc
	mov r6, sp
	adds r6, #0xe
	adds r2, r5, #0
	adds r3, r6, #0
	bl GetWMCenteredCameraPosition
	add r2, sp, #0x10
	ldrh r0, [r7, #2]
	strh r0, [r2]
	mov r1, sp
	adds r1, #0x12
	ldrh r0, [r7, #4]
	strh r0, [r1]
	movs r4, #0
	ldrsh r0, [r2, r4]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r4, #0
	ldrsh r3, [r6, r4]
	movs r4, #4
	str r4, [sp]
	bl sub_80C0834
	cmp r0, #0
	bge _080B9692
	ldr r1, _080B96D8  @ 0x000001FF
	adds r0, r0, r1
_080B9692:
	asrs r0, r0, #9
	adds r0, #6
	cmp r0, #0xa
	ble _080B969C
	movs r0, #0xa
_080B969C:
	movs r1, #1
	negs r1, r1
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r4, #0
	ldrsh r3, [r6, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	adds r0, r1, #0
	bl sub_80BF404
	strb r4, [r7, #1]
	mov r0, r8
	movs r1, #8
	bl Proc_Goto
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B96D0: .4byte gUnknown_082060B0
_080B96D4: .4byte gUnknown_03005280
_080B96D8: .4byte 0x000001FF

	THUMB_FUNC_END sub_80B961C

	THUMB_FUNC_START sub_80B96DC
sub_80B96DC: @ 0x080B96DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80BF3F4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B96F0
	adds r0, r4, #0
	bl Proc_Break
_080B96F0:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B96DC

	THUMB_FUNC_START sub_80B96F8
sub_80B96F8: @ 0x080B96F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080B9728  @ gUnknown_03005280
	ldr r5, [r2, #8]
	ldr r6, [r2, #0xc]
	ldr r0, _080B972C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B9736
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B9730
	movs r0, #5
	negs r0, r0
	ands r0, r1
	b _080B9734
	.align 2, 0
_080B9728: .4byte gUnknown_03005280
_080B972C: .4byte gKeyStatusPtr
_080B9730:
	movs r0, #4
	orrs r0, r1
_080B9734:
	strb r0, [r2]
_080B9736:
	ldr r0, [r4, #0x48]
	asrs r1, r5, #8
	asrs r2, r6, #8
	movs r3, #0
	str r3, [sp]
	bl sub_80BB628
	adds r1, r0, #0
	cmp r1, #0
	blt _080B9798
	ldr r0, _080B9778  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r2, [r0, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080B9780
	adds r0, r4, #0
	bl sub_80B92D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B97BC
	ldr r0, _080B977C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B97EA
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080B97EA
	.align 2, 0
_080B9778: .4byte gKeyStatusPtr
_080B977C: .4byte gRAMChapterData
_080B9780:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080B97BC
	adds r0, r4, #0
	bl sub_80B955C
	adds r1, r0, #0
	cmp r1, #0
	blt _080B97BC
	b _080B97AE
_080B9798:
	ldr r0, _080B97B8  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B97BC
	bl sub_80B95B0
	adds r1, r0, #0
_080B97AE:
	adds r0, r4, #0
	bl sub_80B961C
	b _080B97EA
	.align 2, 0
_080B97B8: .4byte gKeyStatusPtr
_080B97BC:
	ldr r0, _080B97D4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B97D8
	adds r0, r4, #0
	movs r1, #5
	bl Proc_Goto
	b _080B97EA
	.align 2, 0
_080B97D4: .4byte gKeyStatusPtr
_080B97D8:
	adds r0, r4, #0
	bl sub_80B93E0
	ldr r0, _080B97F4  @ gUnknown_03005280
	str r5, [r0, #8]
	str r6, [r0, #0xc]
	adds r0, r4, #0
	bl sub_80B9218
_080B97EA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B97F4: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B96F8

	THUMB_FUNC_START sub_80B97F8
sub_80B97F8: @ 0x080B97F8
	ldr r1, _080B9800  @ gUnknown_03005280
	movs r0, #1
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_080B9800: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B97F8

	THUMB_FUNC_START sub_80B9804
sub_80B9804: @ 0x080B9804
	push {lr}
	bl sub_80B96F8
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9804

	THUMB_FUNC_START sub_80B9810
sub_80B9810: @ 0x080B9810
	push {lr}
	bl sub_80C1D70
	movs r0, #8
	bl Proc_EndEachMarked
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9810

	THUMB_FUNC_START sub_80B9820
sub_80B9820: @ 0x080B9820
	push {lr}
	bl sub_8092194
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9820

	THUMB_FUNC_START sub_80B982C
sub_80B982C: @ 0x080B982C
	push {r4, lr}
	ldr r3, [r0, #0x44]
	movs r1, #0x2a
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	movs r4, #1
	orrs r1, r4
	movs r2, #6
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	ldr r2, [r3, #0x4c]
	adds r2, #0x31
	ldrb r3, [r2]
	movs r1, #3
	orrs r1, r3
	strb r1, [r2]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	negs r1, r1
	bl MapUnitC_MarkSomething
	ldr r2, _080B9878  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B9878: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B982C

	THUMB_FUNC_START sub_80B987C
sub_80B987C: @ 0x080B987C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl Proc_BlockEachMarked
	ldr r0, _080B9898  @ gUnknown_08B12D1C
	adds r1, r4, #0
	bl Proc_StartBlocking
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B9898: .4byte gUnknown_08B12D1C

	THUMB_FUNC_END sub_80B987C

	THUMB_FUNC_START sub_80B989C
sub_80B989C: @ 0x080B989C
	push {lr}
	movs r0, #8
	bl Proc_UnblockEachMarked
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B989C

	THUMB_FUNC_START sub_80B98A8
sub_80B98A8: @ 0x080B98A8
	push {r4, lr}
	ldr r3, [r0, #0x44]
	movs r1, #0x2a
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	movs r4, #1
	orrs r1, r4
	movs r2, #6
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	ldr r2, [r3, #0x4c]
	adds r2, #0x31
	ldrb r3, [r2]
	movs r1, #3
	orrs r1, r3
	strb r1, [r2]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	negs r1, r1
	bl MapUnitC_MarkSomething
	ldr r2, _080B98F4  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B98F4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B98A8

	THUMB_FUNC_START sub_80B98F8
sub_80B98F8: @ 0x080B98F8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl Proc_BlockEachMarked
	ldr r0, _080B9914  @ gUnknown_08A2EE00
	adds r1, r4, #0
	bl Proc_StartBlocking
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B9914: .4byte gUnknown_08A2EE00

	THUMB_FUNC_END sub_80B98F8

	THUMB_FUNC_START sub_80B9918
sub_80B9918: @ 0x080B9918
	push {lr}
	movs r0, #8
	bl Proc_UnblockEachMarked
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9918

	THUMB_FUNC_START sub_80B9924
sub_80B9924: @ 0x080B9924
	push {r4, lr}
	ldr r3, [r0, #0x44]
	movs r1, #0x2a
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	movs r4, #1
	orrs r1, r4
	movs r2, #6
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	ldr r2, [r3, #0x4c]
	adds r2, #0x31
	ldrb r3, [r2]
	movs r1, #3
	orrs r1, r3
	strb r1, [r2]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	negs r1, r1
	bl MapUnitC_MarkSomething
	ldr r2, _080B9970  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B9970: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B9924

	THUMB_FUNC_START sub_80B9974
sub_80B9974: @ 0x080B9974
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl Proc_BlockEachMarked
	ldr r0, _080B9990  @ gUnknown_08A3E8B8
	adds r1, r4, #0
	bl Proc_StartBlocking
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B9990: .4byte gUnknown_08A3E8B8

	THUMB_FUNC_END sub_80B9974

	THUMB_FUNC_START sub_80B9994
sub_80B9994: @ 0x080B9994
	push {lr}
	movs r0, #8
	bl Proc_UnblockEachMarked
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9994

	THUMB_FUNC_START sub_80B99A0
sub_80B99A0: @ 0x080B99A0
	push {r4, lr}
	ldr r3, [r0, #0x44]
	movs r1, #0x2a
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	movs r4, #1
	orrs r1, r4
	movs r2, #6
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	ldr r2, [r3, #0x4c]
	adds r2, #0x31
	ldrb r3, [r2]
	movs r1, #3
	orrs r1, r3
	strb r1, [r2]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	negs r1, r1
	bl MapUnitC_MarkSomething
	ldr r2, _080B99EC  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	orrs r0, r4
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B99EC: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B99A0

	THUMB_FUNC_START sub_80B99F0
sub_80B99F0: @ 0x080B99F0
	ldr r2, _080B9A0C  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080B9A0C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B99F0

	THUMB_FUNC_START WorldMap_HideEverything
WorldMap_HideEverything: @ 0x080B9A10
	ldr r2, _080B9A30  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080B9A30: .4byte gLCDControlBuffer

	THUMB_FUNC_END WorldMap_HideEverything

	THUMB_FUNC_START sub_80B9A34
sub_80B9A34: @ 0x080B9A34
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x2c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B9A52
	movs r0, #0x45
	negs r0, r0
	ands r1, r0
	str r1, [r2, #0x2c]
	movs r0, #4
	movs r1, #0
	bl NewFadeIn
_080B9A52:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9A34

	THUMB_FUNC_START sub_80B9A58
sub_80B9A58: @ 0x080B9A58
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	movs r1, #0
	movs r2, #0
	bl MapMU_80BE108
	ldr r4, _080B9A8C  @ gUnknown_03005280
	ldrb r0, [r4, #0x11]
	bl WMLoc_GetChapterId
	ldr r1, _080B9A90  @ gRAMChapterData
	movs r2, #0
	strb r0, [r1, #0xe]
	strb r2, [r4, #1]
	ldrb r0, [r4, #0x11]
	bl sub_80BCA1C
	adds r1, r0, #0
	movs r0, #0
	adds r2, r5, #0
	bl sub_80C07D4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B9A8C: .4byte gUnknown_03005280
_080B9A90: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B9A58

	THUMB_FUNC_START sub_80B9A94
sub_80B9A94: @ 0x080B9A94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C081C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9AA8
	adds r0, r4, #0
	bl Proc_Break
_080B9AA8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9A94

	THUMB_FUNC_START sub_80B9AB0
sub_80B9AB0: @ 0x080B9AB0
	push {lr}
	movs r0, #4
	bl Sound_FadeOutBGM
	ldr r2, _080B9AE8  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	bl sub_80B895C
	bl sub_80C3660
	bl sub_80B8694
	pop {r0}
	bx r0
	.align 2, 0
_080B9AE8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B9AB0

	THUMB_FUNC_START sub_80B9AEC
sub_80B9AEC: @ 0x080B9AEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r4, #4
	ldr r6, _080B9B34  @ gUnknown_03005280
	movs r0, #0xcc
	adds r0, r0, r6
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x10
_080B9B02:
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080B9B20
	ldrb r0, [r6, #0x11]
	ldrb r1, [r5, #0x11]
	cmp r0, r1
	bne _080B9B20
	subs r0, r4, #4
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r7, #0x54]
	adds r1, r4, #0
	bl MapMU_RemoveUnit
_080B9B20:
	adds r5, #4
	adds r4, #1
	cmp r4, #6
	ble _080B9B02
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B9B34: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B9AEC

	THUMB_FUNC_START WorldMap_InitChapterTransition
WorldMap_InitChapterTransition: @ 0x080B9B38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0
	movs r2, #0
	bl MapMU_80BE108
	ldr r5, _080B9B70  @ gUnknown_03005280
	ldrb r2, [r5, #0x11]
	lsls r0, r2, #5
	ldr r1, _080B9B74  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _080B9B7C
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	bl WMLoc_GetChapterId
	ldr r1, _080B9B78  @ gRAMChapterData
	strb r0, [r1, #0xe]
	ldrb r1, [r5]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r5]
	b _080B9B86
	.align 2, 0
_080B9B70: .4byte gUnknown_03005280
_080B9B74: .4byte gUnknown_082060B0
_080B9B78: .4byte gRAMChapterData
_080B9B7C:
	adds r0, r2, #0
	bl WMLoc_GetChapterId
	ldr r1, _080B9B9C  @ gRAMChapterData
	strb r0, [r1, #0xe]
_080B9B86:
	adds r0, r4, #0
	bl CallChapterWMIntroEvents
	ldr r1, _080B9BA0  @ gUnknown_03005280
	movs r0, #0
	strb r0, [r1, #1]
	bl sub_80C1AB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B9B9C: .4byte gRAMChapterData
_080B9BA0: .4byte gUnknown_03005280

	THUMB_FUNC_END WorldMap_InitChapterTransition

	THUMB_FUNC_START sub_80B9BA4
sub_80B9BA4: @ 0x080B9BA4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl EventEngineExists
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9CA4
	ldr r0, [r6, #0x44]
	ldr r0, [r0, #0x4c]
	bl MapRoute_80BC2DC
	ldr r0, _080B9C04  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080B9C08
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	b _080B9C26
	.align 2, 0
_080B9C04: .4byte gUnknown_03005280
_080B9C08:
	ldr r2, _080B9C68  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
_080B9C26:
	bl sub_80B895C
	bl sub_80C3660
	bl sub_80B8694
	bl sub_80C0200
	bl sub_80C2460
	bl sub_80C1F5C
	ldr r5, _080B9C6C  @ gUnknown_03005280
	ldrb r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080B9C70
	movs r0, #1
	bl Sound_FadeOutBGM
	movs r0, #1
	bl Sound_FadeOutSE
	ldrb r0, [r5, #0x11]
	adds r2, r6, #0
	adds r2, #0x3e
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #0xf
	bl Proc_Goto
	b _080B9CA4
	.align 2, 0
_080B9C68: .4byte gLCDControlBuffer
_080B9C6C: .4byte gUnknown_03005280
_080B9C70:
	ldrb r1, [r5, #0x11]
	lsls r1, r1, #5
	ldr r0, _080B9CAC  @ gUnknown_082060B0
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	movs r2, #0x1a
	ldrsh r1, [r1, r2]
	lsls r2, r0, #8
	str r2, [r5, #8]
	lsls r2, r1, #8
	str r2, [r5, #0xc]
	mov r4, sp
	adds r4, #6
	add r2, sp, #4
	adds r3, r4, #0
	bl GetWMCenteredCameraPosition
	add r0, sp, #4
	ldrh r0, [r0]
	strh r0, [r5, #2]
	ldrh r0, [r4]
	strh r0, [r5, #4]
	adds r0, r6, #0
	bl Proc_Break
_080B9CA4:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B9CAC: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80B9BA4

	THUMB_FUNC_START WorldMap_WaitForChapterIntroEvents
WorldMap_WaitForChapterIntroEvents: @ 0x080B9CB0
	push {r4, lr}
	adds r4, r0, #0
	bl EventEngineExists
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9CFA
	ldr r2, _080B9D00  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	bl sub_80B895C
	bl sub_80C3660
	bl sub_80B8694
	bl sub_80C0200
	bl sub_80C2460
	bl sub_80C1F5C
	adds r0, r4, #0
	bl Proc_Break
_080B9CFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B9D00: .4byte gLCDControlBuffer

	THUMB_FUNC_END WorldMap_WaitForChapterIntroEvents

	THUMB_FUNC_START sub_80B9D04
sub_80B9D04: @ 0x080B9D04
	ldr r0, _080B9D10  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080B9D10: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B9D04

	THUMB_FUNC_START sub_80B9D14
sub_80B9D14: @ 0x080B9D14
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	ldr r3, _080B9D2C  @ gUnknown_03005280
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B9D30
	movs r4, #1
	b _080B9D96
	.align 2, 0
_080B9D2C: .4byte gUnknown_03005280
_080B9D30:
	ldr r0, _080B9D44  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B9D60
	movs r2, #4
	adds r1, r3, #0
	adds r1, #0x10
	b _080B9D50
	.align 2, 0
_080B9D44: .4byte gRAMChapterData
_080B9D48:
	adds r1, #4
	adds r2, #1
	cmp r2, #6
	bgt _080B9D58
_080B9D50:
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080B9D48
_080B9D58:
	cmp r2, #7
	bne _080B9D92
	movs r4, #1
	b _080B9D96
_080B9D60:
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #5
	ldr r1, _080B9D78  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080B9D92
	movs r2, #4
	adds r1, r3, #0
	adds r1, #0x10
	b _080B9D84
	.align 2, 0
_080B9D78: .4byte gUnknown_082060B0
_080B9D7C:
	adds r1, #4
	adds r2, #1
	cmp r2, #6
	bgt _080B9D8C
_080B9D84:
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080B9D7C
_080B9D8C:
	cmp r2, #7
	bne _080B9D92
	movs r4, #1
_080B9D92:
	cmp r4, #0
	beq _080B9DAC
_080B9D96:
	movs r0, #0
	mov r1, sp
	bl sub_80C1A74
	ldr r0, [sp]
	cmp r0, #0
	ble _080B9DAC
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
_080B9DAC:
	bl sub_80C1AF8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9D14

	THUMB_FUNC_START sub_80B9DB8
sub_80B9DB8: @ 0x080B9DB8
	push {lr}
	bl sub_80C1ADC
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9DB8

	THUMB_FUNC_START sub_80B9DC4
sub_80B9DC4: @ 0x080B9DC4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C1BE0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9DD8
	adds r0, r4, #0
	bl Proc_Break
_080B9DD8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9DC4

	THUMB_FUNC_START sub_80B9DE0
sub_80B9DE0: @ 0x080B9DE0
	push {r4, lr}
	sub sp, #4
	ldr r0, [r0, #0x54]
	mov r4, sp
	adds r4, #2
	movs r1, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BE3A0
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_80C168C
	mov r3, sp
	ldr r1, _080B9E38  @ gUnknown_03005280
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #5
	ldr r2, _080B9E3C  @ gUnknown_082060B0
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	strh r0, [r3]
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrh r0, [r0, #0x1a]
	strh r0, [r4]
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r1, #8]
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B9E38: .4byte gUnknown_03005280
_080B9E3C: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80B9DE0

	THUMB_FUNC_START sub_80B9E40
sub_80B9E40: @ 0x080B9E40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C16DC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B9E5A
	ldr r1, _080B9E60  @ gUnknown_03005280
	movs r0, #1
	strb r0, [r1, #1]
	adds r0, r4, #0
	bl Proc_Break
_080B9E5A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B9E60: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B9E40

	THUMB_FUNC_START sub_80B9E64
sub_80B9E64: @ 0x080B9E64
	push {lr}
	sub sp, #4
	bl sub_80B895C
	bl sub_80C3660
	bl sub_80B8694
	mov r2, sp
	ldr r1, _080B9EA0  @ gUnknown_03005280
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r1, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0x50
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B9EA0: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80B9E64

	THUMB_FUNC_START sub_80B9EA4
sub_80B9EA4: @ 0x080B9EA4
	push {lr}
	sub sp, #4
	ldr r2, _080B9F04  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #1
	bl Sound_FadeOutBGM
	movs r0, #1
	bl Sound_FadeOutSE
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B9F04: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B9EA4

	THUMB_FUNC_START DoNothing
DoNothing: @ 0x080B9F08
	push {lr}
	bl nullsub_22
	pop {r0}
	bx r0

	THUMB_FUNC_END DoNothing

	THUMB_FUNC_START sub_80B9F14
sub_80B9F14: @ 0x080B9F14
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_80C400C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9F14

	THUMB_FUNC_START sub_80B9F24
sub_80B9F24: @ 0x080B9F24
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	bl sub_80C400C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9F24

	THUMB_FUNC_START sub_80B9F34
sub_80B9F34: @ 0x080B9F34
	push {lr}
	adds r1, r0, #0
	movs r0, #2
	bl sub_80C400C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9F34

	THUMB_FUNC_START sub_80B9F44
sub_80B9F44: @ 0x080B9F44
	push {lr}
	adds r1, r0, #0
	movs r0, #3
	bl sub_80C400C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9F44

	THUMB_FUNC_START sub_80B9F54
sub_80B9F54: @ 0x080B9F54
	push {r4, lr}
	ldr r4, _080B9F68  @ gRAMChapterData
	ldrb r1, [r4, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B9F6C
	movs r4, #8
	b _080B9FAA
	.align 2, 0
_080B9F68: .4byte gRAMChapterData
_080B9F6C:
	ldr r0, _080B9F90  @ gUnknown_03005280
	bl sub_80BD014
	cmp r0, #0
	blt _080B9FA8
	ldrb r1, [r4, #0x1b]
	cmp r1, #1
	blt _080B9F84
	cmp r1, #2
	ble _080B9F84
	cmp r1, #3
	beq _080B9F98
_080B9F84:
	ldr r1, _080B9F94  @ gUnknown_08A3DD88
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	b _080B9FAA
	.align 2, 0
_080B9F90: .4byte gUnknown_03005280
_080B9F94: .4byte gUnknown_08A3DD88
_080B9F98:
	ldr r1, _080B9FA4  @ gUnknown_08A3DD88
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r4, [r0, #2]
	b _080B9FAA
	.align 2, 0
_080B9FA4: .4byte gUnknown_08A3DD88
_080B9FA8:
	movs r4, #4
_080B9FAA:
	bl Sound_GetCurrentSong
	cmp r0, r4
	beq _080B9FB8
	adds r0, r4, #0
	bl sub_8002620
_080B9FB8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B9F54

	THUMB_FUNC_START sub_80B9FC0
sub_80B9FC0: @ 0x080B9FC0
	push {lr}
	ldr r0, _080B9FD0  @ gUnknown_08A3D748
	bl Proc_Find
	bl sub_80B9F54
	pop {r0}
	bx r0
	.align 2, 0
_080B9FD0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80B9FC0

	THUMB_FUNC_START sub_80B9FD4
sub_80B9FD4: @ 0x080B9FD4
	push {lr}
	ldr r0, _080BA000  @ gUnknown_03005280
	bl sub_80BD014
	cmp r0, #0
	bge _080B9FE2
	movs r0, #0
_080B9FE2:
	bl WMLoc_GetChapterId
	ldr r2, _080BA004  @ gRAMChapterData
	strb r0, [r2, #0xe]
	adds r2, #0x4a
	ldrb r1, [r2]
	movs r0, #0xf
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080BA000: .4byte gUnknown_03005280
_080BA004: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B9FD4

	THUMB_FUNC_START sub_80BA008
sub_80BA008: @ 0x080BA008
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080BA020  @ gUnknown_08A3D748
	bl Proc_Find
	str r4, [r0, #0x2c]
	movs r1, #0
	bl Proc_Goto
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA020: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BA008

	THUMB_FUNC_START EndWM
EndWM: @ 0x080BA024
	push {lr}
	ldr r0, _080BA04C  @ gUnknown_08A20DA4
	bl Proc_Find
	bl Proc_End
	ldr r0, _080BA050  @ gUnknown_08A3D748
	bl Proc_Find
	bl Proc_End
	bl ResetDialogueScreen
	bl APProc_DeleteAll
	movs r0, #0
	bl SetupBackgrounds
	pop {r0}
	bx r0
	.align 2, 0
_080BA04C: .4byte gUnknown_08A20DA4
_080BA050: .4byte gUnknown_08A3D748

	THUMB_FUNC_END EndWM

	THUMB_FUNC_START sub_80BA054
sub_80BA054: @ 0x080BA054
	push {lr}
	ldr r0, _080BA068  @ gUnknown_08A3D748
	bl Proc_Find
	cmp r0, #0
	beq _080BA062
	movs r0, #1
_080BA062:
	pop {r1}
	bx r1
	.align 2, 0
_080BA068: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BA054

	THUMB_FUNC_START sub_80BA06C
sub_80BA06C: @ 0x080BA06C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ble _080BA07C
	subs r0, #1
	str r0, [r4, #0x2c]
	b _080BA0AE
_080BA07C:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #6
	beq _080BA08C
	cmp r0, #7
	beq _080BA09C
	b _080BA0A8
_080BA08C:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_80B86CC
	b _080BA0A8
_080BA09C:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x44]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_80B8844
_080BA0A8:
	adds r0, r4, #0
	bl Proc_Break
_080BA0AE:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BA06C

	THUMB_FUNC_START sub_80BA0B4
sub_80BA0B4: @ 0x080BA0B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080BA0F8  @ gUnknown_08A3D748
	bl Proc_Find
	adds r1, r0, #0
	ldr r0, _080BA0FC  @ gUnknown_08A3DD08
	bl Proc_Start
	str r5, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x30
	strb r4, [r1]
	str r6, [r0, #0x34]
	mov r1, r8
	str r1, [r0, #0x40]
	str r7, [r0, #0x38]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x3c]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x44]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA0F8: .4byte gUnknown_08A3D748
_080BA0FC: .4byte gUnknown_08A3DD08

	THUMB_FUNC_END sub_80BA0B4

	THUMB_FUNC_START sub_80BA100
sub_80BA100: @ 0x080BA100
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x30]
	lsls r0, r0, #5
	ldr r1, _080BA194  @ gUnknown_020228AA
	adds r5, r0, r1
	adds r4, r6, #0
	adds r4, #0x34
	ldr r0, [r6, #0x2c]
	adds r0, #1
	str r0, [r6, #0x2c]
	movs r1, #0x1f
	mov r9, r1
	movs r1, #0x20
	subs r3, r1, r0
	movs r2, #0xf8
	lsls r2, r2, #2
	mov r8, r2
	movs r7, #0xf8
	lsls r7, r7, #7
	mov ip, r7
	movs r0, #0xe
	mov sl, r0
_080BA136:
	ldrh r2, [r4]
	movs r0, #0x1f
	ands r0, r2
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	mov r7, r9
	ands r1, r7
	mov r0, r8
	ands r0, r2
	muls r0, r3, r0
	asrs r0, r0, #5
	mov r7, r8
	ands r0, r7
	adds r1, r1, r0
	mov r0, ip
	ands r0, r2
	muls r0, r3, r0
	asrs r0, r0, #5
	mov r2, ip
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r5]
	adds r4, #2
	adds r5, #2
	movs r7, #1
	negs r7, r7
	add sl, r7
	mov r0, sl
	cmp r0, #0
	bge _080BA136
	bl EnablePaletteSync
	ldr r0, [r6, #0x2c]
	cmp r0, #0x20
	bne _080BA184
	adds r0, r6, #0
	bl Proc_Break
_080BA184:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA194: .4byte gUnknown_020228AA

	THUMB_FUNC_END sub_80BA100

	THUMB_FUNC_START sub_80BA198
sub_80BA198: @ 0x080BA198
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080BA1E4  @ gUnknown_08A3D748
	bl Proc_Find
	adds r1, r0, #0
	ldr r0, _080BA1E8  @ gUnknown_08A3DD20
	bl Proc_Start
	adds r5, r0, #0
	movs r0, #0x1f
	ands r4, r0
	str r4, [r5, #0x30]
	movs r0, #0
	str r0, [r5, #0x2c]
	ldr r0, _080BA1EC  @ unit_icon_pal_player
	movs r1, #0xe0
	lsls r1, r1, #2
	movs r2, #0x80
	bl CopyToPaletteBuffer
	ldr r0, _080BA1F0  @ gPaletteBuffer
	lsls r4, r4, #5
	adds r4, r4, r0
	adds r4, #2
	adds r5, #0x34
	movs r1, #0xe
_080BA1CE:
	ldrh r0, [r4]
	strh r0, [r5]
	adds r4, #2
	adds r5, #2
	subs r1, #1
	cmp r1, #0
	bge _080BA1CE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BA1E4: .4byte gUnknown_08A3D748
_080BA1E8: .4byte gUnknown_08A3DD20
_080BA1EC: .4byte unit_icon_pal_player
_080BA1F0: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80BA198

	THUMB_FUNC_START sub_80BA1F4
sub_80BA1F4: @ 0x080BA1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x30]
	lsls r0, r0, #5
	ldr r1, _080BA284  @ gUnknown_020228AA
	adds r5, r0, r1
	adds r4, r6, #0
	adds r4, #0x34
	ldr r0, [r6, #0x2c]
	adds r0, #1
	str r0, [r6, #0x2c]
	movs r1, #0x1f
	mov r9, r1
	adds r3, r0, #0
	movs r2, #0xf8
	lsls r2, r2, #2
	mov r8, r2
	movs r7, #0xf8
	lsls r7, r7, #7
	mov ip, r7
	movs r0, #0xe
	mov sl, r0
_080BA228:
	ldrh r2, [r4]
	movs r0, #0x1f
	ands r0, r2
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	mov r7, r9
	ands r1, r7
	mov r0, r8
	ands r0, r2
	muls r0, r3, r0
	asrs r0, r0, #5
	mov r7, r8
	ands r0, r7
	adds r1, r1, r0
	mov r0, ip
	ands r0, r2
	muls r0, r3, r0
	asrs r0, r0, #5
	mov r2, ip
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r5]
	adds r4, #2
	adds r5, #2
	movs r7, #1
	negs r7, r7
	add sl, r7
	mov r0, sl
	cmp r0, #0
	bge _080BA228
	bl EnablePaletteSync
	ldr r0, [r6, #0x2c]
	cmp r0, #0x20
	bne _080BA276
	adds r0, r6, #0
	bl Proc_Break
_080BA276:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA284: .4byte gUnknown_020228AA

	THUMB_FUNC_END sub_80BA1F4

	THUMB_FUNC_START sub_80BA288
sub_80BA288: @ 0x080BA288
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080BA2D4  @ gUnknown_08A3D748
	bl Proc_Find
	adds r1, r0, #0
	ldr r0, _080BA2D8  @ gUnknown_08A3DD38
	bl Proc_Start
	adds r5, r0, #0
	movs r0, #0x1f
	ands r4, r0
	str r4, [r5, #0x30]
	movs r0, #0
	str r0, [r5, #0x2c]
	ldr r0, _080BA2DC  @ unit_icon_pal_player
	movs r1, #0xe0
	lsls r1, r1, #2
	movs r2, #0x80
	bl CopyToPaletteBuffer
	ldr r0, _080BA2E0  @ gPaletteBuffer
	lsls r4, r4, #5
	adds r4, r4, r0
	adds r4, #2
	adds r5, #0x34
	movs r1, #0xe
_080BA2BE:
	ldrh r0, [r4]
	strh r0, [r5]
	adds r4, #2
	adds r5, #2
	subs r1, #1
	cmp r1, #0
	bge _080BA2BE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BA2D4: .4byte gUnknown_08A3D748
_080BA2D8: .4byte gUnknown_08A3DD38
_080BA2DC: .4byte unit_icon_pal_player
_080BA2E0: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80BA288

	THUMB_FUNC_START NewWorldMap
NewWorldMap: @ 0x080BA2E4
	push {lr}
	ldr r0, _080BA310  @ gUnknown_08A3D748
	movs r1, #3
	bl Proc_Start
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080BA314  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080BA318
	str r2, [r3, #0x2c]
	b _080BA330
	.align 2, 0
_080BA310: .4byte gUnknown_08A3D748
_080BA314: .4byte gRAMChapterData
_080BA318:
	ldr r0, _080BA328  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BA32C
	movs r0, #0xc
	b _080BA32E
	.align 2, 0
_080BA328: .4byte gUnknown_03005280
_080BA32C:
	movs r0, #0x10
_080BA32E:
	str r0, [r3, #0x2c]
_080BA330:
	pop {r0}
	bx r0

	THUMB_FUNC_END NewWorldMap

	THUMB_FUNC_START WorldMap_SetupChapterStuff
WorldMap_SetupChapterStuff: @ 0x080BA334
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #4
	bl Sound_FadeOutBGM
	ldr r2, _080BA360  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BA356
	ldr r6, _080BA364  @ gRAMChapterData
	ldrb r1, [r6, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BA368
_080BA356:
	ldr r0, [r5, #0x2c]
	bl sub_80BA008
	b _080BA3BC
	.align 2, 0
_080BA360: .4byte gUnknown_03005280
_080BA364: .4byte gRAMChapterData
_080BA368:
	ldrb r0, [r2, #0x11]
	adds r1, r2, #0
	adds r1, #0xc8
	strb r0, [r1]
	bl WMLoc_GetNextLocId
	cmp r0, #0
	blt _080BA3BC
	bl WMLoc_GetChapterId
	adds r4, r0, #0
	strb r4, [r6, #0xe]
	ldr r6, _080BA3D0  @ gUnknown_088B39EC
	bl GetROMChapterStruct
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _080BA3C8
	bl sub_80BCFB4
	ldr r1, [r5, #0x48]
	adds r1, #0x32
	ldrb r2, [r1]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	bl GetROMChapterStruct
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl CallEvent
_080BA3BC:
	adds r0, r5, #0
	bl sub_80B8680
	movs r0, #0
	bl NewMapMuEntry
_080BA3C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BA3D0: .4byte gUnknown_088B39EC

	THUMB_FUNC_END WorldMap_SetupChapterStuff

	THUMB_FUNC_START CallChapterWMIntroEvents
CallChapterWMIntroEvents: @ 0x080BA3D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _080BA41C  @ gUnknown_088B3AD8
	ldr r4, _080BA420  @ gRAMChapterData
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	bl GetROMChapterStruct
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _080BA416
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	bl GetROMChapterStruct
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl CallEvent
	adds r0, r5, #0
	bl sub_80B8680
	movs r0, #0
	bl NewMapMuEntry
_080BA416:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BA41C: .4byte gUnknown_088B3AD8
_080BA420: .4byte gRAMChapterData

	THUMB_FUNC_END CallChapterWMIntroEvents

	THUMB_FUNC_START sub_80BA424
sub_80BA424: @ 0x080BA424
	push {r4, lr}
	bl sub_8002AC8
	ldr r4, _080BA454  @ gUnknown_08A3D748
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r0, [r0, #0x4c]
	bl MapRoute_80BC2DC
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r1, [r0, #0x4c]
	adds r1, #0x31
	ldrb r2, [r1]
	movs r0, #3
	orrs r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BA454: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BA424

	THUMB_FUNC_START sub_80BA458
sub_80BA458: @ 0x080BA458
	push {r4, r5, r6, lr}
	ldr r4, _080BA48C  @ gBG3TilemapBuffer
	movs r3, #0
	movs r1, #0
	movs r2, #0x90
	lsls r2, r2, #8
	adds r6, r2, #0
_080BA466:
	adds r5, r1, #1
	movs r2, #0x1f
_080BA46A:
	adds r1, r3, #0
	orrs r1, r6
	strh r1, [r4]
	adds r1, r3, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r4, #2
	subs r2, #1
	cmp r2, #0
	bge _080BA46A
	adds r1, r5, #0
	cmp r1, #0x1f
	ble _080BA466
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BA48C: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80BA458

	THUMB_FUNC_START sub_80BA490
sub_80BA490: @ 0x080BA490
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _080BA4CC  @ 0x06008000
	movs r5, #0
	movs r4, #0x1f
_080BA49A:
	ldr r0, [r7, #0x3c]
	adds r0, r0, r5
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080BA49A
	bl sub_80BA458
	movs r0, #8
	bl BG_EnableSyncByMask
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA4CC: .4byte 0x06008000

	THUMB_FUNC_END sub_80BA490

	THUMB_FUNC_START sub_80BA4D0
sub_80BA4D0: @ 0x080BA4D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, [r0, #0x40]
	str r1, [sp]
	ldr r3, [r0, #0x44]
	adds r5, r0, #0
	adds r5, #0x2e
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #5
	adds r4, r0, #0
	adds r4, #0x2d
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	adds r3, r3, r2
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BA588
	movs r1, #0
	str r5, [sp, #4]
	mov sl, r4
	movs r2, #0x1f
	mov r9, r2
_080BA512:
	adds r5, r3, #0
	ldr r2, [sp, #4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	mov r2, r9
	ands r0, r2
	movs r6, #0
	movs r2, #0x20
	adds r2, r2, r5
	mov r8, r2
	adds r1, #1
	mov ip, r1
	lsls r0, r0, #6
	ldr r1, [sp]
	adds r7, r0, r1
_080BA532:
	lsls r1, r6, #1
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r4, r1, r0
	mov r0, r9
	ands r4, r0
	lsls r3, r4, #1
	adds r3, r3, r7
	ldrh r0, [r3]
	ldr r1, _080BA584  @ 0x00000FFF
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0xf0
	ands r0, r2
	adds r0, #0x90
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	adds r5, #1
	adds r2, r4, #1
	mov r1, r9
	ands r2, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrh r0, [r2]
	ldr r1, _080BA584  @ 0x00000FFF
	ands r1, r0
	ldrb r0, [r5]
	adds r0, #9
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r2]
	adds r6, #1
	cmp r6, #0xf
	ble _080BA532
	mov r3, r8
	mov r1, ip
	cmp r1, #0x15
	ble _080BA512
	b _080BA602
	.align 2, 0
_080BA584: .4byte 0x00000FFF
_080BA588:
	movs r1, #0
	str r5, [sp, #4]
	mov sl, r4
	movs r2, #0x1f
	mov r9, r2
_080BA592:
	adds r5, r3, #0
	ldr r2, [sp, #4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	mov r2, r9
	ands r0, r2
	movs r6, #0
	movs r2, #0x20
	adds r2, r2, r5
	mov r8, r2
	adds r1, #1
	mov ip, r1
	lsls r0, r0, #6
	ldr r1, [sp]
	adds r7, r0, r1
_080BA5B2:
	lsls r1, r6, #1
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r4, r1, r0
	mov r0, r9
	ands r4, r0
	lsls r2, r4, #1
	adds r2, r2, r7
	ldrh r0, [r2]
	ldr r1, _080BA618  @ 0x00000FFF
	ands r1, r0
	ldrb r0, [r5]
	adds r0, #9
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r2]
	adds r2, r4, #1
	mov r1, r9
	ands r2, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrh r0, [r2]
	ldr r1, _080BA618  @ 0x00000FFF
	ands r1, r0
	ldrb r3, [r5]
	movs r0, #0xf0
	ands r0, r3
	adds r0, #0x90
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	adds r5, #1
	adds r6, #1
	cmp r6, #0xf
	ble _080BA5B2
	mov r3, r8
	mov r1, ip
	cmp r1, #0x15
	ble _080BA592
_080BA602:
	movs r0, #8
	bl BG_EnableSyncByMask
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA618: .4byte 0x00000FFF

	THUMB_FUNC_END sub_80BA4D0

	THUMB_FUNC_START sub_80BA61C
sub_80BA61C: @ 0x080BA61C
	movs r1, #0
	strh r1, [r0, #0x38]
	adds r0, #0x40
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80BA61C

	THUMB_FUNC_START sub_80BA628
sub_80BA628: @ 0x080BA628
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r1, #0x38
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080BA6C8
	movs r2, #0
	cmp r2, r0
	bge _080BA6C4
_080BA642:
	lsls r1, r2, #3
	ldr r0, [r6, #0x3c]
	adds r4, r0, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	mov r9, r0
	ldrb r0, [r4, #2]
	movs r1, #0x1f
	ands r1, r0
	movs r0, #4
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	mov r8, r0
	movs r3, #0
	movs r0, #5
	ldrsb r0, [r4, r0]
	adds r2, #1
	mov sl, r2
	cmp r3, r0
	bge _080BA6BA
	lsls r0, r1, #5
	ldr r1, _080BA6D8  @ 0x06008000
	adds r7, r0, r1
_080BA672:
	movs r2, #3
	ldrsb r2, [r4, r2]
	lsls r0, r3, #0x18
	asrs r5, r0, #0x18
	adds r2, r2, r5
	movs r0, #0x1f
	ands r2, r0
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r1, r5
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	mov r3, r9
	lsls r0, r3, #2
	adds r0, r1, r0
	lsls r2, r2, #0xa
	adds r1, r2, r7
	mov r2, r8
	cmp r2, #0
	bge _080BA6A2
	adds r2, #3
_080BA6A2:
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	bl CpuFastSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #5
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _080BA672
_080BA6BA:
	mov r2, sl
	movs r1, #0x38
	ldrsh r0, [r6, r1]
	cmp r2, r0
	blt _080BA642
_080BA6C4:
	movs r0, #0
	strh r0, [r6, #0x38]
_080BA6C8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BA6D8: .4byte 0x06008000

	THUMB_FUNC_END sub_80BA628

	THUMB_FUNC_START sub_80BA6DC
sub_80BA6DC: @ 0x080BA6DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	cmp r0, #7
	bgt _080BA70E
	adds r1, r0, #0
	lsls r1, r1, #3
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	strb r5, [r0]
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	ldr r1, [sp, #0xc]
	strb r1, [r0, #3]
	ldr r1, [sp, #0x10]
	strb r1, [r0, #4]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #5]
	ldrh r0, [r4, #0x38]
	adds r0, #1
	strh r0, [r4, #0x38]
	movs r0, #0
	b _080BA710
_080BA70E:
	movs r0, #1
_080BA710:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BA6DC

	THUMB_FUNC_START NewMapScreenVSynce
NewMapScreenVSynce: @ 0x080BA718
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _080BA74C  @ gUnknown_08A3DDF4
	movs r1, #0
	bl Proc_Start
	adds r2, r0, #0
	cmp r2, #0
	beq _080BA750
	str r4, [r2, #0x2c]
	str r5, [r2, #0x30]
	str r6, [r2, #0x34]
	movs r0, #0
	strh r0, [r2, #0x38]
	str r7, [r2, #0x3c]
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	ldr r0, [sp, #0x14]
	str r0, [r2, #0x44]
	adds r0, r2, #0
	b _080BA752
	.align 2, 0
_080BA74C: .4byte gUnknown_08A3DDF4
_080BA750:
	movs r0, #0
_080BA752:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END NewMapScreenVSynce

	THUMB_FUNC_START MapScreen_OnDelete
MapScreen_OnDelete: @ 0x080BA758
	push {lr}
	ldr r0, [r0, #0x48]
	bl Proc_End
	pop {r0}
	bx r0

	THUMB_FUNC_END MapScreen_OnDelete

	THUMB_FUNC_START MapScreen_Init
MapScreen_Init: @ 0x080BA764
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	strh r0, [r6, #0x36]
	strh r0, [r6, #0x34]
	strh r0, [r6, #0x3a]
	strh r0, [r6, #0x38]
	ldr r0, _080BA7FC  @ gUnknown_08A83364
	str r0, [r6, #0x3c]
	movs r0, #3
	bl BG_GetMapBuffer
	str r0, [r6, #0x40]
	ldr r0, _080BA800  @ gUnknown_08A96064
	ldr r5, _080BA804  @ gUnknown_020087A0
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	str r5, [r6, #0x44]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r0, #3
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r0, #3
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r0, #3
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	ldr r0, _080BA808  @ gUnknown_08A95FE4
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0x80
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	ldr r0, _080BA80C  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #8
	bl BG_EnableSyncByMask
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	ldr r2, [r6, #0x44]
	ldr r3, _080BA810  @ gUnknown_03001DA8
	ldr r4, _080BA814  @ gUnknown_03001DE8
	str r4, [sp]
	bl NewMapScreenVSynce
	str r0, [r6, #0x48]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BA7FC: .4byte gUnknown_08A83364
_080BA800: .4byte gUnknown_08A96064
_080BA804: .4byte gUnknown_020087A0
_080BA808: .4byte gUnknown_08A95FE4
_080BA80C: .4byte gBG3TilemapBuffer
_080BA810: .4byte gUnknown_03001DA8
_080BA814: .4byte gUnknown_03001DE8

	THUMB_FUNC_END MapScreen_Init

	THUMB_FUNC_START sub_80BA818
sub_80BA818: @ 0x080BA818
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov r8, r1
	adds r6, r2, #0
	mov r0, r8
	movs r1, #0x3c
	bl __modsi3
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #0x28
	bl __modsi3
	mov r9, r0
	adds r0, r7, #0
	adds r0, #0x20
	cmp r0, #0x20
	ble _080BA878
	movs r5, #0x20
	subs r4, r5, r7
	str r6, [sp]
	str r4, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	mov r0, sl
	adds r1, r7, #0
	mov r2, r9
	mov r3, r8
	bl sub_80BA6DC
	adds r1, r7, r4
	mov r0, r8
	adds r3, r0, r4
	str r6, [sp]
	subs r5, r5, r4
	str r5, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	mov r0, sl
	mov r2, r9
	bl sub_80BA6DC
	b _080BA88E
_080BA878:
	str r6, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x16
	str r0, [sp, #8]
	mov r0, sl
	adds r1, r7, #0
	mov r2, r9
	mov r3, r8
	bl sub_80BA6DC
_080BA88E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BA818

	THUMB_FUNC_START sub_80BA8A0
sub_80BA8A0: @ 0x080BA8A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0x2b
	adds r4, r7, #0
	adds r4, #0x2d
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _080BA9A6
	adds r0, r7, #0
	bl sub_80BA4D0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	subs r1, r2, r0
	cmp r1, #0
	blt _080BA8DC
	cmp r1, #1
	bgt _080BA8E2
	b _080BA90A
_080BA8DC:
	subs r0, r0, r2
	cmp r0, #1
	ble _080BA90A
_080BA8E2:
	ldr r0, [r7, #0x48]
	adds r4, r7, #0
	adds r4, #0x2d
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r5, r7, #0
	adds r5, #0x2e
	movs r2, #0
	ldrsb r2, [r5, r2]
	bl sub_80BA818
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrb r1, [r5]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	b _080BAAEE
_080BA90A:
	adds r2, r7, #0
	adds r2, #0x2d
	adds r0, r7, #0
	adds r0, #0x2b
	movs r3, #0
	ldrsb r3, [r2, r3]
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sl, r0
	mov r8, r2
	cmp r3, r1
	ble _080BA938
	adds r0, r3, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080BA944
_080BA938:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, r6, #0
_080BA944:
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x28
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r5, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x15
	cmp r0, #0x27
	bgt _080BA96A
	movs r2, #0x15
	mov r9, r2
	b _080BA974
_080BA96A:
	movs r0, #0x28
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080BA974:
	ldr r0, [r7, #0x48]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	adds r4, r7, #0
	adds r4, #0x2e
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r5, r9
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #8]
	bl sub_80BA6DC
	mov r1, r8
	ldrb r0, [r1]
	mov r2, sl
	strb r0, [r2]
_080BA9A6:
	adds r2, r7, #0
	adds r2, #0x2c
	adds r0, r7, #0
	adds r0, #0x2e
	movs r3, #0
	ldrsb r3, [r2, r3]
	movs r1, #0
	ldrsb r1, [r0, r1]
	str r0, [sp, #0x10]
	str r2, [sp, #0xc]
	cmp r3, r1
	bne _080BA9C0
	b _080BAAEE
_080BA9C0:
	adds r0, r7, #0
	bl sub_80BA4D0
	ldr r3, [sp, #0x10]
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldr r4, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r1, r2, r0
	cmp r1, #0
	blt _080BA9DE
	cmp r1, #1
	bgt _080BA9E4
	b _080BAA08
_080BA9DE:
	subs r0, r0, r2
	cmp r0, #1
	ble _080BAA08
_080BA9E4:
	ldr r0, [r7, #0x48]
	adds r4, r7, #0
	adds r4, #0x2d
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r5, [sp, #0x10]
	movs r2, #0
	ldrsb r2, [r5, r2]
	bl sub_80BA818
	ldrb r1, [r4]
	adds r0, r7, #0
	adds r0, #0x2b
	strb r1, [r0]
	ldrb r0, [r5]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	b _080BAAEE
_080BAA08:
	ldr r2, [sp, #0x10]
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r3, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	ble _080BAA30
	adds r0, r1, #0
	adds r0, #0x14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r9, r4
	asrs r0, r0, #0x10
	movs r1, #0x28
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _080BAA3C
_080BAA30:
	ldr r5, [sp, #0x10]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r9, r5
_080BAA3C:
	adds r0, r7, #0
	adds r0, #0x2d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r1, #0
	cmp r1, #0
	bge _080BAA4C
	adds r0, #0x1f
_080BAA4C:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r4, r0, #0x10
	adds r0, r1, #0
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0
	bgt _080BAA92
	ldr r0, [r7, #0x48]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	mov r4, r9
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	str r3, [sp]
	movs r3, #0x1f
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	mov r3, sl
	bl sub_80BA6DC
	b _080BAAE6
_080BAA92:
	movs r4, #0x20
	mov r0, sl
	subs r4, r4, r0
	ldr r0, [r7, #0x48]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r5, r5, #0x10
	mov r8, r5
	mov r1, r8
	asrs r1, r1, #0x10
	mov r8, r1
	mov r2, r9
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	str r5, [sp]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #4]
	movs r3, #1
	mov r9, r3
	str r3, [sp, #8]
	adds r1, r6, #0
	mov r2, r8
	mov r3, sl
	bl sub_80BA6DC
	movs r1, #0x1f
	subs r1, r1, r4
	ldr r0, [r7, #0x48]
	adds r6, r6, r4
	add r4, sl
	str r5, [sp]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r5, r9
	str r5, [sp, #8]
	adds r1, r6, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_80BA6DC
_080BAAE6:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
_080BAAEE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BA8A0

	THUMB_FUNC_START sub_80BAB00
sub_80BAB00: @ 0x080BAB00
	ldr r1, _080BAB08  @ gUnknown_03001E30
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080BAB08: .4byte gUnknown_03001E30

	THUMB_FUNC_END sub_80BAB00

	THUMB_FUNC_START sub_80BAB0C
sub_80BAB0C: @ 0x080BAB0C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BABE6
	ldr r0, _080BAB34  @ gUnknown_03005280
	ldrh r1, [r0, #2]
	strh r1, [r4, #0x34]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x36]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _080BAB38
	movs r0, #0
	b _080BAB3E
	.align 2, 0
_080BAB34: .4byte gUnknown_03005280
_080BAB38:
	cmp r1, #0xf0
	ble _080BAB40
	movs r0, #0xf0
_080BAB3E:
	strh r0, [r4, #0x34]
_080BAB40:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080BAB4C
	movs r0, #0
	strh r0, [r4, #0x36]
_080BAB4C:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080BAB56
	adds r0, #7
_080BAB56:
	asrs r0, r0, #3
	adds r7, r4, #0
	adds r7, #0x2d
	strb r0, [r7]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080BAB68
	adds r0, #7
_080BAB68:
	asrs r0, r0, #3
	adds r6, r4, #0
	adds r6, #0x2e
	strb r0, [r6]
	adds r5, r4, #0
	adds r5, #0x2a
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BAB92
	ldr r0, _080BABEC  @ gUnknown_08A95FE4
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0x80
	bl CopyToPaletteBuffer
	ldrb r1, [r5]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r5]
_080BAB92:
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BABB2
	ldr r0, [r4, #0x48]
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r2, #0
	ldrsb r2, [r6, r2]
	bl sub_80BA818
	ldrb r1, [r5]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r5]
_080BABB2:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BABCE
	bl sub_80BA458
	adds r0, r4, #0
	bl sub_80BA4D0
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
_080BABCE:
	adds r0, r4, #0
	bl sub_80BA8A0
	ldrh r1, [r4, #0x34]
	ldrh r2, [r4, #0x36]
	movs r0, #3
	bl BG_SetPosition
	ldrh r0, [r4, #0x34]
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x36]
	strh r0, [r4, #0x3a]
_080BABE6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BABEC: .4byte gUnknown_08A95FE4

	THUMB_FUNC_END sub_80BAB0C

	THUMB_FUNC_START NewMapScreen
NewMapScreen: @ 0x080BABF0
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _080BAC14  @ gUnknown_08A3DE84
	bl Proc_Start
	adds r4, r0, #0
	ldr r1, _080BAC18  @ gUnknown_03005324
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r3, #0xe
	bl NewMapRoute
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BAC14: .4byte gUnknown_08A3DE84
_080BAC18: .4byte gUnknown_03005324

.equ gMMSDataTable, unit_icon_move_table

	THUMB_FUNC_END NewMapScreen

	THUMB_FUNC_START MMS_GetGfx
MMS_GetGfx: @ 0x080BAC1C
	lsls r0, r0, #0x10
	ldr r1, _080BAC2C  @ gMMSDataTable
	lsrs r0, r0, #0xd
	subs r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080BAC2C: .4byte gMMSDataTable

	THUMB_FUNC_END MMS_GetGfx

	THUMB_FUNC_START MMS_GetROMTCS2
MMS_GetROMTCS2: @ 0x080BAC30
	lsls r0, r0, #0x10
	ldr r1, _080BAC40  @ gMMSDataTable
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	subs r1, #4
	ldr r0, [r1]
	bx lr
	.align 2, 0
_080BAC40: .4byte gMMSDataTable

	THUMB_FUNC_END MMS_GetROMTCS2

	THUMB_FUNC_START GetMapUnitMMSGfxBuffer
GetMapUnitMMSGfxBuffer: @ 0x080BAC44
	adds r1, r0, #0
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080BAC54  @ gUnknown_0200AF00
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080BAC54: .4byte gUnknown_0200AF00

	THUMB_FUNC_END GetMapUnitMMSGfxBuffer

	THUMB_FUNC_START GmapUnit_Destruct
GmapUnit_Destruct: @ 0x080BAC58
	push {lr}
	ldr r0, [r0, #0x40]
	bl AP_Delete
	pop {r0}
	bx r0

	THUMB_FUNC_END GmapUnit_Destruct

	THUMB_FUNC_START GmapUnit_Init
GmapUnit_Init: @ 0x080BAC64
	movs r2, #0
	strh r2, [r0, #0x2a]
	adds r3, r0, #0
	adds r3, #0x37
	movs r1, #4
	strb r1, [r3]
	strh r2, [r0, #0x3e]
	strh r2, [r0, #0x3c]
	bx lr

	THUMB_FUNC_END GmapUnit_Init

	THUMB_FUNC_START GmapUnit_Loop
GmapUnit_Loop: @ 0x080BAC78
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldrh r1, [r7, #0x2a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BAC90
	b _080BADC2
_080BAC90:
	ldr r0, _080BACAC  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BACB0
	mov r4, sp
	adds r4, #0xa
	add r0, sp, #8
	adds r1, r4, #0
	bl GetWMDisplayPosition
	b _080BACC0
	.align 2, 0
_080BACAC: .4byte gUnknown_03005280
_080BACB0:
	add r1, sp, #8
	ldr r2, [r7, #0x14]
	ldrh r0, [r2, #0x34]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0x36]
	strh r0, [r1]
	adds r4, r1, #0
_080BACC0:
	add r1, sp, #8
	ldrh r0, [r7, #0x3c]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0x3e]
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xdf
	bhi _080BADC2
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	ldr r1, _080BAD6C  @ 0x010F0000
	cmp r0, r1
	bhi _080BADC2
	ldr r0, _080BAD70  @ 0x000001FF
	mov r8, r0
	mov r1, r8
	ands r1, r2
	mov r8, r1
	mov r3, r8
	movs r2, #0xff
	mov r9, r2
	mov r0, r9
	ands r0, r4
	mov r9, r0
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _080BAD7C
	ldr r6, _080BAD74  @ gUnknown_08205F7C
	adds r5, r7, #0
	adds r5, #0x34
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r6
	ldrb r0, [r0]
	ldr r1, [r7, #0x30]
	lsls r1, r1, #5
	ldr r2, _080BAD78  @ 0x06010000
	adds r1, r1, r2
	bl sub_80270DC
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r4, [r7, #0x30]
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r6
	adds r4, r4, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	ldrh r0, [r7, #0x2e]
	adds r4, r4, r0
	ldrh r0, [r7, #0x38]
	ldrh r1, [r7, #0x2c]
	mov r2, r8
	mov r3, r9
	str r4, [sp]
	ldrh r5, [r7, #0x2a]
	movs r4, #2
	ands r4, r5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	bl SMS_DisplayOne
	b _080BADC2
	.align 2, 0
_080BAD6C: .4byte 0x010F0000
_080BAD70: .4byte 0x000001FF
_080BAD74: .4byte gUnknown_08205F7C
_080BAD78: .4byte 0x06010000
_080BAD7C:
	ldrh r2, [r7, #0x2a]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080BAD9A
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	mov r4, r9
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080BAD9A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080BADB2
	ldr r0, [r7, #0x40]
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	ldrh r1, [r7, #0x2a]
	ldr r0, _080BADD0  @ 0x0000FFFB
	ands r0, r1
	strh r0, [r7, #0x2a]
_080BADB2:
	ldr r0, [r7, #0x40]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r3, r9
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	bl AP_Update
_080BADC2:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BADD0: .4byte 0x0000FFFB

	THUMB_FUNC_END GmapUnit_Loop

	THUMB_FUNC_START GetPaletteIdForAllegience
GetPaletteIdForAllegience: @ 0x080BADD4
	push {lr}
	cmp r0, #1
	beq _080BADE6
	cmp r0, #1
	ble _080BADE2
	cmp r0, #2
	beq _080BADEA
_080BADE2:
	movs r0, #0xc
	b _080BADEC
_080BADE6:
	movs r0, #0xd
	b _080BADEC
_080BADEA:
	movs r0, #0xe
_080BADEC:
	pop {r1}
	bx r1

	THUMB_FUNC_END GetPaletteIdForAllegience

	THUMB_FUNC_START NewMapUnit
NewMapUnit: @ 0x080BADF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r7, #0
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _080BAE1E
	mov r1, r9
	adds r1, #0x34
_080BAE10:
	adds r1, #4
	adds r7, #1
	cmp r7, #6
	bgt _080BAE1E
	ldr r0, [r1]
	cmp r0, #0
	bne _080BAE10
_080BAE1E:
	cmp r7, #7
	bne _080BAE28
	movs r0, #1
	negs r0, r0
	b _080BAEFA
_080BAE28:
	mov r0, r9
	ldr r1, [r0, #0x14]
	ldr r0, _080BAE40  @ gUnknown_08A3DECC
	bl Proc_Start
	adds r5, r0, #0
	cmp r5, #0
	bne _080BAE44
	movs r0, #2
	negs r0, r0
	b _080BAEFA
	.align 2, 0
_080BAE40: .4byte gUnknown_08A3DECC
_080BAE44:
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #0x2e]
	adds r0, r5, #0
	adds r0, #0x35
	strb r4, [r0]
	ldrb r0, [r0]
	bl GetPaletteIdForAllegience
	movs r1, #0x36
	adds r1, r1, r5
	mov sl, r1
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x34
	strb r7, [r4]
	mov r0, r8
	strh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	mov r0, r8
	bl GetClassSMSId
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r2, _080BAEEC  @ gUnknown_08205F7C
	adds r2, r1, r2
	ldrb r2, [r2]
	bl SMS_SomethingGmapUnit
	movs r0, #8
	strh r0, [r5, #0x2c]
	mov r0, r8
	bl MMS_GetROMTCS2
	movs r1, #8
	bl AP_Create
	adds r6, r0, #0
	cmp r6, #0
	beq _080BAEF0
	adds r0, r5, #0
	adds r0, #0x37
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r6, #0
	bl AP_SwitchAnimation
	mov r0, r8
	bl MMS_GetGfx
	adds r4, r0, #0
	adds r0, r7, #0
	bl GetMapUnitMMSGfxBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	adds r0, r7, #0
	bl GetMapUnitMMSGfxBuffer
	str r0, [r6, #0x24]
	mov r1, r9
	ldr r0, [r1, #0x2c]
	str r0, [r5, #0x30]
	lsls r3, r7, #2
	ldr r1, [r1, #0x2c]
	adds r1, r1, r3
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldrh r0, [r5, #0x2e]
	adds r1, r1, r0
	strh r1, [r6, #0x22]
	str r6, [r5, #0x40]
	mov r0, r9
	adds r0, #0x34
	adds r0, r0, r3
	str r5, [r0]
	adds r0, r7, #0
	b _080BAEFA
	.align 2, 0
_080BAEEC: .4byte gUnknown_08205F7C
_080BAEF0:
	ldr r0, _080BAF08  @ gUnknown_08A3DECC
	bl Proc_End
	movs r0, #3
	negs r0, r0
_080BAEFA:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BAF08: .4byte gUnknown_08A3DECC

	THUMB_FUNC_END NewMapUnit

	THUMB_FUNC_START MapUnitC_DeleteGmapUnit
MapUnitC_DeleteGmapUnit: @ 0x080BAF0C
	push {r4, r5, r6, lr}
	lsls r1, r1, #2
	adds r0, #0x34
	adds r6, r0, r1
	ldr r5, [r6]
	cmp r5, #0
	beq _080BAF2C
	ldr r0, [r5, #0x40]
	bl AP_Delete
	movs r4, #0
	str r4, [r5, #0x40]
	adds r0, r5, #0
	bl Proc_End
	str r4, [r6]
_080BAF2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapUnitC_DeleteGmapUnit

	THUMB_FUNC_START MapUnitC_SetPosition
MapUnitC_SetPosition: @ 0x080BAF34
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	strh r2, [r0, #0x3c]
	strh r3, [r0, #0x3e]
	bx lr

	THUMB_FUNC_END MapUnitC_SetPosition

	THUMB_FUNC_START sub_80BAF44
sub_80BAF44: @ 0x080BAF44
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0x3c]
	strh r0, [r2]
	ldrh r0, [r1, #0x3e]
	strh r0, [r3]
	bx lr

	THUMB_FUNC_END sub_80BAF44

	THUMB_FUNC_START sub_80BAF58
sub_80BAF58: @ 0x080BAF58
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #0x3c]
	adds r0, r0, r2
	strh r0, [r1, #0x3c]
	ldrh r0, [r1, #0x3e]
	adds r0, r0, r3
	strh r0, [r1, #0x3e]
	bx lr

	THUMB_FUNC_END sub_80BAF58

	THUMB_FUNC_START sub_80BAF70
sub_80BAF70: @ 0x080BAF70
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr

	THUMB_FUNC_END sub_80BAF70

	THUMB_FUNC_START MapUnitC_SetTCSAnim
MapUnitC_SetTCSAnim: @ 0x080BAF84
	push {lr}
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x37
	strb r2, [r1]
	ldr r0, [r0, #0x40]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl AP_SwitchAnimation
	pop {r0}
	bx r0

	THUMB_FUNC_END MapUnitC_SetTCSAnim

	THUMB_FUNC_START sub_80BAFA4
sub_80BAFA4: @ 0x080BAFA4
	push {lr}
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _080BAFBC
	ldrh r1, [r3, #0x2a]
	movs r0, #1
	orrs r0, r1
	b _080BAFC2
_080BAFBC:
	ldrh r1, [r3, #0x2a]
	ldr r0, _080BAFC8  @ 0x0000FFFE
	ands r0, r1
_080BAFC2:
	strh r0, [r3, #0x2a]
	pop {r0}
	bx r0
	.align 2, 0
_080BAFC8: .4byte 0x0000FFFE

	THUMB_FUNC_END sub_80BAFA4

	THUMB_FUNC_START sub_80BAFCC
sub_80BAFCC: @ 0x080BAFCC
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #0x2a]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr

	THUMB_FUNC_END sub_80BAFCC

	THUMB_FUNC_START sub_80BAFE0
sub_80BAFE0: @ 0x080BAFE0
	push {lr}
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r2, r2, #0x18
	cmp r2, #0
	beq _080BAFF8
	ldrh r1, [r3, #0x2a]
	movs r0, #2
	orrs r0, r1
	b _080BAFFE
_080BAFF8:
	ldrh r1, [r3, #0x2a]
	ldr r0, _080BB004  @ 0x0000FFFD
	ands r0, r1
_080BAFFE:
	strh r0, [r3, #0x2a]
	pop {r0}
	bx r0
	.align 2, 0
_080BB004: .4byte 0x0000FFFD

	THUMB_FUNC_END sub_80BAFE0

	THUMB_FUNC_START sub_80BB008
sub_80BB008: @ 0x080BB008
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldrh r0, [r0, #0x1e]
	bx lr

	THUMB_FUNC_END sub_80BB008

	THUMB_FUNC_START MapUnitC_SetTCSOAMIndex
MapUnitC_SetTCSOAMIndex: @ 0x080BB018
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #0x40]
	strh r2, [r0, #0x1e]
	strh r2, [r1, #0x2c]
	bx lr

	THUMB_FUNC_END MapUnitC_SetTCSOAMIndex

	THUMB_FUNC_START sub_80BB028
sub_80BB028: @ 0x080BB028
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	bx lr

	THUMB_FUNC_END sub_80BB028

	THUMB_FUNC_START MapUnitC_SetAllegienceColorIndex
MapUnitC_SetAllegienceColorIndex: @ 0x080BB038
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r5, r1, #2
	adds r0, #0x34
	adds r0, r0, r5
	ldr r4, [r0]
	cmp r2, #0
	blt _080BB04E
	adds r0, r4, #0
	adds r0, #0x35
	strb r2, [r0]
_080BB04E:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	bl GetPaletteIdForAllegience
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldr r3, [r4, #0x40]
	ldr r2, [r6, #0x2c]
	adds r2, r2, r5
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xc
	adds r2, r2, r1
	ldrh r4, [r4, #0x2e]
	adds r2, r2, r4
	strh r2, [r3, #0x22]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapUnitC_SetAllegienceColorIndex

	THUMB_FUNC_START sub_80BB078
sub_80BB078: @ 0x080BB078
	push {r4, r5, lr}
	lsls r1, r1, #2
	adds r3, r0, #0
	adds r3, #0x34
	adds r3, r3, r1
	ldr r4, [r3]
	adds r3, r4, #0
	adds r3, #0x36
	strb r2, [r3]
	ldr r5, [r4, #0x40]
	ldr r3, [r0, #0x2c]
	adds r3, r3, r1
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	adds r3, r3, r0
	ldrh r4, [r4, #0x2e]
	adds r3, r3, r4
	strh r3, [r5, #0x22]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BB078

	THUMB_FUNC_START MapUnitC_MarkSomething
MapUnitC_MarkSomething: @ 0x080BB0A4
	push {r4, r5, lr}
	cmp r1, #0
	blt _080BB0BC
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2, #0x2a]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0x2a]
	b _080BB0D8
_080BB0BC:
	movs r4, #4
	adds r1, r0, #0
	adds r1, #0x34
	movs r3, #6
_080BB0C4:
	ldr r2, [r1]
	cmp r2, #0
	beq _080BB0D0
	ldrh r0, [r2, #0x2a]
	orrs r0, r4
	strh r0, [r2, #0x2a]
_080BB0D0:
	adds r1, #4
	subs r3, #1
	cmp r3, #0
	bge _080BB0C4
_080BB0D8:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapUnitC_MarkSomething

	THUMB_FUNC_START sub_80BB0E0
sub_80BB0E0: @ 0x080BB0E0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r7, r1, #0
	adds r4, r2, #0
	lsls r0, r7, #2
	mov r9, r0
	mov r0, r8
	adds r0, #0x34
	add r0, r9
	ldr r5, [r0]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _080BB104
	bl AP_Delete
_080BB104:
	adds r2, r4, #0
	cmp r2, #0
	bne _080BB10C
	ldrh r2, [r5, #0x38]
_080BB10C:
	ldrh r1, [r5, #0x3a]
	cmp r2, r1
	beq _080BB17A
	strh r2, [r5, #0x3a]
	lsls r0, r2, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl MMS_GetROMTCS2
	movs r1, #8
	bl AP_Create
	adds r6, r0, #0
	cmp r6, #0
	bne _080BB12E
	movs r0, #0
	b _080BB17C
_080BB12E:
	adds r0, r5, #0
	adds r0, #0x37
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r6, #0
	bl AP_SwitchAnimation
	adds r0, r4, #0
	bl MMS_GetGfx
	adds r4, r0, #0
	adds r0, r7, #0
	bl GetMapUnitMMSGfxBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	adds r0, r7, #0
	bl GetMapUnitMMSGfxBuffer
	str r0, [r6, #0x24]
	mov r1, r8
	ldr r0, [r1, #0x2c]
	str r0, [r5, #0x30]
	ldr r1, [r1, #0x2c]
	add r1, r9
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldrh r0, [r5, #0x2e]
	adds r1, r1, r0
	strh r1, [r6, #0x22]
	str r6, [r5, #0x40]
_080BB17A:
	movs r0, #1
_080BB17C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BB0E0

	THUMB_FUNC_START sub_80BB188
sub_80BB188: @ 0x080BB188
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0x38]
	bx lr

	THUMB_FUNC_END sub_80BB188

	THUMB_FUNC_START sub_80BB194
sub_80BB194: @ 0x080BB194
	lsls r1, r1, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0x3a]
	bx lr

	THUMB_FUNC_END sub_80BB194

	THUMB_FUNC_START GmapUnitContainer_Destruct
GmapUnitContainer_Destruct: @ 0x080BB1A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x34
	adds r6, r4, #0
	movs r7, #0
	movs r5, #6
_080BB1AC:
	cmp r6, #0
	beq _080BB1B8
	ldr r0, [r4]
	bl Proc_End
	str r7, [r4]
_080BB1B8:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080BB1AC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END GmapUnitContainer_Destruct

	THUMB_FUNC_START GmapUnitContainer_Init
GmapUnitContainer_Init: @ 0x080BB1C8
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r1, #0x34
	ldr r2, _080BB1E4  @ 0x05000007
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080BB1E4: .4byte 0x05000007

	THUMB_FUNC_END GmapUnitContainer_Init

	THUMB_FUNC_START NewGmapUnitContainer
NewGmapUnitContainer: @ 0x080BB1E8
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _080BB208  @ gUnknown_08A3DEFC
	adds r1, r3, #0
	bl Proc_Start
	str r4, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x30
	strb r5, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080BB208: .4byte gUnknown_08A3DEFC

	THUMB_FUNC_END NewGmapUnitContainer

	THUMB_FUNC_START GmapUnitFade_Destruct
GmapUnitFade_Destruct: @ 0x080BB20C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _080BB250
_080BB214:
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x30
	cmp r0, #0
	bge _080BB238
	ldr r0, _080BB260  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x4c]
	adds r1, r4, r6
	ldrb r1, [r1]
	movs r2, #0
	bl sub_80BAFA4
_080BB238:
	ldr r0, _080BB260  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x4c]
	adds r1, r4, r6
	ldrb r1, [r1]
	movs r2, #1
	negs r2, r2
	bl MapUnitC_SetAllegienceColorIndex
	adds r6, #1
	adds r0, r5, #0
_080BB250:
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r6, r0
	blt _080BB214
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BB260: .4byte gUnknown_08A3D748

	THUMB_FUNC_END GmapUnitFade_Destruct

	THUMB_FUNC_START GmapUnitFade_Init
GmapUnitFade_Init: @ 0x080BB264
	movs r1, #0
	strh r1, [r0, #0x2e]
	bx lr

	THUMB_FUNC_END GmapUnitFade_Init

	THUMB_FUNC_START sub_80BB26C
sub_80BB26C: @ 0x080BB26C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r3, #0
	cmp r0, #0
	blt _080BB2B0
	ldr r2, _080BB2AC  @ gPaletteBuffer
	lsls r0, r0, #4
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r3, #0x1f
	ands r3, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #5
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r1, r0
	lsrs r1, r1, #0xa
	mov r9, r1
	b _080BB2B8
	.align 2, 0
_080BB2AC: .4byte gPaletteBuffer
_080BB2B0:
	movs r0, #0
	mov r9, r0
	mov r8, r0
	movs r3, #0
_080BB2B8:
	cmp r4, #0
	blt _080BB2E8
	ldr r2, _080BB2E4  @ gPaletteBuffer
	lsls r0, r4, #4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r5, r4
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #0x1f
	ands r2, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r4, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r1, r0
	lsrs r7, r1, #0xa
	b _080BB2EE
	.align 2, 0
_080BB2E4: .4byte gPaletteBuffer
_080BB2E8:
	movs r7, #0
	movs r4, #0
	movs r2, #0
_080BB2EE:
	movs r5, #0x80
	lsls r5, r5, #5
	subs r0, r2, r3
	ldr r2, [sp, #0x20]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r5, #0
	str r3, [sp]
	bl DivArm
	adds r6, r0, #0
	ldr r3, [sp]
	adds r6, r3, r6
	mov r3, r8
	subs r0, r4, r3
	ldr r4, [sp, #0x20]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	bl DivArm
	adds r4, r0, #0
	add r4, r8
	mov r1, r9
	subs r0, r7, r1
	ldr r2, [sp, #0x20]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r5, #0
	bl DivArm
	add r0, r9
	lsls r0, r0, #0xa
	lsls r4, r4, #5
	adds r0, r0, r4
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BB26C

	THUMB_FUNC_START GmapUnitFade_Loop
GmapUnitFade_Loop: @ 0x080BB348
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
	ldr r6, _080BB398  @ gUnknown_02022BE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0x2c]
	cmp r0, r1
	bcs _080BB39C
	ldrh r0, [r5, #0x2e]
	ldrh r1, [r5, #0x2c]
	movs r2, #0
	bl sub_800B7E0
	mov r8, r0
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x29
	adds r5, #0x2a
_080BB378:
	movs r0, #0
	ldrsb r0, [r7, r0]
	movs r2, #0
	ldrsb r2, [r5, r2]
	mov r1, r8
	str r1, [sp]
	adds r1, r4, #0
	adds r3, r4, #0
	bl sub_80BB26C
	strh r0, [r6]
	adds r6, #2
	adds r4, #1
	cmp r4, #0xf
	ble _080BB378
	b _080BB3D4
	.align 2, 0
_080BB398: .4byte gUnknown_02022BE8
_080BB39C:
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080BB3C0
	lsls r0, r0, #5
	ldr r2, _080BB3BC  @ 0xFFFFFEC0
	adds r1, r6, r2
	adds r0, r0, r1
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	b _080BB3CE
	.align 2, 0
_080BB3BC: .4byte 0xFFFFFEC0
_080BB3C0:
	add r0, sp, #4
	movs r1, #0
	strh r1, [r0]
	ldr r2, _080BB3E4  @ 0x01000010
	adds r1, r6, #0
	bl CpuSet
_080BB3CE:
	adds r0, r5, #0
	bl Proc_Break
_080BB3D4:
	bl EnablePaletteSync
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB3E4: .4byte 0x01000010

	THUMB_FUNC_END GmapUnitFade_Loop

	THUMB_FUNC_START sub_80BB3E8
sub_80BB3E8: @ 0x080BB3E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _080BB40C
	ldr r0, _080BB408  @ gUnknown_08A3DF2C
	bl Proc_StartBlocking
	b _080BB414
	.align 2, 0
_080BB408: .4byte gUnknown_08A3DF2C
_080BB40C:
	ldr r0, _080BB43C  @ gUnknown_08A3DF2C
	movs r1, #3
	bl Proc_Start
_080BB414:
	adds r4, r0, #0
	adds r0, r4, #0
	adds r0, #0x29
	strb r5, [r0]
	adds r0, #1
	strb r6, [r0]
	strh r7, [r4, #0x2c]
	cmp r5, #0
	blt _080BB444
	lsls r0, r5, #5
	ldr r1, _080BB440  @ gUnknown_02022AA8
	adds r0, r0, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	b _080BB454
	.align 2, 0
_080BB43C: .4byte gUnknown_08A3DF2C
_080BB440: .4byte gUnknown_02022AA8
_080BB444:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080BB474  @ gUnknown_02022BE8
	ldr r2, _080BB478  @ 0x01000010
	mov r0, sp
	bl CpuSet
_080BB454:
	bl EnablePaletteSync
	adds r0, r4, #0
	adds r0, #0x30
	mov r1, r8
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x37
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BB474: .4byte gUnknown_02022BE8
_080BB478: .4byte 0x01000010

	THUMB_FUNC_END sub_80BB3E8

	THUMB_FUNC_START sub_80BB47C
sub_80BB47C: @ 0x080BB47C
	push {lr}
	ldr r0, _080BB488  @ gUnknown_08A3DF2C
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080BB488: .4byte gUnknown_08A3DF2C

	THUMB_FUNC_END sub_80BB47C

	THUMB_FUNC_START sub_80BB48C
sub_80BB48C: @ 0x080BB48C
	push {lr}
	ldr r0, _080BB498  @ gUnknown_08A3DF2C
	bl Proc_Find
	pop {r1}
	bx r1
	.align 2, 0
_080BB498: .4byte gUnknown_08A3DF2C

	THUMB_FUNC_END sub_80BB48C

	THUMB_FUNC_START sub_80BB49C
sub_80BB49C: @ 0x080BB49C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80BB48C
	cmp r0, #0
	beq _080BB4BA
	adds r1, r0, #0
	adds r1, #0x37
	adds r0, #0x30
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r4, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080BB4BA:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BB49C

	THUMB_FUNC_START sub_80BB4C0
sub_80BB4C0: @ 0x080BB4C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _080BB504  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r6, [r0, #0x4c]
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldr r4, [r0]
	bl sub_80BB48C
	cmp r0, #0
	bne _080BB508
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	bl GetPaletteIdForAllegience
	adds r2, r0, #0
	movs r1, #1
	negs r1, r1
	str r7, [sp]
	adds r0, r5, #0
	mov r3, r8
	bl sub_80BB3E8
	b _080BB50E
	.align 2, 0
_080BB504: .4byte gUnknown_08A3D748
_080BB508:
	adds r0, r5, #0
	bl sub_80BB49C
_080BB50E:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl sub_80BB078
	ldr r0, _080BB534  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x4c]
	adds r1, r5, #0
	movs r2, #1
	bl sub_80BAFA4
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB534: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BB4C0

	THUMB_FUNC_START sub_80BB538
sub_80BB538: @ 0x080BB538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _080BB57C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r6, [r0, #0x4c]
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldr r4, [r0]
	bl sub_80BB48C
	cmp r0, #0
	bne _080BB580
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	bl GetPaletteIdForAllegience
	adds r1, r0, #0
	movs r2, #1
	negs r2, r2
	str r7, [sp]
	adds r0, r5, #0
	mov r3, r8
	bl sub_80BB3E8
	b _080BB586
	.align 2, 0
_080BB57C: .4byte gUnknown_08A3D748
_080BB580:
	adds r0, r5, #0
	bl sub_80BB49C
_080BB586:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl sub_80BB078
	ldr r0, _080BB5AC  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x4c]
	adds r1, r5, #0
	movs r2, #1
	bl sub_80BAFA4
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB5AC: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BB538

	THUMB_FUNC_START WMLoc_GetChapterId
WMLoc_GetChapterId: @ 0x080BB5B0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080BB5CC  @ gRAMChapterData
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	beq _080BB5C0
	cmp r0, #3
	beq _080BB5D4
_080BB5C0:
	lsls r0, r1, #5
	ldr r1, _080BB5D0  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	b _080BB5DC
	.align 2, 0
_080BB5CC: .4byte gRAMChapterData
_080BB5D0: .4byte gUnknown_082060B0
_080BB5D4:
	lsls r0, r1, #5
	ldr r1, _080BB5E0  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0, #5]
_080BB5DC:
	pop {r1}
	bx r1
	.align 2, 0
_080BB5E0: .4byte gUnknown_082060B0

	THUMB_FUNC_END WMLoc_GetChapterId

	THUMB_FUNC_START WMLoc_GetNextLocId
WMLoc_GetNextLocId: @ 0x080BB5E4
	push {r4, lr}
	lsls r0, r0, #5
	ldr r1, _080BB614  @ gUnknown_082060B0
	adds r4, r0, r1
	movs r1, #6
	ldrsh r0, [r4, r1]
	bl CheckEventId
	lsls r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #8
	cmp r0, #0
	beq _080BB600
	adds r1, #2
_080BB600:
	ldr r0, _080BB618  @ gRAMChapterData
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	beq _080BB60C
	cmp r0, #3
	beq _080BB61C
_080BB60C:
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _080BB620
	.align 2, 0
_080BB614: .4byte gUnknown_082060B0
_080BB618: .4byte gRAMChapterData
_080BB61C:
	movs r0, #1
	ldrsb r0, [r1, r0]
_080BB620:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END WMLoc_GetNextLocId

	THUMB_FUNC_START sub_80BB628
sub_80BB628: @ 0x080BB628
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r0, #0
	mov r9, r0
	ldr r1, _080BB66C  @ gUnknown_082060B0
	mov ip, r1
_080BB642:
	mov r2, r9
	lsls r0, r2, #2
	ldr r3, _080BB670  @ gUnknown_03005280
	adds r0, r0, r3
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BB6D8
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BB678
	mov r4, ip
	ldrb r0, [r4, #2]
	lsls r0, r0, #4
	ldr r6, _080BB674  @ gUnknown_08205FA0
	adds r0, r0, r6
	b _080BB682
	.align 2, 0
_080BB66C: .4byte gUnknown_082060B0
_080BB670: .4byte gUnknown_03005280
_080BB674: .4byte gUnknown_08205FA0
_080BB678:
	mov r7, ip
	ldrb r0, [r7, #3]
	lsls r0, r0, #4
	ldr r1, _080BB6D4  @ gUnknown_08205FA0
	adds r0, r0, r1
_080BB682:
	mov r3, ip
	movs r4, #0x18
	ldrsh r2, [r3, r4]
	movs r6, #0xa
	ldrsb r6, [r0, r6]
	mov r8, r6
	movs r5, #8
	ldrsb r5, [r0, r5]
	subs r3, r2, r5
	mov r7, sl
	subs r3, r3, r7
	mov r4, ip
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	movs r6, #0xb
	ldrsb r6, [r0, r6]
	movs r4, #9
	ldrsb r4, [r0, r4]
	subs r0, r1, r4
	ldr r7, [sp, #0x2c]
	subs r0, r0, r7
	str r0, [sp, #8]
	add r2, r8
	subs r2, r2, r5
	add r2, sl
	adds r1, r1, r6
	subs r1, r1, r4
	adds r0, r1, r7
	ldr r1, [sp]
	cmp r1, r3
	blt _080BB6D8
	cmp r1, r2
	bge _080BB6D8
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	cmp r2, r3
	blt _080BB6D8
	cmp r2, r0
	bge _080BB6D8
	mov r0, r9
	b _080BB6EA
	.align 2, 0
_080BB6D4: .4byte gUnknown_08205FA0
_080BB6D8:
	movs r4, #0x20
	add ip, r4
	movs r6, #1
	add r9, r6
	mov r7, r9
	cmp r7, #0x1c
	ble _080BB642
	movs r0, #1
	negs r0, r0
_080BB6EA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BB628

	THUMB_FUNC_START sub_80BB6FC
sub_80BB6FC: @ 0x080BB6FC
	adds r0, #0x32
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80BB6FC

	THUMB_FUNC_START sub_80BB708
sub_80BB708: @ 0x080BB708
	adds r0, #0x32
	ldrb r2, [r0]
	movs r1, #2
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80BB708

	THUMB_FUNC_START GmapScreen2_Destruct
GmapScreen2_Destruct: @ 0x080BB718
	push {lr}
	ldr r0, [r0, #0x38]
	bl AP_Delete
	pop {r0}
	bx r0

	THUMB_FUNC_END GmapScreen2_Destruct

	THUMB_FUNC_START GmapScreen2_Init
GmapScreen2_Init: @ 0x080BB724
	push {lr}
	movs r1, #0
	movs r3, #0
	adds r2, r0, #0
	adds r2, #0x34
_080BB72E:
	stm r2!, {r3}
	adds r1, #1
	cmp r1, #0
	beq _080BB72E
	adds r0, #0x32
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0

	THUMB_FUNC_END GmapScreen2_Init

	THUMB_FUNC_START sub_80BB744
sub_80BB744: @ 0x080BB744
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r3, #0
	ldr r5, [sp, #0x14]
	mov r4, sp
	ldrh r3, [r0, #0x34]
	strh r3, [r4]
	mov r3, sp
	adds r3, #2
	ldrh r4, [r0, #0x36]
	strh r4, [r3]
	mov r0, sp
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r4
	strh r2, [r5]
	adds r2, #0x20
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xdf
	bhi _080BB78C
	ldrh r0, [r6]
	adds r0, #0x20
	lsls r0, r0, #0x10
	ldr r1, _080BB788  @ 0x012F0000
	cmp r0, r1
	bhi _080BB78C
	movs r0, #1
	b _080BB78E
	.align 2, 0
_080BB788: .4byte 0x012F0000
_080BB78C:
	movs r0, #0
_080BB78E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BB744

	THUMB_FUNC_START GmapScreen2_Loop
GmapScreen2_Loop: @ 0x080BB798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	mov r2, r8
	adds r2, #0x32
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BB7B6
	b _080BB988
_080BB7B6:
	mov r1, r8
	ldr r0, [r1, #0x2c]
	lsrs r0, r0, #5
	mov sl, r0
	movs r7, #0
	str r2, [sp, #0xc]
	add r2, sp, #4
	mov r9, r2
_080BB7C6:
	ldr r0, _080BB7EC  @ gUnknown_03005280
	lsls r1, r7, #2
	adds r1, r1, r0
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080BB894
	lsls r1, r7, #5
	ldr r0, _080BB7F0  @ gUnknown_082060B0
	adds r6, r1, r0
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080BB7F4
	ldrb r0, [r6, #2]
	b _080BB7F6
	.align 2, 0
_080BB7EC: .4byte gUnknown_03005280
_080BB7F0: .4byte gUnknown_082060B0
_080BB7F4:
	ldrb r0, [r6, #3]
_080BB7F6:
	lsls r0, r0, #4
	ldr r1, _080BB8D0  @ gUnknown_08205FA0
	adds r5, r0, r1
	movs r0, #8
	ldrsb r0, [r5, r0]
	ldrh r1, [r6, #0x18]
	subs r1, r1, r0
	movs r0, #9
	ldrsb r0, [r5, r0]
	ldrh r2, [r6, #0x1a]
	subs r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #0x3c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	add r3, sp, #4
	bl sub_80BB744
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BB894
	mov r1, r9
	ldrh r0, [r1]
	ldr r2, _080BB8D4  @ 0x000001FF
	adds r1, r2, #0
	ands r0, r1
	mov r3, r9
	strh r0, [r3]
	ldrb r3, [r4]
	strh r3, [r4]
	adds r0, r7, #0
	cmp r7, #0
	bge _080BB844
	adds r0, #0x1f
_080BB844:
	asrs r0, r0, #5
	lsls r0, r0, #2
	mov r2, r8
	adds r2, #0x34
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r7
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080BB868
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r3, r0
	strh r3, [r4]
_080BB868:
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r3, [r5, #4]
	ldrh r4, [r5]
	add r4, sl
	mov r0, r8
	adds r0, #0x30
	ldrb r5, [r0]
	movs r0, #0xf
	ands r0, r5
	lsls r0, r0, #0xc
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	str r4, [sp]
	movs r0, #0xc
	bl PutSpriteExt
_080BB894:
	adds r7, #1
	cmp r7, #0x1c
	ble _080BB7C6
	ldr r2, [sp, #0xc]
	ldrb r1, [r2]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BB988
	mov r3, r8
	adds r3, #0x33
	ldrb r0, [r3]
	lsls r2, r0, #5
	ldr r1, _080BB8D8  @ gUnknown_082060B0
	adds r6, r2, r1
	ldr r2, _080BB8DC  @ gUnknown_03005280
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x30
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	mov r9, r2
	adds r7, r3, #0
	cmp r0, #0
	beq _080BB8E0
	ldrb r0, [r6, #2]
	b _080BB8E2
	.align 2, 0
_080BB8D0: .4byte gUnknown_08205FA0
_080BB8D4: .4byte 0x000001FF
_080BB8D8: .4byte gUnknown_082060B0
_080BB8DC: .4byte gUnknown_03005280
_080BB8E0:
	ldrb r0, [r6, #3]
_080BB8E2:
	lsls r0, r0, #4
	ldr r1, _080BB998  @ gUnknown_08205FA0
	adds r5, r0, r1
	add r3, sp, #8
	mov r0, r8
	ldr r1, [r0, #0x3c]
	ldrh r0, [r1, #0x34]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa
	ldrh r0, [r1, #0x36]
	strh r0, [r4]
	add r2, sp, #4
	movs r0, #8
	ldrsb r0, [r5, r0]
	ldrh r1, [r6, #0x18]
	subs r1, r1, r0
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	movs r0, #9
	ldrsb r0, [r5, r0]
	ldrh r1, [r6, #0x1a]
	subs r1, r1, r0
	movs r0, #0xd
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdf
	bhi _080BB988
	add r0, sp, #4
	ldrh r0, [r0]
	adds r0, #0x20
	lsls r0, r0, #0x10
	ldr r1, _080BB99C  @ 0x012F0000
	cmp r0, r1
	bhi _080BB988
	ldrb r0, [r7]
	lsls r0, r0, #2
	add r0, r9
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	add r0, sp, #4
	ldrh r0, [r0]
	ldr r5, _080BB9A0  @ 0x000001FF
	ands r5, r0
	ldrb r4, [r2]
	ldrb r3, [r7]
	lsrs r0, r3, #5
	lsls r0, r0, #2
	mov r2, r8
	adds r2, #0x34
	adds r2, r2, r0
	movs r0, #0x1f
	ands r3, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080BB97A
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r4, r0
_080BB97A:
	mov r2, r8
	ldr r0, [r2, #0x38]
	adds r1, r5, #0
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl AP_Update
_080BB988:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BB998: .4byte gUnknown_08205FA0
_080BB99C: .4byte 0x012F0000
_080BB9A0: .4byte 0x000001FF

	THUMB_FUNC_END GmapScreen2_Loop

	THUMB_FUNC_START sub_80BB9A4
sub_80BB9A4: @ 0x080BB9A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, _080BBA20  @ gUnknown_08A3DF64
	adds r1, r4, #0
	bl Proc_Start
	adds r7, r0, #0
	str r5, [r7, #0x2c]
	adds r4, r7, #0
	adds r4, #0x30
	movs r2, #0
	strb r6, [r4]
	adds r0, #0x31
	mov r1, r8
	strb r1, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r7, #0x3c]
	adds r3, r7, #0
	adds r3, #0x32
	ldrb r1, [r3]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x33
	strb r2, [r0]
	ldr r0, _080BBA24  @ gUnknown_08A97AEC
	movs r1, #0xb
	bl AP_Create
	str r0, [r7, #0x38]
	movs r1, #1
	bl AP_SwitchAnimation
	ldr r3, [r7, #0x38]
	ldr r1, [r7, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r1, r0
	lsrs r1, r1, #5
	ldrb r2, [r4]
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r3, #0x22]
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BBA20: .4byte gUnknown_08A3DF64
_080BBA24: .4byte gUnknown_08A97AEC

	THUMB_FUNC_END sub_80BB9A4

	THUMB_FUNC_START sub_80BBA28
sub_80BBA28: @ 0x080BBA28
	push {lr}
	cmp r0, #0x1c
	bls _080BBA38
	ldr r0, _080BBA34  @ 0x0000066D
	b _080BBA40
	.align 2, 0
_080BBA34: .4byte 0x0000066D
_080BBA38:
	lsls r0, r0, #5
	ldr r1, _080BBA48  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrh r0, [r0, #0x1c]
_080BBA40:
	bl GetStringFromIndex
	pop {r1}
	bx r1
	.align 2, 0
_080BBA48: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80BBA28

	THUMB_FUNC_START sub_80BBA4C
sub_80BBA4C: @ 0x080BBA4C
	push {lr}
	adds r3, r0, #0
	ldr r0, _080BBA60  @ gRAMChapterData
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	beq _080BBA5C
	cmp r0, #3
	beq _080BBA64
_080BBA5C:
	movs r2, #0
	b _080BBA66
	.align 2, 0
_080BBA60: .4byte gRAMChapterData
_080BBA64:
	movs r2, #1
_080BBA66:
	ldr r0, _080BBA7C  @ gUnknown_08206450
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, r3, r1
	adds r1, r1, r0
	ldrb r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_080BBA7C: .4byte gUnknown_08206450

	THUMB_FUNC_END sub_80BBA4C

	THUMB_FUNC_START nullsub_59
nullsub_59: @ 0x080BBA80
	bx lr

	THUMB_FUNC_END nullsub_59

	THUMB_FUNC_START GmapCursor_Init
GmapCursor_Init: @ 0x080BBA84
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x31
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	str r0, [r3, #0x3c]
	str r0, [r3, #0x38]
	str r0, [r3, #0x44]
	str r0, [r3, #0x40]
	adds r1, #0x15
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x34
	strb r2, [r0]
	subs r1, #0x13
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080BBACC  @ gPaletteBuffer
	ldr r1, _080BBAD0  @ gUnknown_08A97ACC
	ldrh r1, [r1]
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r0, r0, r2
	strh r1, [r0]
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_080BBACC: .4byte gPaletteBuffer
_080BBAD0: .4byte gUnknown_08A97ACC

	THUMB_FUNC_END GmapCursor_Init

	THUMB_FUNC_START GmapCursor_Destruct
GmapCursor_Destruct: @ 0x080BBAD4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _080BBBB4  @ gUnknown_03005280
	ldrb r1, [r0, #1]
	adds r2, r6, #0
	adds r2, #0x32
	strb r1, [r2]
	ldr r7, [r0, #8]
	str r7, [r6, #0x38]
	ldr r0, [r0, #0xc]
	mov ip, r0
	str r0, [r6, #0x3c]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080BBBAA
	ldr r5, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080BBBB8  @ gUnknown_08206498
	adds r4, r4, r0
	add r2, sp, #4
	ldr r1, [r6, #0x4c]
	ldrh r0, [r1, #0x34]
	strh r0, [r2]
	mov r3, sp
	adds r3, #6
	ldrh r0, [r1, #0x36]
	strh r0, [r3]
	asrs r1, r7, #8
	adds r0, r2, #0
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	movs r0, #8
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	mov r7, ip
	asrs r2, r7, #8
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r2, r2, r0
	movs r0, #9
	ldrsb r0, [r4, r0]
	subs r2, r2, r0
	ldr r3, [r4, #4]
	lsrs r5, r5, #5
	ldrh r4, [r4]
	adds r5, r5, r4
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r4, [r0]
	movs r0, #0xf
	ands r0, r4
	lsls r0, r0, #0xc
	adds r5, r5, r0
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	str r5, [sp]
	movs r0, #4
	bl PutSprite
	adds r4, r6, #0
	adds r4, #0x35
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080BBBA2
	adds r1, r6, #0
	adds r1, #0x34
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080BBB86
	strb r2, [r1]
_080BBB86:
	ldr r2, _080BBBBC  @ gPaletteBuffer
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r1, _080BBBC0  @ gUnknown_08A97ACC
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0xa7
	lsls r1, r1, #2
	adds r2, r2, r1
	strh r0, [r2]
	bl EnablePaletteSync
	movs r0, #4
	strb r0, [r4]
_080BBBA2:
	ldr r0, [r6, #0x38]
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x3c]
	str r0, [r6, #0x44]
_080BBBAA:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BBBB4: .4byte gUnknown_03005280
_080BBBB8: .4byte gUnknown_08206498
_080BBBBC: .4byte gPaletteBuffer
_080BBBC0: .4byte gUnknown_08A97ACC

	THUMB_FUNC_END GmapCursor_Destruct

	THUMB_FUNC_START NewGmapCursor
NewGmapCursor: @ 0x080BBBC4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, _080BBBF0  @ gUnknown_08A3DF94
	adds r1, r4, #0
	bl Proc_Start
	str r5, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x30
	strb r6, [r1]
	mov r1, r8
	str r1, [r0, #0x4c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BBBF0: .4byte gUnknown_08A3DF94

	THUMB_FUNC_END NewGmapCursor

	THUMB_FUNC_START sub_80BBBF4
sub_80BBBF4: @ 0x080BBBF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	b _080BBC44
_080BBC06:
	ldrb r0, [r4, #1]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r3, r1, r0
	ldrb r5, [r4, #2]
	ldrb r6, [r4, #3]
	adds r2, r4, #4
	movs r0, #0
	cmp r0, r6
	bge _080BBC42
_080BBC24:
	adds r4, r0, #1
	cmp r5, #0
	beq _080BBC3C
	adds r1, r5, #0
_080BBC2C:
	ldrh r0, [r2]
	adds r0, r7, r0
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _080BBC2C
_080BBC3C:
	adds r0, r4, #0
	cmp r0, r6
	blt _080BBC24
_080BBC42:
	adds r4, r2, #0
_080BBC44:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _080BBC06
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BBBF4

	THUMB_FUNC_START sub_80BBC54
sub_80BBC54: @ 0x080BBC54
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, [r5, #0x2c]
	lsrs r1, r1, #5
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080BBC80  @ gUnknown_02019D00
	ldr r2, _080BBC84  @ 0x01000960
	mov r0, sp
	bl CpuSet
	movs r4, #0
	b _080BBCA6
	.align 2, 0
_080BBC80: .4byte gUnknown_02019D00
_080BBC84: .4byte 0x01000960
_080BBC88:
	adds r0, r1, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BBCC0  @ gUnknown_08206674
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080BBCC4  @ gUnknown_02019D00
	movs r2, #0x3c
	adds r3, r6, #0
	bl sub_80BBBF4
	adds r4, #1
_080BBCA6:
	ldr r1, [r5, #0x40]
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080BBC88
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BBCC0: .4byte gUnknown_08206674
_080BBCC4: .4byte gUnknown_02019D00

	THUMB_FUNC_END sub_80BBC54

	THUMB_FUNC_START sub_80BBCC8
sub_80BBCC8: @ 0x080BBCC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x12
	bgt _080BBCE6
	adds r0, r4, #0
	adds r0, #0x15
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080BBCE8
_080BBCE6:
	movs r0, #0x28
_080BBCE8:
	mov r9, r0
	movs r0, #0x1f
	adds r7, r5, #0
	ands r7, r0
	movs r0, #0x20
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r2, #0
	bl BG_GetMapBuffer
	mov sl, r0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r1, _080BBD44  @ gUnknown_02019D00
	adds r6, r0, r1
	mov r1, r8
	cmp r1, #0x1e
	bls _080BBD48
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r9
	bcs _080BBD8E
_080BBD1E:
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #5
	adds r0, r0, r7
	lsls r0, r0, #1
	mov r3, sl
	adds r4, r3, r0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x1f
	bl CpuSet
	adds r6, #0x78
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r9
	bcc _080BBD1E
	b _080BBD8E
	.align 2, 0
_080BBD44: .4byte gUnknown_02019D00
_080BBD48:
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r9
	bcs _080BBD8E
	mov r1, r8
	movs r0, #0x1f
	subs r1, r0, r1
	str r1, [sp]
_080BBD58:
	adds r0, r5, #0
	movs r3, #0x1f
	ands r0, r3
	lsls r0, r0, #6
	mov r1, sl
	adds r4, r1, r0
	lsls r1, r7, #1
	adds r1, r4, r1
	adds r0, r6, #0
	mov r2, r8
	bl CpuSet
	mov r3, r8
	lsls r0, r3, #1
	adds r0, r6, r0
	adds r1, r4, #0
	ldr r2, [sp]
	ldr r3, _080BBDA0  @ 0x001FFFFF
	ands r2, r3
	bl CpuSet
	adds r6, #0x78
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r9
	bcc _080BBD58
_080BBD8E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BBDA0: .4byte 0x001FFFFF

	THUMB_FUNC_END sub_80BBCC8

	THUMB_FUNC_START sub_80BBDA4
sub_80BBDA4: @ 0x080BBDA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	mov r9, r3
	ldr r0, [sp, #0x20]
	bl BG_GetMapBuffer
	mov ip, r0
	cmp r6, r4
	beq _080BBE16
	cmp r6, r4
	ble _080BBDD4
	adds r0, r6, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	b _080BBDDC
_080BBDD4:
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	mov r3, r8
	lsls r0, r3, #0x10
_080BBDDC:
	lsrs r2, r0, #0x10
	movs r7, #0x1f
	ands r7, r1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080BBE2C  @ gUnknown_02019D00
	adds r5, r0, r1
	movs r1, #0
	movs r0, #0x1f
	mov sl, r0
_080BBDF6:
	adds r0, r2, r1
	mov r3, sl
	ands r0, r3
	lsls r0, r0, #5
	adds r0, r0, r7
	lsls r0, r0, #1
	mov r3, ip
	adds r4, r3, r0
	ldrh r0, [r5]
	strh r0, [r4]
	adds r5, #0x78
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x14
	bls _080BBDF6
_080BBE16:
	cmp r8, r9
	beq _080BBEA0
	cmp r8, r9
	ble _080BBE30
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	mov r0, r8
	adds r0, #0x14
	lsls r0, r0, #0x10
	b _080BBE38
	.align 2, 0
_080BBE2C: .4byte gUnknown_02019D00
_080BBE30:
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
_080BBE38:
	lsrs r2, r0, #0x10
	movs r3, #0x1f
	mov r8, r3
	adds r7, r1, #0
	ands r7, r3
	adds r3, r2, #0
	mov r0, r8
	ands r3, r0
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080BBE78  @ gUnknown_02019D00
	adds r5, r0, r1
	movs r0, #0x20
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1e
	bls _080BBE7C
	lsls r0, r3, #5
	adds r0, r0, r7
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x1f
	bl CpuSet
	b _080BBEA0
	.align 2, 0
_080BBE78: .4byte gUnknown_02019D00
_080BBE7C:
	lsls r0, r3, #6
	mov r2, ip
	adds r4, r2, r0
	lsls r1, r7, #1
	adds r1, r4, r1
	adds r0, r5, #0
	adds r2, r6, #0
	bl CpuSet
	lsls r0, r6, #1
	adds r0, r5, r0
	mov r3, r8
	subs r2, r3, r6
	ldr r1, _080BBEB0  @ 0x001FFFFF
	ands r2, r1
	adds r1, r4, #0
	bl CpuSet
_080BBEA0:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BBEB0: .4byte 0x001FFFFF

	THUMB_FUNC_END sub_80BBDA4

	THUMB_FUNC_START nullsub_38
nullsub_38: @ 0x080BBEB4
	bx lr

	THUMB_FUNC_END nullsub_38

	THUMB_FUNC_START sub_80BBEB8
sub_80BBEB8: @ 0x080BBEB8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x31
	movs r1, #0
	movs r0, #4
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x32
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x33
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	bl BG_GetPriority
	adds r1, r4, #0
	adds r1, #0x3a
	strb r0, [r1]
	subs r1, #4
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #0x34]
	strb r0, [r1]
	adds r1, #1
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #0x36]
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x39
	movs r1, #0xfe
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_80BBC54
	ldrb r1, [r5]
	movs r0, #3
	orrs r0, r1
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BBEB8

	THUMB_FUNC_START sub_80BBF1C
sub_80BBF1C: @ 0x080BBF1C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r2, #0
	ble _080BBF50
	ldr r0, _080BBF58  @ 0x0000F3FF
	mov ip, r0
	ldr r0, _080BBF5C  @ 0xFFFFF3FF
	adds r6, r0, #0
	movs r7, #0xc0
	lsls r7, r7, #4
	adds r4, r2, #0
_080BBF36:
	ldrh r2, [r3]
	mov r1, ip
	ands r1, r2
	adds r1, r5, r1
	ands r1, r6
	adds r0, r7, #0
	ands r0, r2
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bne _080BBF36
_080BBF50:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BBF58: .4byte 0x0000F3FF
_080BBF5C: .4byte 0xFFFFF3FF

	THUMB_FUNC_END sub_80BBF1C

	THUMB_FUNC_START sub_80BBF60
sub_80BBF60: @ 0x080BBF60
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r0, #0x31
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BBF7A
	b _080BC0AA
_080BBF7A:
	adds r6, r7, #0
	adds r6, #0x36
	ldrb r0, [r6]
	adds r5, r7, #0
	adds r5, #0x38
	strb r0, [r5]
	adds r4, r7, #0
	adds r4, #0x37
	ldrb r0, [r4]
	adds r3, r7, #0
	adds r3, #0x39
	strb r0, [r3]
	add r2, sp, #4
	ldr r1, [r7, #0x14]
	ldrh r0, [r1, #0x34]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x36]
	strh r0, [r2]
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r8, r6
	mov ip, r5
	adds r6, r4, #0
	mov r9, r2
	cmp r0, #0
	bge _080BBFB4
	adds r0, #7
_080BBFB4:
	asrs r0, r0, #3
	mov r2, r8
	strb r0, [r2]
	mov r4, r9
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080BBFC6
	adds r0, #7
_080BBFC6:
	asrs r0, r0, #3
	strb r0, [r6]
	ldrh r0, [r7, #0x36]
	adds r5, r7, #0
	adds r5, #0x34
	ldrh r2, [r7, #0x38]
	cmp r0, r2
	beq _080BC054
	mov r4, r8
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r1, r2, r0
	cmp r1, #0
	blt _080BBFEE
	cmp r1, #1
	bgt _080BC00E
	b _080BBFF4
_080BBFEE:
	subs r0, r0, r2
	cmp r0, #1
	bgt _080BC00E
_080BBFF4:
	movs r2, #0
	ldrsb r2, [r6, r2]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r1, r2, r0
	cmp r1, #0
	blt _080BC008
	cmp r1, #1
	bgt _080BC00E
	b _080BC02C
_080BC008:
	subs r0, r0, r2
	cmp r0, #1
	ble _080BC02C
_080BC00E:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r4, r7, #0
	adds r4, #0x34
	ldrb r2, [r4]
	bl sub_80BBCC8
	ldrb r0, [r4]
	bl BG_EnableSync
	adds r5, r4, #0
	b _080BC054
_080BC02C:
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	mov r4, ip
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r5, r7, #0
	adds r5, #0x34
	ldrb r4, [r5]
	str r4, [sp]
	bl sub_80BBDA4
	ldrb r0, [r5]
	bl BG_EnableSync
_080BC054:
	adds r4, r7, #0
	adds r4, #0x31
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC070
	adds r0, r7, #0
	bl sub_80BBC54
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
_080BC070:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BC098
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	ldrb r2, [r5]
	bl sub_80BBCC8
	ldrb r0, [r5]
	bl BG_EnableSync
	ldrb r1, [r4]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
_080BC098:
	ldrb r0, [r5]
	add r1, sp, #4
	ldrh r2, [r1]
	ldr r1, _080BC0B8  @ 0x000001FF
	ands r1, r2
	mov r3, r9
	ldrb r2, [r3]
	bl BG_SetPosition
_080BC0AA:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC0B8: .4byte 0x000001FF

	THUMB_FUNC_END sub_80BBF60

	THUMB_FUNC_START MapRoute_StartTransition
MapRoute_StartTransition: @ 0x080BC0BC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x35
	ldrb r0, [r4]
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	ldrb r0, [r4]
	bl BG_EnableSync
	ldr r0, _080BC0F0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080BC0E8
	movs r0, #0xc4
	lsls r0, r0, #2
	bl m4aSongNumStart
_080BC0E8:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC0F0: .4byte gRAMChapterData

	THUMB_FUNC_END MapRoute_StartTransition

	THUMB_FUNC_START sub_80BC0F4
sub_80BC0F4: @ 0x080BC0F4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r2, _080BC174  @ gUnknown_030030BC
	ldrh r0, [r2]
	ldr r1, _080BC178  @ 0x0000FFC0
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x35
	movs r0, #1
	ldrb r3, [r5]
	lsls r0, r3
	orrs r1, r0
	ldr r0, _080BC17C  @ 0x0000C0FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	adds r0, r4, #0
	bl sub_80BBC54
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x37
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r2, [r5]
	bl sub_80BBCC8
	mov r2, sp
	ldr r1, [r4, #0x14]
	ldrh r0, [r1, #0x34]
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	ldrh r3, [r1, #0x36]
	strh r3, [r0]
	ldrb r0, [r5]
	mov r1, sp
	ldrh r2, [r1]
	ldr r1, _080BC180  @ 0x000001FF
	ands r1, r2
	movs r2, #0xff
	ands r2, r3
	bl BG_SetPosition
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080BC174: .4byte gUnknown_030030BC
_080BC178: .4byte 0x0000FFC0
_080BC17C: .4byte 0x0000C0FF
_080BC180: .4byte 0x000001FF

	THUMB_FUNC_END sub_80BC0F4

	THUMB_FUNC_START MapRoute_EnableBGSyncs
MapRoute_EnableBGSyncs: @ 0x080BC184
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x35
	ldrb r5, [r6]
	movs r0, #3
	bl BG_GetPriority
	adds r1, r0, #0
	adds r0, r5, #0
	bl BG_SetPriority
	movs r1, #1
	adds r0, r1, #0
	ldrb r6, [r6]
	lsls r0, r6
	adds r4, #0x34
	ldrb r4, [r4]
	lsls r1, r4
	orrs r0, r1
	bl BG_EnableSyncByMask
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END MapRoute_EnableBGSyncs

	THUMB_FUNC_START MapRoute_TransitionLoop
MapRoute_TransitionLoop: @ 0x080BC1B8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x3e]
	adds r0, #1
	strh r0, [r6, #0x3e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x3c
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bge _080BC1F2
	movs r1, #0x3e
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r2, #0x3c
	ldrsh r1, [r6, r2]
	bl __divsi3
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080BC220
_080BC1F2:
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r0, [r0]
	bl BG_GetMapBuffer
	adds r5, r0, #0
	adds r4, r6, #0
	adds r4, #0x34
	ldrb r0, [r4]
	bl BG_GetMapBuffer
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r5, #0
	bl CpuFastSet
	ldrb r0, [r4]
	bl BG_EnableSync
	adds r0, r6, #0
	bl Proc_Break
_080BC220:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapRoute_TransitionLoop

	THUMB_FUNC_START MapRoute_TransitionEnd
MapRoute_TransitionEnd: @ 0x080BC228
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x35
	ldrb r0, [r4]
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldrb r0, [r4]
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	bl BG_SetPriority
	adds r2, r5, #0
	adds r2, #0x34
	movs r1, #1
	adds r0, r1, #0
	ldrb r2, [r2]
	lsls r0, r2
	ldrb r4, [r4]
	lsls r1, r4
	orrs r0, r1
	bl BG_EnableSyncByMask
	bl SetDefaultColorEffects
	ldr r2, _080BC290  @ gUnknown_030030BC
	ldrh r1, [r2]
	ldr r0, _080BC294  @ 0x0000FFC0
	ands r0, r1
	ldr r1, _080BC298  @ 0x0000C0FF
	ands r0, r1
	strh r0, [r2]
	adds r2, r5, #0
	adds r2, #0x32
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080BC290: .4byte gUnknown_030030BC
_080BC294: .4byte 0x0000FFC0
_080BC298: .4byte 0x0000C0FF

	THUMB_FUNC_END MapRoute_TransitionEnd

	THUMB_FUNC_START MapRoute_BeginRouteTransition
MapRoute_BeginRouteTransition: @ 0x080BC29C
	push {lr}
	adds r2, r0, #0
	cmp r1, #1
	bgt _080BC2BC
	adds r3, r2, #0
	adds r3, #0x31
	ldrb r1, [r3]
	movs r0, #3
	orrs r0, r1
	strb r0, [r3]
	adds r2, #0x32
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	b _080BC2D6
_080BC2BC:
	movs r0, #0
	strh r1, [r2, #0x3c]
	strh r0, [r2, #0x3e]
	adds r3, r2, #0
	adds r3, #0x32
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	movs r1, #1
	bl Proc_Goto
_080BC2D6:
	pop {r0}
	bx r0

	THUMB_FUNC_END MapRoute_BeginRouteTransition

	THUMB_FUNC_START MapRoute_80BC2DC
MapRoute_80BC2DC: @ 0x080BC2DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x32
	ldrb r1, [r7]
	movs r0, #1
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _080BC38A
	mov r2, sp
	ldr r1, [r6, #0x14]
	ldrh r0, [r1, #0x34]
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	ldrh r0, [r1, #0x36]
	strh r0, [r4]
	adds r0, r6, #0
	bl sub_80BBC54
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080BC318
	adds r0, #7
_080BC318:
	asrs r0, r0, #3
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080BC324
	adds r1, #7
_080BC324:
	asrs r1, r1, #3
	adds r4, r6, #0
	adds r4, #0x34
	ldrb r2, [r4]
	bl sub_80BBCC8
	adds r5, r6, #0
	adds r5, #0x35
	ldrb r0, [r5]
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldrb r0, [r5]
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	ldrb r0, [r5]
	adds r1, r6, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	bl BG_SetPriority
	mov r0, r8
	ldrb r4, [r4]
	lsls r0, r4
	mov r1, r8
	ldrb r5, [r5]
	lsls r1, r5
	orrs r0, r1
	bl BG_EnableSyncByMask
	bl SetDefaultColorEffects
	ldr r2, _080BC398  @ gUnknown_030030BC
	ldrh r1, [r2]
	ldr r0, _080BC39C  @ 0x0000FFC0
	ands r0, r1
	ldr r1, _080BC3A0  @ 0x0000C0FF
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r7]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0
	bl Proc_Goto
_080BC38A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC398: .4byte gUnknown_030030BC
_080BC39C: .4byte 0x0000FFC0
_080BC3A0: .4byte 0x0000C0FF

	THUMB_FUNC_END MapRoute_80BC2DC

	THUMB_FUNC_START NewMapRoute
NewMapRoute: @ 0x080BC3A4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, _080BC3D0  @ gUnknown_08A3DFC4
	adds r1, r4, #0
	bl Proc_Start
	str r5, [r0, #0x2c]
	adds r1, r0, #0
	adds r1, #0x30
	strb r6, [r1]
	mov r1, r8
	str r1, [r0, #0x40]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BC3D0: .4byte gUnknown_08A3DFC4

	THUMB_FUNC_END NewMapRoute

	THUMB_FUNC_START sub_80BC3D4
sub_80BC3D4: @ 0x080BC3D4
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080BC3EC  @ gUnknown_08206674
	adds r1, r1, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _080BC3F0
	movs r0, #0
	b _080BC400
	.align 2, 0
_080BC3EC: .4byte gUnknown_08206674
_080BC3F0:
	movs r2, #0
	b _080BC3F8
_080BC3F4:
	adds r1, #8
	adds r2, #1
_080BC3F8:
	ldr r0, [r1]
	cmp r0, #0
	bge _080BC3F4
	adds r0, r2, #0
_080BC400:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC3D4

	THUMB_FUNC_START sub_80BC404
sub_80BC404: @ 0x080BC404
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x34
	ldrb r0, [r4]
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #1
	ldrb r4, [r4]
	lsls r0, r4
	bl BG_EnableSyncByMask
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BC404

	THUMB_FUNC_START sub_80BC428
sub_80BC428: @ 0x080BC428
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r1, r0, #0
	adds r1, #0x60
	ldrb r2, [r1]
	cmp r4, r2
	bge _080BC44E
	adds r6, r0, #0
	adds r6, #0x34
	adds r5, r1, #0
_080BC43C:
	ldm r6!, {r0}
	adds r0, #0x34
	movs r1, #0
	bl Text_SetXCursor
	adds r4, #1
	ldrb r0, [r5]
	cmp r4, r0
	blt _080BC43C
_080BC44E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BC428

	THUMB_FUNC_START sub_80BC454
sub_80BC454: @ 0x080BC454
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080BC47C  @ gUnknown_03005280
	movs r0, #0
	strb r0, [r1, #1]
	ldr r0, _080BC480  @ gUnknown_0201AFC0
	ldr r1, _080BC484  @ 0x06001000
	movs r2, #0x80
	movs r3, #0
	bl Font_InitForUI
	ldr r0, _080BC488  @ gUnknown_08A3E124
	ldr r1, _080BC48C  @ gUnknown_08A3E148
	ldr r1, [r1]
	adds r2, r4, #0
	bl StartMenuAt
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC47C: .4byte gUnknown_03005280
_080BC480: .4byte gUnknown_0201AFC0
_080BC484: .4byte 0x06001000
_080BC488: .4byte gUnknown_08A3E124
_080BC48C: .4byte gUnknown_08A3E148

	THUMB_FUNC_END sub_80BC454

	THUMB_FUNC_START sub_80BC490
sub_80BC490: @ 0x080BC490
	push {lr}
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC490

	THUMB_FUNC_START sub_80BC4A0
sub_80BC4A0: @ 0x080BC4A0
	push {lr}
	bl ClearBg0Bg1
	movs r0, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC4A0

	THUMB_FUNC_START sub_80BC4AC
sub_80BC4AC: @ 0x080BC4AC
	push {lr}
	ldr r0, _080BC4C0  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #3
	bl Proc_Goto
	movs r0, #0x1b
	pop {r1}
	bx r1
	.align 2, 0
_080BC4C0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC4AC

	THUMB_FUNC_START sub_80BC4C4
sub_80BC4C4: @ 0x080BC4C4
	push {lr}
	ldr r0, _080BC4D8  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #9
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC4D8: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC4C4

	THUMB_FUNC_START sub_80BC4DC
sub_80BC4DC: @ 0x080BC4DC
	push {lr}
	ldr r0, _080BC4F0  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0xc
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC4F0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC4DC

	THUMB_FUNC_START sub_80BC4F4
sub_80BC4F4: @ 0x080BC4F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r1, r6, #0
	adds r1, #0x63
	ldrb r2, [r1]
	movs r1, #8
	ands r1, r2
	cmp r1, #0
	bne _080BC566
	bl sub_80CF480
	lsls r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x34
	cmp r0, #0
	bne _080BC51E
	adds r0, r4, #0
	movs r1, #4
	bl Text_SetColorId
_080BC51E:
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #2
	bne _080BC530
	adds r0, r4, #0
	movs r1, #1
	bl Text_SetColorId
_080BC530:
	ldr r0, [r5, #0x30]
	ldrh r0, [r0, #4]
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_AppendString
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	bl BG_GetMapBuffer
	adds r1, r0, #0
	movs r2, #0x2c
	ldrsh r0, [r5, r2]
	lsls r0, r0, #5
	movs r3, #0x2a
	ldrsh r2, [r5, r3]
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	bl Text_Draw
_080BC566:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC4F4

	THUMB_FUNC_START sub_80BC56C
sub_80BC56C: @ 0x080BC56C
	push {lr}
	ldr r0, _080BC580  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0xa
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC580: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC56C

	THUMB_FUNC_START sub_80BC584
sub_80BC584: @ 0x080BC584
	push {lr}
	ldr r0, _080BC598  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0xb
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC598: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC584

	THUMB_FUNC_START sub_80BC59C
sub_80BC59C: @ 0x080BC59C
	push {lr}
	ldr r0, _080BC5B0  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0xd
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC5B0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC59C

	THUMB_FUNC_START sub_80BC5B4
sub_80BC5B4: @ 0x080BC5B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080BC5E0  @ gUnknown_03005280
	movs r0, #0
	strb r0, [r4, #1]
	ldr r0, _080BC5E4  @ gUnknown_0201AFC0
	ldr r1, _080BC5E8  @ 0x06001000
	movs r2, #0x80
	movs r3, #0
	bl Font_InitForUI
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x97
	bgt _080BC5F4
	ldr r0, _080BC5EC  @ gUnknown_08A3E200
	ldr r1, _080BC5F0  @ gUnknown_08A3E224
	b _080BC5F8
	.align 2, 0
_080BC5E0: .4byte gUnknown_03005280
_080BC5E4: .4byte gUnknown_0201AFC0
_080BC5E8: .4byte 0x06001000
_080BC5EC: .4byte gUnknown_08A3E200
_080BC5F0: .4byte gUnknown_08A3E224
_080BC5F4:
	ldr r0, _080BC618  @ gUnknown_08A3E200
	ldr r1, _080BC61C  @ gUnknown_08A3E228
_080BC5F8:
	ldr r1, [r1]
	adds r2, r5, #0
	bl StartMenuAt
	adds r3, r0, #0
	ldr r0, _080BC620  @ gUnknown_03005280
	adds r0, #0xcd
	adds r1, r3, #0
	adds r1, #0x60
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bcs _080BC624
	adds r1, #1
	strb r2, [r1]
	b _080BC62C
	.align 2, 0
_080BC618: .4byte gUnknown_08A3E200
_080BC61C: .4byte gUnknown_08A3E228
_080BC620: .4byte gUnknown_03005280
_080BC624:
	subs r0, #1
	adds r2, r3, #0
	adds r2, #0x61
	strb r0, [r2]
_080BC62C:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC5B4

	THUMB_FUNC_START sub_80BC634
sub_80BC634: @ 0x080BC634
	push {lr}
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC634

	THUMB_FUNC_START sub_80BC644
sub_80BC644: @ 0x080BC644
	push {lr}
	bl ClearBg0Bg1
	movs r0, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC644

	THUMB_FUNC_START sub_80BC650
sub_80BC650: @ 0x080BC650
	push {lr}
	ldr r0, _080BC66C  @ gUnknown_03005280
	adds r0, #0xcd
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080BC670  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #3
	bl Proc_Goto
	movs r0, #0x1b
	pop {r1}
	bx r1
	.align 2, 0
_080BC66C: .4byte gUnknown_03005280
_080BC670: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC650

	THUMB_FUNC_START sub_80BC674
sub_80BC674: @ 0x080BC674
	push {lr}
	ldr r1, _080BC69C  @ gUnknown_03005280
	ldrb r2, [r1, #0x11]
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BC6A4
	lsls r0, r2, #5
	ldr r1, _080BC6A0  @ gUnknown_082060B0
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080BC6A4
	movs r0, #1
	b _080BC6A6
	.align 2, 0
_080BC69C: .4byte gUnknown_03005280
_080BC6A0: .4byte gUnknown_082060B0
_080BC6A4:
	movs r0, #3
_080BC6A6:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC674

	THUMB_FUNC_START sub_80BC6AC
sub_80BC6AC: @ 0x080BC6AC
	push {lr}
	ldr r1, _080BC6D4  @ gUnknown_03005280
	ldrb r2, [r1, #0x11]
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BC6DC
	lsls r0, r2, #5
	ldr r1, _080BC6D8  @ gUnknown_082060B0
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080BC6DC
	movs r0, #1
	b _080BC6DE
	.align 2, 0
_080BC6D4: .4byte gUnknown_03005280
_080BC6D8: .4byte gUnknown_082060B0
_080BC6DC:
	movs r0, #3
_080BC6DE:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC6AC

	THUMB_FUNC_START sub_80BC6E4
sub_80BC6E4: @ 0x080BC6E4
	push {lr}
	ldr r1, _080BC718  @ gUnknown_03005280
	ldrb r2, [r1, #0x11]
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BC724
	lsls r0, r2, #5
	ldr r1, _080BC71C  @ gUnknown_082060B0
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080BC724
	ldr r0, _080BC720  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BC724
	movs r0, #1
	b _080BC726
	.align 2, 0
_080BC718: .4byte gUnknown_03005280
_080BC71C: .4byte gUnknown_082060B0
_080BC720: .4byte gRAMChapterData
_080BC724:
	movs r0, #3
_080BC726:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC6E4

	THUMB_FUNC_START sub_80BC72C
sub_80BC72C: @ 0x080BC72C
	push {lr}
	ldr r1, _080BC748  @ gUnknown_03005280
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC74C
	movs r0, #3
	b _080BC74E
	.align 2, 0
_080BC748: .4byte gUnknown_03005280
_080BC74C:
	movs r0, #1
_080BC74E:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC72C

	THUMB_FUNC_START sub_80BC754
sub_80BC754: @ 0x080BC754
	push {lr}
	ldr r1, _080BC770  @ gUnknown_03005280
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BC774
	movs r0, #3
	b _080BC776
	.align 2, 0
_080BC770: .4byte gUnknown_03005280
_080BC774:
	movs r0, #1
_080BC776:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BC754

	THUMB_FUNC_START sub_80BC77C
sub_80BC77C: @ 0x080BC77C
	push {lr}
	ldr r1, _080BC79C  @ gUnknown_03005280
	adds r0, #0x61
	ldrb r0, [r0]
	adds r1, #0xcd
	strb r0, [r1]
	ldr r0, _080BC7A0  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0x13
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC79C: .4byte gUnknown_03005280
_080BC7A0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC77C

	THUMB_FUNC_START sub_80BC7A4
sub_80BC7A4: @ 0x080BC7A4
	push {lr}
	ldr r1, _080BC7C4  @ gUnknown_03005280
	adds r0, #0x61
	ldrb r0, [r0]
	adds r1, #0xcd
	strb r0, [r1]
	ldr r0, _080BC7C8  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0x14
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC7C4: .4byte gUnknown_03005280
_080BC7C8: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC7A4

	THUMB_FUNC_START sub_80BC7CC
sub_80BC7CC: @ 0x080BC7CC
	push {lr}
	ldr r1, _080BC7EC  @ gUnknown_03005280
	adds r0, #0x61
	ldrb r0, [r0]
	adds r1, #0xcd
	strb r0, [r1]
	ldr r0, _080BC7F0  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0x15
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC7EC: .4byte gUnknown_03005280
_080BC7F0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC7CC

	THUMB_FUNC_START sub_80BC7F4
sub_80BC7F4: @ 0x080BC7F4
	push {lr}
	ldr r1, _080BC814  @ gUnknown_03005280
	adds r0, #0x61
	ldrb r0, [r0]
	adds r1, #0xcd
	strb r0, [r1]
	ldr r0, _080BC818  @ gUnknown_08A3D748
	bl Proc_Find
	movs r1, #0x16
	bl Proc_Goto
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080BC814: .4byte gUnknown_03005280
_080BC818: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BC7F4

	THUMB_FUNC_START sub_80BC81C
sub_80BC81C: @ 0x080BC81C
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r4, _080BC890  @ gUnknown_03005280
	ldr r2, _080BC894  @ 0x05000035
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0xa4
	bl sub_80BC898
	movs r5, #0
	movs r6, #0xfd
	adds r2, r4, #0
	adds r2, #0x10
	movs r3, #6
_080BC842:
	strh r5, [r2, #2]
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _080BC842
	movs r3, #0
	movs r0, #1
	strh r0, [r4, #0x12]
	ldrb r1, [r4, #0x10]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4, #0x10]
	strb r3, [r4, #0x11]
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	adds r0, #0xcd
	strb r3, [r0]
	adds r0, #1
	bl StoreRNState
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BC890: .4byte gUnknown_03005280
_080BC894: .4byte 0x05000035

	THUMB_FUNC_END sub_80BC81C

	THUMB_FUNC_START sub_80BC898
sub_80BC898: @ 0x080BC898
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r4, #0xff
_080BC8A0:
	adds r1, r3, r2
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0x1f
	bls _080BC8A0
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BC898

	THUMB_FUNC_START SetupNewWMRoute
SetupNewWMRoute: @ 0x080BC8BC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #0x1f
	bls _080BC8CE
	movs r0, #1
	b _080BC8E4
_080BC8CE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	strb r2, [r0]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_80BCA0C
	movs r0, #0
_080BC8E4:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END SetupNewWMRoute

	THUMB_FUNC_START WM_RemovePath
WM_RemovePath: @ 0x080BC8EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r1, #0x20
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080BC966
	cmp r4, #0
	bge _080BC914
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r5, r0
	movs r1, #0xff
	strb r1, [r0]
	b _080BC952
_080BC914:
	movs r3, #0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	bge _080BC966
	adds r2, r1, #0
_080BC920:
	adds r1, r5, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r4
	bne _080BC95C
	adds r4, r2, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, #1
	adds r5, #0x20
	cmp r3, r0
	bge _080BC94C
	adds r2, r1, #0
_080BC93A:
	ldrb r0, [r2, #1]
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r3, r0
	blt _080BC93A
_080BC94C:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_080BC952:
	adds r0, r6, #0
	bl sub_80BCA0C
	movs r0, #0
	b _080BC968
_080BC95C:
	adds r3, #1
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	blt _080BC920
_080BC966:
	movs r0, #1
_080BC968:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END WM_RemovePath

	THUMB_FUNC_START sub_80BC970
sub_80BC970: @ 0x080BC970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp]
	ldr r2, _080BCA04  @ 0x0500003A
	mov r0, sp
	bl CpuSet
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0xa4
	adds r4, #0xc4
	movs r1, #0
	ldrsb r1, [r4, r1]
	cmp r2, r1
	bge _080BC9F4
	mov r9, r0
	ldr r3, _080BCA08  @ gUnknown_08206674
	mov sl, r3
	mov ip, r1
_080BC9A4:
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r5, #0
	adds r7, r2, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	adds r6, r0, #4
	adds r4, r0, #5
_080BC9BA:
	adds r0, r6, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #3
	mov r1, r8
	adds r3, r1, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r3, r0
	ldrb r1, [r4]
	strb r1, [r0, #1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	cmp r2, #0
	bne _080BC9E4
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r3, r0
	ldrb r1, [r4]
	strb r1, [r0, #1]
_080BC9E4:
	subs r4, #1
	adds r5, #1
	cmp r5, #1
	ble _080BC9BA
	adds r2, r7, #0
	mov r0, r9
	cmp r2, ip
	blt _080BC9A4
_080BC9F4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BCA04: .4byte 0x0500003A
_080BCA08: .4byte gUnknown_08206674

	THUMB_FUNC_END sub_80BC970

	THUMB_FUNC_START sub_80BCA0C
sub_80BCA0C: @ 0x080BCA0C
	push {lr}
	ldr r1, _080BCA18  @ gUnknown_0201AFF0
	bl sub_80BC970
	pop {r0}
	bx r0
	.align 2, 0
_080BCA18: .4byte gUnknown_0201AFF0

	THUMB_FUNC_END sub_80BCA0C

	THUMB_FUNC_START sub_80BCA1C
sub_80BCA1C: @ 0x080BCA1C
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #4
	ldr r0, _080BCA3C  @ gUnknown_03005280
	adds r1, r0, #0
	adds r1, #0x10
_080BCA28:
	movs r4, #0x12
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _080BCA40
	ldrb r0, [r1, #0x11]
	cmp r3, r0
	bne _080BCA40
	adds r0, r2, #0
	b _080BCA4C
	.align 2, 0
_080BCA3C: .4byte gUnknown_03005280
_080BCA40:
	adds r1, #4
	adds r2, #1
	cmp r2, #6
	ble _080BCA28
	movs r0, #1
	negs r0, r0
_080BCA4C:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BCA1C

	THUMB_FUNC_START sub_80BCA54
sub_80BCA54: @ 0x080BCA54
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r0, #0
	strb r0, [r2]
	ldr r0, _080BCA8C  @ gUnknown_03005280
	adds r5, r2, #1
	adds r3, r0, #0
	adds r3, #0x10
	movs r4, #2
_080BCA66:
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080BCA7C
	ldrb r0, [r2]
	adds r0, r5, r0
	ldrb r1, [r3, #0x11]
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080BCA7C:
	adds r3, #4
	subs r4, #1
	cmp r4, #0
	bge _080BCA66
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BCA8C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BCA54

	THUMB_FUNC_START sub_80BCA90
sub_80BCA90: @ 0x080BCA90
	push {r4, lr}
	adds r4, r1, #0
	movs r2, #0
	ldrb r3, [r0]
	cmp r2, r3
	bge _080BCAB0
	adds r1, r0, #1
_080BCA9E:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r4
	bne _080BCAAA
	movs r0, #1
	b _080BCAB2
_080BCAAA:
	adds r2, #1
	cmp r2, r3
	blt _080BCA9E
_080BCAB0:
	movs r0, #0
_080BCAB2:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BCA90

	THUMB_FUNC_START sub_80BCAB8
sub_80BCAB8: @ 0x080BCAB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x20]
	cmp r8, r0
	bge _080BCB98
	lsls r0, r3, #0x18
	asrs r1, r0, #0x15
	ldr r2, [sp, #8]
	adds r2, r2, r1
	mov sl, r2
	movs r3, #0
	mov r9, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r0, [sp, #0x18]
	cmp r9, r1
	bge _080BCB98
	adds r0, r7, #0
	adds r0, #0x10
	add r0, r8
	str r0, [sp, #0x14]
	mov r4, sl
	adds r4, #1
_080BCB08:
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r5, [sp, #0xc]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _080BCB88
	movs r2, #0
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x18
	asrs r6, r0, #0x18
	cmp r1, r6
	bne _080BCB24
	movs r2, #1
_080BCB24:
	adds r5, r2, #0
	cmp r5, #0
	bne _080BCB3A
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, _080BCB6C  @ gUnknown_0201B100
	bl sub_80BCA90
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BCB88
_080BCB3A:
	ldrb r0, [r4]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x10
	cmp r5, #0
	beq _080BCB70
	ldr r0, [r7, #0x20]
	cmp r8, r0
	bge _080BCB68
	movs r2, #1
	cmp r2, r8
	bgt _080BCB64
	adds r3, r1, #0
_080BCB56:
	adds r0, r7, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r8
	ble _080BCB56
_080BCB64:
	mov r2, r8
	str r2, [r7, #0x20]
_080BCB68:
	movs r0, #1
	b _080BCB9A
	.align 2, 0
_080BCB6C: .4byte gUnknown_0201B100
_080BCB70:
	movs r3, #0
	ldrsb r3, [r4, r3]
	str r6, [sp]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	ldr r1, [sp, #8]
	ldr r5, [sp, #0x18]
	asrs r2, r5, #0x18
	bl sub_80BCAB8
_080BCB88:
	adds r4, #1
	movs r0, #1
	add r9, r0
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r9, r0
	blt _080BCB08
_080BCB98:
	movs r0, #0
_080BCB9A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BCAB8

	THUMB_FUNC_START sub_80BCBAC
sub_80BCBAC: @ 0x080BCBAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	mov r8, r1
	ldr r0, [sp, #0x3c]
	ldr r7, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r9, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	cmp r7, r0
	blt _080BCBDC
	b _080BCCE8
_080BCBDC:
	lsls r0, r3, #0x18
	asrs r1, r0, #0x15
	add r1, r8
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x14]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov sl, r0
	cmp r2, r1
	blt _080BCBF6
	b _080BCCE8
_080BCBF6:
	ldr r5, [sp, #0x18]
	adds r5, #1
_080BCBFA:
	ldrb r3, [r5]
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _080BCCD4
	movs r2, #0
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	cmp r1, r4
	bne _080BCC18
	movs r2, #1
_080BCC18:
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r1, r7
	strb r3, [r0]
	adds r3, r1, #0
	mov r0, r9
	cmp r0, #0
	blt _080BCC62
	cmp r2, #0
	beq _080BCC76
	movs r2, #0
	ldr r0, [r6, #0x24]
	cmp r9, r0
	bge _080BCC3C
	mov r1, r9
	str r1, [r6, #0x24]
	movs r2, #1
	b _080BCC4C
_080BCC3C:
	cmp r9, r0
	bne _080BCC48
	ldr r0, [r6, #0x20]
	cmp r7, r0
	bge _080BCC48
	movs r2, #1
_080BCC48:
	cmp r2, #0
	beq _080BCCB6
_080BCC4C:
	movs r2, #1
	cmp r2, r7
	bgt _080BCCB4
_080BCC52:
	adds r0, r6, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r7
	ble _080BCC52
	b _080BCCB4
_080BCC62:
	cmp r2, #0
	bne _080BCC98
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldr r0, _080BCC94  @ gUnknown_0201B100
	bl sub_80BCA90
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BCCBA
_080BCC76:
	movs r3, #0
	ldrsb r3, [r5, r3]
	str r4, [sp]
	adds r0, r7, #1
	str r0, [sp, #4]
	mov r0, r9
	adds r0, #1
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, r8
	mov r4, sl
	asrs r2, r4, #0x18
	bl sub_80BCBAC
	b _080BCCD4
	.align 2, 0
_080BCC94: .4byte gUnknown_0201B100
_080BCC98:
	ldr r0, [r6, #0x20]
	cmp r7, r0
	bge _080BCCB6
	movs r2, #1
	cmp r2, r7
	bgt _080BCCB4
	adds r3, r1, #0
_080BCCA6:
	adds r0, r6, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r7
	ble _080BCCA6
_080BCCB4:
	str r7, [r6, #0x20]
_080BCCB6:
	movs r0, #1
	b _080BCCEA
_080BCCBA:
	movs r3, #0
	ldrsb r3, [r5, r3]
	str r4, [sp]
	adds r0, r7, #1
	str r0, [sp, #4]
	mov r0, r9
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, r8
	mov r4, sl
	asrs r2, r4, #0x18
	bl sub_80BCBAC
_080BCCD4:
	adds r5, #1
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, [sp, #0x14]
	cmp r2, r0
	blt _080BCBFA
_080BCCE8:
	movs r0, #0
_080BCCEA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BCBAC

	THUMB_FUNC_START sub_80BCCFC
sub_80BCCFC: @ 0x080BCCFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	str r7, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	mov sl, r9
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080BCD80  @ gUnknown_0201B100
	bl sub_80BCA54
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	mov r8, r4
	cmp r4, #0
	beq _080BCD32
	ldr r1, _080BCD84  @ gUnknown_0201B0D8
	movs r0, #0x10
	str r0, [r1, #0x24]
_080BCD32:
	ldr r6, _080BCD84  @ gUnknown_0201B0D8
	movs r0, #0x10
	str r0, [r6, #0x20]
	movs r4, #0
	str r4, [sp, #0xc]
	ldr r5, _080BCD88  @ 0x05000004
	add r0, sp, #0xc
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #0x10]
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r1, #0x10
	adds r2, r5, #0
	bl CpuSet
	strb r7, [r6]
	strb r7, [r6, #0x10]
	mov r0, r8
	cmp r0, #0
	beq _080BCD90
	ldr r1, _080BCD8C  @ gUnknown_0201AFF0
	movs r2, #1
	negs r2, r2
	lsls r3, r7, #0x18
	asrs r3, r3, #0x18
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r2, [sp, #8]
	adds r0, r6, #0
	bl sub_80BCBAC
	b _080BCDAE
	.align 2, 0
_080BCD80: .4byte gUnknown_0201B100
_080BCD84: .4byte gUnknown_0201B0D8
_080BCD88: .4byte 0x05000004
_080BCD8C: .4byte gUnknown_0201AFF0
_080BCD90:
	ldr r1, _080BCDBC  @ gUnknown_0201AFF0
	movs r2, #1
	negs r2, r2
	ldr r0, [sp, #0x14]
	lsls r3, r0, #0x18
	asrs r3, r3, #0x18
	mov r4, sl
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	adds r0, r6, #0
	bl sub_80BCAB8
_080BCDAE:
	cmp r0, #0
	beq _080BCDC0
	ldrb r0, [r6, #0x11]
	strb r0, [r6, #1]
	str r4, [r6, #0x20]
	movs r0, #1
	b _080BCDCE
	.align 2, 0
_080BCDBC: .4byte gUnknown_0201AFF0
_080BCDC0:
	movs r1, #0
	ldr r0, _080BCDE0  @ gUnknown_0201B0D8
	ldr r0, [r0, #0x20]
	cmp r0, #0xf
	bgt _080BCDCC
	movs r1, #1
_080BCDCC:
	adds r0, r1, #0
_080BCDCE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BCDE0: .4byte gUnknown_0201B0D8

	THUMB_FUNC_END sub_80BCCFC

	THUMB_FUNC_START sub_80BCDE4
sub_80BCDE4: @ 0x080BCDE4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	ldr r3, _080BCE04  @ gUnknown_08206674
_080BCDEE:
	movs r0, #4
	ldrsb r0, [r3, r0]
	cmp r5, r0
	bne _080BCE08
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r4, r0
	bne _080BCE08
	movs r0, #0
	b _080BCE1A
	.align 2, 0
_080BCE04: .4byte gUnknown_08206674
_080BCE08:
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r5, r0
	bne _080BCE20
	movs r0, #4
	ldrsb r0, [r3, r0]
	cmp r4, r0
	bne _080BCE20
	movs r0, #1
_080BCE1A:
	str r0, [r2]
	adds r0, r1, #0
	b _080BCE2C
_080BCE20:
	adds r3, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _080BCDEE
	movs r0, #1
	negs r0, r0
_080BCE2C:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BCDE4

	THUMB_FUNC_START sub_80BCE34
sub_80BCE34: @ 0x080BCE34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r3, #0
	ldr r5, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	mov r9, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	mov r2, sp
	bl sub_80BCDE4
	mov sl, r0
	cmp r0, #0
	bge _080BCE5E
	movs r0, #0
	b _080BCF9A
_080BCE5E:
	movs r0, #0
	strh r0, [r6]
	mov r0, sl
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #2
	ldr r1, _080BCF00  @ gUnknown_08206674
	adds r0, r0, r1
	mov r8, r0
	adds r0, #4
	ldr r1, [sp]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #5
	ldr r0, _080BCF04  @ gUnknown_082060B0
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	mov r3, r9
	lsls r0, r3
	str r0, [r5]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	lsls r0, r3
	str r0, [r5, #4]
	adds r6, #2
	adds r5, #8
	mov r0, sl
	bl sub_80BC3D4
	adds r3, r0, #0
	ldr r0, [sp]
	str r4, [sp, #0x10]
	cmp r0, #0
	bne _080BCF08
	movs r7, #0
	adds r0, r3, #2
	str r0, [sp, #0xc]
	cmp r7, r3
	bge _080BCF60
	mov r2, r8
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_080BCEBC:
	ldr r0, [r2, #8]
	lsls r4, r7, #3
	adds r0, r4, r0
	ldr r0, [r0]
	mov r1, r8
	muls r1, r0, r1
	movs r0, #0x80
	lsls r0, r0, #5
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl DivArm
	strh r0, [r6]
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #8]
	adds r4, r4, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	mov r1, r9
	lsls r0, r1
	str r0, [r5]
	movs r1, #6
	ldrsh r0, [r4, r1]
	mov r1, r9
	lsls r0, r1
	str r0, [r5, #4]
	adds r6, #2
	adds r5, #8
	adds r7, #1
	ldr r3, [sp, #0x18]
	cmp r7, r3
	blt _080BCEBC
	b _080BCF60
	.align 2, 0
_080BCF00: .4byte gUnknown_08206674
_080BCF04: .4byte gUnknown_082060B0
_080BCF08:
	subs r7, r3, #1
	adds r3, #2
	str r3, [sp, #0xc]
	cmp r7, #0
	blt _080BCF60
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r2, r8
_080BCF1C:
	ldr r0, [r2, #8]
	lsls r4, r7, #3
	adds r0, r4, r0
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #5
	subs r0, r3, r0
	ldr r3, [sp, #8]
	adds r1, r3, #0
	muls r1, r0, r1
	mov r8, r1
	movs r0, #0x80
	lsls r0, r0, #5
	str r2, [sp, #0x14]
	bl DivArm
	strh r0, [r6]
	ldr r2, [sp, #0x14]
	ldr r0, [r2, #8]
	adds r4, r4, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	mov r3, r9
	lsls r0, r3
	str r0, [r5]
	movs r1, #6
	ldrsh r0, [r4, r1]
	lsls r0, r3
	str r0, [r5, #4]
	adds r6, #2
	adds r5, #8
	subs r7, #1
	cmp r7, #0
	bge _080BCF1C
_080BCF60:
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r6]
	ldr r0, [sp, #0x10]
	add r0, sl
	lsls r0, r0, #2
	ldr r1, _080BCFAC  @ gUnknown_08206674
	adds r0, r0, r1
	ldr r2, [sp]
	movs r1, #1
	subs r1, r1, r2
	adds r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #5
	ldr r0, _080BCFB0  @ gUnknown_082060B0
	adds r1, r1, r0
	movs r3, #0x18
	ldrsh r0, [r1, r3]
	mov r2, r9
	lsls r0, r2
	str r0, [r5]
	movs r3, #0x1a
	ldrsh r0, [r1, r3]
	lsls r0, r2
	str r0, [r5, #4]
	ldr r0, [sp, #0xc]
_080BCF9A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BCFAC: .4byte gUnknown_08206674
_080BCFB0: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80BCE34

	THUMB_FUNC_START sub_80BCFB4
sub_80BCFB4: @ 0x080BCFB4
	push {r4, lr}
	ldr r0, _080BCFD8  @ gUnknown_03005280
	movs r4, #0xfd
	adds r2, r0, #0
	adds r2, #0x30
	movs r3, #0x1c
_080BCFC0:
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _080BCFC0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCFD8: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BCFB4

	THUMB_FUNC_START sub_80BCFDC
sub_80BCFDC: @ 0x080BCFDC
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r0, #0x25
	cmp r0, #8
	bhi _080BCFEE
	movs r5, #0x24
	b _080BCFF8
_080BCFEA:
	adds r0, r4, #0
	b _080BD00E
_080BCFEE:
	adds r0, r5, #0
	subs r0, #0x2f
	cmp r0, #8
	bhi _080BCFF8
	movs r5, #0x2e
_080BCFF8:
	movs r4, #0
_080BCFFA:
	adds r0, r4, #0
	bl WMLoc_GetChapterId
	cmp r5, r0
	beq _080BCFEA
	adds r4, #1
	cmp r4, #0x1c
	ble _080BCFFA
	movs r0, #1
	negs r0, r0
_080BD00E:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BCFDC

	THUMB_FUNC_START sub_80BD014
sub_80BD014: @ 0x080BD014
	push {r4, r5, lr}
	movs r3, #0
	movs r5, #1
	movs r4, #2
	adds r2, r0, #0
	adds r2, #0x30
_080BD020:
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080BD036
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BD036
	adds r0, r3, #0
	b _080BD042
_080BD036:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x1c
	ble _080BD020
	movs r0, #1
	negs r0, r0
_080BD042:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BD014

	THUMB_FUNC_START sub_80BD048
sub_80BD048: @ 0x080BD048
	push {lr}
	ldr r0, _080BD05C  @ gUnknown_03005280
	bl sub_80BD014
	cmp r0, #0
	blt _080BD060
	bl WMLoc_GetChapterId
	b _080BD064
	.align 2, 0
_080BD05C: .4byte gUnknown_03005280
_080BD060:
	movs r0, #1
	negs r0, r0
_080BD064:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BD048

	THUMB_FUNC_START GetChapterThing
GetChapterThing: @ 0x080BD068
	push {r4, r5, r6, lr}
	ldr r0, _080BD080  @ gRAMChapterData
	movs r5, #0xe
	ldrsb r5, [r0, r5]
	cmp r5, #0x47
	bls _080BD076
	b _080BD1A8
_080BD076:
	lsls r0, r5, #2
	ldr r1, _080BD084  @ _080BD088
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080BD080: .4byte gRAMChapterData
_080BD084: .4byte _080BD088
_080BD088: @ jump table
	.4byte _080BD1E4 @ case 0
	.4byte _080BD1E4 @ case 1
	.4byte _080BD1A8 @ case 2
	.4byte _080BD1A8 @ case 3
	.4byte _080BD1A8 @ case 4
	.4byte _080BD1E4 @ case 5
	.4byte _080BD1A8 @ case 6
	.4byte _080BD1A8 @ case 7
	.4byte _080BD1A8 @ case 8
	.4byte _080BD1A8 @ case 9
	.4byte _080BD1A8 @ case 10
	.4byte _080BD1A8 @ case 11
	.4byte _080BD1E4 @ case 12
	.4byte _080BD1A8 @ case 13
	.4byte _080BD1A8 @ case 14
	.4byte _080BD1A8 @ case 15
	.4byte _080BD1A8 @ case 16
	.4byte _080BD1A8 @ case 17
	.4byte _080BD1A8 @ case 18
	.4byte _080BD1A8 @ case 19
	.4byte _080BD1A8 @ case 20
	.4byte _080BD1E4 @ case 21
	.4byte _080BD1E4 @ case 22
	.4byte _080BD1A8 @ case 23
	.4byte _080BD1A8 @ case 24
	.4byte _080BD1E4 @ case 25
	.4byte _080BD1A8 @ case 26
	.4byte _080BD1A8 @ case 27
	.4byte _080BD1A8 @ case 28
	.4byte _080BD1A8 @ case 29
	.4byte _080BD1A8 @ case 30
	.4byte _080BD1A8 @ case 31
	.4byte _080BD1A8 @ case 32
	.4byte _080BD1A8 @ case 33
	.4byte _080BD1E4 @ case 34
	.4byte _080BD1E4 @ case 35
	.4byte _080BD1A8 @ case 36
	.4byte _080BD1A8 @ case 37
	.4byte _080BD1A8 @ case 38
	.4byte _080BD1A8 @ case 39
	.4byte _080BD1A8 @ case 40
	.4byte _080BD1A8 @ case 41
	.4byte _080BD1A8 @ case 42
	.4byte _080BD1A8 @ case 43
	.4byte _080BD1A8 @ case 44
	.4byte _080BD1A8 @ case 45
	.4byte _080BD1A8 @ case 46
	.4byte _080BD1A8 @ case 47
	.4byte _080BD1A8 @ case 48
	.4byte _080BD1A8 @ case 49
	.4byte _080BD1A8 @ case 50
	.4byte _080BD1A8 @ case 51
	.4byte _080BD1A8 @ case 52
	.4byte _080BD1A8 @ case 53
	.4byte _080BD1A8 @ case 54
	.4byte _080BD1A8 @ case 55
	.4byte _080BD1E4 @ case 56
	.4byte _080BD1A8 @ case 57
	.4byte _080BD1A8 @ case 58
	.4byte _080BD1E4 @ case 59
	.4byte _080BD1E4 @ case 60
	.4byte _080BD1A8 @ case 61
	.4byte _080BD1A8 @ case 62
	.4byte _080BD1E4 @ case 63
	.4byte _080BD1E4 @ case 64
	.4byte _080BD1E4 @ case 65
	.4byte _080BD1E4 @ case 66
	.4byte _080BD1E4 @ case 67
	.4byte _080BD1E4 @ case 68
	.4byte _080BD1E4 @ case 69
	.4byte _080BD1E4 @ case 70
	.4byte _080BD1E4 @ case 71
_080BD1A8:
	adds r0, r5, #0
	subs r0, #0x25
	cmp r0, #8
	bhi _080BD1B4
	movs r5, #0x24
	b _080BD1BE
_080BD1B4:
	adds r0, r5, #0
	subs r0, #0x2f
	cmp r0, #8
	bhi _080BD1BE
	movs r5, #0x2e
_080BD1BE:
	movs r4, #0
	ldr r6, _080BD1E8  @ gUnknown_082060B0
_080BD1C2:
	adds r0, r4, #0
	bl WMLoc_GetChapterId
	cmp r5, r0
	bne _080BD1FA
	ldr r1, _080BD1EC  @ gUnknown_03005280
	lsls r0, r4, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BD1F0
	ldrb r0, [r6]
	cmp r0, #3
	beq _080BD1F6
_080BD1E4:
	movs r0, #0
	b _080BD204
	.align 2, 0
_080BD1E8: .4byte gUnknown_082060B0
_080BD1EC: .4byte gUnknown_03005280
_080BD1F0:
	ldrb r0, [r6, #1]
	cmp r0, #3
	bne _080BD202
_080BD1F6:
	movs r0, #1
	b _080BD204
_080BD1FA:
	adds r6, #0x20
	adds r4, #1
	cmp r4, #0x1c
	ble _080BD1C2
_080BD202:
	movs r0, #2
_080BD204:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END GetChapterThing

	THUMB_FUNC_START sub_80BD20C
sub_80BD20C: @ 0x080BD20C
	push {lr}
	adds r1, r0, #0
	cmp r1, #6
	ble _080BD216
	movs r1, #0
_080BD216:
	ldr r0, _080BD220  @ gUnknown_08206868
	adds r0, r1, r0
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_080BD220: .4byte gUnknown_08206868

	THUMB_FUNC_END sub_80BD20C

	THUMB_FUNC_START sub_80BD224
sub_80BD224: @ 0x080BD224
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_80BD014
	adds r1, r0, #0
	ldrb r0, [r4, #0x11]
	cmp r0, r1
	bne _080BD242
	cmp r1, #0
	blt _080BD258
	adds r0, r1, #0
	bl WMLoc_GetNextLocId
	b _080BD252
_080BD242:
	adds r0, r4, #0
	bl sub_80BD014
	adds r1, r0, #0
	cmp r1, #0
	bge _080BD250
	movs r1, #0
_080BD250:
	adds r0, r1, #0
_080BD252:
	bl WMLoc_GetChapterId
	adds r5, r0, #0
_080BD258:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BD224

	THUMB_FUNC_START sub_80BD260
sub_80BD260: @ 0x080BD260
	push {lr}
	adds r0, #0xce
	movs r2, #3
	bl CpuSet
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BD260

	THUMB_FUNC_START sub_80BD270
sub_80BD270: @ 0x080BD270
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	adds r2, #0xce
	adds r1, r2, #0
	movs r2, #3
	bl CpuSet
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BD270

	THUMB_FUNC_START sub_80BD284
sub_80BD284: @ 0x080BD284
	ldr r0, _080BD288  @ gUnknown_0201B0D8
	bx lr
	.align 2, 0
_080BD288: .4byte gUnknown_0201B0D8

	THUMB_FUNC_END sub_80BD284

	THUMB_FUNC_START sub_80BD28C
sub_80BD28C: @ 0x080BD28C
	ldr r1, _080BD298  @ gUnknown_0201B0D8
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080BD298: .4byte gUnknown_0201B0D8

	THUMB_FUNC_END sub_80BD28C

	THUMB_FUNC_START sub_80BD29C
sub_80BD29C: @ 0x080BD29C
	ldr r0, _080BD2A4  @ gUnknown_0201B0D8
	ldr r0, [r0, #0x20]
	adds r0, #1
	bx lr
	.align 2, 0
_080BD2A4: .4byte gUnknown_0201B0D8

	THUMB_FUNC_END sub_80BD29C

	THUMB_FUNC_START nullsub_37
nullsub_37: @ 0x080BD2A8
	bx lr

	THUMB_FUNC_END nullsub_37

	THUMB_FUNC_START GetCharacterClassId
GetCharacterClassId: @ 0x080BD2AC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
_080BD2B2:
	adds r0, r4, #0
	bl GetUnit
	adds r1, r0, #0
	cmp r1, #0
	beq _080BD2D0
	ldr r0, [r1]
	cmp r0, #0
	beq _080BD2D0
	ldrb r0, [r0, #4]
	cmp r0, r5
	bne _080BD2D0
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	b _080BD2E2
_080BD2D0:
	adds r4, #1
	cmp r4, #0xbf
	ble _080BD2B2
	ldr r2, _080BD2E8  @ gCharacterData
	subs r1, r5, #1
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #5]
_080BD2E2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080BD2E8: .4byte gCharacterData

	THUMB_FUNC_END GetCharacterClassId

	THUMB_FUNC_START MapMUPrim_MakeUnitForChar
MapMUPrim_MakeUnitForChar: @ 0x080BD2EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r6, #0
	adds r5, #0x2b
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080BD314
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl MapUnitC_DeleteGmapUnit
	movs r0, #0xff
	strb r0, [r5]
_080BD314:
	ldr r0, [r6, #0x14]
	ldr r4, [r0, #0x4c]
	adds r0, r7, #0
	bl GetCharacterClassId
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl NewMapUnit
	strb r0, [r5]
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r5, r1]
	mov r2, r8
	lsls r3, r2, #5
	ldr r2, _080BD370  @ gUnknown_082060B0
	adds r3, r3, r2
	movs r4, #0x18
	ldrsh r2, [r3, r4]
	movs r4, #0x1a
	ldrsh r3, [r3, r4]
	adds r3, #6
	bl MapUnitC_SetPosition
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r2, #4
	bl MapUnitC_SetTCSAnim
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r5, r1]
	bl MapUnitC_MarkSomething
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD370: .4byte gUnknown_082060B0

	THUMB_FUNC_END MapMUPrim_MakeUnitForChar

	THUMB_FUNC_START MapMUPrim_MakeUnitForClass
MapMUPrim_MakeUnitForClass: @ 0x080BD374
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r5, #0
	adds r4, #0x2b
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080BD398
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	bl MapUnitC_DeleteGmapUnit
	movs r0, #0xff
	strb r0, [r4]
_080BD398:
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x4c]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	bl NewMapUnit
	strb r0, [r4]
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r3, r7, #5
	ldr r2, _080BD3E4  @ gUnknown_082060B0
	adds r3, r3, r2
	movs r6, #0x18
	ldrsh r2, [r3, r6]
	movs r6, #0x1a
	ldrsh r3, [r3, r6]
	adds r3, #6
	bl MapUnitC_SetPosition
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #4
	bl MapUnitC_SetTCSAnim
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	bl MapUnitC_MarkSomething
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD3E4: .4byte gUnknown_082060B0

	THUMB_FUNC_END MapMUPrim_MakeUnitForClass

	THUMB_FUNC_START MapMUPrim_RemoveLinkedMapUnit
MapMUPrim_RemoveLinkedMapUnit: @ 0x080BD3E8
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x2b
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080BD408
	ldr r0, [r1, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	bl MapUnitC_DeleteGmapUnit
	movs r0, #0xff
	strb r0, [r4]
_080BD408:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapMUPrim_RemoveLinkedMapUnit

	THUMB_FUNC_START sub_80BD410
sub_80BD410: @ 0x080BD410
	adds r0, #0x2b
	movs r1, #0xff
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80BD410

	THUMB_FUNC_START nullsub_70
nullsub_70: @ 0x080BD418
	bx lr

	THUMB_FUNC_END nullsub_70

	THUMB_FUNC_START sub_80BD41C
sub_80BD41C: @ 0x080BD41C
	push {lr}
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	lsls r0, r0, #4
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BD41C

	THUMB_FUNC_START sub_80BD444
sub_80BD444: @ 0x080BD444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bge _080BD48E
	adds r0, r6, #0
	adds r0, #0x2e
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r3, r3, #5
	ldr r1, _080BD5A0  @ gUnknown_082060B0
	adds r3, r3, r1
	movs r2, #0x18
	ldrsh r0, [r3, r2]
	adds r2, r6, #0
	adds r2, #0x2d
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #5
	adds r2, r2, r1
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	movs r5, #0x1a
	ldrsh r1, [r3, r5]
	movs r3, #0x1a
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_80BD41C
	str r0, [r6, #0x50]
_080BD48E:
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #5
	ldr r3, _080BD5A0  @ gUnknown_082060B0
	adds r0, r0, r3
	ldrb r1, [r0, #0x1e]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	movs r5, #0x2e
	adds r5, r5, r6
	mov r8, r5
	mov r9, r2
	adds r7, r6, #0
	adds r7, #0x2b
	cmp r0, #0
	beq _080BD4D4
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrb r1, [r0, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BD4D4
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r2, #0x50
	bl sub_80BB0E0
_080BD4D4:
	adds r1, r6, #0
	adds r1, #0x2a
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #2
	ldr r0, _080BD5A4  @ gUnknown_0201B3A4
	adds r5, r5, r0
	movs r0, #0
	mov sl, r0
	movs r0, #2
	strh r0, [r5]
	movs r3, #0
	ldrsb r3, [r1, r3]
	lsls r3, r3, #5
	ldr r0, _080BD5A8  @ gUnknown_0201B104
	adds r3, r3, r0
	str r3, [r5, #4]
	movs r4, #0
	ldrsb r4, [r1, r4]
	lsls r4, r4, #6
	ldr r0, _080BD5AC  @ gUnknown_0201B1E4
	adds r4, r4, r0
	str r4, [r5, #8]
	ldr r0, _080BD5B0  @ gUnknown_08A3E22C
	str r0, [r5, #0xc]
	ldr r0, _080BD5B4  @ gUnknown_08A3E23C
	str r0, [r5, #0x10]
	mov r1, r9
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r2, [r6, #0x50]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r4, #4
	str r4, [sp, #4]
	bl sub_80BCE34
	strh r0, [r5, #2]
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	adds r4, r7, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r5, r9
	movs r3, #0
	ldrsb r3, [r5, r3]
	lsls r3, r3, #5
	ldr r2, _080BD5A0  @ gUnknown_082060B0
	adds r3, r3, r2
	movs r5, #0x18
	ldrsh r2, [r3, r5]
	movs r5, #0x1a
	ldrsh r3, [r3, r5]
	adds r3, #6
	bl MapUnitC_SetPosition
	adds r2, r6, #0
	adds r2, #0x31
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080BD56E
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl MapUnitC_SetTCSAnim
_080BD56E:
	mov r0, sl
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r2, r6, #0
	adds r2, #0x44
	adds r3, r6, #0
	adds r3, #0x46
	bl sub_80BAF44
	adds r0, r6, #0
	adds r0, #0x40
	mov r1, sl
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD5A0: .4byte gUnknown_082060B0
_080BD5A4: .4byte gUnknown_0201B3A4
_080BD5A8: .4byte gUnknown_0201B104
_080BD5AC: .4byte gUnknown_0201B1E4
_080BD5B0: .4byte gUnknown_08A3E22C
_080BD5B4: .4byte gUnknown_08A3E23C

	THUMB_FUNC_END sub_80BD444

	THUMB_FUNC_START sub_80BD5B8
sub_80BD5B8: @ 0x080BD5B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BAF44
	mov r0, sp
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r4]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	cmp r3, #0
	bne _080BD602
	cmp r0, #0
	beq _080BD656
_080BD602:
	adds r1, r5, #0
	adds r1, #0x40
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	ble _080BD634
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x3c
	movs r0, #0x3d
	adds r0, r0, r5
	mov ip, r0
	subs r1, #0xc
_080BD61C:
	ldrb r0, [r1, #4]
	strb r0, [r1]
	ldrb r0, [r1, #5]
	strb r0, [r1, #1]
	adds r1, #4
	adds r2, #1
	cmp r2, #1
	ble _080BD61C
	strb r3, [r4]
	mov r2, ip
	strb r6, [r2]
	b _080BD652
_080BD634:
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0x34
	strb r3, [r0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0x35
	strb r6, [r0]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080BD652:
	movs r0, #1
	b _080BD658
_080BD656:
	movs r0, #0
_080BD658:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BD5B8

	THUMB_FUNC_START sub_80BD660
sub_80BD660: @ 0x080BD660
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, r1, #0
	movs r2, #0x9a
	lsls r2, r2, #7
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080BD67C  @ 0x000019FF
	cmp r0, r2
	bhi _080BD680
	movs r0, #3
	b _080BD69C
	.align 2, 0
_080BD67C: .4byte 0x000019FF
_080BD680:
	ldr r4, _080BD690  @ 0xFFFFCD00
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _080BD694
	movs r0, #2
	b _080BD69C
	.align 2, 0
_080BD690: .4byte 0xFFFFCD00
_080BD694:
	ldr r1, _080BD6A4  @ 0xFFFFC000
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1f
_080BD69C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BD6A4: .4byte 0xFFFFC000

	THUMB_FUNC_END sub_80BD660

	THUMB_FUNC_START sub_80BD6A8
sub_80BD6A8: @ 0x080BD6A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	movs r0, #0
	mov sl, r0
	mov r9, r0
	movs r7, #0
	mov r0, r8
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r7, r0
	bge _080BD72C
	mov r6, r8
	adds r6, #0x34
_080BD6CE:
	movs r0, #0
	ldrsb r0, [r6, r0]
	mov r2, r9
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r2, #1
	ldrsb r2, [r6, r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov r9, r2
	asrs r5, r1, #0x10
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r4, r0, #0x10
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_80C0834
	cmp r0, #0x23
	bls _080BD71C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80BD660
	b _080BD730
_080BD71C:
	adds r6, #4
	adds r7, #1
	mov r0, r8
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r7, r0
	blt _080BD6CE
_080BD72C:
	movs r0, #1
	negs r0, r0
_080BD730:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BD6A8

	THUMB_FUNC_START sub_80BD740
sub_80BD740: @ 0x080BD740
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	bl sub_80BD5B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BD81E
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080BD784
	adds r0, r6, #0
	bl sub_80BE45C
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BD784
	ldr r0, _080BD828  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD784
	adds r0, r6, #0
	bl sub_80BE45C
_080BD784:
	adds r0, r6, #0
	bl sub_80BD6A8
	adds r4, r0, #0
	adds r7, r6, #0
	adds r7, #0x2b
	cmp r4, #0
	blt _080BD7C8
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	bl sub_80BAF70
	cmp r0, r4
	beq _080BD7C8
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BD7C8
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r2, r4, #0
	bl MapUnitC_SetTCSAnim
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	bl MapUnitC_MarkSomething
_080BD7C8:
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BD80A
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BAF44
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0xe
	add r4, sp, #4
	mov r5, sp
	adds r5, #6
	adds r2, r4, #0
	adds r3, r5, #0
	bl GetWMCenteredCameraPosition
	ldr r1, _080BD82C  @ gUnknown_03005280
	ldrh r0, [r4]
	strh r0, [r1, #2]
	ldrh r0, [r5]
	strh r0, [r1, #4]
_080BD80A:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r2, r6, #0
	adds r2, #0x44
	adds r3, r6, #0
	adds r3, #0x46
	bl sub_80BAF44
_080BD81E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD828: .4byte gKeyStatusPtr
_080BD82C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BD740

	THUMB_FUNC_START sub_80BD830
sub_80BD830: @ 0x080BD830
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, #0x29
	ldrb r3, [r0]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080BD848
	b _080BD9C4
_080BD848:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080BD85C
	subs r0, r2, #1
	strh r0, [r1]
	b _080BD9C4
_080BD85C:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080BD878
	ldr r0, _080BD8C4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BD878
	ldr r0, [r6, #0x54]
	adds r0, #2
	str r0, [r6, #0x54]
_080BD878:
	ldr r0, [r6, #0x54]
	adds r2, r0, #1
	str r2, [r6, #0x54]
	ldr r0, [r6, #0x50]
	cmp r2, r0
	bge _080BD8CC
	adds r0, r6, #0
	adds r0, #0x2a
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BD8C8  @ gUnknown_0201B3A4
	adds r0, r0, r1
	lsls r1, r2, #0xc
	add r4, sp, #8
	adds r2, r4, #0
	bl sub_800A950
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, r6, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, [sp, #8]
	asrs r2, r2, #4
	ldr r3, [r4, #4]
	asrs r3, r3, #4
	adds r3, #6
	bl MapUnitC_SetPosition
	adds r0, r6, #0
	bl sub_80BD740
	b _080BD9C4
	.align 2, 0
_080BD8C4: .4byte gKeyStatusPtr
_080BD8C8: .4byte gUnknown_0201B3A4
_080BD8CC:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #5
	ldr r2, _080BD9D0  @ gUnknown_082060B0
	adds r0, r0, r2
	ldrb r1, [r0, #0x1e]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r4, r6, #0
	adds r4, #0x2b
	adds r5, r6, #0
	adds r5, #0x2e
	cmp r0, #0
	beq _080BD910
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0x1e]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BD910
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	bl sub_80BB0E0
_080BD910:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r3, #0
	ldrsb r3, [r5, r3]
	lsls r3, r3, #5
	ldr r2, _080BD9D0  @ gUnknown_082060B0
	adds r3, r3, r2
	movs r7, #0x18
	ldrsh r2, [r3, r7]
	movs r7, #0x1a
	ldrsh r3, [r3, r7]
	adds r3, #6
	bl MapUnitC_SetPosition
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080BD95C
	adds r2, #9
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080BD95C
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl MapUnitC_SetTCSAnim
_080BD95C:
	ldr r0, _080BD9D4  @ gUnknown_03005280
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r5]
	strb r1, [r0, #0x11]
	ldrb r1, [r7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BD9B4
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BAF44
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0xe
	add r4, sp, #4
	mov r5, sp
	adds r5, #6
	adds r2, r4, #0
	adds r3, r5, #0
	bl GetWMCenteredCameraPosition
	ldrh r0, [r4]
	mov r4, r8
	strh r0, [r4, #2]
	ldrh r0, [r5]
	strh r0, [r4, #4]
_080BD9B4:
	adds r0, r6, #0
	bl Proc_Break
	ldrb r1, [r7]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r7]
_080BD9C4:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD9D0: .4byte gUnknown_082060B0
_080BD9D4: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BD830

	THUMB_FUNC_START sub_80BD9D8
sub_80BD9D8: @ 0x080BD9D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bge _080BDA2E
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #5
	ldr r3, _080BDA74  @ gUnknown_082060B0
	adds r0, r0, r3
	movs r2, #0x18
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	adds r1, #0x48
	movs r5, #0
	ldrsh r1, [r1, r5]
	lsls r1, r1, #5
	adds r1, r1, r3
	movs r2, #0x18
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x4e
	movs r5, #0
	ldrsh r1, [r1, r5]
	lsls r1, r1, #5
	adds r1, r1, r3
	movs r2, #0x1a
	ldrsh r1, [r1, r2]
	adds r2, r4, #0
	adds r2, #0x4a
	movs r5, #0
	ldrsh r2, [r2, r5]
	lsls r2, r2, #5
	adds r2, r2, r3
	movs r3, #0x1a
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_80BD41C
	str r0, [r4, #0x50]
_080BDA2E:
	movs r6, #0
	str r6, [r4, #0x54]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x4c]
	adds r5, r4, #0
	adds r5, #0x2b
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r2, r4, #0
	adds r2, #0x44
	adds r3, r4, #0
	adds r3, #0x46
	bl sub_80BAF44
	adds r2, r4, #0
	adds r2, #0x31
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080BDA68
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl MapUnitC_SetTCSAnim
_080BDA68:
	adds r0, r4, #0
	adds r0, #0x40
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BDA74: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80BD9D8

	THUMB_FUNC_START sub_80BDA78
sub_80BDA78: @ 0x080BDA78
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r0, #0x29
	ldrb r3, [r0]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080BDA8C
	b _080BDBF4
_080BDA8C:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _080BDAA0
	subs r0, r2, #1
	strh r0, [r1]
	b _080BDBF4
_080BDAA0:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080BDABC
	ldr r0, _080BDB50  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BDABC
	ldr r0, [r7, #0x54]
	adds r0, #2
	str r0, [r7, #0x54]
_080BDABC:
	ldr r0, [r7, #0x54]
	adds r0, #1
	str r0, [r7, #0x54]
	ldr r1, [r7, #0x50]
	cmp r0, r1
	bge _080BDB54
	adds r2, r7, #0
	adds r2, #0x2f
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_800B84C
	adds r5, r0, #0
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r7, #0
	adds r4, #0x48
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	ldrh r1, [r4]
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x4e
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r4, #2
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	ldrh r3, [r4]
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, sp
	adds r0, #2
	strh r3, [r0]
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, r7, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r2, sp
	movs r4, #0
	ldrsh r2, [r2, r4]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #6
	bl MapUnitC_SetPosition
	adds r0, r7, #0
	bl sub_80BD740
	b _080BDBF4
	.align 2, 0
_080BDB50: .4byte gKeyStatusPtr
_080BDB54:
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	adds r4, r7, #0
	adds r4, #0x2b
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r2, r7, #0
	adds r2, #0x4c
	movs r5, #0
	ldrsh r2, [r2, r5]
	adds r3, r7, #0
	adds r3, #0x4e
	movs r5, #0
	ldrsh r3, [r3, r5]
	adds r3, #6
	bl MapUnitC_SetPosition
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080BDBA2
	adds r2, #9
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _080BDBA2
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl MapUnitC_SetTCSAnim
_080BDBA2:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080BDBE4
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BAF44
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0xe
	add r4, sp, #4
	mov r5, sp
	adds r5, #6
	adds r2, r4, #0
	adds r3, r5, #0
	bl GetWMCenteredCameraPosition
	ldr r1, _080BDBFC  @ gUnknown_03005280
	ldrh r0, [r4]
	strh r0, [r1, #2]
	ldrh r0, [r5]
	strh r0, [r1, #4]
_080BDBE4:
	adds r0, r7, #0
	bl Proc_Break
	ldrb r1, [r6]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r6]
_080BDBF4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BDBFC: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BDA78

	THUMB_FUNC_START nullsub_49
nullsub_49: @ 0x080BDC00
	bx lr

	THUMB_FUNC_END nullsub_49

	THUMB_FUNC_START MapMU_FillPrim
MapMU_FillPrim: @ 0x080BDC04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x2c
	movs r5, #6
_080BDC0E:
	ldr r1, [r4, #0x14]
	ldr r0, _080BDC24  @ gUnknown_08A3E248
	bl Proc_Start
	stm r6!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _080BDC0E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BDC24: .4byte gUnknown_08A3E248

	THUMB_FUNC_END MapMU_FillPrim

	THUMB_FUNC_START NewMapMU
NewMapMU: @ 0x080BDC28
	push {lr}
	adds r1, r0, #0
	ldr r0, _080BDC38  @ gUnknown_08A3E2C0
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080BDC38: .4byte gUnknown_08A3E2C0

	THUMB_FUNC_END NewMapMU

	THUMB_FUNC_START MapMU_SetUnit
MapMU_SetUnit: @ 0x080BDC3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r5, r1, #0
	adds r6, r3, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	lsls r7, r5, #2
	adds r0, #0x2c
	adds r0, r0, r7
	ldr r4, [r0]
	movs r0, #0x2a
	adds r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080BDC70
	mov r0, sl
	bl MapMU_RemoveUnit
_080BDC70:
	mov r1, r8
	strb r5, [r1]
	mov r2, r9
	cmp r2, #0
	beq _080BDC98
	adds r0, r4, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x24]
	bl MapMUPrim_MakeUnitForClass
	ldr r0, _080BDC94  @ gUnknown_03005280
	adds r0, r7, r0
	strh r6, [r0, #0x12]
	ldrb r1, [r0, #0x10]
	movs r2, #2
	orrs r1, r2
	b _080BDCAE
	.align 2, 0
_080BDC94: .4byte gUnknown_03005280
_080BDC98:
	adds r0, r4, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x24]
	bl MapMUPrim_MakeUnitForChar
	ldr r0, _080BDD24  @ gUnknown_03005280
	adds r0, r7, r0
	strh r6, [r0, #0x12]
	ldrb r2, [r0, #0x10]
	movs r1, #0xfd
	ands r1, r2
_080BDCAE:
	strb r1, [r0, #0x10]
	ldr r1, _080BDD24  @ gUnknown_03005280
	lsls r0, r5, #2
	adds r0, r0, r1
	add r1, sp, #0x24
	ldrb r1, [r1]
	strb r1, [r0, #0x11]
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bge _080BDCCA
	adds r0, r5, #0
	bl sub_80BD20C
	str r0, [sp, #0x20]
_080BDCCA:
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, [sp, #0x20]
	bl MapUnitC_SetAllegienceColorIndex
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080BDD28  @ gUnknown_08A3E2F0
	adds r0, r5, r0
	ldrb r2, [r0]
	mov r0, sl
	adds r1, r5, #0
	bl MapMU_SetUnitTCSOAMIndex
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BDD24: .4byte gUnknown_03005280
_080BDD28: .4byte gUnknown_08A3E2F0

	THUMB_FUNC_END MapMU_SetUnit

	THUMB_FUNC_START MapMU_RemoveUnit
MapMU_RemoveUnit: @ 0x080BDD2C
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r4, r5, #2
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080BDD8A
	adds r2, r1, #0
	adds r2, #0x2a
	movs r0, #0xff
	strb r0, [r2]
	adds r0, r1, #0
	bl MapMUPrim_RemoveLinkedMapUnit
	ldr r0, _080BDD70  @ gUnknown_03005280
	adds r1, r4, r0
	ldrb r2, [r1, #0x10]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080BDD74
	movs r0, #0
	strh r0, [r1, #0x12]
	movs r0, #2
	orrs r0, r2
	b _080BDD7A
	.align 2, 0
_080BDD70: .4byte gUnknown_03005280
_080BDD74:
	strh r0, [r1, #0x12]
	movs r0, #0xfd
	ands r0, r2
_080BDD7A:
	strb r0, [r1, #0x10]
	ldr r0, _080BDD90  @ gUnknown_03005280
	lsls r1, r5, #2
	adds r1, r1, r0
	ldrb r2, [r1, #0x10]
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r1, #0x10]
_080BDD8A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BDD90: .4byte gUnknown_03005280

	THUMB_FUNC_END MapMU_RemoveUnit

	THUMB_FUNC_START sub_80BDD94
sub_80BDD94: @ 0x080BDD94
	push {r4, r5, lr}
	adds r2, r0, #0
	cmp r1, #0
	blt _080BDDAC
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r1]
	bl MapMUPrim_RemoveLinkedMapUnit
	b _080BDDBE
_080BDDAC:
	adds r5, r2, #0
	adds r5, #0x2c
	movs r4, #6
_080BDDB2:
	ldm r5!, {r0}
	bl MapMUPrim_RemoveLinkedMapUnit
	subs r4, #1
	cmp r4, #0
	bge _080BDDB2
_080BDDBE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BDD94

	THUMB_FUNC_START sub_80BDDC4
sub_80BDDC4: @ 0x080BDDC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	cmp r1, #0
	blt _080BDDF8
	lsls r4, r1, #2
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #1
	bl sub_80BAFA4
	ldr r0, _080BDDF4  @ gUnknown_03005280
	adds r4, r4, r0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _080BDE30
	.align 2, 0
_080BDDF4: .4byte gUnknown_03005280
_080BDDF8:
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x2c
_080BDDFE:
	lsls r5, r6, #2
	ldr r1, [r4]
	adds r1, #0x2b
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080BDE28
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #1
	bl sub_80BAFA4
	ldr r1, _080BDE38  @ gUnknown_03005280
	adds r1, r5, r1
	ldrb r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1, #0x10]
_080BDE28:
	adds r4, #4
	adds r6, #1
	cmp r6, #6
	ble _080BDDFE
_080BDE30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BDE38: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BDDC4

	THUMB_FUNC_START sub_80BDE3C
sub_80BDE3C: @ 0x080BDE3C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	cmp r1, #0
	blt _080BDE70
	lsls r4, r1, #2
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #0
	bl sub_80BAFA4
	ldr r0, _080BDE6C  @ gUnknown_03005280
	adds r4, r4, r0
	ldrb r1, [r4, #0x10]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4, #0x10]
	b _080BDEA8
	.align 2, 0
_080BDE6C: .4byte gUnknown_03005280
_080BDE70:
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x2c
_080BDE76:
	lsls r6, r5, #2
	ldr r1, [r4]
	adds r1, #0x2b
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080BDEA0
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x4c]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #0
	bl sub_80BAFA4
	ldr r1, _080BDEB0  @ gUnknown_03005280
	adds r1, r6, r1
	ldrb r2, [r1, #0x10]
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r1, #0x10]
_080BDEA0:
	adds r4, #4
	adds r5, #1
	cmp r5, #6
	ble _080BDE76
_080BDEA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BDEB0: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BDE3C

	THUMB_FUNC_START sub_80BDEB4
sub_80BDEB4: @ 0x080BDEB4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r6, #6]
	adds r2, r5, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldrh r0, [r6, #8]
	adds r1, r5, #0
	adds r1, #0x2e
	strb r0, [r1]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bge _080BDF1A
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #5
	ldr r1, _080BDFA0  @ gUnknown_082060B0
	adds r4, r0, r1
	movs r0, #0x18
	ldrsh r3, [r4, r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #5
	adds r2, r0, r1
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	subs r0, r3, r1
	cmp r0, #0
	bge _080BDEFA
	subs r0, r1, r3
_080BDEFA:
	movs r1, #0x1a
	ldrsh r3, [r4, r1]
	movs r1, #0x1a
	ldrsh r2, [r2, r1]
	subs r1, r3, r2
	cmp r1, #0
	bge _080BDF0A
	subs r1, r2, r3
_080BDF0A:
	bl sub_80BD41C
	adds r1, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bge _080BDF18
	negs r0, r0
_080BDF18:
	muls r0, r1, r0
_080BDF1A:
	str r0, [r5, #0x50]
	ldrb r0, [r6, #1]
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	movs r4, #1
	movs r2, #1
	adds r1, r2, #0
	ands r1, r0
	lsls r1, r1, #2
	mov r0, ip
	ldrb r3, [r0]
	movs r0, #5
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrh r0, [r6, #0xa]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	orrs r0, r4
	movs r1, #3
	negs r1, r1
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r6, #2]
	ands r2, r1
	lsls r2, r2, #5
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x30
	strb r3, [r0]
	ldrb r0, [r6, #3]
	adds r1, r5, #0
	adds r1, #0x31
	strb r0, [r1]
	ldrb r0, [r6, #4]
	adds r2, r5, #0
	adds r2, #0x32
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #1
	bl Proc_Goto
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BDFA0: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80BDEB4

	THUMB_FUNC_START sub_80BDFA4
sub_80BDFA4: @ 0x080BDFA4
	push {r4, r5, r6, r7, lr}
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	ldrh r2, [r1, #6]
	adds r0, #0x48
	movs r6, #0
	strh r2, [r0]
	ldrh r0, [r1, #8]
	mov r2, ip
	adds r2, #0x4a
	strh r0, [r2]
	ldrh r2, [r1, #0xa]
	mov r0, ip
	adds r0, #0x4c
	strh r2, [r0]
	ldrh r0, [r1, #0xc]
	mov r2, ip
	adds r2, #0x4e
	strh r0, [r2]
	ldr r0, [r1, #0x10]
	mov r2, ip
	str r0, [r2, #0x50]
	ldrb r0, [r1, #2]
	mov r7, ip
	adds r7, #0x29
	movs r5, #1
	movs r4, #1
	adds r2, r4, #0
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r7]
	movs r0, #5
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r7]
	ldrb r0, [r1, #1]
	mov r2, ip
	adds r2, #0x2f
	strb r0, [r2]
	ldrh r0, [r1, #0xe]
	adds r2, #0x13
	strh r0, [r2]
	ldrb r0, [r7]
	orrs r0, r5
	movs r2, #3
	negs r2, r2
	ands r0, r2
	strb r0, [r7]
	mov r2, ip
	adds r2, #0x2c
	movs r0, #2
	strb r0, [r2]
	ldrb r0, [r7]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r7]
	ldrb r2, [r1, #3]
	ands r4, r2
	lsls r4, r4, #5
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r4
	strb r0, [r7]
	mov r0, ip
	adds r0, #0x30
	strb r6, [r0]
	ldrb r0, [r1, #4]
	mov r2, ip
	adds r2, #0x31
	strb r0, [r2]
	ldrb r0, [r1, #5]
	mov r1, ip
	adds r1, #0x32
	strb r0, [r1]
	mov r0, ip
	movs r1, #2
	bl Proc_Goto
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BDFA4

	THUMB_FUNC_START sub_80BE054
sub_80BE054: @ 0x080BE054
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x29
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bx lr

	THUMB_FUNC_END sub_80BE054

	THUMB_FUNC_START sub_80BE068
sub_80BE068: @ 0x080BE068
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x29
	ldrb r2, [r1]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	bx lr

	THUMB_FUNC_END sub_80BE068

	THUMB_FUNC_START sub_80BE080
sub_80BE080: @ 0x080BE080
	push {lr}
	lsls r1, r1, #2
	adds r3, r0, #0
	adds r3, #0x2c
	adds r3, r3, r1
	ldr r1, [r3]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_80BAFE0
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE080

	THUMB_FUNC_START sub_80BE0A4
sub_80BE0A4: @ 0x080BE0A4
	push {r4, lr}
	lsls r1, r1, #2
	adds r4, r0, #0
	adds r4, #0x2c
	adds r4, r4, r1
	ldr r1, [r4]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_80BAF44
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE0A4

	THUMB_FUNC_START sub_80BE0C8
sub_80BE0C8: @ 0x080BE0C8
	push {lr}
	lsls r1, r1, #2
	adds r2, r0, #0
	adds r2, #0x2c
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_80BB008
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BE0C8

	THUMB_FUNC_START MapMU_SetUnitTCSOAMIndex
MapMU_SetUnitTCSOAMIndex: @ 0x080BE0E8
	push {lr}
	lsls r1, r1, #2
	adds r3, r0, #0
	adds r3, #0x2c
	adds r3, r3, r1
	ldr r1, [r3]
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl MapUnitC_SetTCSOAMIndex
	pop {r0}
	bx r0

	THUMB_FUNC_END MapMU_SetUnitTCSOAMIndex

	THUMB_FUNC_START MapMU_80BE108
MapMU_80BE108: @ 0x080BE108
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x29
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #3
	ldrb r3, [r1]
	movs r0, #9
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	bx lr

	THUMB_FUNC_END MapMU_80BE108

	THUMB_FUNC_START sub_80BE12C
sub_80BE12C: @ 0x080BE12C
	push {r4, lr}
	adds r2, r0, #0
	cmp r1, #0
	bge _080BE162
	movs r3, #0
	movs r4, #1
	adds r2, #0x2c
_080BE13A:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080BE158
	adds r0, r1, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080BE186
_080BE158:
	adds r2, #4
	adds r3, #1
	cmp r3, #6
	ble _080BE13A
	b _080BE18A
_080BE162:
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080BE18A
	adds r0, r1, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _080BE18C
_080BE186:
	movs r0, #1
	b _080BE18C
_080BE18A:
	movs r0, #0
_080BE18C:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BE12C

	THUMB_FUNC_START sub_80BE194
sub_80BE194: @ 0x080BE194
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x29
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE1AE
	b _080BE31E
_080BE1AE:
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	cmp r2, #1
	beq _080BE1C0
	cmp r2, #2
	beq _080BE298
	adds r7, r5, #0
	b _080BE30C
_080BE1C0:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #5
	ldr r3, _080BE290  @ gUnknown_082060B0
	adds r0, r0, r3
	ldrb r1, [r0, #0x1e]
	adds r0, r2, #0
	ands r0, r1
	adds r5, r6, #0
	adds r5, #0x2e
	adds r4, r6, #0
	adds r4, #0x2b
	cmp r0, #0
	beq _080BE200
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrb r0, [r0, #0x1e]
	ands r2, r0
	cmp r2, #0
	beq _080BE200
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	bl sub_80BB0E0
_080BE200:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r3, #0
	ldrsb r3, [r5, r3]
	lsls r3, r3, #5
	ldr r2, _080BE290  @ gUnknown_082060B0
	adds r3, r3, r2
	movs r7, #0x18
	ldrsh r2, [r3, r7]
	movs r7, #0x1a
	ldrsh r3, [r3, r7]
	adds r3, #6
	bl MapUnitC_SetPosition
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #4
	bl MapUnitC_SetTCSAnim
	ldr r0, _080BE294  @ gUnknown_03005280
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r5]
	strb r1, [r0, #0x11]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080BE30C
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BAF44
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0xe
	add r4, sp, #4
	mov r5, sp
	adds r5, #6
	adds r2, r4, #0
	adds r3, r5, #0
	bl GetWMCenteredCameraPosition
	ldrh r0, [r4]
	mov r3, r8
	strh r0, [r3, #2]
	ldrh r0, [r5]
	strh r0, [r3, #4]
	b _080BE30C
	.align 2, 0
_080BE290: .4byte gUnknown_082060B0
_080BE294: .4byte gUnknown_03005280
_080BE298:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	adds r4, r6, #0
	adds r4, #0x2b
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r2, r6, #0
	adds r2, #0x4c
	movs r7, #0
	ldrsh r2, [r2, r7]
	adds r3, r6, #0
	adds r3, #0x4e
	movs r7, #0
	ldrsh r3, [r3, r7]
	adds r3, #6
	bl MapUnitC_SetPosition
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #4
	bl MapUnitC_SetTCSAnim
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	adds r7, r5, #0
	cmp r0, #0
	beq _080BE30C
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_80BAF44
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #0xe
	add r4, sp, #4
	mov r5, sp
	adds r5, #6
	adds r2, r4, #0
	adds r3, r5, #0
	bl GetWMCenteredCameraPosition
	ldr r1, _080BE32C  @ gUnknown_03005280
	ldrh r0, [r4]
	strh r0, [r1, #2]
	ldrh r0, [r5]
	strh r0, [r1, #4]
_080BE30C:
	ldrb r1, [r7]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0
	bl Proc_Goto
_080BE31E:
	movs r0, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BE32C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BE194

	THUMB_FUNC_START sub_80BE330
sub_80BE330: @ 0x080BE330
	push {r4, r5, lr}
	cmp r1, #0
	bge _080BE34A
	adds r5, r0, #0
	adds r5, #0x2c
	movs r4, #6
_080BE33C:
	ldm r5!, {r0}
	bl sub_80BE194
	subs r4, #1
	cmp r4, #0
	bge _080BE33C
	b _080BE356
_080BE34A:
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80BE194
_080BE356:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE330

	THUMB_FUNC_START sub_80BE35C
sub_80BE35C: @ 0x080BE35C
	push {r4, r5, r6, lr}
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r6, [r0]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0xb
	adds r3, r3, r0
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, r6, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r5, r3, #0x10
	asrs r3, r3, #0x10
	bl MapUnitC_SetPosition
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r5, [r0]
	subs r0, #6
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE35C

	THUMB_FUNC_START sub_80BE3A0
sub_80BE3A0: @ 0x080BE3A0
	push {r4, lr}
	adds r4, r3, #0
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_80BAF44
	ldrh r0, [r4]
	subs r0, #6
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE3A0

	THUMB_FUNC_START sub_80BE3C8
sub_80BE3C8: @ 0x080BE3C8
	push {r4, lr}
	lsls r3, r2, #5
	ldr r2, _080BE3E4  @ gUnknown_082060B0
	adds r3, r3, r2
	movs r4, #0x18
	ldrsh r2, [r3, r4]
	movs r4, #0x1a
	ldrsh r3, [r3, r4]
	bl sub_80BE35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BE3E4: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80BE3C8

	THUMB_FUNC_START sub_80BE3E8
sub_80BE3E8: @ 0x080BE3E8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x29
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r1]
	movs r0, #5
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	bx lr

	THUMB_FUNC_END sub_80BE3E8

	THUMB_FUNC_START sub_80BE40C
sub_80BE40C: @ 0x080BE40C
	push {lr}
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r2, #0
	movs r2, #0
	bl sub_80BB4C0
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE40C

	THUMB_FUNC_START sub_80BE42C
sub_80BE42C: @ 0x080BE42C
	push {lr}
	lsls r1, r1, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r2, #0
	movs r2, #0
	bl sub_80BB538
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE42C

	THUMB_FUNC_START sub_80BE44C
sub_80BE44C: @ 0x080BE44C
	push {lr}
	bl sub_80BB48C
	cmp r0, #0
	beq _080BE458
	movs r0, #1
_080BE458:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BE44C

	THUMB_FUNC_START sub_80BE45C
sub_80BE45C: @ 0x080BE45C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0x4c]
	adds r1, r6, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_80BB194
	adds r4, r0, #0
	bl GetClassData
	ldr r0, [r0, #0x28]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE4AC
	cmp r4, #0x1f
	blt _080BE4A4
	cmp r4, #0x24
	ble _080BE49C
	cmp r4, #0x49
	bgt _080BE4A4
	cmp r4, #0x48
	blt _080BE4A4
	ldr r4, _080BE498  @ gUnknown_08A3E3BA
	b _080BE4E6
	.align 2, 0
_080BE498: .4byte gUnknown_08A3E3BA
_080BE49C:
	ldr r4, _080BE4A0  @ gUnknown_08A3E38E
	b _080BE4E6
	.align 2, 0
_080BE4A0: .4byte gUnknown_08A3E38E
_080BE4A4:
	ldr r4, _080BE4A8  @ gUnknown_08A3E360
	b _080BE4E6
	.align 2, 0
_080BE4A8: .4byte gUnknown_08A3E360
_080BE4AC:
	cmp r4, #0x65
	beq _080BE4D4
	cmp r4, #0x65
	bgt _080BE4CC
	cmp r4, #0x3c
	bgt _080BE4C6
	cmp r4, #0x3b
	bge _080BE4D4
	cmp r4, #0xc
	bgt _080BE4E4
	cmp r4, #9
	blt _080BE4E4
	b _080BE4D4
_080BE4C6:
	cmp r4, #0x50
	beq _080BE4DC
	b _080BE4E4
_080BE4CC:
	cmp r4, #0x69
	bgt _080BE4E4
	cmp r4, #0x67
	blt _080BE4E4
_080BE4D4:
	ldr r4, _080BE4D8  @ gUnknown_08A3E31C
	b _080BE4E6
	.align 2, 0
_080BE4D8: .4byte gUnknown_08A3E31C
_080BE4DC:
	ldr r4, _080BE4E0  @ gUnknown_08A3E412
	b _080BE4E6
	.align 2, 0
_080BE4E0: .4byte gUnknown_08A3E412
_080BE4E4:
	ldr r4, _080BE528  @ gUnknown_08A3E2F8
_080BE4E6:
	adds r2, r6, #0
	adds r2, #0x30
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r4]
	bl DivRem
	ldr r1, _080BE52C  @ 0xFFFF0000
	ands r5, r1
	movs r1, #0x78
	orrs r5, r1
	ldr r1, _080BE530  @ 0x0000FFFF
	ands r5, r1
	movs r1, #0xa0
	lsls r1, r1, #0xf
	orrs r5, r1
	lsls r0, r0, #1
	adds r1, r0, r4
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080BE520
	ldrh r1, [r4, #2]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	bl MU_StartStepSfx
_080BE520:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BE528: .4byte gUnknown_08A3E2F8
_080BE52C: .4byte 0xFFFF0000
_080BE530: .4byte 0x0000FFFF

	THUMB_FUNC_END sub_80BE45C

	THUMB_FUNC_START MapMU_SetUnitClass
MapMU_SetUnitClass: @ 0x080BE534
	push {r4, lr}
	sub sp, #8
	adds r4, r2, #0
	ldr r2, [sp, #0x10]
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #1
	adds r3, r4, #0
	bl MapMU_SetUnit
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapMU_SetUnitClass

	THUMB_FUNC_START MapMU_SetUnitChar
MapMU_SetUnitChar: @ 0x080BE550
	push {r4, lr}
	sub sp, #8
	adds r4, r2, #0
	ldr r2, [sp, #0x10]
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #0
	adds r3, r4, #0
	bl MapMU_SetUnit
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END MapMU_SetUnitChar

	THUMB_FUNC_START sub_80BE56C
sub_80BE56C: @ 0x080BE56C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x57
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #6
	bl Text_Allocate
	movs r1, #0
	str r1, [r4, #0x58]
	adds r0, r4, #0
	adds r0, #0x56
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE56C

	THUMB_FUNC_START sub_80BE594
sub_80BE594: @ 0x080BE594
	push {lr}
	cmp r0, #0
	bge _080BE5A6
	cmp r1, #0
	bge _080BE5A2
	movs r0, #0
	b _080BE5B0
_080BE5A2:
	movs r0, #1
	b _080BE5B0
_080BE5A6:
	cmp r1, #0
	blt _080BE5AE
	movs r0, #3
	b _080BE5B0
_080BE5AE:
	movs r0, #2
_080BE5B0:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BE594

	THUMB_FUNC_START sub_80BE5B4
sub_80BE5B4: @ 0x080BE5B4
	push {lr}
	cmp r0, #0x40
	beq _080BE5DC
	cmp r0, #0x40
	bgt _080BE5C4
	cmp r0, #0
	beq _080BE5CA
	b _080BE5E4
_080BE5C4:
	cmp r0, #0x80
	beq _080BE5D4
	b _080BE5E4
_080BE5CA:
	ldr r0, _080BE5D0  @ gUnknown_08A98E2C
	b _080BE5E6
	.align 2, 0
_080BE5D0: .4byte gUnknown_08A98E2C
_080BE5D4:
	ldr r0, _080BE5D8  @ gUnknown_08A98E4C
	b _080BE5E6
	.align 2, 0
_080BE5D8: .4byte gUnknown_08A98E4C
_080BE5DC:
	ldr r0, _080BE5E0  @ gUnknown_08A98E6C
	b _080BE5E6
	.align 2, 0
_080BE5E0: .4byte gUnknown_08A98E6C
_080BE5E4:
	ldr r0, _080BE5F4  @ gUnknown_08A98E8C
_080BE5E6:
	lsls r1, r1, #5
	movs r2, #0x20
	bl CopyToPaletteBuffer
	pop {r0}
	bx r0
	.align 2, 0
_080BE5F4: .4byte gUnknown_08A98E8C

	THUMB_FUNC_END sub_80BE5B4

	THUMB_FUNC_START sub_80BE5F8
sub_80BE5F8: @ 0x080BE5F8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r5]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r5, #2]
	movs r4, #8
	ldrsb r4, [r1, r4]
	cmp r4, #9
	ble _080BE622
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r5, #4]
_080BE622:
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r0, [r5, #6]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE5F8

	THUMB_FUNC_START sub_80BE638
sub_80BE638: @ 0x080BE638
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, #0x44
	ldrh r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080BE658
	ldr r0, [r2, #0x40]
	adds r1, r3, #0
	bl sub_80BE5F8
	movs r0, #1
	bl BG_EnableSyncByMask
_080BE658:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE638

	THUMB_FUNC_START sub_80BE65C
sub_80BE65C: @ 0x080BE65C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r1, #0
	ldr r1, _080BE688  @ gUnknown_08A3E448
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #2
	ldrsb r1, [r0, r1]
	mov sl, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	cmp r2, #0
	beq _080BE68C
	cmp r2, #1
	beq _080BE694
	b _080BE69C
	.align 2, 0
_080BE688: .4byte gUnknown_08A3E448
_080BE68C:
	movs r0, #0xd
	mov r9, r0
	movs r1, #4
	b _080BE69A
_080BE694:
	movs r0, #0xd
	mov r9, r0
	movs r1, #9
_080BE69A:
	mov r8, r1
_080BE69C:
	mov r0, sl
	cmp r0, #0
	bge _080BE6EC
	ldr r1, [sp]
	cmp r1, #0
	bge _080BE6EC
	ldr r5, _080BE800  @ gBG1TilemapBuffer
	adds r0, r5, #0
	mov r1, r9
	mov r2, r8
	movs r3, #0
	bl TileMap_FillRect
	ldr r6, _080BE804  @ gBG0TilemapBuffer
	adds r0, r6, #0
	mov r1, r9
	mov r2, r8
	movs r3, #0
	bl TileMap_FillRect
	adds r4, r7, #0
	subs r4, #0xa
	mov r0, r8
	subs r4, r0, r4
	lsls r4, r4, #6
	ldr r0, _080BE808  @ gUnknown_0201B958
	adds r0, r4, r0
	adds r1, r5, #0
	mov r2, r9
	adds r3, r7, #0
	bl TileMap_CopyRect
	ldr r0, _080BE80C  @ gUnknown_0201B458
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r9
	adds r3, r7, #0
	bl TileMap_CopyRect
_080BE6EC:
	mov r1, sl
	cmp r1, #0
	ble _080BE746
	ldr r0, [sp]
	cmp r0, #0
	bge _080BE746
	movs r5, #0x1e
	mov r1, r9
	subs r5, r5, r1
	lsls r5, r5, #1
	ldr r6, _080BE800  @ gBG1TilemapBuffer
	adds r6, r5, r6
	adds r0, r6, #0
	mov r2, r8
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE804  @ gBG0TilemapBuffer
	adds r5, r5, r0
	adds r0, r5, #0
	mov r1, r9
	mov r2, r8
	movs r3, #0
	bl TileMap_FillRect
	adds r4, r7, #0
	subs r4, #0xa
	mov r0, r8
	subs r4, r0, r4
	lsls r4, r4, #6
	ldr r0, _080BE808  @ gUnknown_0201B958
	adds r0, r4, r0
	adds r1, r6, #0
	mov r2, r9
	adds r3, r7, #0
	bl TileMap_CopyRect
	ldr r0, _080BE80C  @ gUnknown_0201B458
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r9
	adds r3, r7, #0
	bl TileMap_CopyRect
_080BE746:
	mov r1, sl
	cmp r1, #0
	bge _080BE798
	ldr r0, [sp]
	cmp r0, #0
	ble _080BE798
	ldr r5, _080BE810  @ gUnknown_020238A8
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r6, _080BE814  @ gUnknown_020230A8
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE818  @ gUnknown_0201BBD8
	movs r4, #0x16
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r1, _080BE81C  @ 0xFFFFFC00
	adds r5, r5, r1
	adds r5, r4, r5
	adds r1, r5, #0
	movs r2, #0xd
	adds r3, r7, #0
	bl TileMap_CopyRect
	ldr r0, _080BE820  @ gUnknown_0201B758
	ldr r1, _080BE81C  @ 0xFFFFFC00
	adds r6, r6, r1
	adds r4, r4, r6
	adds r1, r4, #0
	movs r2, #0xd
	adds r3, r7, #0
	bl TileMap_CopyRect
_080BE798:
	mov r0, sl
	cmp r0, #0
	ble _080BE7EA
	ldr r1, [sp]
	cmp r1, #0
	ble _080BE7EA
	ldr r5, _080BE824  @ gUnknown_020238CA
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r6, _080BE828  @ gUnknown_020230CA
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE818  @ gUnknown_0201BBD8
	movs r4, #0x16
	subs r4, r4, r7
	lsls r4, r4, #6
	ldr r1, _080BE81C  @ 0xFFFFFC00
	adds r5, r5, r1
	adds r5, r4, r5
	adds r1, r5, #0
	movs r2, #0xd
	adds r3, r7, #0
	bl TileMap_CopyRect
	ldr r0, _080BE820  @ gUnknown_0201B758
	ldr r1, _080BE81C  @ 0xFFFFFC00
	adds r6, r6, r1
	adds r4, r4, r6
	adds r1, r4, #0
	movs r2, #0xd
	adds r3, r7, #0
	bl TileMap_CopyRect
_080BE7EA:
	movs r0, #3
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE800: .4byte gBG1TilemapBuffer
_080BE804: .4byte gBG0TilemapBuffer
_080BE808: .4byte gUnknown_0201B958
_080BE80C: .4byte gUnknown_0201B458
_080BE810: .4byte gUnknown_020238A8
_080BE814: .4byte gUnknown_020230A8
_080BE818: .4byte gUnknown_0201BBD8
_080BE81C: .4byte 0xFFFFFC00
_080BE820: .4byte gUnknown_0201B758
_080BE824: .4byte gUnknown_020238CA
_080BE828: .4byte gUnknown_020230CA

	THUMB_FUNC_END sub_80BE65C

	THUMB_FUNC_START sub_80BE82C
sub_80BE82C: @ 0x080BE82C
	push {r4, r5, lr}
	ldr r1, _080BE8C4  @ gUnknown_08A3E448
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r4, #2
	ldrsb r4, [r0, r4]
	movs r5, #3
	ldrsb r5, [r0, r5]
	cmp r4, #0
	bge _080BE85C
	cmp r5, #0
	bge _080BE85C
	ldr r0, _080BE8C8  @ gBG1TilemapBuffer
	movs r1, #0xd
	movs r2, #9
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE8CC  @ gBG0TilemapBuffer
	movs r1, #0xd
	movs r2, #9
	movs r3, #0
	bl TileMap_FillRect
_080BE85C:
	cmp r4, #0
	ble _080BE87C
	cmp r5, #0
	bge _080BE87C
	ldr r0, _080BE8D0  @ gUnknown_020234CA
	movs r1, #0xd
	movs r2, #9
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE8D4  @ gUnknown_02022CCA
	movs r1, #0xd
	movs r2, #9
	movs r3, #0
	bl TileMap_FillRect
_080BE87C:
	cmp r4, #0
	bge _080BE89C
	cmp r5, #0
	ble _080BE89C
	ldr r0, _080BE8D8  @ gUnknown_020238A8
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE8DC  @ gUnknown_020230A8
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
_080BE89C:
	cmp r4, #0
	ble _080BE8BC
	cmp r5, #0
	ble _080BE8BC
	ldr r0, _080BE8E0  @ gUnknown_020238CA
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BE8E4  @ gUnknown_020230CA
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
_080BE8BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BE8C4: .4byte gUnknown_08A3E448
_080BE8C8: .4byte gBG1TilemapBuffer
_080BE8CC: .4byte gBG0TilemapBuffer
_080BE8D0: .4byte gUnknown_020234CA
_080BE8D4: .4byte gUnknown_02022CCA
_080BE8D8: .4byte gUnknown_020238A8
_080BE8DC: .4byte gUnknown_020230A8
_080BE8E0: .4byte gUnknown_020238CA
_080BE8E4: .4byte gUnknown_020230CA

	THUMB_FUNC_END sub_80BE82C

	THUMB_FUNC_START sub_80BE8E8
sub_80BE8E8: @ 0x080BE8E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #0x2c
	adds r0, r4, #0
	bl Text_Clear
	adds r0, r5, #0
	bl sub_80BBA28
	adds r5, r0, #0
	movs r0, #0x40
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	adds r3, r5, #0
	bl Text_InsertString
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE8E8

	THUMB_FUNC_START sub_80BE918
sub_80BE918: @ 0x080BE918
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r5, #0x34
	adds r0, r5, #0
	bl Text_Clear
	ldr r1, _080BE954  @ gCharacterData
	subs r4, #1
	movs r0, #0x34
	muls r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r4, r0, #0
	movs r0, #0x44
	adds r1, r4, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #5
	adds r3, r4, #0
	bl Text_InsertString
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BE954: .4byte gCharacterData

	THUMB_FUNC_END sub_80BE918

	THUMB_FUNC_START sub_80BE958
sub_80BE958: @ 0x080BE958
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x5f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BE974
	bl GetUnitFromCharId
	bl GetUnitMiniPortraitId
	adds r3, r0, #0
	b _080BE980
_080BE974:
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BE980
	ldr r3, _080BE998  @ 0x00007F04
_080BE980:
	ldr r1, _080BE99C  @ gUnknown_0201B7DA
	movs r2, #0x88
	lsls r2, r2, #2
	movs r0, #0
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #4
	bl sub_8005988
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080BE998: .4byte 0x00007F04
_080BE99C: .4byte gUnknown_0201B7DA

	THUMB_FUNC_END sub_80BE958

	THUMB_FUNC_START sub_80BE9A0
sub_80BE9A0: @ 0x080BE9A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #0x34
	adds r0, r4, #0
	bl Text_Clear
	adds r0, r5, #0
	bl GetClassData
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r5, r0, #0
	movs r0, #0x44
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #5
	adds r3, r5, #0
	bl Text_InsertString
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BE9A0

	THUMB_FUNC_START sub_80BE9D8
sub_80BE9D8: @ 0x080BE9D8
	push {r4, r5, lr}
	adds r2, r1, #0
	ldr r1, _080BEA0C  @ gUnknown_03005280
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BEA56
	lsls r1, r2, #5
	ldr r2, _080BEA10  @ gUnknown_082060B0
	adds r0, r1, r2
	ldr r0, [r0, #0xc]
	ldrh r3, [r0]
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r3, #0
	beq _080BEA20
	ldr r2, _080BEA14  @ gUnknown_0201B430
	ldr r0, _080BEA18  @ 0x000002BA
	adds r1, r2, r0
	ldr r0, _080BEA1C  @ 0x00003231
	strh r0, [r1]
	b _080BEA2A
	.align 2, 0
_080BEA0C: .4byte gUnknown_03005280
_080BEA10: .4byte gUnknown_082060B0
_080BEA14: .4byte gUnknown_0201B430
_080BEA18: .4byte 0x000002BA
_080BEA1C: .4byte 0x00003231
_080BEA20:
	ldr r1, _080BEA40  @ gUnknown_0201B430
	ldr r2, _080BEA44  @ 0x000002BA
	adds r0, r1, r2
	strh r3, [r0]
	adds r2, r1, #0
_080BEA2A:
	adds r0, r4, r5
	ldr r0, [r0, #0x10]
	ldrh r1, [r0]
	cmp r1, #0
	beq _080BEA4C
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r1, r2, r3
	ldr r0, _080BEA48  @ 0x00003232
	strh r0, [r1]
	b _080BEA68
	.align 2, 0
_080BEA40: .4byte gUnknown_0201B430
_080BEA44: .4byte 0x000002BA
_080BEA48: .4byte 0x00003232
_080BEA4C:
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	b _080BEA68
_080BEA56:
	ldr r0, _080BEA70  @ gUnknown_0201B430
	ldr r2, _080BEA74  @ 0x000002BA
	adds r1, r0, r2
	movs r2, #0
	strh r2, [r1]
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r0, r0, r3
	strh r2, [r0]
_080BEA68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BEA70: .4byte gUnknown_0201B430
_080BEA74: .4byte 0x000002BA

	THUMB_FUNC_END sub_80BE9D8

	THUMB_FUNC_START sub_80BEA78
sub_80BEA78: @ 0x080BEA78
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x5f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BEA90
	bl GetUnitFromCharId
	movs r5, #8
	ldrsb r5, [r0, r5]
	b _080BEA9C
_080BEA90:
	adds r0, r2, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BEA9C
	movs r5, #0
_080BEA9C:
	ldr r4, _080BEAD8  @ gUnknown_0201B864
	ldr r1, _080BEADC  @ 0x00005233
	adds r0, r1, #0
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x40
	ldr r2, _080BEAE0  @ 0x00005253
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _080BEAE4  @ 0x00005234
	adds r0, r3, #0
	strh r0, [r4, #2]
	adds r1, #2
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	cmp r5, #0
	bne _080BEAE8
	adds r3, #0xb
	adds r2, r3, #0
	strh r2, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x44
	adds r3, #0x20
	adds r1, r3, #0
	strh r1, [r0]
	strh r2, [r4, #6]
	adds r0, #2
	strh r1, [r0]
	b _080BEB1C
	.align 2, 0
_080BEAD8: .4byte gUnknown_0201B864
_080BEADC: .4byte 0x00005233
_080BEAE0: .4byte 0x00005253
_080BEAE4: .4byte 0x00005234
_080BEAE8:
	cmp r5, #9
	ble _080BEB04
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	ldr r2, _080BEB24  @ 0x00005235
	adds r1, r0, r2
	strh r1, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x44
	ldr r3, _080BEB28  @ 0x00005255
	adds r0, r0, r3
	strh r0, [r1]
_080BEB04:
	adds r0, r5, #0
	movs r1, #0xa
	bl __modsi3
	ldr r2, _080BEB24  @ 0x00005235
	adds r1, r0, r2
	strh r1, [r4, #6]
	adds r1, r4, #0
	adds r1, #0x46
	ldr r3, _080BEB28  @ 0x00005255
	adds r0, r0, r3
	strh r0, [r1]
_080BEB1C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BEB24: .4byte 0x00005235
_080BEB28: .4byte 0x00005255

	THUMB_FUNC_END sub_80BEA78

	THUMB_FUNC_START sub_80BEB2C
sub_80BEB2C: @ 0x080BEB2C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BEB3E
	cmp r0, #1
	beq _080BEB74
	b _080BEBB4
_080BEB3E:
	ldr r4, _080BEB68  @ gUnknown_0201BBD8
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080BEB6C  @ gUnknown_0201B718
	movs r1, #0xd
	movs r2, #2
	movs r3, #0
	bl TileMap_FillRect
	ldr r1, _080BEB70  @ gUnknown_08A98EAC
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, #0
	bl CallARM_FillTileRect
	b _080BEBB4
	.align 2, 0
_080BEB68: .4byte gUnknown_0201BBD8
_080BEB6C: .4byte gUnknown_0201B718
_080BEB70: .4byte gUnknown_08A98EAC
_080BEB74:
	ldr r5, _080BEBC4  @ gUnknown_0201BBD8
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #9
	movs r3, #0
	bl TileMap_FillRect
	ldr r4, _080BEBC8  @ gUnknown_0201B718
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #7
	movs r3, #0
	bl TileMap_FillRect
	ldr r1, _080BEBCC  @ gUnknown_08A98F30
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r5, #0
	bl CallARM_FillTileRect
	adds r0, r6, #0
	adds r0, #0x34
	adds r4, #0xc8
	adds r1, r4, #0
	bl Text_Draw
	adds r0, r6, #0
	bl sub_80BEA78
	adds r0, r6, #0
	bl sub_80BE958
_080BEBB4:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _080BEBD0  @ gUnknown_0201B71C
	bl Text_Draw
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BEBC4: .4byte gUnknown_0201BBD8
_080BEBC8: .4byte gUnknown_0201B718
_080BEBCC: .4byte gUnknown_08A98F30
_080BEBD0: .4byte gUnknown_0201B71C

	THUMB_FUNC_END sub_80BEB2C

	THUMB_FUNC_START sub_80BEBD4
sub_80BEBD4: @ 0x080BEBD4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x55
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80C089C
	adds r1, r4, #0
	adds r1, #0x50
	strb r0, [r1]
	ldr r0, _080BEC50  @ gUnknown_08A3E448
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #2
	ldrsb r0, [r1, r0]
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_80BE594
	adds r1, r4, #0
	adds r1, #0x57
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_80BEB2C
	adds r3, r4, #0
	adds r3, #0x4e
	ldr r1, _080BEC54  @ gUnknown_03005280
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x4f
	ldr r0, [r1, #0xc]
	asrs r0, r0, #8
	strb r0, [r2]
	ldrb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x4d
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BEC50: .4byte gUnknown_08A3E448
_080BEC54: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BEBD4

	THUMB_FUNC_START sub_80BEC58
sub_80BEC58: @ 0x080BEC58
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BEC6A
	cmp r0, #1
	beq _080BEC74
	b _080BEC80
_080BEC6A:
	ldr r1, _080BEC70  @ gUnknown_08A3E458
	b _080BEC76
	.align 2, 0
_080BEC70: .4byte gUnknown_08A3E458
_080BEC74:
	ldr r1, _080BECB4  @ gUnknown_08A3E45E
_080BEC76:
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r5, #3
_080BEC80:
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x5e
	ldrb r2, [r2]
	bl sub_80BE65C
	ldr r0, [r4, #0x58]
	adds r0, #1
	str r0, [r4, #0x58]
	cmp r0, r5
	bne _080BECAE
	movs r0, #0
	str r0, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080BECAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BECB4: .4byte gUnknown_08A3E45E

	THUMB_FUNC_END sub_80BEC58

	THUMB_FUNC_START sub_80BECB8
sub_80BECB8: @ 0x080BECB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x4e
	ldrb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x4c
	strb r0, [r2]
	movs r0, #0x4f
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x4d
	strb r0, [r1]
	ldr r1, _080BED18  @ gUnknown_03005280
	ldr r0, [r1, #8]
	asrs r5, r0, #8
	strb r5, [r3]
	ldr r0, [r1, #0xc]
	asrs r1, r0, #8
	mov r0, ip
	strb r1, [r0]
	ldrh r0, [r3]
	ldrh r2, [r2]
	cmp r0, r2
	beq _080BEDB6
	adds r7, r1, #0
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x48]
	movs r1, #0
	str r1, [sp]
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_80BB628
	adds r5, r0, #0
	cmp r5, #0
	bge _080BED1C
	adds r0, r4, #0
	bl Proc_Break
	b _080BEDB6
	.align 2, 0
_080BED18: .4byte gUnknown_03005280
_080BED1C:
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	mov r8, r0
	adds r6, r4, #0
	adds r6, #0x50
	cmp r1, r5
	beq _080BED7A
	movs r0, #0
	ldrsb r0, [r6, r0]
	bl sub_80BE82C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BEF20
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80C089C
	strb r0, [r6]
	adds r0, r4, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _080BED5C
	cmp r1, #1
	beq _080BED64
	b _080BED6A
_080BED5C:
	ldr r0, _080BED60  @ gUnknown_08A3E458
	b _080BED66
	.align 2, 0
_080BED60: .4byte gUnknown_08A3E458
_080BED64:
	ldr r0, _080BEDC4  @ gUnknown_08A3E45E
_080BED66:
	movs r7, #2
	ldrsb r7, [r0, r7]
_080BED6A:
	movs r0, #0
	ldrsb r0, [r6, r0]
	ldrb r2, [r2]
	adds r1, r7, #0
	bl sub_80BE65C
	mov r1, r8
	strh r5, [r1]
_080BED7A:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80C089C
	movs r2, #0
	ldrsb r2, [r6, r2]
	cmp r0, r2
	beq _080BEDB6
	ldr r1, _080BEDC8  @ gUnknown_08A3E448
	lsls r0, r0, #2
	adds r3, r0, r1
	lsls r0, r2, #2
	adds r2, r0, r1
	movs r1, #2
	ldrsb r1, [r3, r1]
	movs r0, #2
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _080BEDB0
	movs r1, #3
	ldrsb r1, [r3, r1]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r1, r0
	beq _080BEDB6
_080BEDB0:
	adds r0, r4, #0
	bl Proc_Break
_080BEDB6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BEDC4: .4byte gUnknown_08A3E45E
_080BEDC8: .4byte gUnknown_08A3E448

	THUMB_FUNC_END sub_80BECB8

	THUMB_FUNC_START sub_80BEDCC
sub_80BEDCC: @ 0x080BEDCC
	adds r0, #0x56
	movs r1, #1
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80BEDCC

	THUMB_FUNC_START sub_80BEDD4
sub_80BEDD4: @ 0x080BEDD4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x55
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BEDF0
	cmp r0, #1
	beq _080BEDF8
	b _080BEE04
_080BEDF0:
	ldr r1, _080BEDF4  @ gUnknown_08A3E45B
	b _080BEDFA
	.align 2, 0
_080BEDF4: .4byte gUnknown_08A3E45B
_080BEDF8:
	ldr r1, _080BEE44  @ gUnknown_08A3E461
_080BEDFA:
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r5, #3
_080BEE04:
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x5e
	ldrb r2, [r2]
	bl sub_80BE65C
	ldr r0, [r4, #0x58]
	adds r0, #1
	str r0, [r4, #0x58]
	cmp r0, r5
	bne _080BEE3C
	movs r0, #0
	str r0, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080BEE3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BEE44: .4byte gUnknown_08A3E461

	THUMB_FUNC_END sub_80BEDD4

	THUMB_FUNC_START sub_80BEE48
sub_80BEE48: @ 0x080BEE48
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r5, #0
	ldr r1, _080BEE78  @ gUnknown_03005280
_080BEE52:
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080BEE88
	ldrb r0, [r1, #0x11]
	cmp r0, r2
	bne _080BEE88
	adds r0, r5, #0
	bl sub_80BD20C
	cmp r0, #1
	beq _080BEE7C
	cmp r0, #1
	ble _080BEE72
	cmp r0, #2
	beq _080BEE80
_080BEE72:
	movs r0, #0
	b _080BEE82
	.align 2, 0
_080BEE78: .4byte gUnknown_03005280
_080BEE7C:
	movs r0, #0x80
	b _080BEE82
_080BEE80:
	movs r0, #0x40
_080BEE82:
	str r0, [r4]
	adds r0, r5, #0
	b _080BEE96
_080BEE88:
	adds r1, #4
	adds r5, #1
	cmp r5, #6
	ble _080BEE52
	movs r0, #1
	negs r0, r0
	str r0, [r4]
_080BEE96:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BEE48

	THUMB_FUNC_START sub_80BEE9C
sub_80BEE9C: @ 0x080BEE9C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	mov r1, sp
	bl sub_80BEE48
	cmp r0, #0
	blt _080BEF00
	ldr r1, _080BEEDC  @ gUnknown_03005280
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r1, [r2, #0x10]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080BEEEA
	adds r1, r4, #0
	adds r1, #0x5f
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080BEEE0
	ldrb r1, [r2, #0x12]
	b _080BEEE2
	.align 2, 0
_080BEEDC: .4byte gUnknown_03005280
_080BEEE0:
	movs r1, #0
_080BEEE2:
	adds r0, r4, #0
	adds r0, #0x60
	strb r1, [r0]
	b _080BEEF8
_080BEEEA:
	ldrh r0, [r2, #0x12]
	adds r1, r4, #0
	adds r1, #0x5f
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x60
	strb r3, [r0]
_080BEEF8:
	adds r1, r4, #0
	adds r1, #0x5e
	movs r0, #1
	b _080BEF0E
_080BEF00:
	adds r1, r4, #0
	adds r1, #0x5f
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	subs r1, #2
_080BEF0E:
	strb r0, [r1]
	ldr r0, [sp]
	movs r1, #8
	bl sub_80BE5B4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BEE9C

	THUMB_FUNC_START sub_80BEF20
sub_80BEF20: @ 0x080BEF20
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_80BEE9C
	adds r0, r4, #0
	bl sub_80BEB2C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BE8E8
	adds r1, r4, #0
	adds r1, #0x5f
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BEF4C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80BE918
	b _080BEF5E
_080BEF4C:
	adds r1, r4, #0
	adds r1, #0x60
	ldrb r0, [r1]
	cmp r0, #0
	beq _080BEF5E
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80BE9A0
_080BEF5E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BE9D8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BEF20

	THUMB_FUNC_START sub_80BEF6C
sub_80BEF6C: @ 0x080BEF6C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r2, sp, #4
	ldr r1, _080BEFB4  @ gUnknown_03005280
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r2]
	adds r2, #2
	ldr r0, [r1, #0xc]
	asrs r0, r0, #8
	strh r0, [r2]
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0x48]
	add r1, sp, #4
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0
	str r3, [sp]
	bl sub_80BB628
	adds r1, r0, #0
	cmp r1, #0
	blt _080BEFAC
	adds r0, r4, #0
	bl sub_80BEF20
	adds r0, r4, #0
	bl Proc_Break
_080BEFAC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BEFB4: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BEF6C

	THUMB_FUNC_START sub_80BEFB8
sub_80BEFB8: @ 0x080BEFB8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	str r0, [r7, #0x58]
	adds r0, r7, #0
	adds r0, #0x56
	movs r1, #0
	strb r1, [r0]
	subs r0, #6
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x57
	movs r0, #0xff
	strb r0, [r1]
	adds r6, r7, #0
	adds r6, #0x5c
	ldr r0, _080BF040  @ 0x0000FFFF
	strh r0, [r6]
	adds r5, r7, #0
	adds r5, #0x2c
	adds r0, r5, #0
	movs r1, #8
	bl Text_Init
	adds r4, r7, #0
	adds r4, #0x34
	adds r0, r4, #0
	movs r1, #8
	bl Text_Init
	adds r0, r5, #0
	bl Text_Clear
	adds r0, r4, #0
	bl Text_Clear
	add r2, sp, #4
	ldr r1, _080BF044  @ gUnknown_03005280
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r2]
	adds r2, #2
	ldr r0, [r1, #0xc]
	asrs r0, r0, #8
	strh r0, [r2]
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x48]
	add r1, sp, #4
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0
	str r3, [sp]
	bl sub_80BB628
	adds r1, r0, #0
	cmp r1, #0
	blt _080BF038
	strh r1, [r6]
	adds r0, r7, #0
	bl sub_80BEF20
_080BF038:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF040: .4byte 0x0000FFFF
_080BF044: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BEFB8

	THUMB_FUNC_START sub_80BF048
sub_80BF048: @ 0x080BF048
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080BF118  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	adds r2, #0x36
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0xe
	movs r2, #3
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	ldr r0, _080BF11C  @ gUnknown_08A9901C
	ldr r4, _080BF120  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r1, _080BF124  @ 0x06004660
	adds r0, r4, #0
	movs r2, #0xd
	movs r3, #2
	bl CopyTileGfxForObj
	ldr r0, _080BF128  @ gUnknown_08A99120
	movs r1, #0xa0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080BF12C  @ gUnknown_08A97A80
	ldr r1, _080BF130  @ 0x06004620
	bl CopyDataWithPossibleUncomp
	ldr r0, _080BF134  @ gUnknown_08A97A60
	movs r1, #0x60
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl Font_ResetAllocation
	ldr r0, _080BF138  @ gUnknown_08A3E464
	ldr r1, [r5, #0x14]
	bl Proc_Start
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF118: .4byte gLCDControlBuffer
_080BF11C: .4byte gUnknown_08A9901C
_080BF120: .4byte gUnknown_02020188
_080BF124: .4byte 0x06004660
_080BF128: .4byte gUnknown_08A99120
_080BF12C: .4byte gUnknown_08A97A80
_080BF130: .4byte 0x06004620
_080BF134: .4byte gUnknown_08A97A60
_080BF138: .4byte gUnknown_08A3E464

	THUMB_FUNC_END sub_80BF048

	THUMB_FUNC_START sub_80BF13C
sub_80BF13C: @ 0x080BF13C
	push {r4, lr}
	adds r4, r0, #0
	bl Font_InitForUIDefault
	bl sub_80C09B8
	ldr r0, _080BF158  @ gUnknown_08A3E4D4
	adds r1, r4, #0
	bl Proc_Start
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BF158: .4byte gUnknown_08A3E4D4

	THUMB_FUNC_END sub_80BF13C

	THUMB_FUNC_START sub_80BF15C
sub_80BF15C: @ 0x080BF15C
	push {lr}
	ldr r0, _080BF178  @ gUnknown_08A3E464
	bl Proc_EndEach
	ldr r0, _080BF17C  @ gUnknown_08A3E4D4
	bl Proc_EndEach
	bl SetDefaultColorEffects
	bl ClearBg0Bg1
	pop {r0}
	bx r0
	.align 2, 0
_080BF178: .4byte gUnknown_08A3E464
_080BF17C: .4byte gUnknown_08A3E4D4

	THUMB_FUNC_END sub_80BF15C

	THUMB_FUNC_START sub_80BF180
sub_80BF180: @ 0x080BF180
	ldr r2, _080BF18C  @ gUnknown_03005280
	ldr r1, [r0, #0x38]
	str r1, [r2, #8]
	ldr r0, [r0, #0x3c]
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080BF18C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BF180

	THUMB_FUNC_START sub_80BF190
sub_80BF190: @ 0x080BF190
	movs r1, #0
	strh r1, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80BF190

	THUMB_FUNC_START sub_80BF198
sub_80BF198: @ 0x080BF198
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2a
	ldrsh r1, [r7, r2]
	cmp r0, r1
	bge _080BF1F4
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	movs r2, #0x2a
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x40
	ldrb r2, [r2]
	bl sub_800B7E0
	adds r5, r0, #0
	movs r6, #0x80
	lsls r6, r6, #5
	ldr r0, [r7, #0x44]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	ldr r4, [r7, #0x30]
	adds r4, r4, r0
	ldr r0, [r7, #0x48]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	ldr r1, [r7, #0x34]
	adds r1, r1, r0
	ldr r0, _080BF1F0  @ gUnknown_03005280
	str r4, [r0, #8]
	str r1, [r0, #0xc]
	b _080BF204
	.align 2, 0
_080BF1F0: .4byte gUnknown_03005280
_080BF1F4:
	ldr r0, _080BF20C  @ gUnknown_03005280
	ldr r1, [r7, #0x38]
	str r1, [r0, #8]
	ldr r1, [r7, #0x3c]
	str r1, [r0, #0xc]
	adds r0, r7, #0
	bl Proc_End
_080BF204:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF20C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BF198

	THUMB_FUNC_START sub_80BF210
sub_80BF210: @ 0x080BF210
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _080BF228
	ldr r0, _080BF224  @ gUnknown_08A3E4F4
	b _080BF22C
	.align 2, 0
_080BF224: .4byte gUnknown_08A3E4F4
_080BF228:
	ldr r0, _080BF240  @ gUnknown_08A3E4F4
	movs r1, #3
_080BF22C:
	bl Proc_Start
	adds r2, r0, #0
	cmp r4, #0
	bne _080BF248
	ldr r0, _080BF244  @ gUnknown_03005280
	ldr r1, [r0, #8]
	str r1, [r2, #0x30]
	ldr r0, [r0, #0xc]
	b _080BF256
	.align 2, 0
_080BF240: .4byte gUnknown_08A3E4F4
_080BF244: .4byte gUnknown_03005280
_080BF248:
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #8
	str r0, [r2, #0x30]
	movs r1, #2
	ldrsh r0, [r4, r1]
	lsls r0, r0, #8
_080BF256:
	str r0, [r2, #0x34]
	cmp r5, #0
	bne _080BF262
	str r5, [r2, #0x38]
	str r5, [r2, #0x3c]
	b _080BF272
_080BF262:
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	str r0, [r2, #0x38]
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	str r0, [r2, #0x3c]
_080BF272:
	ldr r0, [r2, #0x38]
	ldr r1, [r2, #0x30]
	subs r0, r0, r1
	str r0, [r2, #0x44]
	ldr r0, [r2, #0x3c]
	ldr r1, [r2, #0x34]
	subs r0, r0, r1
	str r0, [r2, #0x48]
	strh r6, [r2, #0x2a]
	adds r0, r2, #0
	adds r0, #0x40
	strb r7, [r0]
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BF210

	THUMB_FUNC_START sub_80BF294
sub_80BF294: @ 0x080BF294
	push {lr}
	ldr r0, _080BF2A8  @ gUnknown_08A3E4F4
	bl Proc_Find
	cmp r0, #0
	beq _080BF2A2
	movs r0, #1
_080BF2A2:
	pop {r1}
	bx r1
	.align 2, 0
_080BF2A8: .4byte gUnknown_08A3E4F4

	THUMB_FUNC_END sub_80BF294

	THUMB_FUNC_START sub_80BF2AC
sub_80BF2AC: @ 0x080BF2AC
	push {lr}
	adds r3, r0, #0
	ldr r0, _080BF2CC  @ gUnknown_03005280
	ldrh r1, [r3, #0x3a]
	strh r1, [r0, #2]
	ldrh r1, [r3, #0x3c]
	strh r1, [r0, #4]
	ldr r2, [r3, #0x2c]
	cmp r2, #0
	beq _080BF2C8
	ldr r0, [r2]
	ldr r1, [r3, #0x30]
	orrs r0, r1
	str r0, [r2]
_080BF2C8:
	pop {r0}
	bx r0
	.align 2, 0
_080BF2CC: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BF2AC

	THUMB_FUNC_START sub_80BF2D0
sub_80BF2D0: @ 0x080BF2D0
	movs r1, #0
	str r1, [r0, #0x44]
	bx lr

	THUMB_FUNC_END sub_80BF2D0

	THUMB_FUNC_START sub_80BF2D8
sub_80BF2D8: @ 0x080BF2D8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080BF2F0
	subs r0, r2, #1
	strh r0, [r1]
	b _080BF36A
_080BF2F0:
	ldr r0, [r7, #0x2c]
	ldr r0, [r0]
	ldr r1, [r7, #0x30]
	ands r0, r1
	cmp r0, #0
	beq _080BF304
	ldr r0, [r7, #0x40]
	str r0, [r7, #0x44]
	adds r1, r0, #0
	b _080BF310
_080BF304:
	ldr r0, [r7, #0x44]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldr r1, [r7, #0x40]
_080BF310:
	ldr r0, [r7, #0x44]
	cmp r0, r1
	bge _080BF364
	movs r3, #0x34
	ldrsh r2, [r7, r3]
	bl sub_800B84C
	adds r5, r0, #0
	movs r6, #0x80
	lsls r6, r6, #5
	movs r1, #0x3a
	ldrsh r0, [r7, r1]
	movs r2, #0x36
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	movs r3, #0x36
	ldrsh r4, [r7, r3]
	adds r4, r4, r0
	movs r1, #0x3c
	ldrsh r0, [r7, r1]
	movs r2, #0x38
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	movs r3, #0x38
	ldrsh r1, [r7, r3]
	adds r1, r1, r0
	ldr r0, _080BF360  @ gUnknown_03005280
	strh r4, [r0, #2]
	strh r1, [r0, #4]
	b _080BF36A
	.align 2, 0
_080BF360: .4byte gUnknown_03005280
_080BF364:
	adds r0, r7, #0
	bl Proc_Break
_080BF36A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BF2D8

	THUMB_FUNC_START sub_80BF370
sub_80BF370: @ 0x080BF370
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080BF3B8  @ gUnknown_08A3E52C
	bl Proc_Start
	adds r3, r0, #0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080BF38E
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	ldr r2, _080BF3BC  @ gUnknown_03005280
	cmp r0, #0
	bge _080BF39A
_080BF38E:
	ldr r0, _080BF3BC  @ gUnknown_03005280
	ldrh r1, [r0, #2]
	strh r1, [r4, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	adds r2, r0, #0
_080BF39A:
	ldrh r1, [r4, #0xa]
	strh r1, [r3, #0x36]
	ldrh r0, [r4, #0xc]
	strh r0, [r3, #0x38]
	strh r1, [r2, #2]
	ldrh r0, [r3, #0x38]
	strh r0, [r2, #4]
	ldrh r2, [r4, #0xe]
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080BF3C0
	strh r1, [r3, #0x3a]
	b _080BF3C2
	.align 2, 0
_080BF3B8: .4byte gUnknown_08A3E52C
_080BF3BC: .4byte gUnknown_03005280
_080BF3C0:
	strh r2, [r3, #0x3a]
_080BF3C2:
	ldrh r0, [r4, #0x10]
	strh r0, [r3, #0x3c]
	ldrh r0, [r4, #8]
	strh r0, [r3, #0x34]
	ldr r0, [r4, #0x14]
	lsls r0, r0, #0xc
	str r0, [r3, #0x40]
	ldrh r1, [r4, #0x18]
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
	ldr r2, [r4]
	str r2, [r3, #0x2c]
	cmp r2, #0
	beq _080BF3EC
	ldr r0, [r4, #4]
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
	ldr r0, [r4, #4]
	str r0, [r3, #0x30]
_080BF3EC:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80BF370

	THUMB_FUNC_START sub_80BF3F4
sub_80BF3F4: @ 0x080BF3F4
	push {lr}
	ldr r0, _080BF400  @ gUnknown_08A3E52C
	bl Proc_Find
	pop {r1}
	bx r1
	.align 2, 0
_080BF400: .4byte gUnknown_08A3E52C

	THUMB_FUNC_END sub_80BF3F4

	THUMB_FUNC_START sub_80BF404
sub_80BF404: @ 0x080BF404
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r4, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r2, _080BF48C  @ gUnknown_08A3D748
	mov sl, r2
	mov r0, sl
	str r3, [sp, #0x1c]
	bl Proc_Find
	adds r1, r0, #0
	adds r0, #0x30
	str r0, [sp]
	movs r2, #1
	str r2, [sp, #4]
	mov r0, sp
	strh r2, [r0, #8]
	strh r5, [r0, #0xa]
	strh r6, [r0, #0xc]
	mov r2, r8
	strh r2, [r0, #0xe]
	ldr r3, [sp, #0x1c]
	strh r3, [r0, #0x10]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0x14]
	mov r2, r9
	strh r2, [r0, #0x18]
	bl sub_80BF370
	mov r0, sl
	bl Proc_Find
	ldr r1, [r0, #0x50]
	adds r1, #0x32
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BF48C: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BF404

	THUMB_FUNC_START sub_80BF490
sub_80BF490: @ 0x080BF490
	push {lr}
	ldr r0, _080BF4A4  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r1, [r0, #0x30]
	movs r0, #1
	bics r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_080BF4A4: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BF490

	THUMB_FUNC_START sub_80BF4A8
sub_80BF4A8: @ 0x080BF4A8
	push {r4, lr}
	ldr r0, _080BF4C8  @ gUnknown_08A3D748
	bl Proc_Find
	adds r4, r0, #0
	ldr r0, _080BF4CC  @ gUnknown_08A3E52C
	bl Proc_EndEach
	ldr r0, [r4, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF4C8: .4byte gUnknown_08A3D748
_080BF4CC: .4byte gUnknown_08A3E52C

	THUMB_FUNC_END sub_80BF4A8

	THUMB_FUNC_START WM_PutClassSprite
WM_PutClassSprite: @ 0x080BF4D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r0, _080BF500  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	str r4, [sp]
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl MapMU_SetUnitClass
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BF500: .4byte gUnknown_08A3D748

	THUMB_FUNC_END WM_PutClassSprite

	THUMB_FUNC_START WM_PutCharSprite
WM_PutCharSprite: @ 0x080BF504
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r0, _080BF534  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	str r4, [sp]
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl MapMU_SetUnitChar
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BF534: .4byte gUnknown_08A3D748

	THUMB_FUNC_END WM_PutCharSprite

	THUMB_FUNC_START WM_RemoveUnit
WM_RemoveUnit: @ 0x080BF538
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080BF550  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r4, #0
	bl MapMU_RemoveUnit
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF550: .4byte gUnknown_08A3D748

	THUMB_FUNC_END WM_RemoveUnit

	THUMB_FUNC_START sub_80BF554
sub_80BF554: @ 0x080BF554
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080BF56C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r4, #0
	bl sub_80BDDC4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF56C: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BF554

	THUMB_FUNC_START sub_80BF570
sub_80BF570: @ 0x080BF570
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080BF588  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r4, #0
	bl sub_80BDE3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF588: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BF570

	THUMB_FUNC_START WM_DrawPath
WM_DrawPath: @ 0x080BF58C
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _080BF5B8  @ gUnknown_03005280
	adds r1, r0, #0
	adds r1, #0xa4
	bl SetupNewWMRoute
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080BF5B2
	ldr r0, _080BF5BC  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r0, [r0, #0x4c]
	adds r1, r4, #0
	bl MapRoute_BeginRouteTransition
_080BF5B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF5B8: .4byte gUnknown_03005280
_080BF5BC: .4byte gUnknown_08A3D748

	THUMB_FUNC_END WM_DrawPath

	THUMB_FUNC_START nullsub_50
nullsub_50: @ 0x080BF5C0
	bx lr

	THUMB_FUNC_END nullsub_50

	THUMB_FUNC_START sub_80BF5C4
sub_80BF5C4: @ 0x080BF5C4
	movs r1, #0
	str r1, [r0, #0x30]
	adds r1, r0, #0
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _080BF5D8  @ gPaletteBuffer
	adds r1, r1, r2
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0
_080BF5D8: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80BF5C4

	THUMB_FUNC_START sub_80BF5DC
sub_80BF5DC: @ 0x080BF5DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r0, #1
	str r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	cmp r0, r1
	bge _080BF69A
	lsls r0, r0, #6
	bl __divsi3
	mov r9, r0
	movs r7, #0
	adds r0, r5, #0
	adds r0, #0x34
	mov sl, r0
	ldrb r0, [r0]
	cmp r7, r0
	bge _080BF6AE
	movs r1, #0x1f
	mov ip, r1
_080BF60E:
	ldr r0, [r5, #0x38]
	lsls r6, r7, #1
	adds r0, r6, r0
	ldrh r3, [r0]
	movs r2, #0x1f
	ands r2, r3
	ldr r0, [r5, #0x3c]
	adds r0, r6, r0
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	subs r0, r0, r2
	mov r4, r9
	muls r4, r0, r4
	adds r0, r4, #0
	cmp r0, #0
	bge _080BF632
	adds r0, #0x3f
_080BF632:
	asrs r0, r0, #6
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r3, #0x10
	lsrs r2, r4, #0x15
	mov r0, ip
	ands r2, r0
	lsls r3, r1, #0x10
	lsrs r0, r3, #0x15
	mov r1, ip
	ands r0, r1
	subs r0, r0, r2
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080BF65A
	adds r0, #0x3f
_080BF65A:
	asrs r0, r0, #6
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsrs r2, r4, #0x1a
	mov r4, ip
	ands r2, r4
	lsrs r0, r3, #0x1a
	ands r0, r4
	subs r0, r0, r2
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _080BF67A
	adds r0, #0x3f
_080BF67A:
	asrs r0, r0, #6
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r2, [r5, #0x40]
	adds r2, r6, r2
	lsrs r0, r0, #6
	lsls r1, r1, #5
	adds r0, r0, r1
	add r0, r8
	strh r0, [r2]
	adds r7, #1
	mov r4, sl
	ldrb r4, [r4]
	cmp r7, r4
	blt _080BF60E
	b _080BF6AE
_080BF69A:
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	adds r2, r5, #0
	adds r2, #0x34
	ldrb r2, [r2]
	bl CpuSet
	adds r0, r5, #0
	bl Proc_Break
_080BF6AE:
	bl EnablePaletteSync
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BF5DC

	THUMB_FUNC_START sub_80BF6C0
sub_80BF6C0: @ 0x080BF6C0
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _080BF710
	cmp r2, #0
	beq _080BF6E0
	ldr r0, _080BF6DC  @ gUnknown_08A3E55C
	adds r1, r2, #0
	bl Proc_StartBlocking
	b _080BF6E8
	.align 2, 0
_080BF6DC: .4byte gUnknown_08A3E55C
_080BF6E0:
	ldr r0, _080BF70C  @ gUnknown_08A3E55C
	movs r1, #3
	bl Proc_Start
_080BF6E8:
	adds r2, r0, #0
	ldr r0, [r4, #0xc]
	str r0, [r2, #0x2c]
	ldrb r1, [r4, #8]
	adds r0, r2, #0
	adds r0, #0x34
	strb r1, [r0]
	ldrb r0, [r4, #9]
	adds r1, r2, #0
	adds r1, #0x35
	strb r0, [r1]
	ldr r0, [r4]
	str r0, [r2, #0x38]
	ldr r0, [r4, #4]
	str r0, [r2, #0x3c]
	adds r0, r2, #0
	b _080BF726
	.align 2, 0
_080BF70C: .4byte gUnknown_08A3E55C
_080BF710:
	ldr r0, [r4, #4]
	ldrb r1, [r4, #9]
	lsls r1, r1, #1
	ldr r2, _080BF72C  @ gPaletteBuffer
	adds r1, r1, r2
	ldrb r2, [r4, #8]
	bl CpuSet
	bl EnablePaletteSync
	movs r0, #0
_080BF726:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BF72C: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80BF6C0

	THUMB_FUNC_START sub_80BF730
sub_80BF730: @ 0x080BF730
	push {lr}
	ldr r0, _080BF744  @ gUnknown_08A3E55C
	bl Proc_Find
	cmp r0, #0
	beq _080BF73E
	movs r0, #1
_080BF73E:
	pop {r1}
	bx r1
	.align 2, 0
_080BF744: .4byte gUnknown_08A3E55C

	THUMB_FUNC_END sub_80BF730

	THUMB_FUNC_START sub_80BF748
sub_80BF748: @ 0x080BF748
	push {r4, lr}
	ldr r4, _080BF780  @ gUnknown_08A3E55C
	adds r0, r4, #0
	bl Proc_Find
	adds r3, r0, #0
	cmp r3, #0
	beq _080BF77A
	ldr r0, [r3, #0x3c]
	adds r1, r3, #0
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _080BF784  @ gPaletteBuffer
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x34
	ldrb r2, [r2]
	bl CpuSet
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_EndEach
_080BF77A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BF780: .4byte gUnknown_08A3E55C
_080BF784: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80BF748

	THUMB_FUNC_START sub_80BF788
sub_80BF788: @ 0x080BF788
	push {lr}
	sub sp, #0x10
	ldr r2, _080BF7AC  @ gUnknown_08A95FE4
	str r2, [sp]
	ldr r2, _080BF7B0  @ gUnknown_08A95F64
	str r2, [sp, #4]
	mov r3, sp
	movs r2, #0x90
	strb r2, [r3, #9]
	movs r2, #0x40
	strb r2, [r3, #8]
	str r1, [sp, #0xc]
	mov r1, sp
	bl sub_80BF6C0
	add sp, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_080BF7AC: .4byte gUnknown_08A95FE4
_080BF7B0: .4byte gUnknown_08A95F64

	THUMB_FUNC_END sub_80BF788

	THUMB_FUNC_START sub_80BF7B4
sub_80BF7B4: @ 0x080BF7B4
	ldr r3, _080BF7D8  @ gLCDControlBuffer
	ldr r1, [r3, #0x3c]
	ldr r2, [r3, #0x40]
	str r1, [r0]
	str r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x44
	ldrb r1, [r1]
	strb r1, [r0, #8]
	adds r1, r3, #0
	adds r1, #0x45
	ldrb r1, [r1]
	strb r1, [r0, #9]
	adds r1, r3, #0
	adds r1, #0x46
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	bx lr
	.align 2, 0
_080BF7D8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80BF7B4

	THUMB_FUNC_START sub_80BF7DC
sub_80BF7DC: @ 0x080BF7DC
	ldr r3, _080BF800  @ gLCDControlBuffer
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [r3, #0x3c]
	str r2, [r3, #0x40]
	ldrb r2, [r0, #8]
	adds r1, r3, #0
	adds r1, #0x44
	strb r2, [r1]
	ldrb r1, [r0, #9]
	adds r2, r3, #0
	adds r2, #0x45
	strb r1, [r2]
	ldrb r1, [r0, #0xa]
	adds r0, r3, #0
	adds r0, #0x46
	strb r1, [r0]
	bx lr
	.align 2, 0
_080BF800: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80BF7DC

	THUMB_FUNC_START sub_80BF804
sub_80BF804: @ 0x080BF804
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _080BF888  @ gUnknown_08A3D748
	adds r0, r5, #0
	bl Proc_Find
	ldr r3, [r0, #0x48]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r2, [r4]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	adds r3, #0x34
	adds r3, r3, r0
	movs r0, #0x1f
	ands r2, r0
	movs r1, #1
	lsls r1, r2
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	bl EnablePaletteSync
	ldr r3, _080BF88C  @ gUnknown_03005280
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BF876
	adds r0, r5, #0
	bl Proc_Find
	ldr r0, [r0, #0x48]
	ldrb r1, [r4]
	adds r0, #0x33
	strb r1, [r0]
	adds r0, r5, #0
	bl Proc_Find
	ldr r1, [r0, #0x48]
	adds r1, #0x32
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
_080BF876:
	bl sub_80C13D8
	adds r0, r6, #0
	adds r0, #0x30
	bl sub_80BF7DC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BF888: .4byte gUnknown_08A3D748
_080BF88C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BF804

	THUMB_FUNC_START sub_80BF890
sub_80BF890: @ 0x080BF890
	push {r4, lr}
	sub sp, #4
	adds r0, #0x30
	bl sub_80BF7B4
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BF890

	THUMB_FUNC_START sub_80BF8CC
sub_80BF8CC: @ 0x080BF8CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _080BF95C  @ gUnknown_03005280
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r7, _080BF960  @ gUnknown_08A3D748
	adds r0, r7, #0
	bl Proc_Find
	ldr r3, [r0, #0x48]
	ldrb r2, [r6]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	adds r3, #0x34
	adds r3, r3, r0
	movs r0, #0x1f
	ands r2, r0
	movs r1, #1
	lsls r1, r2
	ldr r0, [r3]
	orrs r0, r1
	str r0, [r3]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r0, #0x30
	ldrb r1, [r0]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080BF93C
	adds r0, r7, #0
	bl Proc_Find
	ldr r0, [r0, #0x48]
	ldrb r1, [r6]
	adds r0, #0x33
	strb r1, [r0]
	adds r0, r7, #0
	bl Proc_Find
	ldr r1, [r0, #0x48]
	adds r1, #0x32
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
_080BF93C:
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	cmp r2, #0
	beq _080BF964
	cmp r2, #1
	beq _080BF96C
	adds r0, #1
	b _080BF972
	.align 2, 0
_080BF95C: .4byte gUnknown_03005280
_080BF960: .4byte gUnknown_08A3D748
_080BF964:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r4, [r0]
	b _080BF972
_080BF96C:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r2, [r0]
_080BF972:
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2c
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BF8CC

	THUMB_FUNC_START sub_80BF988
sub_80BF988: @ 0x080BF988
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080BFA10
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BF9AE
	cmp r0, #1
	beq _080BF9B8
	adds r1, #1
	b _080BF9C2
_080BF9AE:
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	adds r0, #1
	b _080BF9C0
_080BF9B8:
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	adds r0, #2
_080BF9C0:
	strb r0, [r1]
_080BF9C2:
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _080BF9E6
	adds r1, r0, #0
	movs r2, #0x10
	subs r2, r2, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	b _080BFA10
_080BF9E6:
	ldr r0, _080BFA18  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r3, [r0, #0x48]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r2, [r0]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	adds r3, #0x34
	adds r3, r3, r0
	movs r0, #0x1f
	ands r2, r0
	movs r1, #1
	lsls r1, r2
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	adds r0, r4, #0
	bl Proc_Break
_080BFA10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BFA18: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BF988

	THUMB_FUNC_START sub_80BFA1C
sub_80BFA1C: @ 0x080BFA1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _080BFA40  @ gUnknown_03005280
	adds r0, #0x29
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080BFA48
	lsls r0, r2, #5
	ldr r1, _080BFA44  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	b _080BFA50
	.align 2, 0
_080BFA40: .4byte gUnknown_03005280
_080BFA44: .4byte gUnknown_082060B0
_080BFA48:
	lsls r0, r2, #5
	ldr r1, _080BFA6C  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrb r0, [r0, #3]
_080BFA50:
	lsls r0, r0, #4
	ldr r1, _080BFA70  @ gUnknown_08205FA0
	adds r6, r0, r1
	movs r0, #0xa
	ldrsb r0, [r6, r0]
	cmp r0, #0x10
	beq _080BFA74
	cmp r0, #0x10
	ble _080BFA66
	cmp r0, #0x20
	beq _080BFA78
_080BFA66:
	movs r1, #0
	b _080BFA7A
	.align 2, 0
_080BFA6C: .4byte gUnknown_082060B0
_080BFA70: .4byte gUnknown_08205FA0
_080BFA74:
	movs r1, #1
	b _080BFA7A
_080BFA78:
	movs r1, #2
_080BFA7A:
	adds r0, r5, #0
	bl sub_80C1370
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3]
	adds r5, #0x29
	ldrb r3, [r5]
	lsls r3, r3, #5
	ldr r4, _080BFAE0  @ gUnknown_082060B0
	adds r3, r3, r4
	movs r1, #0xa
	ldrsb r1, [r6, r1]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	movs r2, #8
	ldrsb r2, [r6, r2]
	subs r1, r1, r2
	ldrh r3, [r3, #0x18]
	adds r1, r1, r3
	strh r1, [r0, #0x2c]
	ldrb r3, [r5]
	lsls r3, r3, #5
	adds r3, r3, r4
	movs r1, #0xb
	ldrsb r1, [r6, r1]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	movs r2, #9
	ldrsb r2, [r6, r2]
	subs r1, r1, r2
	ldrh r3, [r3, #0x1a]
	adds r1, r1, r3
	strh r1, [r0, #0x2e]
	ldr r0, _080BFAE4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080BFADA
	ldr r0, _080BFAE8  @ 0x00000311
	bl m4aSongNumStart
_080BFADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BFAE0: .4byte gUnknown_082060B0
_080BFAE4: .4byte gRAMChapterData
_080BFAE8: .4byte 0x00000311

	THUMB_FUNC_END sub_80BFA1C

	THUMB_FUNC_START sub_80BFAEC
sub_80BFAEC: @ 0x080BFAEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	cmp r1, #0
	beq _080BFB04
	ldr r0, _080BFB00  @ gUnknown_08A3E594
	bl Proc_StartBlocking
	b _080BFB0C
	.align 2, 0
_080BFB00: .4byte gUnknown_08A3E594
_080BFB04:
	ldr r0, _080BFB20  @ gUnknown_08A3E594
	movs r1, #3
	bl Proc_Start
_080BFB0C:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x29
	strb r4, [r2]
	adds r1, #0x2a
	strb r5, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080BFB20: .4byte gUnknown_08A3E594

	THUMB_FUNC_END sub_80BFAEC

	THUMB_FUNC_START sub_80BFB24
sub_80BFB24: @ 0x080BFB24
	push {lr}
	ldr r0, _080BFB30  @ gUnknown_08A3E594
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080BFB30: .4byte gUnknown_08A3E594

	THUMB_FUNC_END sub_80BFB24

	THUMB_FUNC_START sub_80BFB34
sub_80BFB34: @ 0x080BFB34
	push {lr}
	ldr r0, _080BFB48  @ gUnknown_08A3E594
	bl Proc_Find
	cmp r0, #0
	beq _080BFB42
	movs r0, #1
_080BFB42:
	pop {r1}
	bx r1
	.align 2, 0
_080BFB48: .4byte gUnknown_08A3E594

	THUMB_FUNC_END sub_80BFB34

	THUMB_FUNC_START sub_80BFB4C
sub_80BFB4C: @ 0x080BFB4C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080BFB88  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r5, r4, #0
	adds r5, #0x29
	ldrb r1, [r5]
	movs r2, #0
	bl sub_80BE080
	ldr r0, _080BFB8C  @ gUnknown_03005280
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1, #0x10]
	bl sub_80C13D8
	adds r4, #0x30
	adds r0, r4, #0
	bl sub_80BF7DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BFB88: .4byte gUnknown_08A3D748
_080BFB8C: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80BFB4C

	THUMB_FUNC_START sub_80BFB90
sub_80BFB90: @ 0x080BFB90
	push {r4, lr}
	sub sp, #4
	adds r0, #0x30
	bl sub_80BF7B4
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BFB90

	THUMB_FUNC_START sub_80BFBCC
sub_80BFBCC: @ 0x080BFBCC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080BFC14  @ gUnknown_03005280
	adds r5, r4, #0
	adds r5, #0x29
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1, #0x10]
	ldr r0, _080BFC18  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrb r1, [r5]
	movs r2, #1
	bl sub_80BE080
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	cmp r2, #0
	beq _080BFC1C
	cmp r2, #1
	beq _080BFC28
	adds r0, #1
	b _080BFC2E
	.align 2, 0
_080BFC14: .4byte gUnknown_03005280
_080BFC18: .4byte gUnknown_08A3D748
_080BFC1C:
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #2
	strb r0, [r1]
	adds r0, r1, #0
	b _080BFC2E
_080BFC28:
	adds r0, r4, #0
	adds r0, #0x2b
	strb r2, [r0]
_080BFC2E:
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80BFBCC

	THUMB_FUNC_START sub_80BFC44
sub_80BFC44: @ 0x080BFC44
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080BFCBC
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BFC6A
	cmp r0, #1
	beq _080BFC74
	adds r1, #1
	b _080BFC7E
_080BFC6A:
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	adds r0, #1
	b _080BFC7C
_080BFC74:
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	adds r0, #2
_080BFC7C:
	strb r0, [r1]
_080BFC7E:
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _080BFCA2
	adds r1, r0, #0
	movs r2, #0x10
	subs r2, r2, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	b _080BFCBC
_080BFCA2:
	ldr r0, _080BFCC4  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	movs r2, #0
	bl sub_80BE080
	adds r0, r4, #0
	bl Proc_Break
_080BFCBC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BFCC4: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80BFC44

	THUMB_FUNC_START sub_80BFCC8
sub_80BFCC8: @ 0x080BFCC8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	cmp r1, #0
	beq _080BFCE0
	ldr r0, _080BFCDC  @ gUnknown_08A3E5E4
	bl Proc_StartBlocking
	b _080BFCE8
	.align 2, 0
_080BFCDC: .4byte gUnknown_08A3E5E4
_080BFCE0:
	ldr r0, _080BFCFC  @ gUnknown_08A3E5E4
	movs r1, #3
	bl Proc_Start
_080BFCE8:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x29
	strb r4, [r2]
	adds r1, #0x2a
	strb r5, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080BFCFC: .4byte gUnknown_08A3E5E4

	THUMB_FUNC_END sub_80BFCC8

	THUMB_FUNC_START sub_80BFD00
sub_80BFD00: @ 0x080BFD00
	push {lr}
	ldr r0, _080BFD0C  @ gUnknown_08A3E5E4
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080BFD0C: .4byte gUnknown_08A3E5E4

	THUMB_FUNC_END sub_80BFD00

	THUMB_FUNC_START sub_80BFD10
sub_80BFD10: @ 0x080BFD10
	push {lr}
	ldr r0, _080BFD24  @ gUnknown_08A3E5E4
	bl Proc_Find
	cmp r0, #0
	beq _080BFD1E
	movs r0, #1
_080BFD1E:
	pop {r1}
	bx r1
	.align 2, 0
_080BFD24: .4byte gUnknown_08A3E5E4

	THUMB_FUNC_END sub_80BFD10

	THUMB_FUNC_START sub_80BFD28
sub_80BFD28: @ 0x080BFD28
	push {r4, lr}
	ldr r0, _080BFD60  @ gUnknown_08A9E5BC
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	ldr r0, _080BFD64  @ gUnknown_08A9E544
	ldr r1, _080BFD68  @ 0x06004C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080BFD6C  @ gUnknown_08A9E5DC
	ldr r4, _080BFD70  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080BFD74  @ gBG0TilemapBuffer
	ldr r2, _080BFD78  @ 0x00002260
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BFD60: .4byte gUnknown_08A9E5BC
_080BFD64: .4byte gUnknown_08A9E544
_080BFD68: .4byte 0x06004C00
_080BFD6C: .4byte gUnknown_08A9E5DC
_080BFD70: .4byte gUnknown_02020188
_080BFD74: .4byte gBG0TilemapBuffer
_080BFD78: .4byte 0x00002260

	THUMB_FUNC_END sub_80BFD28

	THUMB_FUNC_START nullsub_48
nullsub_48: @ 0x080BFD7C
	bx lr

	THUMB_FUNC_END nullsub_48

	THUMB_FUNC_START sub_80BFD80
sub_80BFD80: @ 0x080BFD80
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x2b
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80BFD80

	THUMB_FUNC_START sub_80BFDA0
sub_80BFDA0: @ 0x080BFDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r0, #0
	movs r1, #1
	bl sub_80C1DA0
	str r0, [sp]
	movs r0, #1
	movs r1, #1
	bl sub_80C1DA0
	str r0, [sp, #4]
	movs r3, #0
	movs r7, #0x40
	ldr r0, _080BFEF4  @ 0x000001FF
	adds r5, r0, #0
	movs r4, #0
	ldr r2, [sp, #4]
	ldr r1, [sp]
_080BFDD0:
	subs r0, r7, r3
	ands r0, r5
	strh r0, [r1]
	strh r4, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x9f
	ble _080BFDD0
	movs r3, #0
	movs r1, #0x2a
	adds r1, r1, r6
	mov r8, r1
	adds r6, #0x2b
	str r6, [sp, #0xc]
	ldrb r2, [r1]
	cmp r3, r2
	bge _080BFE60
	ldr r0, [sp, #4]
	mov sl, r0
	ldr r1, [sp]
	mov r9, r1
_080BFDFC:
	mov r2, r8
	str r2, [sp, #8]
	ldrb r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	mov r1, r9
	strh r0, [r1]
	ldrb r5, [r2]
	subs r4, r5, r3
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	negs r0, r0
	adds r1, r5, #0
	str r3, [sp, #0x18]
	bl __divsi3
	adds r6, r0, #0
	adds r6, #0xd
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	negs r0, r0
	adds r1, r5, #0
	bl __divsi3
	adds r7, r0, #0
	adds r7, #0x11
	lsls r0, r4, #3
	subs r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0x17
	lsls r0, r0, #0xa
	lsls r1, r7, #5
	adds r0, r0, r1
	adds r0, r0, r6
	mov r2, sl
	strh r0, [r2]
	movs r0, #2
	add sl, r0
	add r9, r0
	ldr r3, [sp, #0x18]
	adds r3, #1
	ldr r1, [sp, #8]
	ldrb r1, [r1]
	cmp r3, r1
	blt _080BFDFC
_080BFE60:
	movs r3, #0
	ldr r2, [sp, #0xc]
	mov r8, r2
	ldrb r0, [r2]
	cmp r3, r0
	bge _080BFEE0
	movs r1, #0
	str r1, [sp, #0x10]
	movs r2, #0
	str r2, [sp, #0x14]
	mov sl, r2
_080BFE76:
	mov r9, r8
	mov r1, r8
	ldrb r0, [r1]
	subs r1, r0, r3
	movs r4, #0xa0
	subs r4, r4, r1
	lsls r4, r4, #1
	ldr r2, [sp]
	adds r1, r4, r2
	adds r0, #0xc8
	strh r0, [r1]
	mov r0, r8
	ldrb r5, [r0]
	mov r0, sl
	adds r1, r5, #0
	str r3, [sp, #0x18]
	bl __divsi3
	adds r6, r0, #0
	adds r6, #0xd
	ldr r0, [sp, #0x14]
	adds r1, r5, #0
	bl __divsi3
	adds r7, r0, #0
	adds r7, #0x11
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0x17
	ldr r1, [sp, #4]
	adds r4, r4, r1
	lsls r0, r0, #0xa
	lsls r1, r7, #5
	adds r0, r0, r1
	adds r0, r0, r6
	strh r0, [r4]
	ldr r2, [sp, #0x10]
	subs r2, #7
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x14]
	subs r0, #0xa
	str r0, [sp, #0x14]
	movs r1, #6
	negs r1, r1
	add sl, r1
	ldr r3, [sp, #0x18]
	adds r3, #1
	mov r2, r9
	ldrb r2, [r2]
	cmp r3, r2
	blt _080BFE76
_080BFEE0:
	bl sub_80C1DC8
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BFEF4: .4byte 0x000001FF

	THUMB_FUNC_END sub_80BFDA0

	THUMB_FUNC_START sub_80BFEF8
sub_80BFEF8: @ 0x080BFEF8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_80BFD28
	movs r5, #0
	str r5, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2a
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x2e
	ldrb r0, [r3]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ldrb r1, [r3]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	movs r0, #0
	movs r1, #1
	bl sub_80C1DA0
	adds r2, r0, #0
	add r1, sp, #4
	movs r0, #0x10
	strh r0, [r1]
	ldr r4, _080BFFC0  @ 0x010000A0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl CpuSet
	ldr r1, _080BFFC4  @ 0x04000012
	movs r0, #0
	bl sub_80C1DD8
	movs r0, #0
	bl sub_80C1DE8
	movs r0, #1
	movs r1, #1
	bl sub_80C1DA0
	adds r2, r0, #0
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	adds r1, r2, #0
	adds r2, r4, #0
	bl CpuSet
	ldr r1, _080BFFC8  @ 0x05000054
	movs r0, #1
	bl sub_80C1DD8
	movs r0, #1
	bl sub_80C1DE8
	ldr r2, _080BFFCC  @ gUnknown_0201BE30
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	str r5, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BFFC0: .4byte 0x010000A0
_080BFFC4: .4byte 0x04000012
_080BFFC8: .4byte 0x05000054
_080BFFCC: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80BFEF8

	THUMB_FUNC_START sub_80BFFD0
sub_80BFFD0: @ 0x080BFFD0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_80BFD28
	movs r5, #0
	str r5, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x2a
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x2e
	ldrb r0, [r3]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ldrb r1, [r3]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	movs r0, #0
	movs r1, #1
	bl sub_80C1DA0
	adds r2, r0, #0
	mov r1, sp
	movs r0, #0x10
	strh r0, [r1]
	ldr r4, _080C0070  @ 0x010000A0
	mov r0, sp
	adds r1, r2, #0
	adds r2, r4, #0
	bl CpuSet
	ldr r1, _080C0074  @ 0x04000012
	movs r0, #0
	bl sub_80C1DD8
	movs r0, #0
	bl sub_80C1DE8
	movs r0, #1
	movs r1, #1
	bl sub_80C1DA0
	adds r2, r0, #0
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	adds r1, r2, #0
	adds r2, r4, #0
	bl CpuSet
	ldr r1, _080C0078  @ 0x05000054
	movs r0, #1
	bl sub_80C1DD8
	movs r0, #1
	bl sub_80C1DE8
	ldr r2, _080C007C  @ gUnknown_0201BE30
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C0070: .4byte 0x010000A0
_080C0074: .4byte 0x04000012
_080C0078: .4byte 0x05000054
_080C007C: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80BFFD0

	THUMB_FUNC_START sub_80C0080
sub_80C0080: @ 0x080C0080
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r0, r6
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	cmp r0, r1
	bge _080C00F2
	movs r3, #0x30
	ldrsh r2, [r4, r3]
	bl sub_800B7E0
	adds r5, r0, #0
	ldr r0, [r4, #0x3c]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	ldr r0, [r4, #0x40]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	adds r1, r4, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x2b
	strb r1, [r0]
	adds r0, r5, #0
	cmp r5, #0
	bge _080C00DA
	adds r0, #0xff
_080C00DA:
	asrs r0, r0, #8
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C0134
_080C00F2:
	movs r0, #0
	movs r1, #0
	bl sub_80C1DD8
	adds r5, r6, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2a
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
_080C0134:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BFDA0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C0080

	THUMB_FUNC_START sub_80C0144
sub_80C0144: @ 0x080C0144
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r0, r6
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	cmp r0, r1
	bge _080C0198
	movs r3, #0x30
	ldrsh r2, [r4, r3]
	bl sub_800B7E0
	adds r5, r0, #0
	ldr r0, [r4, #0x3c]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	ldr r0, [r4, #0x40]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	adds r1, r4, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x2b
	strb r1, [r0]
	b _080C01CE
_080C0198:
	movs r0, #0
	movs r1, #0
	bl sub_80C1DD8
	adds r5, r6, #0
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2a
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
_080C01CE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BFDA0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C0144

	THUMB_FUNC_START NewMapMuEntry
NewMapMuEntry: @ 0x080C01DC
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080C01F0
	ldr r0, _080C01EC  @ gUnknown_08A3E624
	bl Proc_StartBlocking
	b _080C01F8
	.align 2, 0
_080C01EC: .4byte gUnknown_08A3E624
_080C01F0:
	ldr r0, _080C01FC  @ gUnknown_08A3E624
	movs r1, #3
	bl Proc_Start
_080C01F8:
	pop {r1}
	bx r1
	.align 2, 0
_080C01FC: .4byte gUnknown_08A3E624

	THUMB_FUNC_END NewMapMuEntry

	THUMB_FUNC_START sub_80C0200
sub_80C0200: @ 0x080C0200
	push {lr}
	ldr r0, _080C020C  @ gUnknown_08A3E624
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C020C: .4byte gUnknown_08A3E624

	THUMB_FUNC_END sub_80C0200

	THUMB_FUNC_START sub_80C0210
sub_80C0210: @ 0x080C0210
	push {lr}
	ldr r0, _080C0224  @ gUnknown_08A3E624
	bl Proc_Find
	cmp r0, #0
	beq _080C021E
	movs r0, #1
_080C021E:
	pop {r1}
	bx r1
	.align 2, 0
_080C0224: .4byte gUnknown_08A3E624

	THUMB_FUNC_END sub_80C0210

	THUMB_FUNC_START sub_80C0228
sub_80C0228: @ 0x080C0228
	push {lr}
	ldr r0, _080C023C  @ gUnknown_08A3E624
	bl Proc_Find
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0
_080C023C: .4byte gUnknown_08A3E624

	THUMB_FUNC_END sub_80C0228

	THUMB_FUNC_START sub_80C0240
sub_80C0240: @ 0x080C0240
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080C0298  @ gUnknown_08A3E624
	bl Proc_Find
	adds r2, r0, #0
	movs r0, #0x29
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	bne _080C029C
	adds r0, r2, #0
	adds r0, #0x2c
	strb r3, [r0]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2e
	strb r3, [r0]
	adds r1, #2
	movs r0, #0x38
	strb r0, [r1]
	strh r4, [r2, #0x30]
	lsls r0, r5, #0xc
	str r0, [r2, #0x34]
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #1
	bl Proc_Goto
	movs r0, #0
	b _080C029E
	.align 2, 0
_080C0298: .4byte gUnknown_08A3E624
_080C029C:
	movs r0, #1
_080C029E:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C0240

	THUMB_FUNC_START sub_80C02A4
sub_80C02A4: @ 0x080C02A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080C02FC  @ gUnknown_08A3E624
	bl Proc_Find
	adds r2, r0, #0
	movs r0, #0x29
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	bne _080C0300
	adds r1, r2, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2d
	strb r3, [r0]
	adds r1, #2
	movs r0, #0x38
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2f
	strb r3, [r0]
	strh r4, [r2, #0x30]
	lsls r0, r5, #0xc
	str r0, [r2, #0x34]
	mov r1, ip
	ldrb r0, [r1]
	movs r1, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #2
	bl Proc_Goto
	movs r0, #0
	b _080C0302
	.align 2, 0
_080C02FC: .4byte gUnknown_08A3E624
_080C0300:
	movs r0, #1
_080C0302:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C02A4

	THUMB_FUNC_START sub_80C0308
sub_80C0308: @ 0x080C0308
	push {r4, lr}
	sub sp, #4
	ldr r2, _080C0354  @ gUnknown_0201BE30
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0354: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80C0308

	THUMB_FUNC_START sub_80C0358
sub_80C0358: @ 0x080C0358
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #1
	bl sub_80C1DA0
	mov r9, r0
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r2, #0
	bl sub_800B84C
	movs r6, #0x80
	lsls r6, r6, #5
	lsls r5, r0, #7
	negs r5, r5
	adds r0, r6, #0
	adds r1, r5, #0
	bl DivArm
	adds r4, r0, #0
	adds r4, #0x80
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl DivArm
	adds r0, #0x50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r7, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r5, r9
_080C03AA:
	cmp r7, r4
	blt _080C03B2
	movs r0, #0
	b _080C03D8
_080C03B2:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r7, r0
	blt _080C03D6
	subs r0, r7, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x30
	movs r2, #0
	bl sub_800B84C
	subs r0, r6, r0
	lsls r1, r0, #4
	adds r0, r6, #0
	bl DivArm
	b _080C03D8
_080C03D6:
	movs r0, #0x10
_080C03D8:
	strh r0, [r5]
	adds r5, #2
	adds r7, #1
	cmp r7, #0x4f
	ble _080C03AA
	mov r1, r9
	movs r0, #0x9f
	lsls r0, r0, #1
	adds r2, r1, r0
	movs r7, #0x4f
_080C03EC:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	subs r2, #2
	subs r7, #1
	cmp r7, #0
	bge _080C03EC
	bl sub_80C1DC8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C0358

	THUMB_FUNC_START sub_80C040C
sub_80C040C: @ 0x080C040C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #2
	bne _080C0426
	movs r0, #1
	movs r1, #0
	bl NewFadeIn
	movs r0, #0x64
	b _080C0430
_080C0426:
	movs r0, #2
	movs r1, #0
	bl NewFadeIn
	movs r0, #0x32
_080C0430:
	strh r0, [r4, #0x2c]
	movs r5, #0
	strh r5, [r4, #0x2a]
	add r1, sp, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_80C1DA0
	adds r1, r0, #0
	add r0, sp, #4
	ldr r2, _080C04BC  @ 0x010000A0
	bl CpuSet
	ldr r1, _080C04C0  @ 0x04000054
	movs r0, #0
	bl sub_80C1DD8
	movs r0, #0
	bl sub_80C1DE8
	movs r0, #3
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	ldr r2, _080C04C4  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r4, #4
	orrs r0, r4
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	ldr r1, _080C04C8  @ gUnknown_0201BE30
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C04BC: .4byte 0x010000A0
_080C04C0: .4byte 0x04000054
_080C04C4: .4byte gLCDControlBuffer
_080C04C8: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80C040C

	THUMB_FUNC_START sub_80C04CC
sub_80C04CC: @ 0x080C04CC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2a]
	adds r0, #1
	strh r0, [r2, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2c
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bge _080C04EA
	adds r0, r2, #0
	bl sub_80C0358
	b _080C04F0
_080C04EA:
	adds r0, r2, #0
	bl Proc_Break
_080C04F0:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C04CC

	THUMB_FUNC_START sub_80C04F4
sub_80C04F4: @ 0x080C04F4
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _080C0508
	ldr r0, _080C0504  @ gUnknown_08A3E6AC
	bl Proc_StartBlocking
	b _080C0510
	.align 2, 0
_080C0504: .4byte gUnknown_08A3E6AC
_080C0508:
	ldr r0, _080C051C  @ gUnknown_08A3E6AC
	movs r1, #3
	bl Proc_Start
_080C0510:
	adds r1, r0, #0
	adds r1, #0x29
	strb r4, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C051C: .4byte gUnknown_08A3E6AC

	THUMB_FUNC_END sub_80C04F4

	THUMB_FUNC_START sub_80C0520
sub_80C0520: @ 0x080C0520
	push {lr}
	ldr r0, _080C052C  @ gUnknown_08A3E6AC
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C052C: .4byte gUnknown_08A3E6AC

	THUMB_FUNC_END sub_80C0520

	THUMB_FUNC_START sub_80C0530
sub_80C0530: @ 0x080C0530
	push {lr}
	ldr r0, _080C0544  @ gUnknown_08A3E6AC
	bl Proc_Find
	cmp r0, #0
	beq _080C053E
	movs r0, #1
_080C053E:
	pop {r1}
	bx r1
	.align 2, 0
_080C0544: .4byte gUnknown_08A3E6AC

	THUMB_FUNC_END sub_80C0530

	THUMB_FUNC_START nullsub_47
nullsub_47: @ 0x080C0548
	bx lr

	THUMB_FUNC_END nullsub_47

	THUMB_FUNC_START sub_80C054C
sub_80C054C: @ 0x080C054C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #0
	adds r5, r1, #0
	mov r6, r8
	adds r6, #0x32
	mov r4, r8
	adds r4, #0x30
_080C0560:
	ldr r0, _080C05A8  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r1, r8
	adds r1, #0x2e
	adds r1, r1, r7
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_80BE3A0
	ldrh r0, [r5]
	strh r0, [r4, #0x10]
	ldrh r1, [r5, #2]
	strh r1, [r4, #0x12]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r1, r1, r0
	strh r1, [r4, #0xa]
	adds r5, #4
	adds r6, #4
	adds r4, #4
	adds r7, #1
	cmp r7, #1
	ble _080C0560
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #0x2a]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C05A8: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C054C

	THUMB_FUNC_START sub_80C05AC
sub_80C05AC: @ 0x080C05AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080C05C0  @ gUnknown_082068F4
	bl sub_80C054C
	movs r0, #0x10
	strh r0, [r4, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C05C0: .4byte gUnknown_082068F4

	THUMB_FUNC_END sub_80C05AC

	THUMB_FUNC_START sub_80C05C4
sub_80C05C4: @ 0x080C05C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080C05EC  @ gUnknown_082068FC
	bl sub_80C054C
	movs r0, #5
	strh r0, [r4, #0x2c]
	ldr r0, _080C05F0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C05E4
	ldr r0, _080C05F4  @ 0x00000313
	bl m4aSongNumStart
_080C05E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C05EC: .4byte gUnknown_082068FC
_080C05F0: .4byte gRAMChapterData
_080C05F4: .4byte 0x00000313

	THUMB_FUNC_END sub_80C05C4

	THUMB_FUNC_START sub_80C05F8
sub_80C05F8: @ 0x080C05F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080C060C  @ gUnknown_08206904
	bl sub_80C054C
	movs r0, #5
	strh r0, [r4, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C060C: .4byte gUnknown_08206904

	THUMB_FUNC_END sub_80C05F8

	THUMB_FUNC_START sub_80C0610
sub_80C0610: @ 0x080C0610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0x2c]
	cmp r0, r1
	bcs _080C06A4
	ldrh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x2c]
	movs r2, #1
	bl sub_800B7E0
	mov r8, r0
	movs r7, #0
	movs r2, #0x2e
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0x80
	lsls r3, r3, #5
	mov sl, r3
	adds r6, r5, #0
	adds r6, #0x30
_080C064A:
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	mov r1, r8
	muls r1, r0, r1
	mov r0, sl
	bl DivArm
	ldrh r5, [r6]
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r2, #0x12
	ldrsh r0, [r6, r2]
	mov r1, r8
	muls r1, r0, r1
	mov r0, sl
	bl DivArm
	ldrh r4, [r6, #2]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080C06A0  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r3, r9
	adds r1, r3, r7
	ldrb r1, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_80BE35C
	adds r6, #4
	adds r7, #1
	cmp r7, #1
	ble _080C064A
	b _080C06DC
	.align 2, 0
_080C06A0: .4byte gUnknown_08A3D748
_080C06A4:
	movs r7, #0
	movs r6, #0x2e
	adds r6, r6, r5
	mov r9, r6
	adds r4, r5, #0
	adds r4, #0x38
_080C06B0:
	ldr r0, _080C06EC  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r2, r9
	adds r1, r2, r7
	ldrb r1, [r1]
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r6, #2
	ldrsh r3, [r4, r6]
	bl sub_80BE35C
	adds r4, #4
	adds r7, #1
	cmp r7, #1
	ble _080C06B0
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
_080C06DC:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C06EC: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C0610

	THUMB_FUNC_START sub_80C06F0
sub_80C06F0: @ 0x080C06F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _080C07A0  @ gUnknown_08AA1970
	ldr r1, _080C07A4  @ 0x06013000
	bl CopyDataWithPossibleUncomp
	movs r5, #0
	movs r4, #0
	mov r6, sp
	adds r6, #0xa
_080C0706:
	ldr r0, _080C07A8  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r7, #0
	adds r1, #0x2e
	adds r1, r1, r4
	ldrb r1, [r1]
	add r2, sp, #8
	adds r3, r6, #0
	bl sub_80BE3A0
	add r1, sp, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #1
	cmp r4, #1
	ble _080C0706
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	add r2, sp, #8
	ldr r3, _080C07AC  @ gUnknown_03005280
	ldrh r0, [r3, #2]
	asrs r1, r1, #1
	subs r1, r1, r0
	strh r1, [r2]
	adds r0, r2, #0
	subs r1, #0x14
	strh r1, [r0]
	ldrh r0, [r6]
	subs r0, #0xc
	ldrh r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _080C0784
	adds r0, r2, #0
	ldrh r0, [r0]
	cmp r0, #0xef
	bhi _080C0784
	ldr r0, _080C07B0  @ gUnknown_08AA1C70
	adds r1, r2, #0
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	movs r3, #0xe6
	lsls r3, r3, #6
	movs r4, #0
	str r4, [sp]
	movs r4, #7
	str r4, [sp, #4]
	bl APProc_Create
	str r0, [r7, #0x48]
_080C0784:
	ldr r0, _080C07B4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C0798
	movs r0, #0xc5
	lsls r0, r0, #2
	bl m4aSongNumStart
_080C0798:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C07A0: .4byte gUnknown_08AA1970
_080C07A4: .4byte 0x06013000
_080C07A8: .4byte gUnknown_08A3D748
_080C07AC: .4byte gUnknown_03005280
_080C07B0: .4byte gUnknown_08AA1C70
_080C07B4: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80C06F0

	THUMB_FUNC_START sub_80C07B8
sub_80C07B8: @ 0x080C07B8
	push {r4, lr}
	adds r4, r0, #0
	bl APProc_Exists
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C07CC
	adds r0, r4, #0
	bl Proc_Break
_080C07CC:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C07B8

	THUMB_FUNC_START sub_80C07D4
sub_80C07D4: @ 0x080C07D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	cmp r1, #0
	beq _080C07EC
	ldr r0, _080C07E8  @ gUnknown_08A3E6E4
	bl Proc_StartBlocking
	b _080C07F4
	.align 2, 0
_080C07E8: .4byte gUnknown_08A3E6E4
_080C07EC:
	ldr r0, _080C0808  @ gUnknown_08A3E6E4
	movs r1, #3
	bl Proc_Start
_080C07F4:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x2f
	strb r4, [r2]
	adds r1, #0x2e
	strb r5, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C0808: .4byte gUnknown_08A3E6E4

	THUMB_FUNC_END sub_80C07D4

	THUMB_FUNC_START sub_80C080C
sub_80C080C: @ 0x080C080C
	push {lr}
	ldr r0, _080C0818  @ gUnknown_08A3E6E4
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C0818: .4byte gUnknown_08A3E6E4

	THUMB_FUNC_END sub_80C080C

	THUMB_FUNC_START sub_80C081C
sub_80C081C: @ 0x080C081C
	push {lr}
	ldr r0, _080C0830  @ gUnknown_08A3E6E4
	bl Proc_Find
	cmp r0, #0
	beq _080C082A
	movs r0, #1
_080C082A:
	pop {r1}
	bx r1
	.align 2, 0
_080C0830: .4byte gUnknown_08A3E6E4

	THUMB_FUNC_END sub_80C081C

	THUMB_FUNC_START sub_80C0834
sub_80C0834: @ 0x080C0834
	push {r4, lr}
	ldr r4, [sp, #8]
	subs r2, r2, r0
	subs r3, r3, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r1, r3, #0
	muls r1, r3, r1
	adds r0, r0, r1
	lsls r0, r4
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C0834

	THUMB_FUNC_START GetWMCenteredCameraPosition
GetWMCenteredCameraPosition: @ 0x080C0858
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x78
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C0872
	movs r0, #0
	b _080C0878
_080C0872:
	cmp r0, #0xf0
	ble _080C087A
	movs r0, #0xf0
_080C0878:
	strh r0, [r2]
_080C087A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x50
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C088E
	movs r0, #0
	b _080C0894
_080C088E:
	cmp r0, #0xa0
	ble _080C0896
	movs r0, #0xa0
_080C0894:
	strh r0, [r3]
_080C0896:
	pop {r0}
	bx r0

	THUMB_FUNC_END GetWMCenteredCameraPosition

	THUMB_FUNC_START sub_80C089C
sub_80C089C: @ 0x080C089C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov ip, r0
	mov r8, r1
	adds r6, r2, #0
	adds r7, r3, #0
	mov r2, sp
	ldr r1, _080C0928  @ gUnknown_03005280
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r2]
	adds r2, #2
	ldr r0, [r1, #0xc]
	asrs r0, r0, #8
	strh r0, [r2]
	add r3, sp, #4
	ldrh r0, [r1, #2]
	strh r0, [r3]
	mov r5, sp
	adds r5, #6
	ldrh r0, [r1, #4]
	strh r0, [r5]
	mov r4, sp
	mov r0, sp
	ldrh r1, [r3]
	subs r1, #8
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r5]
	subs r1, #8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, ip
	cmp r0, #0
	bne _080C08F0
	mov r1, r8
	cmp r1, #0
	beq _080C0906
_080C08F0:
	mov r0, sp
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x78
	subs r0, r0, r7
	cmp r1, r0
	blt _080C0906
	adds r0, r6, #0
	adds r0, #0x78
	cmp r1, r0
	blt _080C0924
_080C0906:
	cmp r6, #0
	bne _080C090E
	cmp r7, #0
	beq _080C092C
_080C090E:
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x50
	mov r3, ip
	subs r0, r0, r3
	cmp r1, r0
	blt _080C092C
	mov r0, r8
	adds r0, #0x50
	cmp r1, r0
	bge _080C092C
_080C0924:
	movs r0, #4
	b _080C0954
	.align 2, 0
_080C0928: .4byte gUnknown_03005280
_080C092C:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x78
	bgt _080C0942
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x50
	bgt _080C094E
	movs r0, #0
	b _080C0954
_080C0942:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x50
	bgt _080C0952
	movs r0, #1
	b _080C0954
_080C094E:
	movs r0, #2
	b _080C0954
_080C0952:
	movs r0, #3
_080C0954:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C089C

	THUMB_FUNC_START sub_80C0960
sub_80C0960: @ 0x080C0960
	push {r4, lr}
	bl sub_80BCFDC
	adds r4, r0, #0
	ldr r0, _080C0998  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C097E
	ldr r0, _080C099C  @ gUnknown_03005280
	bl sub_80BD014
	cmp r0, r4
	beq _080C09AE
_080C097E:
	movs r1, #0
	ldr r0, _080C09A0  @ gUnknown_08206951
	ldrb r0, [r0]
	cmp r1, r0
	bge _080C09AE
	ldr r3, _080C09A4  @ gUnknown_08206948
	adds r2, r0, #0
_080C098C:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _080C09A8
	movs r0, #1
	b _080C09B0
	.align 2, 0
_080C0998: .4byte gRAMChapterData
_080C099C: .4byte gUnknown_03005280
_080C09A0: .4byte gUnknown_08206951
_080C09A4: .4byte gUnknown_08206948
_080C09A8:
	adds r1, #1
	cmp r1, r2
	blt _080C098C
_080C09AE:
	movs r0, #0
_080C09B0:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C0960

	THUMB_FUNC_START sub_80C09B8
sub_80C09B8: @ 0x080C09B8
	push {r4, r5, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	ldr r1, _080C09E0  @ gUnknown_0201B430
	ldr r5, _080C09E4  @ 0x01000140
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _080C09E8  @ gUnknown_0201B930
	adds r2, r5, #0
	bl CpuFastSet
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C09E0: .4byte gUnknown_0201B430
_080C09E4: .4byte 0x01000140
_080C09E8: .4byte gUnknown_0201B930

	THUMB_FUNC_END sub_80C09B8

	THUMB_FUNC_START sub_80C09EC
sub_80C09EC: @ 0x080C09EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C0A08  @ 0x06013000
	movs r1, #9
	bl LoadDialogueBoxGfx
	ldr r0, _080C0A0C  @ gUnknown_08A3E78C
	adds r1, r4, #0
	bl StartMovingHelpBox
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0A08: .4byte 0x06013000
_080C0A0C: .4byte gUnknown_08A3E78C

	THUMB_FUNC_END sub_80C09EC

	THUMB_FUNC_START sub_80C0A10
sub_80C0A10: @ 0x080C0A10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C0A2C  @ gUnknown_08A3E8B8
	bl Proc_Find
	ldr r0, [r0, #0x2c]
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _080C0A30
	adds r0, r4, #0
	adds r0, #0x4c
	strh r1, [r0]
	b _080C0A38
	.align 2, 0
_080C0A2C: .4byte gUnknown_08A3E8B8
_080C0A30:
	adds r1, r4, #0
	adds r1, #0x4c
	ldr r0, _080C0A40  @ 0x000006BE
	strh r0, [r1]
_080C0A38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0A40: .4byte 0x000006BE

	THUMB_FUNC_END sub_80C0A10

	THUMB_FUNC_START sub_80C0A44
sub_80C0A44: @ 0x080C0A44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C0A60  @ gUnknown_08A3E8B8
	bl Proc_Find
	ldr r0, [r0, #0x2c]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	adds r4, #0x4c
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0A60: .4byte gUnknown_08A3E8B8

	THUMB_FUNC_END sub_80C0A44

	THUMB_FUNC_START sub_80C0A64
sub_80C0A64: @ 0x080C0A64
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #1
_080C0A6A:
	adds r0, r4, #0
	bl GetUnit
	adds r1, r0, #0
	cmp r1, #0
	beq _080C0A88
	ldr r0, [r1]
	cmp r0, #0
	beq _080C0A88
	ldr r0, [r1, #0xc]
	ldr r1, _080C0A98  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _080C0A88
	adds r5, #1
_080C0A88:
	adds r4, #1
	cmp r4, #0x3f
	ble _080C0A6A
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C0A98: .4byte 0x00010004

	THUMB_FUNC_END sub_80C0A64

	THUMB_FUNC_START sub_80C0A9C
sub_80C0A9C: @ 0x080C0A9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x2c]
	ldr r0, [r0]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r5, r0, #0
	movs r0, #0x40
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	mov r8, r0
	ldr r4, [r7, #0x2c]
	adds r0, r4, #0
	bl GetUnitEquippedWeaponSlot
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl BattleGenerateUiStats
	adds r0, r7, #0
	adds r0, #0x34
	ldr r4, _080C0B80  @ gUnknown_02022F4E
	movs r1, #0
	str r1, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r2, #0
	mov r3, r8
	bl DrawTextInline
	ldr r0, [r7, #0x2c]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r1, r4, #0
	adds r1, #0xbc
	movs r2, #7
	str r2, [sp]
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl DrawTextInline
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #3
	movs r2, #0x24
	movs r3, #0x25
	bl sub_8004D5C
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #3
	movs r2, #0x35
	bl sub_8004B0C
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #3
	movs r2, #0x22
	movs r3, #0x23
	bl sub_8004D5C
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #3
	movs r2, #0x16
	bl sub_8004B0C
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r7, #0x2c]
	movs r2, #8
	ldrsb r2, [r1, r2]
	movs r1, #2
	bl DrawDecNumber
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r7, #0x2c]
	ldrb r2, [r1, #9]
	movs r1, #2
	bl DrawDecNumber
	ldr r0, [r7, #0x2c]
	bl GetUnitCurrentHp
	cmp r0, #0x63
	ble _080C0B84
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #2
	movs r2, #0x14
	movs r3, #0x14
	bl sub_8004D5C
	b _080C0B9A
	.align 2, 0
_080C0B80: .4byte gUnknown_02022F4E
_080C0B84:
	movs r0, #0xe1
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, [r7, #0x2c]
	bl GetUnitCurrentHp
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl DrawDecNumber
_080C0B9A:
	ldr r0, [r7, #0x2c]
	bl GetUnitMaxHp
	cmp r0, #0x63
	ble _080C0BB8
	ldr r0, _080C0BB4  @ gUnknown_02023114
	movs r1, #2
	movs r2, #0x14
	movs r3, #0x14
	bl sub_8004D5C
	b _080C0BCA
	.align 2, 0
_080C0BB4: .4byte gUnknown_02023114
_080C0BB8:
	ldr r4, _080C0C1C  @ gUnknown_02023116
	ldr r0, [r7, #0x2c]
	bl GetUnitMaxHp
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl DrawDecNumber
_080C0BCA:
	ldr r0, _080C0C20  @ gUnknown_03005280
	bl sub_80BD014
	bl sub_80BBA28
	adds r6, r0, #0
	movs r0, #0x48
	adds r1, r6, #0
	bl GetStringTextCenteredPos
	mov r8, r0
	adds r5, r7, #0
	adds r5, #0x3c
	adds r0, r5, #0
	movs r1, #5
	bl Text_Advance
	ldr r4, _080C0C24  @ gUnknown_02022E2E
	movs r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	mov r3, r8
	bl DrawTextInline
	adds r4, #0xd2
	bl sub_80C0A64
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_8004B88
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C0C1C: .4byte gUnknown_02023116
_080C0C20: .4byte gUnknown_03005280
_080C0C24: .4byte gUnknown_02022E2E

	THUMB_FUNC_END sub_80C0A9C

	THUMB_FUNC_START sub_80C0C28
sub_80C0C28: @ 0x080C0C28
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x34
	movs r1, #8
	bl Text_Init
	adds r4, #0x3c
	adds r0, r4, #0
	movs r1, #9
	bl Text_Init
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C0C28

	THUMB_FUNC_START sub_80C0C44
sub_80C0C44: @ 0x080C0C44
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080C0CB4  @ gUnknown_03005280
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _080C0C5C
	movs r0, #0x12
	ldrsh r1, [r2, r0]
_080C0C5C:
	adds r0, r1, #0
	bl GetUnitFromCharId
	str r0, [r5, #0x2c]
	bl GetUnitPortraitId
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C0C7A
	adds r4, #1
_080C0C7A:
	bl Font_InitForUIDefault
	bl ResetIconGraphics_
	adds r0, r5, #0
	bl sub_80C0C28
	ldr r1, _080C0CB8  @ gUnknown_02023D0C
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0xd
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8005E98
	adds r0, r4, #0
	bl GetPortraitStructPointer
	ldr r0, [r0]
	cmp r0, #0
	beq _080C0CC0
	ldr r0, _080C0CBC  @ gUnknown_08A01EE4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	b _080C0CCA
	.align 2, 0
_080C0CB4: .4byte gUnknown_03005280
_080C0CB8: .4byte gUnknown_02023D0C
_080C0CBC: .4byte gUnknown_08A01EE4
_080C0CC0:
	ldr r0, _080C0CF0  @ gUnknown_08A01F04
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
_080C0CCA:
	bl MU_EndAll
	ldr r0, [r5, #0x2c]
	movs r1, #0xd8
	movs r2, #0x87
	bl MU_CreateForUI
	str r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_80C0A9C
	movs r0, #7
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CF0: .4byte gUnknown_08A01F04

	THUMB_FUNC_END sub_80C0C44

	THUMB_FUNC_START sub_80C0CF4
sub_80C0CF4: @ 0x080C0CF4
	push {r4, r5, r6, r7, lr}
	ldr r0, _080C0DB0  @ gUnknown_08A3E888
	bl SetupBackgrounds
	ldr r7, _080C0DB4  @ gBG0TilemapBuffer
	adds r0, r7, #0
	movs r1, #0
	bl BG_Fill
	ldr r5, _080C0DB8  @ gBG1TilemapBuffer
	adds r0, r5, #0
	movs r1, #0
	bl BG_Fill
	ldr r6, _080C0DBC  @ gBG2TilemapBuffer
	adds r0, r6, #0
	movs r1, #0
	bl BG_Fill
	movs r0, #7
	bl BG_EnableSyncByMask
	bl LoadGameCoreGfx
	bl SetupMapSpritesPalettes
	ldr r1, _080C0DC0  @ 0x0600B000
	movs r2, #1
	negs r2, r2
	movs r0, #0
	bl sub_8086BB8
	ldr r0, _080C0DC4  @ gUnknown_08A986C0
	ldr r1, _080C0DC8  @ 0x06003000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C0DCC  @ gUnknown_08A98DCC
	movs r1, #0xc0
	movs r2, #0x60
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	ldr r0, _080C0DD0  @ gUnknown_08A98BF8
	ldr r4, _080C0DD4  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r1, _080C0DD8  @ gUnknown_08A98CFC
	movs r4, #0xc3
	lsls r4, r4, #7
	adds r0, r5, #0
	adds r2, r4, #0
	bl CallARM_FillTileRect
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r1, _080C0DDC  @ gUnknown_08A98D58
	adds r2, r4, #0
	bl CallARM_FillTileRect
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, _080C0DE0  @ gUnknown_08A98D88
	adds r2, r4, #0
	bl CallARM_FillTileRect
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, _080C0DE4  @ gUnknown_08A98DA0
	adds r2, r4, #0
	bl CallARM_FillTileRect
	ldr r0, _080C0DE8  @ 0x00000432
	adds r6, r6, r0
	ldr r1, _080C0DEC  @ gUnknown_08A98DB8
	adds r0, r6, #0
	adds r2, r4, #0
	bl CallARM_FillTileRect
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C0DB0: .4byte gUnknown_08A3E888
_080C0DB4: .4byte gBG0TilemapBuffer
_080C0DB8: .4byte gBG1TilemapBuffer
_080C0DBC: .4byte gBG2TilemapBuffer
_080C0DC0: .4byte 0x0600B000
_080C0DC4: .4byte gUnknown_08A986C0
_080C0DC8: .4byte 0x06003000
_080C0DCC: .4byte gUnknown_08A98DCC
_080C0DD0: .4byte gUnknown_08A98BF8
_080C0DD4: .4byte gUnknown_02020188
_080C0DD8: .4byte gUnknown_08A98CFC
_080C0DDC: .4byte gUnknown_08A98D58
_080C0DE0: .4byte gUnknown_08A98D88
_080C0DE4: .4byte gUnknown_08A98DA0
_080C0DE8: .4byte 0x00000432
_080C0DEC: .4byte gUnknown_08A98DB8

	THUMB_FUNC_END sub_80C0CF4

	THUMB_FUNC_START sub_80C0DF0
sub_80C0DF0: @ 0x080C0DF0
	push {r4, lr}
	sub sp, #4
	ldr r2, _080C0E44  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	bl sub_8001F48
	ldr r0, _080C0E48  @ gPaletteBuffer
	strh r4, [r0]
	bl EnablePaletteSync
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0E44: .4byte gLCDControlBuffer
_080C0E48: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80C0DF0

	THUMB_FUNC_START sub_80C0E4C
sub_80C0E4C: @ 0x080C0E4C
	push {lr}
	bl EndBG3Slider
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C0E4C

	THUMB_FUNC_START sub_80C0E58
sub_80C0E58: @ 0x080C0E58
	push {r4, lr}
	sub sp, #4
	ldr r3, _080C0EB8  @ gLCDControlBuffer
	ldrb r1, [r3, #0xc]
	movs r2, #4
	negs r2, r2
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #0x10]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x14]
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	strb r2, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	orrs r0, r1
	strb r0, [r3, #0x18]
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #1
	movs r1, #0xd
	movs r2, #3
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0EB8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C0E58

	THUMB_FUNC_START sub_80C0EBC
sub_80C0EBC: @ 0x080C0EBC
	push {r4, r5, lr}
	ldr r4, _080C0EFC  @ gUnknown_0202306E
	bl GetGameClock
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0
	bl sub_8004C68
	adds r5, r4, #0
	subs r5, #0xf0
	bl GetPartyGoldAmount
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #2
	bl sub_8004B88
	subs r4, #0xee
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0x1e
	bl sub_8004B0C
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C0EFC: .4byte gUnknown_0202306E

	THUMB_FUNC_END sub_80C0EBC

	THUMB_FUNC_START sub_80C0F00
sub_80C0F00: @ 0x080C0F00
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C0F24  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080C0F28
	adds r0, r5, #0
	bl sub_80C09EC
	b _080C0F8E
	.align 2, 0
_080C0F24: .4byte gKeyStatusPtr
_080C0F28:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C0F8E
	ldr r2, _080C0F98  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	bl sub_8001F48
	ldr r0, _080C0F9C  @ gPaletteBuffer
	strh r4, [r0]
	bl EnablePaletteSync
	adds r0, r5, #0
	bl Proc_Break
	ldr r0, _080C0FA0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C0F8E
	movs r0, #0x6b
	bl m4aSongNumStart
_080C0F8E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C0F98: .4byte gLCDControlBuffer
_080C0F9C: .4byte gPaletteBuffer
_080C0FA0: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80C0F00

	THUMB_FUNC_START sub_80C0FA4
sub_80C0FA4: @ 0x080C0FA4
	push {lr}
	movs r0, #0
	bl SetInterrupt_LCDVCountMatch
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C0FA4

	THUMB_FUNC_START sub_80C0FB0
sub_80C0FB0: @ 0x080C0FB0
	adds r2, r0, #0
	ldr r3, _080C0FE4  @ gLCDControlBuffer
	ldr r0, [r2, #0x34]
	ldr r1, [r2, #0x38]
	str r0, [r3, #0x3c]
	str r1, [r3, #0x40]
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x46
	strb r1, [r0]
	bx lr
	.align 2, 0
_080C0FE4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C0FB0

	THUMB_FUNC_START sub_80C0FE8
sub_80C0FE8: @ 0x080C0FE8
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3, #0x30]
	movs r0, #4
	strh r0, [r3, #0x2e]
	strh r0, [r3, #0x2c]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r4, #2
	negs r4, r4
	ands r4, r0
	strb r4, [r2]
	ldr r0, _080C1024  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C1028
	movs r0, #2
	adds r1, r4, #0
	orrs r1, r0
	strb r1, [r2]
	adds r1, r3, #0
	adds r1, #0x2a
	movs r0, #0xff
	b _080C1036
	.align 2, 0
_080C1024: .4byte gUnknown_03005280
_080C1028:
	movs r0, #3
	negs r0, r0
	ands r0, r4
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x2a
	movs r0, #0
_080C1036:
	strb r0, [r1]
	adds r2, r3, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _080C10B4  @ gLCDControlBuffer
	ldr r0, [r2, #0x3c]
	ldr r1, [r2, #0x40]
	str r0, [r3, #0x34]
	str r1, [r3, #0x38]
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	movs r4, #0
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x46
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3e
	strb r1, [r0]
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C10B4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C0FE8

	THUMB_FUNC_START sub_80C10B8
sub_80C10B8: @ 0x080C10B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	subs r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C1190
	movs r5, #0
	adds r7, r4, #0
	adds r7, #0x29
	movs r0, #0x1f
	mov r8, r0
	ldr r6, _080C10F0  @ gUnknown_02022B68
_080C10D8:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C10F4
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	mov r2, r8
	ands r0, r2
	b _080C1102
	.align 2, 0
_080C10F0: .4byte gUnknown_02022B68
_080C10F4:
	adds r1, r5, #0
	adds r1, #0x20
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	subs r0, r1, r0
	mov r1, r8
	ands r0, r1
_080C1102:
	lsls r0, r0, #1
	ldr r1, _080C1160  @ gUnknown_08A97E48
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6]
	ldrh r0, [r4, #0x30]
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r6, #2
	adds r5, #1
	cmp r5, #0xf
	ble _080C10D8
	ldrh r0, [r4, #0x2e]
	movs r5, #0
	strh r0, [r4, #0x2c]
	bl EnablePaletteSync
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080C1190
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C1164
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl Proc_Break
	b _080C1190
	.align 2, 0
_080C1160: .4byte gUnknown_08A97E48
_080C1164:
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080C1174
	strh r5, [r4, #0x30]
	b _080C1190
_080C1174:
	cmp r0, #0
	ble _080C1190
	strh r5, [r4, #0x30]
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C1190
	ldrb r1, [r7]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r7]
_080C1190:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C10B8

	THUMB_FUNC_START sub_80C119C
sub_80C119C: @ 0x080C119C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r2, _080C11C8  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C11CC
	mov r4, sp
	adds r4, #6
	add r0, sp, #4
	adds r1, r4, #0
	bl GetWMDisplayPosition
	mov sl, r4
	b _080C11DA
	.align 2, 0
_080C11C8: .4byte gUnknown_03005280
_080C11CC:
	add r1, sp, #4
	ldrh r0, [r2, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #4]
	strh r0, [r1]
	mov sl, r1
_080C11DA:
	movs r7, #0
	movs r0, #0x2a
	add r0, r8
	mov r9, r0
_080C11E2:
	mov r1, r9
	ldrb r2, [r1]
	lsls r2, r2, #5
	lsls r0, r7, #3
	ldr r1, _080C124C  @ gUnknown_08A3E9A0
	adds r0, r0, r1
	adds r5, r2, r0
	movs r2, #5
	ldrsb r2, [r5, r2]
	mov r3, r8
	ldrh r3, [r3, #0x2c]
	adds r2, r2, r3
	add r0, sp, #4
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #6
	ldrsb r0, [r5, r0]
	mov r1, r8
	ldrh r1, [r1, #0x2e]
	adds r0, r0, r1
	mov r3, sl
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r3, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x88
	lsls r1, r1, #1
	cmp r2, r1
	bhi _080C1274
	lsls r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r0, r1, r2
	lsrs r0, r0, #0x10
	adds r2, r1, #0
	cmp r0, #0xc0
	bhi _080C1274
	ldr r0, _080C1250  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C1254
	movs r6, #0xc
	movs r4, #0xc0
	lsls r4, r4, #4
	b _080C125A
	.align 2, 0
_080C124C: .4byte gUnknown_08A3E9A0
_080C1250: .4byte gUnknown_03005280
_080C1254:
	movs r6, #0xd
	movs r4, #0x80
	lsls r4, r4, #4
_080C125A:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	ldr r3, [r5]
	ldrb r0, [r5, #4]
	movs r5, #0xc3
	lsls r5, r5, #7
	adds r4, r4, r5
	adds r0, r0, r4
	str r0, [sp]
	adds r0, r6, #0
	bl PutSprite
_080C1274:
	adds r7, #1
	cmp r7, #3
	ble _080C11E2
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C119C

	THUMB_FUNC_START sub_80C128C
sub_80C128C: @ 0x080C128C
	push {lr}
	ldr r0, _080C12A4  @ gUnknown_08A3EA38
	bl sub_80034FC
	cmp r0, #1
	bgt _080C129E
	ldr r0, _080C12A8  @ gUnknown_08A3EA00
	bl Proc_EndEach
_080C129E:
	pop {r0}
	bx r0
	.align 2, 0
_080C12A4: .4byte gUnknown_08A3EA38
_080C12A8: .4byte gUnknown_08A3EA00

	THUMB_FUNC_END sub_80C128C

	THUMB_FUNC_START sub_80C12AC
sub_80C12AC: @ 0x080C12AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080C130C  @ gUnknown_08A3EA38
	bl sub_80034FC
	cmp r0, #1
	bgt _080C12E0
	ldr r0, _080C1310  @ gUnknown_08A97E28
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	ldr r0, _080C1314  @ gUnknown_08A97C98
	ldr r4, _080C1318  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r1, _080C131C  @ 0x06013000
	adds r0, r4, #0
	movs r2, #6
	movs r3, #4
	bl CopyTileGfxForObj
_080C12E0:
	ldr r4, _080C1320  @ gUnknown_08A3EA00
	adds r0, r4, #0
	bl Proc_Find
	cmp r0, #0
	bne _080C12F4
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
_080C12F4:
	movs r0, #0
	strh r0, [r5, #0x2e]
	strh r0, [r5, #0x2c]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C130C: .4byte gUnknown_08A3EA38
_080C1310: .4byte gUnknown_08A97E28
_080C1314: .4byte gUnknown_08A97C98
_080C1318: .4byte gUnknown_02020188
_080C131C: .4byte 0x06013000
_080C1320: .4byte gUnknown_08A3EA00

	THUMB_FUNC_END sub_80C12AC

	THUMB_FUNC_START sub_80C1324
sub_80C1324: @ 0x080C1324
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080C136C  @ gUnknown_08A3EA00
	bl Proc_Find
	adds r4, r0, #0
	cmp r4, #0
	bne _080C133A
	adds r0, r5, #0
	bl Proc_Break
_080C133A:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080C1350
	adds r0, r5, #0
	bl Proc_Break
_080C1350:
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080C1364
	adds r0, r5, #0
	bl sub_80C119C
_080C1364:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C136C: .4byte gUnknown_08A3EA00

	THUMB_FUNC_END sub_80C1324

	THUMB_FUNC_START sub_80C1370
sub_80C1370: @ 0x080C1370
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _080C1394
	ldr r0, _080C138C  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	ldr r0, _080C1390  @ gUnknown_08A3EA38
	adds r1, r2, #0
	bl Proc_StartBlocking
	b _080C13BC
	.align 2, 0
_080C138C: .4byte gUnknown_03005280
_080C1390: .4byte gUnknown_08A3EA38
_080C1394:
	ldr r0, _080C13AC  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C13B4
	ldr r0, _080C13B0  @ gUnknown_08A3EA38
	movs r1, #3
	bl Proc_Start
	b _080C13BC
	.align 2, 0
_080C13AC: .4byte gUnknown_03005280
_080C13B0: .4byte gUnknown_08A3EA38
_080C13B4:
	ldr r0, _080C13C8  @ gUnknown_08A3EA38
	movs r1, #3
	bl Proc_StartBlocking
_080C13BC:
	adds r1, r0, #0
	adds r1, #0x2a
	strb r4, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C13C8: .4byte gUnknown_08A3EA38

	THUMB_FUNC_END sub_80C1370

	THUMB_FUNC_START sub_80C13CC
sub_80C13CC: @ 0x080C13CC
	push {lr}
	bl Proc_End
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C13CC

	THUMB_FUNC_START sub_80C13D8
sub_80C13D8: @ 0x080C13D8
	push {lr}
	ldr r0, _080C13E4  @ gUnknown_08A3EA38
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C13E4: .4byte gUnknown_08A3EA38

	THUMB_FUNC_END sub_80C13D8

	THUMB_FUNC_START sub_80C13E8
sub_80C13E8: @ 0x080C13E8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov r9, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, sp
	ldr r6, _080C1458  @ gUnknown_08A3D748
	adds r0, r6, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldrh r0, [r0, #0x34]
	mov r1, r8
	strh r0, [r1]
	movs r0, #2
	add r0, sp
	mov r8, r0
	adds r0, r6, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldrh r1, [r0, #0x36]
	mov r0, r8
	strh r1, [r0]
	mov r0, sp
	ldrh r0, [r0]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r0
	strh r5, [r7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r1
	mov r1, r9
	strh r4, [r1]
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0xdf
	bhi _080C1460
	ldrh r0, [r7]
	adds r0, #0x20
	lsls r0, r0, #0x10
	ldr r1, _080C145C  @ 0x012F0000
	cmp r0, r1
	bhi _080C1460
	movs r0, #1
	b _080C1462
	.align 2, 0
_080C1458: .4byte gUnknown_08A3D748
_080C145C: .4byte 0x012F0000
_080C1460:
	movs r0, #0
_080C1462:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C13E8

	THUMB_FUNC_START sub_80C1470
sub_80C1470: @ 0x080C1470
	push {lr}
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _080C147C
	bl AP_Delete
_080C147C:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1470

	THUMB_FUNC_START sub_80C1480
sub_80C1480: @ 0x080C1480
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080C151C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C149E
	movs r0, #0x77
	bl m4aSongNumStart
_080C149E:
	movs r1, #0
	str r1, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x64
	strh r1, [r0]
	ldr r4, _080C1520  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #2
	mov r8, r2
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C151C: .4byte gRAMChapterData
_080C1520: .4byte gSinLookup

	THUMB_FUNC_END sub_80C1480

	THUMB_FUNC_START sub_80C1524
sub_80C1524: @ 0x080C1524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0x64
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080C154A
	adds r0, r7, #0
	bl Proc_Break
_080C154A:
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	movs r2, #0
	ldrsh r3, [r4, r2]
	movs r0, #8
	str r0, [sp]
	movs r0, #5
	mov r2, sl
	bl Interpolate
	mov r8, r0
	ldr r4, _080C1604  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	negs r0, r0
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	ldr r0, [r7, #0x2c]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x30]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #6
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_80C13E8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C1608
	ldr r0, [r7, #0x50]
	add r1, sp, #4
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldrh r2, [r4]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r3, r4, #0
	orrs r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl AP_Update
	b _080C1614
	.align 2, 0
_080C1604: .4byte gSinLookup
_080C1608:
	ldr r0, [r7, #0x50]
	movs r2, #0xec
	lsls r2, r2, #2
	mov r1, sl
	bl AP_Update
_080C1614:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1524

	THUMB_FUNC_START sub_80C1624
sub_80C1624: @ 0x080C1624
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x64
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x27
	ble _080C1640
	adds r0, r4, #0
	bl Proc_Break
_080C1640:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	mov r5, sp
	adds r5, #2
	mov r2, sp
	adds r3, r5, #0
	bl sub_80C13E8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C1676
	ldr r0, [r4, #0x50]
	mov r1, sp
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldrh r2, [r5]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r3, r4, #0
	orrs r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl AP_Update
	b _080C1684
_080C1676:
	ldr r0, [r4, #0x50]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xec
	lsls r2, r2, #2
	bl AP_Update
_080C1684:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1624

	THUMB_FUNC_START sub_80C168C
sub_80C168C: @ 0x080C168C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080C16CC  @ gUnknown_089ADD4C
	ldr r1, _080C16D0  @ 0x06013000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C16D4  @ gUnknown_089A8EF8
	movs r1, #7
	bl AP_Create
	adds r4, r0, #0
	movs r0, #0x8c
	lsls r0, r0, #5
	strh r0, [r4, #0x22]
	adds r0, r4, #0
	movs r1, #0
	bl AP_SwitchAnimation
	ldr r0, _080C16D8  @ gUnknown_08A3EA70
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x50]
	adds r5, #8
	str r5, [r0, #0x2c]
	subs r6, #8
	str r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C16CC: .4byte gUnknown_089ADD4C
_080C16D0: .4byte 0x06013000
_080C16D4: .4byte gUnknown_089A8EF8
_080C16D8: .4byte gUnknown_08A3EA70

	THUMB_FUNC_END sub_80C168C

	THUMB_FUNC_START sub_80C16DC
sub_80C16DC: @ 0x080C16DC
	push {lr}
	ldr r0, _080C16F0  @ gUnknown_08A3EA70
	bl Proc_Find
	cmp r0, #0
	beq _080C16EA
	movs r0, #1
_080C16EA:
	pop {r1}
	bx r1
	.align 2, 0
_080C16F0: .4byte gUnknown_08A3EA70

	THUMB_FUNC_END sub_80C16DC

	THUMB_FUNC_START sub_80C16F4
sub_80C16F4: @ 0x080C16F4
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r2, _080C1720  @ gUnknown_08206954
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r1, r2
	movs r5, #2
_080C1704:
	bl NextRN_100
	ldr r1, [r4]
	cmp r0, r1
	bge _080C1710
	adds r6, #1
_080C1710:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080C1704
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C1720: .4byte gUnknown_08206954

	THUMB_FUNC_END sub_80C16F4

	THUMB_FUNC_START sub_80C1724
sub_80C1724: @ 0x080C1724
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r2, #0
	movs r1, #0
	cmp r1, r4
	bge _080C173E
_080C1732:
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	adds r1, #1
	cmp r1, r4
	blt _080C1732
_080C173E:
	cmp r2, #0
	bne _080C1748
	movs r0, #1
	negs r0, r0
	b _080C176E
_080C1748:
	adds r0, r2, #0
	bl NextRN_N
	adds r3, r0, #0
	movs r1, #0
	cmp r1, r4
	bge _080C176C
	ldrb r2, [r5]
	cmp r3, r2
	blt _080C176C
_080C175C:
	adds r1, #1
	cmp r1, r4
	bge _080C176C
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	cmp r3, r2
	bge _080C175C
_080C176C:
	adds r0, r1, #0
_080C176E:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C1724

	THUMB_FUNC_START sub_80C1774
sub_80C1774: @ 0x080C1774
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r3, r0, #0
	str r1, [sp, #0x18]
	cmp r3, #0
	blt _080C1800
	cmp r3, #9
	ble _080C17F4
	cmp r3, #0x38
	beq _080C17F4
	cmp r3, #0
	blt _080C1800
	ldr r0, _080C17BC  @ gRAMChapterData
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	beq _080C17A0
	cmp r0, #3
	beq _080C17C8
_080C17A0:
	movs r2, #0
	ldr r4, _080C17C0  @ gUnknown_082069D8
	ldrb r0, [r4]
	ldr r1, _080C17C4  @ gUnknown_082069EE
	cmp r0, r3
	beq _080C17E2
_080C17AC:
	adds r2, #1
	cmp r2, #0xa
	bhi _080C17E2
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, r3
	bne _080C17AC
	b _080C17E2
	.align 2, 0
_080C17BC: .4byte gRAMChapterData
_080C17C0: .4byte gUnknown_082069D8
_080C17C4: .4byte gUnknown_082069EE
_080C17C8:
	movs r2, #0
	ldr r4, _080C17F8  @ gUnknown_082069E3
	ldrb r0, [r4]
	ldr r1, _080C17FC  @ gUnknown_08206A51
	cmp r0, r3
	beq _080C17E2
_080C17D4:
	adds r2, #1
	cmp r2, #0xa
	bhi _080C17E2
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, r3
	bne _080C17D4
_080C17E2:
	lsls r0, r2, #3
	adds r0, r0, r2
	adds r4, r0, r1
	adds r0, r2, #0
	bl sub_80C16F4
	mov r8, r0
	cmp r0, #0
	bgt _080C1822
_080C17F4:
	movs r0, #0
	b _080C18C2
	.align 2, 0
_080C17F8: .4byte gUnknown_082069E3
_080C17FC: .4byte gUnknown_08206A51
_080C1800:
	ldr r0, _080C1810  @ gRAMChapterData
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	beq _080C180C
	cmp r0, #3
	beq _080C181C
_080C180C:
	ldr r4, _080C1814  @ gUnknown_08206A48
	b _080C181E
	.align 2, 0
_080C1810: .4byte gRAMChapterData
_080C1814: .4byte gUnknown_08206A48
_080C1818:
	adds r0, r6, #0
	b _080C18C2
_080C181C:
	ldr r4, _080C18D4  @ gUnknown_08206AAB
_080C181E:
	movs r0, #3
	mov r8, r0
_080C1822:
	mov r0, sp
	adds r1, r4, #0
	movs r2, #9
	bl memcpy
	movs r6, #0
	add r1, sp, #0x10
	mov sl, r1
	ldr r3, _080C18D8  @ gUnknown_08206948
	ldr r0, _080C18DC  @ gUnknown_03005280
	ldrb r1, [r0, #0x11]
	movs r2, #0
_080C183A:
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, r1
	bne _080C1848
	mov r4, sp
	adds r0, r4, r6
	strb r2, [r0]
_080C1848:
	adds r6, #1
	cmp r6, #8
	bls _080C183A
	mov r0, sl
	bl StoreRNState
	ldr r5, _080C18E0  @ gGmMonsterRnState
	adds r0, r5, #0
	bl LoadRNState
	movs r6, #0
	cmp r6, r8
	bge _080C18B4
	mov r9, r6
	add r7, sp, #0xc
	ldr r4, [sp, #0x18]
_080C1868:
	mov r0, sp
	movs r1, #9
	bl sub_80C1724
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1818
	ldr r0, _080C18D8  @ gUnknown_08206948
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r0, [r4]
	bl WMLoc_GetChapterId
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_8083400
	movs r0, #3
	bl NextRN_N
	adds r1, r7, r0
	ldrb r1, [r1]
	strb r1, [r4, #1]
	mov r1, r9
	strb r1, [r4, #2]
	ldr r2, _080C18E4  @ gUnknown_03005349
	adds r1, r6, r2
	strb r0, [r1]
	mov r1, sp
	adds r0, r1, r5
	mov r2, r9
	strb r2, [r0]
	adds r4, #4
	adds r6, #1
	cmp r6, r8
	blt _080C1868
_080C18B4:
	ldr r0, _080C18E0  @ gGmMonsterRnState
	bl StoreRNState
	mov r0, sl
	bl LoadRNState
	mov r0, r8
_080C18C2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C18D4: .4byte gUnknown_08206AAB
_080C18D8: .4byte gUnknown_08206948
_080C18DC: .4byte gUnknown_03005280
_080C18E0: .4byte gGmMonsterRnState
_080C18E4: .4byte gUnknown_03005349

	THUMB_FUNC_END sub_80C1774

	THUMB_FUNC_START nullsub_72
nullsub_72: @ 0x080C18E8
	bx lr

	THUMB_FUNC_END nullsub_72

	THUMB_FUNC_START sub_80C18EC
sub_80C18EC: @ 0x080C18EC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	bl sub_80BD048
	adds r1, r4, #0
	adds r1, #0x2c
	bl sub_80C1774
	adds r1, r4, #0
	adds r1, #0x38
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C1918
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
_080C1918:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C18EC

	THUMB_FUNC_START sub_80C1920
sub_80C1920: @ 0x080C1920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080C1A30
	ldr r0, _080C1A40  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C194C
	ldr r0, _080C1A44  @ 0x00000312
	bl m4aSongNumStart
_080C194C:
	movs r6, #0
	adds r0, r7, #0
	adds r0, #0x38
	str r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r6, r0
	bge _080C1A2A
	add r1, sp, #8
	mov sl, r1
	movs r2, #0xa
	add r2, sp
	mov r9, r2
	add r3, sp, #0xc
	mov r8, r3
	adds r5, r7, #0
	adds r5, #0x2c
	movs r0, #0
	str r0, [sp, #0x14]
_080C1970:
	ldrb r0, [r5]
	lsls r0, r0, #5
	ldr r1, _080C1A48  @ gUnknown_082060B0
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	mov r2, sl
	strh r0, [r2]
	ldrb r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0, #0x1a]
	mov r3, r9
	strh r0, [r3]
	ldr r0, _080C1A4C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldrh r0, [r0, #0x34]
	mov r1, r8
	strh r0, [r1]
	mov r4, sp
	adds r4, #0xe
	ldr r0, _080C1A4C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldrh r2, [r0, #0x36]
	strh r2, [r4]
	mov r3, sl
	ldrh r0, [r3]
	mov r3, r8
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r3, r9
	ldrh r0, [r3]
	subs r0, r0, r2
	adds r0, #8
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xaf
	bhi _080C19EE
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xef
	bhi _080C19EE
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	ldr r0, _080C1A50  @ gUnknown_08A97AEC
	movs r3, #0xe2
	lsls r3, r3, #6
	bl APProc_Create
	adds r1, r7, #0
	adds r1, #0x3c
	ldr r2, [sp, #0x14]
	adds r1, r1, r2
	str r0, [r1]
_080C19EE:
	adds r4, r6, #4
	ldrb r1, [r5, #1]
	ldrb r3, [r5]
	adds r0, r4, #0
	movs r2, #1
	bl WM_PutClassSprite
	ldr r0, _080C1A54  @ gUnknown_03005280
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1, #0x10]
	ldr r0, _080C1A4C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r4, #0
	bl sub_80BDDC4
	adds r5, #4
	ldr r3, [sp, #0x14]
	adds r3, #4
	str r3, [sp, #0x14]
	adds r6, #1
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r6, r0
	blt _080C1970
_080C1A2A:
	adds r0, r7, #0
	bl Proc_Break
_080C1A30:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1A40: .4byte gRAMChapterData
_080C1A44: .4byte 0x00000312
_080C1A48: .4byte gUnknown_082060B0
_080C1A4C: .4byte gUnknown_08A3D748
_080C1A50: .4byte gUnknown_08A97AEC
_080C1A54: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80C1920

	THUMB_FUNC_START sub_80C1A58
sub_80C1A58: @ 0x080C1A58
	push {r4, lr}
	adds r4, r0, #0
	bl APProc_Exists
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C1A6C
	adds r0, r4, #0
	bl Proc_Break
_080C1A6C:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1A58

	THUMB_FUNC_START sub_80C1A74
sub_80C1A74: @ 0x080C1A74
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	bne _080C1A8C
	ldr r0, _080C1A88  @ gUnknown_08A3EAA8
	movs r1, #3
	bl Proc_Start
	b _080C1A94
	.align 2, 0
_080C1A88: .4byte gUnknown_08A3EAA8
_080C1A8C:
	ldr r0, _080C1AAC  @ gUnknown_08A3EAA8
	adds r1, r2, #0
	bl Proc_StartBlocking
_080C1A94:
	adds r1, r0, #0
	cmp r4, #0
	beq _080C1AA2
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	str r0, [r4]
_080C1AA2:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1AAC: .4byte gUnknown_08A3EAA8

	THUMB_FUNC_END sub_80C1A74

	THUMB_FUNC_START sub_80C1AB0
sub_80C1AB0: @ 0x080C1AB0
	push {r4, lr}
	ldr r0, _080C1AD4  @ gUnknown_08A3EAA8
	bl Proc_EndEach
	movs r4, #0
_080C1ABA:
	ldr r0, _080C1AD8  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r4, #4
	bl MapMU_RemoveUnit
	adds r4, #1
	cmp r4, #2
	ble _080C1ABA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C1AD4: .4byte gUnknown_08A3EAA8
_080C1AD8: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C1AB0

	THUMB_FUNC_START sub_80C1ADC
sub_80C1ADC: @ 0x080C1ADC
	push {lr}
	ldr r0, _080C1AF4  @ gUnknown_08A3EAA8
	bl Proc_Find
	cmp r0, #0
	beq _080C1AF0
	adds r1, r0, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
_080C1AF0:
	pop {r0}
	bx r0
	.align 2, 0
_080C1AF4: .4byte gUnknown_08A3EAA8

	THUMB_FUNC_END sub_80C1ADC

	THUMB_FUNC_START sub_80C1AF8
sub_80C1AF8: @ 0x080C1AF8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	movs r6, #4
	ldr r0, _080C1B54  @ gUnknown_03005280
	add r1, sp, #4
	mov r8, r1
	adds r5, r0, #0
	adds r5, #0x10
	ldr r3, _080C1B58  @ gUnknown_082060B0
	mov r9, r3
	mov r7, sp
	adds r7, #6
_080C1B16:
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080C1BC6
	ldrb r1, [r5, #0x10]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080C1B60
	ldr r0, _080C1B5C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r3, [r0, #0x54]
	ldrb r1, [r5, #0x10]
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0
	cmp r0, #0
	beq _080C1B42
	movs r0, #0x12
	ldrsh r2, [r5, r0]
_080C1B42:
	ldrb r0, [r5, #0x11]
	str r0, [sp]
	adds r0, r3, #0
	adds r1, r6, #0
	movs r3, #1
	negs r3, r3
	bl MapMU_SetUnitClass
	b _080C1B88
	.align 2, 0
_080C1B54: .4byte gUnknown_03005280
_080C1B58: .4byte gUnknown_082060B0
_080C1B5C: .4byte gUnknown_08A3D748
_080C1B60:
	ldr r0, _080C1BDC  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r3, [r0, #0x54]
	ldrb r1, [r5, #0x10]
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0
	cmp r0, #0
	bne _080C1B78
	movs r1, #0x12
	ldrsh r2, [r5, r1]
_080C1B78:
	ldrb r0, [r5, #0x11]
	str r0, [sp]
	adds r0, r3, #0
	adds r1, r6, #0
	movs r3, #1
	negs r3, r3
	bl MapMU_SetUnitChar
_080C1B88:
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #5
	add r0, r9
	ldrh r0, [r0, #0x18]
	mov r3, r8
	strh r0, [r3]
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #5
	add r0, r9
	ldrh r0, [r0, #0x1a]
	strh r0, [r7]
	ldr r4, _080C1BDC  @ gUnknown_08A3D748
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r1, r8
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	ldrsh r3, [r7, r1]
	adds r1, r6, #0
	bl sub_80BE35C
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x54]
	adds r1, r6, #0
	bl sub_80BDDC4
_080C1BC6:
	adds r5, #4
	adds r6, #1
	cmp r6, #6
	ble _080C1B16
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1BDC: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C1AF8

	THUMB_FUNC_START sub_80C1BE0
sub_80C1BE0: @ 0x080C1BE0
	push {lr}
	ldr r0, _080C1BF4  @ gUnknown_08A3EAA8
	bl Proc_Find
	cmp r0, #0
	beq _080C1BEE
	movs r0, #1
_080C1BEE:
	pop {r1}
	bx r1
	.align 2, 0
_080C1BF4: .4byte gUnknown_08A3EAA8

	THUMB_FUNC_END sub_80C1BE0

	THUMB_FUNC_START sub_80C1BF8
sub_80C1BF8: @ 0x080C1BF8
	push {r4, r5, r6, lr}
	ldr r0, _080C1C4C  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r6, r3, #0
	cmp r3, #0xe4
	bne _080C1C0C
	movs r3, #0
_080C1C0C:
	cmp r3, #0x9f
	bhi _080C1C60
	ldr r0, _080C1C50  @ gUnknown_0201C5D1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080C1CB0
	ldr r0, _080C1C54  @ gUnknown_0201C5D0
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #6
	ldr r1, _080C1C58  @ gUnknown_0201BE32
	adds r0, r0, r1
	lsls r1, r3, #1
	adds r1, r0, r1
	ldr r4, _080C1C5C  @ gUnknown_0201C5C0
	movs r5, #0xa0
	lsls r5, r5, #1
	movs r3, #2
_080C1C36:
	ldr r2, [r4]
	cmp r2, #0
	beq _080C1C40
	ldrh r0, [r1]
	strh r0, [r2]
_080C1C40:
	adds r1, r1, r5
	adds r4, #4
	subs r3, #1
	cmp r3, #0
	bge _080C1C36
	b _080C1CB0
	.align 2, 0
_080C1C4C: .4byte 0x04000006
_080C1C50: .4byte gUnknown_0201C5D1
_080C1C54: .4byte gUnknown_0201C5D0
_080C1C58: .4byte gUnknown_0201BE32
_080C1C5C: .4byte gUnknown_0201C5C0
_080C1C60:
	cmp r3, #0xa0
	bne _080C1CB0
	ldr r0, _080C1C94  @ gUnknown_0201BE30
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080C1CAC
	ldr r1, _080C1C98  @ gUnknown_0201C5D1
	movs r0, #1
	strb r0, [r1]
	ldr r1, _080C1C9C  @ gUnknown_0201C5D0
	ldr r0, _080C1CA0  @ gUnknown_0201C5CF
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080C1CA4  @ gUnknown_0201C5B4
	ldr r1, _080C1CA8  @ gUnknown_0201C5C0
	movs r3, #2
_080C1C88:
	ldm r2!, {r0}
	stm r1!, {r0}
	subs r3, #1
	cmp r3, #0
	bge _080C1C88
	b _080C1CB0
	.align 2, 0
_080C1C94: .4byte gUnknown_0201BE30
_080C1C98: .4byte gUnknown_0201C5D1
_080C1C9C: .4byte gUnknown_0201C5D0
_080C1CA0: .4byte gUnknown_0201C5CF
_080C1CA4: .4byte gUnknown_0201C5B4
_080C1CA8: .4byte gUnknown_0201C5C0
_080C1CAC:
	ldr r0, _080C1CEC  @ gUnknown_0201C5D1
	strb r1, [r0]
_080C1CB0:
	movs r3, #0
	cmp r6, #0x9f
	bhi _080C1CB8
	adds r3, r6, #0
_080C1CB8:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _080C1CE4
	ldr r0, _080C1CF0  @ gUnknown_0201BE30
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C1CE4
	ldr r1, _080C1CF4  @ gUnknown_0203E75C
	cmp r3, #0
	bne _080C1CD8
	ldr r0, _080C1CF8  @ gUnknown_0203E754
	ldr r0, [r0]
	str r0, [r1]
_080C1CD8:
	ldr r2, _080C1CFC  @ 0x04000040
	ldr r1, [r1]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080C1CE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C1CEC: .4byte gUnknown_0201C5D1
_080C1CF0: .4byte gUnknown_0201BE30
_080C1CF4: .4byte gUnknown_0203E75C
_080C1CF8: .4byte gUnknown_0203E754
_080C1CFC: .4byte 0x04000040

	THUMB_FUNC_END sub_80C1BF8

	THUMB_FUNC_START sub_80C1D00
sub_80C1D00: @ 0x080C1D00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0
	ldr r0, _080C1D50  @ gUnknown_0201C5D0
	mov r8, r0
	ldr r6, _080C1D54  @ gUnknown_0201C5CF
	ldr r7, _080C1D58  @ gUnknown_0201C5D1
	ldr r0, _080C1D5C  @ gUnknown_0201BE30
	mov ip, r0
	ldr r5, _080C1D60  @ gUnknown_0201C5CC
	movs r2, #0
	ldr r4, _080C1D64  @ gUnknown_0201C5B4
	ldr r3, _080C1D68  @ gUnknown_0201C5C0
_080C1D1C:
	adds r0, r1, r5
	strb r2, [r0]
	stm r4!, {r2}
	stm r3!, {r2}
	adds r1, #1
	cmp r1, #2
	ble _080C1D1C
	movs r0, #0
	strb r0, [r6]
	mov r1, r8
	strb r0, [r1]
	strb r0, [r7]
	mov r1, ip
	strb r0, [r1]
	movs r0, #0
	bl SetPrimaryHBlankHandler
	ldr r0, _080C1D6C  @ sub_80C1BF8
	bl SetPrimaryHBlankHandler
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1D50: .4byte gUnknown_0201C5D0
_080C1D54: .4byte gUnknown_0201C5CF
_080C1D58: .4byte gUnknown_0201C5D1
_080C1D5C: .4byte gUnknown_0201BE30
_080C1D60: .4byte gUnknown_0201C5CC
_080C1D64: .4byte gUnknown_0201C5B4
_080C1D68: .4byte gUnknown_0201C5C0
_080C1D6C: .4byte sub_80C1BF8

	THUMB_FUNC_END sub_80C1D00

	THUMB_FUNC_START sub_80C1D70
sub_80C1D70: @ 0x080C1D70
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	bl SetPrimaryHBlankHandler
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _080C1D94  @ gUnknown_0201BE32
	ldr r2, _080C1D98  @ 0x010003C0
	bl CpuSet
	ldr r0, _080C1D9C  @ gUnknown_0201BE30
	strb r4, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C1D94: .4byte gUnknown_0201BE32
_080C1D98: .4byte 0x010003C0
_080C1D9C: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80C1D70

	THUMB_FUNC_START sub_80C1DA0
sub_80C1DA0: @ 0x080C1DA0
	adds r3, r0, #0
	ldr r0, _080C1DC0  @ gUnknown_0201C5CF
	ldrb r2, [r0]
	adds r2, r2, r1
	movs r0, #1
	ands r2, r0
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #6
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #6
	ldr r2, _080C1DC4  @ gUnknown_0201BE32
	adds r1, r1, r2
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080C1DC0: .4byte gUnknown_0201C5CF
_080C1DC4: .4byte gUnknown_0201BE32

	THUMB_FUNC_END sub_80C1DA0

	THUMB_FUNC_START sub_80C1DC8
sub_80C1DC8: @ 0x080C1DC8
	ldr r0, _080C1DD4  @ gUnknown_0201C5CF
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080C1DD4: .4byte gUnknown_0201C5CF

	THUMB_FUNC_END sub_80C1DC8

	THUMB_FUNC_START sub_80C1DD8
sub_80C1DD8: @ 0x080C1DD8
	ldr r2, _080C1DE4  @ gUnknown_0201C5B4
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080C1DE4: .4byte gUnknown_0201C5B4

	THUMB_FUNC_END sub_80C1DD8

	THUMB_FUNC_START sub_80C1DE8
sub_80C1DE8: @ 0x080C1DE8
	ldr r1, _080C1DF8  @ gUnknown_0201C5CC
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #3
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080C1DF8: .4byte gUnknown_0201C5CC

	THUMB_FUNC_END sub_80C1DE8

	THUMB_FUNC_START sub_80C1DFC
sub_80C1DFC: @ 0x080C1DFC
	ldr r1, _080C1E10  @ gUnknown_0201C5CC
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #3
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080C1E10: .4byte gUnknown_0201C5CC

	THUMB_FUNC_END sub_80C1DFC

	THUMB_FUNC_START sub_80C1E14
sub_80C1E14: @ 0x080C1E14
	ldr r1, _080C1E28  @ gUnknown_0201C5CC
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #3
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_080C1E28: .4byte gUnknown_0201C5CC

	THUMB_FUNC_END sub_80C1E14

	THUMB_FUNC_START sub_80C1E2C
sub_80C1E2C: @ 0x080C1E2C
	push {lr}
	ldr r0, [r0, #0x14]
	ldrh r1, [r0, #0x2e]
	ldrh r2, [r0, #0x30]
	movs r0, #1
	bl BG_SetPosition
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1E2C

	THUMB_FUNC_START sub_80C1E40
sub_80C1E40: @ 0x080C1E40
	push {lr}
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r3, #0x30
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_80C2488
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1E40

	THUMB_FUNC_START sub_80C1E54
sub_80C1E54: @ 0x080C1E54
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x32]
	subs r0, #1
	strh r0, [r1, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C1E6A
	adds r0, r1, #0
	bl Proc_Break
_080C1E6A:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1E54

	THUMB_FUNC_START sub_80C1E70
sub_80C1E70: @ 0x080C1E70
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	bl sub_80C2488
	movs r0, #0
	strh r0, [r4, #0x34]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1E70

	THUMB_FUNC_START sub_80C1E8C
sub_80C1E8C: @ 0x080C1E8C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrh r0, [r7, #0x34]
	adds r0, #1
	strh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x36
	ldrsh r1, [r7, r2]
	cmp r0, r1
	bge _080C1EFE
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	movs r2, #0x36
	ldrsh r1, [r7, r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	bl sub_8014CA4
	adds r5, r0, #0
	movs r6, #0x80
	lsls r6, r6, #5
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x2a
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	ldrh r4, [r7, #0x2a]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	movs r2, #0x2c
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	bl DivArm
	ldrh r1, [r7, #0x2c]
	adds r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80C2488
	b _080C1F10
_080C1EFE:
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	bl sub_80C2488
	adds r0, r7, #0
	bl Proc_Break
_080C1F10:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C1E8C

	THUMB_FUNC_START sub_80C1F18
sub_80C1F18: @ 0x080C1F18
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _080C1F34
	ldr r0, _080C1F30  @ gUnknown_08A3EB10
	bl Proc_StartBlocking
	b _080C1F3C
	.align 2, 0
_080C1F30: .4byte gUnknown_08A3EB10
_080C1F34:
	ldr r0, _080C1F58  @ gUnknown_08A3EB10
	movs r1, #3
	bl Proc_Start
_080C1F3C:
	adds r1, r0, #0
	strh r4, [r1, #0x2a]
	strh r5, [r1, #0x2c]
	strh r6, [r1, #0x2e]
	strh r7, [r1, #0x30]
	ldr r0, [sp, #0x14]
	strh r0, [r1, #0x36]
	ldr r0, [sp, #0x18]
	strh r0, [r1, #0x32]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C1F58: .4byte gUnknown_08A3EB10

	THUMB_FUNC_END sub_80C1F18

	THUMB_FUNC_START sub_80C1F5C
sub_80C1F5C: @ 0x080C1F5C
	push {lr}
	ldr r0, _080C1F68  @ gUnknown_08A3EB10
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C1F68: .4byte gUnknown_08A3EB10

	THUMB_FUNC_END sub_80C1F5C

	THUMB_FUNC_START sub_80C1F6C
sub_80C1F6C: @ 0x080C1F6C
	push {r4, lr}
	ldr r4, _080C1FD0  @ gUnknown_08A3D748
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r1, [r0, #0x4c]
	adds r1, #0x31
	ldrb r2, [r1]
	movs r0, #4
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r1, [r0, #0x4c]
	adds r1, #0x31
	ldrb r2, [r1]
	movs r0, #3
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x48]
	bl sub_80BB6FC
	bl sub_80B8E14
	bl LoadObjUIGfx
	ldr r0, _080C1FD4  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #2
	bl BG_EnableSyncByMask
	bl LoadLegacyUiFrameGraphics
	ldr r2, _080C1FD8  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C1FD0: .4byte gUnknown_08A3D748
_080C1FD4: .4byte gBG1TilemapBuffer
_080C1FD8: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80C1F6C

	THUMB_FUNC_START sub_80C1FDC
sub_80C1FDC: @ 0x080C1FDC
	bx lr

	THUMB_FUNC_END sub_80C1FDC

	THUMB_FUNC_START sub_80C1FE0
sub_80C1FE0: @ 0x080C1FE0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080C2040  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r1, [r0, #0x4c]
	adds r1, #0x31
	ldrb r2, [r1]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _080C2044  @ gUnknown_08A99140
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C2048  @ gUnknown_08A9E4C4
	movs r1, #0xa0
	movs r2, #0x80
	bl CopyToPaletteBuffer
	ldr r0, _080C204C  @ gUnknown_08A9DF74
	ldr r4, _080C2050  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C2054  @ gBG1TilemapBuffer
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r0, #2
	bl BG_EnableSyncByMask
	ldr r0, _080C2058  @ gUnknown_08A3EAF0
	adds r1, r5, #0
	bl Proc_Start
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2040: .4byte gUnknown_08A3D748
_080C2044: .4byte gUnknown_08A99140
_080C2048: .4byte gUnknown_08A9E4C4
_080C204C: .4byte gUnknown_08A9DF74
_080C2050: .4byte gUnknown_02020188
_080C2054: .4byte gBG1TilemapBuffer
_080C2058: .4byte gUnknown_08A3EAF0

	THUMB_FUNC_END sub_80C1FE0

	THUMB_FUNC_START sub_80C205C
sub_80C205C: @ 0x080C205C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C2074
	adds r0, r2, #0
	movs r1, #0
	bl Proc_Goto
_080C2074:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C205C

	THUMB_FUNC_START sub_80C2078
sub_80C2078: @ 0x080C2078
	push {lr}
	adds r2, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C2090
	adds r0, r2, #0
	movs r1, #1
	bl Proc_Goto
_080C2090:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2078

	THUMB_FUNC_START sub_80C2094
sub_80C2094: @ 0x080C2094
	push {lr}
	adds r2, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C20AA
	adds r0, r2, #0
	bl Proc_Break
_080C20AA:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2094

	THUMB_FUNC_START sub_80C20B0
sub_80C20B0: @ 0x080C20B0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r2, _080C2108  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	strh r4, [r5, #0x2a]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2108: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C20B0

	THUMB_FUNC_START sub_80C210C
sub_80C210C: @ 0x080C210C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4a
	bhi _080C2142
	ldrh r0, [r1, #0x2a]
	lsls r0, r0, #4
	movs r1, #0x4b
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C2148
_080C2142:
	adds r0, r1, #0
	bl Proc_Break
_080C2148:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C210C

	THUMB_FUNC_START sub_80C214C
sub_80C214C: @ 0x080C214C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sl, r0
	ldr r0, _080C2238  @ gUnknown_08A97ED8
	ldr r1, _080C223C  @ 0x06005000
	bl CopyDataWithPossibleUncomp
	ldr r4, _080C2240  @ gUnknown_08A3D748
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r1, [r0, #0x4c]
	adds r1, #0x31
	ldrb r0, [r1]
	movs r2, #4
	mov r8, r2
	movs r2, #0
	mov r9, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x44]
	ldr r0, [r0, #0x4c]
	adds r0, #0x31
	ldrb r1, [r0]
	movs r5, #3
	orrs r1, r5
	strb r1, [r0]
	adds r0, r4, #0
	bl Proc_Find
	ldr r0, [r0, #0x48]
	bl sub_80BB6FC
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	mov r0, sl
	bl sub_80C22FC
	ldr r4, _080C2244  @ gLCDControlBuffer
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	ands r1, r0
	movs r6, #1
	orrs r1, r6
	strb r1, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	orrs r0, r5
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	orrs r0, r5
	strb r0, [r4, #0x18]
	mov r0, r9
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	ldrb r0, [r4, #1]
	orrs r0, r6
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r2, _080C2248  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	bl sub_80B8E14
	bl LoadObjUIGfx
	mov r0, r9
	mov r2, sl
	strh r0, [r2, #0x2a]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C2238: .4byte gUnknown_08A97ED8
_080C223C: .4byte 0x06005000
_080C2240: .4byte gUnknown_08A3D748
_080C2244: .4byte gLCDControlBuffer
_080C2248: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80C214C

	THUMB_FUNC_START sub_80C224C
sub_80C224C: @ 0x080C224C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4a
	bhi _080C2284
	ldrh r0, [r1, #0x2a]
	lsls r0, r0, #4
	movs r1, #0x4b
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C228A
_080C2284:
	adds r0, r1, #0
	bl Proc_Break
_080C228A:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C224C

	THUMB_FUNC_START sub_80C2290
sub_80C2290: @ 0x080C2290
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #2
	ldr r7, _080C22D4  @ gUnknown_03005280
	adds r4, r7, #0
	adds r4, #8
_080C229C:
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080C22B4
	ldrb r0, [r7, #0x11]
	ldrb r1, [r4, #0x11]
	cmp r0, r1
	bne _080C22B4
	ldr r0, [r6, #0x54]
	adds r1, r5, #0
	bl MapMU_RemoveUnit
_080C22B4:
	adds r4, #4
	adds r5, #1
	cmp r5, #6
	ble _080C229C
	ldr r0, _080C22D4  @ gUnknown_03005280
	ldrb r1, [r0, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C22D8
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	b _080C22E2
	.align 2, 0
_080C22D4: .4byte gUnknown_03005280
_080C22D8:
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
_080C22E2:
	strb r0, [r2]
	ldr r0, _080C22F8  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	movs r1, #0
	bl sub_80BDE3C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C22F8: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C2290

	THUMB_FUNC_START sub_80C22FC
sub_80C22FC: @ 0x080C22FC
	push {lr}
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C2318
	ldr r0, _080C231C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	movs r1, #0
	bl sub_80BDDC4
_080C2318:
	pop {r0}
	bx r0
	.align 2, 0
_080C231C: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C22FC

	THUMB_FUNC_START sub_80C2320
sub_80C2320: @ 0x080C2320
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C238C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x48]
	bl sub_80BB708
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	bl sub_80C2290
	ldr r2, _080C2390  @ gLCDControlBuffer
	ldrb r3, [r2, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0x10]
	movs r3, #3
	orrs r0, r3
	strb r0, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	orrs r0, r3
	strb r0, [r2, #0x18]
	movs r0, #2
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	ldr r2, _080C2394  @ gUnknown_03005280
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C238C: .4byte gUnknown_08A3D748
_080C2390: .4byte gLCDControlBuffer
_080C2394: .4byte gUnknown_03005280

	THUMB_FUNC_END sub_80C2320

	THUMB_FUNC_START sub_80C2398
sub_80C2398: @ 0x080C2398
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C2410  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x48]
	bl sub_80BB6FC
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	bl sub_80C22FC
	ldr r2, _080C2414  @ gLCDControlBuffer
	ldrb r3, [r2, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0x10]
	ands r1, r0
	movs r3, #1
	orrs r1, r3
	strb r1, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #1]
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r2, _080C2418  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080C241C  @ gUnknown_08A3EAF0
	bl Proc_EndEach
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2410: .4byte gUnknown_08A3D748
_080C2414: .4byte gLCDControlBuffer
_080C2418: .4byte gUnknown_03005280
_080C241C: .4byte gUnknown_08A3EAF0

	THUMB_FUNC_END sub_80C2398

	THUMB_FUNC_START Make6C_Gmap_RM
Make6C_Gmap_RM: @ 0x080C2420
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r1, r3, #0
	cmp r1, #0
	beq _080C243C
	ldr r0, _080C2438  @ gUnknown_08A3EB50
	bl Proc_StartBlocking
	b _080C2444
	.align 2, 0
_080C2438: .4byte gUnknown_08A3EB50
_080C243C:
	ldr r0, _080C245C  @ gUnknown_08A3EB50
	movs r1, #3
	bl Proc_Start
_080C2444:
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x29
	movs r0, #0xfb
	ands r0, r4
	strb r0, [r2]
	strh r5, [r1, #0x2e]
	strh r6, [r1, #0x30]
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C245C: .4byte gUnknown_08A3EB50

	THUMB_FUNC_END Make6C_Gmap_RM

	THUMB_FUNC_START sub_80C2460
sub_80C2460: @ 0x080C2460
	push {lr}
	ldr r0, _080C246C  @ gUnknown_08A3EB50
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C246C: .4byte gUnknown_08A3EB50

	THUMB_FUNC_END sub_80C2460

	THUMB_FUNC_START sub_80C2470
sub_80C2470: @ 0x080C2470
	push {lr}
	ldr r0, _080C2484  @ gUnknown_08A3EB50
	bl Proc_Find
	cmp r0, #0
	beq _080C247E
	movs r0, #1
_080C247E:
	pop {r1}
	bx r1
	.align 2, 0
_080C2484: .4byte gUnknown_08A3EB50

	THUMB_FUNC_END sub_80C2470

	THUMB_FUNC_START sub_80C2488
sub_80C2488: @ 0x080C2488
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080C24A8  @ gUnknown_08A3EB50
	bl Proc_Find
	cmp r0, #0
	beq _080C24A0
	strh r5, [r0, #0x2e]
	strh r4, [r0, #0x30]
_080C24A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C24A8: .4byte gUnknown_08A3EB50

	THUMB_FUNC_END sub_80C2488

	THUMB_FUNC_START GetWMDisplayPosition
GetWMDisplayPosition: @ 0x080C24AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080C24C4  @ gUnknown_08A3EB50
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	bne _080C24C8
	movs r0, #0
	b _080C24D2
	.align 2, 0
_080C24C4: .4byte gUnknown_08A3EB50
_080C24C8:
	ldrh r0, [r1, #0x2e]
	strh r0, [r4]
	ldrh r0, [r1, #0x30]
	strh r0, [r5]
	movs r0, #1
_080C24D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END GetWMDisplayPosition

	THUMB_FUNC_START sub_80C24D8
sub_80C24D8: @ 0x080C24D8
	push {lr}
	ldr r0, _080C24F4  @ gUnknown_08A3EB50
	bl Proc_Find
	cmp r0, #0
	beq _080C24F0
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_080C24F0:
	pop {r0}
	bx r0
	.align 2, 0
_080C24F4: .4byte gUnknown_08A3EB50

	THUMB_FUNC_END sub_80C24D8

	THUMB_FUNC_START sub_80C24F8
sub_80C24F8: @ 0x080C24F8
	push {r4, r5, lr}
	ldr r0, _080C2584  @ gUnknown_08A3EB50
	bl Proc_Find
	adds r5, r0, #0
	cmp r5, #0
	beq _080C257E
	ldr r0, _080C2588  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x48]
	bl sub_80BB6FC
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r5, #0
	bl sub_80C22FC
	ldr r2, _080C258C  @ gLCDControlBuffer
	ldrb r3, [r2, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0x10]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r3, _080C2590  @ gUnknown_03005280
	ldrb r1, [r3]
	movs r4, #9
	negs r4, r4
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r3]
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	ands r0, r4
	subs r1, #0xc
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, _080C2594  @ gUnknown_08A3EAF0
	bl Proc_EndEach
	adds r0, r5, #0
	bl Proc_End
_080C257E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2584: .4byte gUnknown_08A3EB50
_080C2588: .4byte gUnknown_08A3D748
_080C258C: .4byte gLCDControlBuffer
_080C2590: .4byte gUnknown_03005280
_080C2594: .4byte gUnknown_08A3EAF0

	THUMB_FUNC_END sub_80C24F8

	THUMB_FUNC_START sub_80C2598
sub_80C2598: @ 0x080C2598
	push {lr}
	bl sub_80B86A4
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2598

	THUMB_FUNC_START sub_80C25B8
sub_80C25B8: @ 0x080C25B8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r5, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	strh r5, [r4, #0x2a]
	adds r4, #0x29
	movs r0, #1
	strb r0, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C25B8

	THUMB_FUNC_START sub_80C25F8
sub_80C25F8: @ 0x080C25F8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2c
	bgt _080C263C
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	movs r1, #0x2d
	movs r2, #0
	bl sub_800B84C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	lsls r1, r1, #4
	bl DivArm
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	b _080C2652
_080C263C:
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
_080C2652:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C25F8

	THUMB_FUNC_START sub_80C2658
sub_80C2658: @ 0x080C2658
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2c
	bgt _080C2696
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	movs r1, #0x2d
	movs r2, #0
	bl sub_800B84C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	lsls r1, r1, #4
	bl DivArm
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C26B4
_080C2696:
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080C26B4:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2658

	THUMB_FUNC_START sub_80C26BC
sub_80C26BC: @ 0x080C26BC
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080C26D0
	ldr r0, _080C26CC  @ gUnknown_08A3EBE8
	bl Proc_StartBlocking
	b _080C26D8
	.align 2, 0
_080C26CC: .4byte gUnknown_08A3EBE8
_080C26D0:
	ldr r0, _080C26DC  @ gUnknown_08A3EBE8
	movs r1, #3
	bl Proc_Start
_080C26D8:
	pop {r1}
	bx r1
	.align 2, 0
_080C26DC: .4byte gUnknown_08A3EBE8

	THUMB_FUNC_END sub_80C26BC

	THUMB_FUNC_START sub_80C26E0
sub_80C26E0: @ 0x080C26E0
	push {lr}
	ldr r0, _080C26EC  @ gUnknown_08A3EBE8
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C26EC: .4byte gUnknown_08A3EBE8

	THUMB_FUNC_END sub_80C26E0

	THUMB_FUNC_START sub_80C26F0
sub_80C26F0: @ 0x080C26F0
	push {lr}
	ldr r0, _080C2704  @ gUnknown_08A3EBE8
	bl Proc_Find
	cmp r0, #0
	beq _080C26FE
	movs r0, #1
_080C26FE:
	pop {r1}
	bx r1
	.align 2, 0
_080C2704: .4byte gUnknown_08A3EBE8

	THUMB_FUNC_END sub_80C26F0

	THUMB_FUNC_START sub_80C2708
sub_80C2708: @ 0x080C2708
	push {lr}
	ldr r0, _080C2718  @ gUnknown_08A3EBE8
	bl Proc_Find
	cmp r0, #0
	bne _080C271C
	movs r0, #0
	b _080C2724
	.align 2, 0
_080C2718: .4byte gUnknown_08A3EBE8
_080C271C:
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_080C2724:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C2708

	THUMB_FUNC_START sub_80C2728
sub_80C2728: @ 0x080C2728
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	bl AP_Delete
	ldr r0, [r4, #0x2c]
	bl AP_Delete
	ldr r0, _080C274C  @ gUnknown_08A3EC48
	bl sub_80034FC
	cmp r0, #1
	bne _080C2746
	bl sub_80C26E0
_080C2746:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C274C: .4byte gUnknown_08A3EC48

	THUMB_FUNC_END sub_80C2728

	THUMB_FUNC_START sub_80C2750
sub_80C2750: @ 0x080C2750
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	strh r4, [r5, #0x30]
	ldr r0, _080C27A0  @ gUnknown_08A3EC48
	bl sub_80034FC
	cmp r0, #1
	bgt _080C2798
	ldr r0, _080C27A4  @ gUnknown_08A9E688
	movs r1, #0xc8
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
_080C2798:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C27A0: .4byte gUnknown_08A3EC48
_080C27A4: .4byte gUnknown_08A9E688

	THUMB_FUNC_END sub_80C2750

	THUMB_FUNC_START sub_80C27A8
sub_80C27A8: @ 0x080C27A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	mov r5, sp
	adds r5, #2
	mov r0, sp
	adds r1, r5, #0
	bl GetWMDisplayPosition
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r7, r7, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r6, r6, r0
	cmp r4, #0
	beq _080C27EA
	mov r1, r8
	ldr r0, [r1, #0x34]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r6
	adds r1, r7, #0
	bl AP_Update
	b _080C27F6
_080C27EA:
	mov r1, r8
	ldr r0, [r1, #0x34]
	adds r1, r7, #0
	adds r2, r6, #0
	bl AP_Update
_080C27F6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C27A8

	THUMB_FUNC_START sub_80C2804
sub_80C2804: @ 0x080C2804
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x15
	bgt _080C2880
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	movs r1, #0x16
	movs r2, #2
	bl sub_800B7E0
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #5
	lsls r1, r4, #4
	adds r0, r5, #0
	bl DivArm
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	subs r4, r5, r4
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r0, r5, #0
	bl DivArm
	ldr r3, _080C287C  @ gUnknown_08206AF0
	adds r1, r6, #0
	adds r1, #0x2a
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	movs r3, #8
	ldrsh r2, [r1, r3]
	adds r2, r2, r0
	movs r0, #0xa
	ldrsh r3, [r1, r0]
	adds r0, r6, #0
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #1
	bl sub_80C27A8
	b _080C28BA
	.align 2, 0
_080C287C: .4byte gUnknown_08206AF0
_080C2880:
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	strh r0, [r6, #0x30]
	ldr r2, _080C28C0  @ gUnknown_08206AF0
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #8
	ldrsh r2, [r0, r1]
	movs r1, #0xa
	ldrsh r3, [r0, r1]
	adds r0, r6, #0
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #0
	bl sub_80C27A8
	adds r0, r6, #0
	bl Proc_Break
_080C28BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C28C0: .4byte gUnknown_08206AF0

	THUMB_FUNC_END sub_80C2804

	THUMB_FUNC_START sub_80C28C4
sub_80C28C4: @ 0x080C28C4
	push {lr}
	ldr r0, _080C28D8  @ gUnknown_08A3EC48
	bl sub_80034FC
	cmp r0, #1
	bne _080C28D4
	bl sub_80C26E0
_080C28D4:
	pop {r0}
	bx r0
	.align 2, 0
_080C28D8: .4byte gUnknown_08A3EC48

	THUMB_FUNC_END sub_80C28C4

	THUMB_FUNC_START sub_80C28DC
sub_80C28DC: @ 0x080C28DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x15
	bgt _080C2954
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	movs r1, #0x16
	movs r2, #2
	bl sub_800B7E0
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #5
	lsls r1, r4, #4
	adds r0, r5, #0
	bl DivArm
	adds r2, r0, #0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r0, r5, #0
	bl DivArm
	ldr r3, _080C2950  @ gUnknown_08206AF0
	adds r1, r6, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r3, #8
	ldrsh r1, [r2, r3]
	subs r1, r1, r0
	movs r0, #0xa
	ldrsh r2, [r2, r0]
	adds r0, r6, #0
	movs r3, #1
	bl sub_80C27A8
	b _080C295E
	.align 2, 0
_080C2950: .4byte gUnknown_08206AF0
_080C2954:
	bl SetDefaultColorEffects
	adds r0, r6, #0
	bl Proc_Break
_080C295E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C28DC

	THUMB_FUNC_START sub_80C2964
sub_80C2964: @ 0x080C2964
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C2988  @ gUnknown_08A3EC48
	bl sub_80034FC
	cmp r0, #1
	bgt _080C2980
	movs r0, #0
	bl sub_80C26BC
	adds r0, r4, #0
	movs r1, #1
	bl Proc_Goto
_080C2980:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2988: .4byte gUnknown_08A3EC48

	THUMB_FUNC_END sub_80C2964

	THUMB_FUNC_START sub_80C298C
sub_80C298C: @ 0x080C298C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	adds r5, #2
	mov r0, sp
	adds r1, r5, #0
	bl GetWMDisplayPosition
	ldr r6, _080C29F4  @ gUnknown_08206AF0
	adds r7, r4, #0
	adds r7, #0x2a
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r2, sp
	ldrh r1, [r0, #8]
	ldrh r2, [r2]
	subs r1, r1, r2
	ldrh r2, [r0, #0xa]
	ldrh r0, [r5]
	subs r2, r2, r0
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r5, #0x80
	lsls r5, r5, #3
	adds r3, r5, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	orrs r2, r3
	bl AP_Update
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r2, #8
	ldrsh r1, [r0, r2]
	movs r3, #0xa
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0
	bl sub_80C27A8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C29F4: .4byte gUnknown_08206AF0

	THUMB_FUNC_END sub_80C298C

	THUMB_FUNC_START sub_80C29F8
sub_80C29F8: @ 0x080C29F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C298C
	bl sub_80C2708
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C2A14
	movs r0, #0
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Proc_Break
_080C2A14:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C29F8

	THUMB_FUNC_START sub_80C2A1C
sub_80C2A1C: @ 0x080C2A1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C298C
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080C2A38
	adds r0, r4, #0
	bl Proc_Break
_080C2A38:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2A1C

	THUMB_FUNC_START sub_80C2A40
sub_80C2A40: @ 0x080C2A40
	push {r4, r5, lr}
	sub sp, #0x18
	movs r4, #0
	ldr r1, _080C2A68  @ gUnknown_08A3EC48
	mov r0, sp
	bl Proc_FindBegin
	add r5, sp, #0xc
_080C2A50:
	mov r0, sp
	bl Proc_FindNext
	cmp r0, #0
	beq _080C2A6C
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	stm r5!, {r0}
	adds r4, #1
	b _080C2A50
	.align 2, 0
_080C2A68: .4byte gUnknown_08A3EC48
_080C2A6C:
	cmp r4, #0
	bne _080C2A78
	movs r0, #0
	b _080C2AA4
_080C2A74:
	adds r0, r3, #0
	b _080C2AA4
_080C2A78:
	movs r3, #0
	ldr r5, [sp, #0xc]
_080C2A7C:
	movs r2, #0
	cmp r2, r4
	bge _080C2A96
	cmp r3, r5
	beq _080C2A96
	add r1, sp, #0xc
_080C2A88:
	adds r1, #4
	adds r2, #1
	cmp r2, r4
	bge _080C2A96
	ldr r0, [r1]
	cmp r3, r0
	bne _080C2A88
_080C2A96:
	cmp r2, r4
	beq _080C2A74
	adds r3, #1
	cmp r3, #2
	ble _080C2A7C
	movs r0, #1
	negs r0, r0
_080C2AA4:
	add sp, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C2A40

	THUMB_FUNC_START sub_80C2AAC
sub_80C2AAC: @ 0x080C2AAC
	push {lr}
	adds r2, r0, #0
	lsls r2, r2, #0xc
	ldr r0, _080C2ACC  @ 0x06010000
	adds r2, r2, r0
	ldr r3, _080C2AD0  @ gUnknown_08206AF0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r2, #0
	bl CopyDataWithPossibleUncomp
	pop {r0}
	bx r0
	.align 2, 0
_080C2ACC: .4byte 0x06010000
_080C2AD0: .4byte gUnknown_08206AF0

	THUMB_FUNC_END sub_80C2AAC

	THUMB_FUNC_START sub_80C2AD4
sub_80C2AD4: @ 0x080C2AD4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_80C2A40
	mov r8, r0
	cmp r4, #0
	beq _080C2AF8
	ldr r0, _080C2AF4  @ gUnknown_08A3EC48
	adds r1, r4, #0
	bl Proc_StartBlocking
	b _080C2B00
	.align 2, 0
_080C2AF4: .4byte gUnknown_08A3EC48
_080C2AF8:
	ldr r0, _080C2B70  @ gUnknown_08A3EC48
	movs r1, #3
	bl Proc_Start
_080C2B00:
	adds r7, r0, #0
	mov r0, r8
	adds r1, r6, #0
	bl sub_80C2AAC
	ldr r1, _080C2B74  @ gUnknown_08206AF0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	movs r1, #0xd
	bl AP_Create
	str r0, [r7, #0x2c]
	mov r1, r8
	lsls r4, r1, #0xc
	asrs r4, r4, #5
	ldr r2, _080C2B78  @ 0xFFFF9C00
	adds r1, r2, #0
	movs r2, #0
	mov r9, r2
	orrs r4, r1
	strh r4, [r0, #0x22]
	ldr r0, [r7, #0x2c]
	movs r1, #0
	bl AP_SwitchAnimation
	adds r0, r5, #0
	movs r1, #0xd
	bl AP_Create
	str r0, [r7, #0x34]
	strh r4, [r0, #0x22]
	ldr r0, [r7, #0x34]
	movs r1, #1
	bl AP_SwitchAnimation
	adds r0, r7, #0
	adds r0, #0x2a
	strb r6, [r0]
	adds r0, #1
	mov r1, r8
	strb r1, [r0]
	subs r0, #2
	mov r2, r9
	strb r2, [r0]
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C2B70: .4byte gUnknown_08A3EC48
_080C2B74: .4byte gUnknown_08206AF0
_080C2B78: .4byte 0xFFFF9C00

	THUMB_FUNC_END sub_80C2AD4

	THUMB_FUNC_START sub_80C2B7C
sub_80C2B7C: @ 0x080C2B7C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r4, #0
	bge _080C2B9C
	ldr r0, _080C2B90  @ gUnknown_08A3EC48
	bl Proc_EndEach
	b _080C2BB8
	.align 2, 0
_080C2B90: .4byte gUnknown_08A3EC48
_080C2B94:
	adds r0, r1, #0
	bl Proc_End
	b _080C2BB8
_080C2B9C:
	ldr r1, _080C2BC0  @ gUnknown_08A3EC48
	mov r0, sp
	bl Proc_FindBegin
_080C2BA4:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, r4
	beq _080C2B94
	cmp r1, #0
	bne _080C2BA4
_080C2BB8:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2BC0: .4byte gUnknown_08A3EC48

	THUMB_FUNC_END sub_80C2B7C

	THUMB_FUNC_START sub_80C2BC4
sub_80C2BC4: @ 0x080C2BC4
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r4, #0
	bge _080C2BE0
	ldr r0, _080C2BDC  @ gUnknown_08A3EC48
	bl Proc_Find
	cmp r0, #0
	beq _080C2C06
	movs r0, #1
	b _080C2C06
	.align 2, 0
_080C2BDC: .4byte gUnknown_08A3EC48
_080C2BE0:
	ldr r1, _080C2C00  @ gUnknown_08A3EC48
	mov r0, sp
	bl Proc_FindBegin
_080C2BE8:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, r4
	beq _080C2C04
	cmp r1, #0
	bne _080C2BE8
	movs r0, #0
	b _080C2C06
	.align 2, 0
_080C2C00: .4byte gUnknown_08A3EC48
_080C2C04:
	movs r0, #1
_080C2C06:
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C2BC4

	THUMB_FUNC_START sub_80C2C10
sub_80C2C10: @ 0x080C2C10
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, _080C2C3C  @ gUnknown_08A3EC48
	mov r0, sp
	bl Proc_FindBegin
	movs r5, #1
_080C2C20:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	cmp r4, #0
	blt _080C2C40
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, r4
	bne _080C2C46
	adds r0, r1, #0
	adds r0, #0x29
	strb r5, [r0]
	b _080C2C4A
	.align 2, 0
_080C2C3C: .4byte gUnknown_08A3EC48
_080C2C40:
	adds r0, r1, #0
	adds r0, #0x29
	strb r5, [r0]
_080C2C46:
	cmp r1, #0
	bne _080C2C20
_080C2C4A:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2C10

	THUMB_FUNC_START sub_80C2C54
sub_80C2C54: @ 0x080C2C54
	bx lr

	THUMB_FUNC_END sub_80C2C54

	THUMB_FUNC_START sub_80C2C58
sub_80C2C58: @ 0x080C2C58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C2C7C  @ gUnknown_08AA11B0
	movs r1, #0xa8
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r4, #0x29
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2C7C: .4byte gUnknown_08AA11B0

	THUMB_FUNC_END sub_80C2C58

	THUMB_FUNC_START sub_80C2C80
sub_80C2C80: @ 0x080C2C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r2, [sp]
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	movs r2, #0
	bl sub_800B7E0
	mov r8, r0
	movs r0, #0
	mov r9, r0
	adds r7, r4, #0
	movs r1, #0x80
	lsls r1, r1, #5
	mov sl, r1
_080C2CA6:
	mov r2, r9
	lsls r1, r2, #1
	ldr r2, [sp]
	adds r0, r1, r2
	ldrh r4, [r0]
	adds r2, r4, #0
	movs r0, #0x1f
	ands r2, r0
	adds r6, r4, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r6, r0
	lsrs r6, r6, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r4, r0
	lsrs r4, r4, #0xa
	ldr r0, [sp, #4]
	adds r1, r1, r0
	ldrh r5, [r1]
	adds r0, r5, #0
	movs r1, #0x1f
	ands r0, r1
	subs r0, r0, r2
	mov r1, r8
	muls r1, r0, r1
	mov r0, sl
	str r2, [sp, #8]
	bl DivArm
	ldr r2, [sp, #8]
	adds r2, r2, r0
	adds r0, r5, #0
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r0, r1
	lsrs r0, r0, #5
	subs r0, r0, r6
	mov r1, r8
	muls r1, r0, r1
	mov r0, sl
	str r2, [sp, #8]
	bl DivArm
	adds r6, r6, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r5, r0
	lsrs r5, r5, #0xa
	subs r5, r5, r4
	mov r1, r8
	muls r1, r5, r1
	mov r0, sl
	bl DivArm
	adds r4, r4, r0
	lsls r4, r4, #0xa
	lsls r6, r6, #5
	adds r4, r4, r6
	ldr r2, [sp, #8]
	adds r4, r4, r2
	strh r4, [r7]
	adds r7, #2
	movs r1, #1
	add r9, r1
	mov r2, r9
	cmp r2, #0xf
	ble _080C2CA6
	bl EnablePaletteSync
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2C80

	THUMB_FUNC_START sub_80C2D44
sub_80C2D44: @ 0x080C2D44
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _080C2D80
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	ldr r2, _080C2D78  @ gUnknown_08AA11B0
	adds r3, r2, #0
	subs r3, #0x20
	ldr r1, _080C2D7C  @ gUnknown_02022B48
	str r1, [sp]
	movs r1, #0x1e
	bl sub_80C2C80
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	b _080C2D94
	.align 2, 0
_080C2D78: .4byte gUnknown_08AA11B0
_080C2D7C: .4byte gUnknown_02022B48
_080C2D80:
	ldr r0, _080C2D9C  @ gUnknown_08AA1190
	ldr r1, _080C2DA0  @ gUnknown_02022B48
	movs r2, #0x10
	bl CpuSet
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
_080C2D94:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2D9C: .4byte gUnknown_08AA1190
_080C2DA0: .4byte gUnknown_02022B48

	THUMB_FUNC_END sub_80C2D44

	THUMB_FUNC_START sub_80C2DA4
sub_80C2DA4: @ 0x080C2DA4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _080C2DD8
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	ldr r2, _080C2DD0  @ gUnknown_08AA1190
	adds r3, r2, #0
	adds r3, #0x20
	ldr r1, _080C2DD4  @ gUnknown_02022B48
	str r1, [sp]
	movs r1, #0x1e
	bl sub_80C2C80
	b _080C2DF4
	.align 2, 0
_080C2DD0: .4byte gUnknown_08AA1190
_080C2DD4: .4byte gUnknown_02022B48
_080C2DD8:
	ldr r0, _080C2DFC  @ gUnknown_08AA11B0
	ldr r1, _080C2E00  @ gUnknown_02022B48
	movs r2, #0x10
	bl CpuSet
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080C2DF4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2DFC: .4byte gUnknown_08AA11B0
_080C2E00: .4byte gUnknown_02022B48

	THUMB_FUNC_END sub_80C2DA4

	THUMB_FUNC_START sub_80C2E04
sub_80C2E04: @ 0x080C2E04
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080C2E18
	ldr r0, _080C2E14  @ gUnknown_08A3ECB0
	bl Proc_StartBlocking
	b _080C2E20
	.align 2, 0
_080C2E14: .4byte gUnknown_08A3ECB0
_080C2E18:
	ldr r0, _080C2E24  @ gUnknown_08A3ECB0
	movs r1, #3
	bl Proc_Start
_080C2E20:
	pop {r1}
	bx r1
	.align 2, 0
_080C2E24: .4byte gUnknown_08A3ECB0

	THUMB_FUNC_END sub_80C2E04

	THUMB_FUNC_START sub_80C2E28
sub_80C2E28: @ 0x080C2E28
	push {lr}
	ldr r0, _080C2E34  @ gUnknown_08A3ECB0
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C2E34: .4byte gUnknown_08A3ECB0

	THUMB_FUNC_END sub_80C2E28

	THUMB_FUNC_START sub_80C2E38
sub_80C2E38: @ 0x080C2E38
	push {lr}
	ldr r0, _080C2E4C  @ gUnknown_08A3ECB0
	bl Proc_Find
	cmp r0, #0
	beq _080C2E46
	movs r0, #1
_080C2E46:
	pop {r1}
	bx r1
	.align 2, 0
_080C2E4C: .4byte gUnknown_08A3ECB0

	THUMB_FUNC_END sub_80C2E38

	THUMB_FUNC_START sub_80C2E50
sub_80C2E50: @ 0x080C2E50
	push {lr}
	ldr r0, _080C2E60  @ gUnknown_08A3ECB0
	bl Proc_Find
	cmp r0, #0
	bne _080C2E64
	movs r0, #0
	b _080C2E6C
	.align 2, 0
_080C2E60: .4byte gUnknown_08A3ECB0
_080C2E64:
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_080C2E6C:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C2E50

	THUMB_FUNC_START sub_80C2E70
sub_80C2E70: @ 0x080C2E70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C2EA0  @ gUnknown_08A3ED18
	bl sub_80034FC
	cmp r0, #1
	bne _080C2E82
	bl sub_80C2E28
_080C2E82:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C2E9A
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _080C2E9A
	bl sub_80C13CC
_080C2E9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2EA0: .4byte gUnknown_08A3ED18

	THUMB_FUNC_END sub_80C2E70

	THUMB_FUNC_START sub_80C2EA4
sub_80C2EA4: @ 0x080C2EA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C2EE0  @ gUnknown_08A3ED18
	bl sub_80034FC
	cmp r0, #1
	bgt _080C2ED8
	movs r0, #0
	bl sub_80C2E04
	ldr r0, _080C2EE4  @ gUnknown_08AA114C
	ldr r1, _080C2EE8  @ 0x060133C0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C2EEC  @ gUnknown_08AA11B0
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	adds r0, r4, #0
	movs r1, #1
	bl Proc_Goto
_080C2ED8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2EE0: .4byte gUnknown_08A3ED18
_080C2EE4: .4byte gUnknown_08AA114C
_080C2EE8: .4byte 0x060133C0
_080C2EEC: .4byte gUnknown_08AA11B0

	THUMB_FUNC_END sub_80C2EA4

	THUMB_FUNC_START sub_80C2EF0
sub_80C2EF0: @ 0x080C2EF0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	mov r4, sp
	adds r4, #6
	add r0, sp, #4
	adds r1, r4, #0
	bl GetWMDisplayPosition
	add r0, sp, #4
	ldrh r0, [r0]
	adds r0, #4
	ldrh r2, [r5, #0x2e]
	subs r2, r2, r0
	ldrh r1, [r4]
	adds r1, #4
	ldrh r0, [r5, #0x30]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r2, r2, r0
	movs r0, #0x88
	lsls r0, r0, #0x11
	cmp r2, r0
	bhi _080C2F70
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xc0
	bhi _080C2F70
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #4
	cmp r0, #0
	beq _080C2F4C
	movs r1, #5
_080C2F4C:
	ldr r3, _080C2F78  @ gUnknown_08A3ED10
	adds r2, r5, #0
	adds r2, #0x2c
	lsls r0, r1, #0xc
	movs r1, #0xcf
	lsls r1, r1, #1
	orrs r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xb
	adds r1, r6, #0
	adds r2, r4, #0
	bl PutSprite
_080C2F70:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C2F78: .4byte gUnknown_08A3ED10

	THUMB_FUNC_END sub_80C2EF0

	THUMB_FUNC_START sub_80C2F7C
sub_80C2F7C: @ 0x080C2F7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C2EF0
	bl sub_80C2E50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C2F94
	adds r0, r4, #0
	bl Proc_Break
_080C2F94:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2F7C

	THUMB_FUNC_START sub_80C2F9C
sub_80C2F9C: @ 0x080C2F9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C2EF0
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080C2FB8
	adds r0, r4, #0
	bl Proc_Break
_080C2FB8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C2F9C

	THUMB_FUNC_START sub_80C2FC0
sub_80C2FC0: @ 0x080C2FC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _080C2FE0
	ldr r0, _080C2FDC  @ gUnknown_08A3ED18
	bl Proc_StartBlocking
	b _080C2FE8
	.align 2, 0
_080C2FDC: .4byte gUnknown_08A3ED18
_080C2FE0:
	ldr r0, _080C3030  @ gUnknown_08A3ED18
	movs r1, #3
	bl Proc_Start
_080C2FE8:
	adds r4, r0, #0
	adds r0, r4, #0
	adds r0, #0x2b
	strb r5, [r0]
	adds r0, #1
	strb r6, [r0]
	strh r7, [r4, #0x2e]
	mov r0, r8
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x2a
	mov r1, sp
	ldrb r1, [r1, #0x18]
	strb r1, [r0]
	movs r0, #2
	ldr r2, [sp, #0x18]
	ands r0, r2
	cmp r0, #0
	beq _080C3034
	movs r0, #0
	movs r1, #1
	bl sub_80C1370
	str r0, [r4, #0x34]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r4, #0x34]
	strh r7, [r0, #0x2c]
	ldr r0, [r4, #0x34]
	mov r1, r8
	strh r1, [r0, #0x2e]
	b _080C3036
	.align 2, 0
_080C3030: .4byte gUnknown_08A3ED18
_080C3034:
	str r0, [r4, #0x34]
_080C3036:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C2FC0

	THUMB_FUNC_START sub_80C304C
sub_80C304C: @ 0x080C304C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r4, #0
	bge _080C306C
	ldr r0, _080C3060  @ gUnknown_08A3ED18
	bl Proc_EndEach
	b _080C3088
	.align 2, 0
_080C3060: .4byte gUnknown_08A3ED18
_080C3064:
	adds r0, r1, #0
	bl Proc_End
	b _080C3088
_080C306C:
	ldr r1, _080C3090  @ gUnknown_08A3ED18
	mov r0, sp
	bl Proc_FindBegin
_080C3074:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, r4
	beq _080C3064
	cmp r1, #0
	bne _080C3074
_080C3088:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3090: .4byte gUnknown_08A3ED18

	THUMB_FUNC_END sub_80C304C

	THUMB_FUNC_START sub_80C3094
sub_80C3094: @ 0x080C3094
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r4, #0
	bge _080C30B0
	ldr r0, _080C30AC  @ gUnknown_08A3ED18
	bl Proc_Find
	cmp r0, #0
	beq _080C30D6
	movs r0, #1
	b _080C30D6
	.align 2, 0
_080C30AC: .4byte gUnknown_08A3ED18
_080C30B0:
	ldr r1, _080C30D0  @ gUnknown_08A3ED18
	mov r0, sp
	bl Proc_FindBegin
_080C30B8:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, r4
	beq _080C30D4
	cmp r1, #0
	bne _080C30B8
	movs r0, #0
	b _080C30D6
	.align 2, 0
_080C30D0: .4byte gUnknown_08A3ED18
_080C30D4:
	movs r0, #1
_080C30D6:
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C3094

	THUMB_FUNC_START sub_80C30E0
sub_80C30E0: @ 0x080C30E0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, _080C310C  @ gUnknown_08A3ED18
	mov r0, sp
	bl Proc_FindBegin
	movs r5, #1
_080C30F0:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	cmp r4, #0
	blt _080C3110
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, r4
	bne _080C3116
	adds r0, r1, #0
	adds r0, #0x29
	strb r5, [r0]
	b _080C311A
	.align 2, 0
_080C310C: .4byte gUnknown_08A3ED18
_080C3110:
	adds r0, r1, #0
	adds r0, #0x29
	strb r5, [r0]
_080C3116:
	cmp r1, #0
	bne _080C30F0
_080C311A:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C30E0

	THUMB_FUNC_START sub_80C3124
sub_80C3124: @ 0x080C3124
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080C3170  @ gUnknown_08A3D748
	adds r0, r5, #0
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrh r1, [r4, #0x2c]
	bl sub_80BE12C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C314C
	adds r0, r5, #0
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrh r1, [r4, #0x2c]
	bl sub_80BE330
_080C314C:
	bl sub_80BB47C
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C315E
	cmp r0, #1
	beq _080C3178
_080C315E:
	ldr r1, _080C3174  @ gUnknown_03005280
	ldrh r0, [r4, #0x2c]
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r1, [r1]
	strb r1, [r0, #0x11]
	b _080C318E
	.align 2, 0
_080C3170: .4byte gUnknown_08A3D748
_080C3174: .4byte gUnknown_03005280
_080C3178:
	adds r0, r5, #0
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrh r1, [r4, #0x2c]
	movs r3, #0x34
	ldrsh r2, [r4, r3]
	movs r5, #0x36
	ldrsh r3, [r4, r5]
	bl sub_80BE35C
_080C318E:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C31A2
	ldrh r0, [r4, #0x2c]
	bl sub_80BF570
_080C31A2:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C3124

	THUMB_FUNC_START sub_80C31A8
sub_80C31A8: @ 0x080C31A8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x3c]
	subs r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C31BE
	adds r0, r1, #0
	bl Proc_Break
_080C31BE:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C31A8

	THUMB_FUNC_START sub_80C31C4
sub_80C31C4: @ 0x080C31C4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C31DC
	adds r0, r2, #0
	movs r1, #0
	bl Proc_Goto
_080C31DC:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C31C4

	THUMB_FUNC_START sub_80C31E0
sub_80C31E0: @ 0x080C31E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C31F8
	adds r0, r2, #0
	movs r1, #4
	bl Proc_Goto
_080C31F8:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C31E0

	THUMB_FUNC_START sub_80C31FC
sub_80C31FC: @ 0x080C31FC
	push {lr}
	adds r1, r0, #0
	adds r1, #0x29
	ldrb r1, [r1]
	cmp r1, #0
	beq _080C320C
	cmp r1, #1
	beq _080C3214
_080C320C:
	movs r1, #1
	bl Proc_Goto
	b _080C321A
_080C3214:
	movs r1, #2
	bl Proc_Goto
_080C321A:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C31FC

	THUMB_FUNC_START sub_80C3220
sub_80C3220: @ 0x080C3220
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C3240  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrh r1, [r4, #0x2c]
	movs r2, #0x1e
	bl sub_80BE40C
	ldrh r0, [r4, #0x2c]
	bl sub_80BF554
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3240: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C3220

	THUMB_FUNC_START sub_80C3244
sub_80C3244: @ 0x080C3244
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C3260  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrh r1, [r4, #0x2c]
	movs r2, #0x1e
	bl sub_80BE42C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3260: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C3244

	THUMB_FUNC_START sub_80C3264
sub_80C3264: @ 0x080C3264
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80BE44C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C3278
	adds r0, r4, #0
	bl Proc_Break
_080C3278:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C3264

	THUMB_FUNC_START sub_80C3280
sub_80C3280: @ 0x080C3280
	push {lr}
	sub sp, #0x10
	adds r3, r0, #0
	mov r1, sp
	ldrh r0, [r3, #0x2c]
	movs r2, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r0, [r0]
	strh r0, [r1, #6]
	adds r0, r3, #0
	adds r0, #0x34
	ldrb r0, [r0]
	strh r0, [r1, #8]
	movs r1, #0x3a
	ldrsh r0, [r3, r1]
	str r0, [sp, #0xc]
	mov r0, sp
	strh r2, [r0, #0xa]
	mov r2, sp
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	strb r0, [r2, #2]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #3]
	movs r0, #4
	strb r0, [r1, #4]
	ldr r0, _080C32E0  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r1, sp
	bl sub_80BDEB4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_080C32E0: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C3280

	THUMB_FUNC_START sub_80C32E4
sub_80C32E4: @ 0x080C32E4
	push {lr}
	sub sp, #0x14
	adds r3, r0, #0
	mov r1, sp
	ldrh r0, [r3, #0x2c]
	movs r2, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x39
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldrh r0, [r3, #0x30]
	strh r0, [r1, #6]
	ldrh r0, [r3, #0x32]
	strh r0, [r1, #8]
	ldrh r0, [r3, #0x34]
	strh r0, [r1, #0xa]
	ldrh r0, [r3, #0x36]
	strh r0, [r1, #0xc]
	movs r1, #0x3a
	ldrsh r0, [r3, r1]
	str r0, [sp, #0x10]
	mov r0, sp
	strh r2, [r0, #0xe]
	mov r2, sp
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	strb r0, [r2, #3]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #4]
	movs r0, #4
	strb r0, [r1, #5]
	ldr r0, _080C334C  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r1, sp
	bl sub_80BDFA4
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_080C334C: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C32E4

	THUMB_FUNC_START sub_80C3350
sub_80C3350: @ 0x080C3350
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C3374  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	ldrh r1, [r4, #0x2c]
	bl sub_80BE12C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C336E
	adds r0, r4, #0
	bl Proc_Break
_080C336E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3374: .4byte gUnknown_08A3D748

	THUMB_FUNC_END sub_80C3350

	THUMB_FUNC_START sub_80C3378
sub_80C3378: @ 0x080C3378
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	cmp r1, #0
	beq _080C3390
	ldr r0, _080C338C  @ gUnknown_08A3ED60
	bl Proc_StartBlocking
	b _080C3398
	.align 2, 0
_080C338C: .4byte gUnknown_08A3ED60
_080C3390:
	ldr r0, _080C33D0  @ gUnknown_08A3ED60
	movs r1, #3
	bl Proc_Start
_080C3398:
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2a
	strb r5, [r0]
	ldrb r0, [r4]
	strh r0, [r2, #0x2c]
	ldrb r1, [r4, #1]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r1, [r4, #6]
	subs r0, #8
	strb r1, [r0]
	ldrh r1, [r4, #8]
	adds r0, #4
	strb r1, [r0]
	ldrh r0, [r4, #0xa]
	strh r0, [r2, #0x3c]
	ldr r0, [r4, #0xc]
	strh r0, [r2, #0x3a]
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C33D0: .4byte gUnknown_08A3ED60

	THUMB_FUNC_END sub_80C3378

	THUMB_FUNC_START sub_80C33D4
sub_80C33D4: @ 0x080C33D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	cmp r1, #0
	beq _080C33EC
	ldr r0, _080C33E8  @ gUnknown_08A3ED60
	bl Proc_StartBlocking
	b _080C33F4
	.align 2, 0
_080C33E8: .4byte gUnknown_08A3ED60
_080C33EC:
	ldr r0, _080C3438  @ gUnknown_08A3ED60
	movs r1, #3
	bl Proc_Start
_080C33F4:
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2a
	strb r5, [r0]
	ldrb r0, [r4]
	strh r0, [r2, #0x2c]
	ldrb r0, [r4, #1]
	adds r1, #0x10
	strb r0, [r1]
	ldrb r1, [r4, #2]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r4, #6]
	strh r0, [r2, #0x30]
	ldrh r0, [r4, #8]
	strh r0, [r2, #0x32]
	ldrh r0, [r4, #0xa]
	strh r0, [r2, #0x34]
	ldrh r0, [r4, #0xc]
	strh r0, [r2, #0x36]
	ldrh r0, [r4, #0xe]
	strh r0, [r2, #0x3c]
	ldr r0, [r4, #0x10]
	strh r0, [r2, #0x3a]
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C3438: .4byte gUnknown_08A3ED60

	THUMB_FUNC_END sub_80C33D4

	THUMB_FUNC_START sub_80C343C
sub_80C343C: @ 0x080C343C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r4, #0
	bge _080C345C
	ldr r0, _080C3450  @ gUnknown_08A3ED60
	bl Proc_EndEach
	b _080C3476
	.align 2, 0
_080C3450: .4byte gUnknown_08A3ED60
_080C3454:
	adds r0, r1, #0
	bl Proc_End
	b _080C3476
_080C345C:
	ldr r1, _080C3480  @ gUnknown_08A3ED60
	mov r0, sp
	bl Proc_FindBegin
_080C3464:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	cmp r0, r4
	beq _080C3454
	cmp r1, #0
	bne _080C3464
_080C3476:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3480: .4byte gUnknown_08A3ED60

	THUMB_FUNC_END sub_80C343C

	THUMB_FUNC_START sub_80C3484
sub_80C3484: @ 0x080C3484
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r4, #0
	bge _080C34A0
	ldr r0, _080C349C  @ gUnknown_08A3ED60
	bl Proc_Find
	cmp r0, #0
	beq _080C34C6
	movs r0, #1
	b _080C34C6
	.align 2, 0
_080C349C: .4byte gUnknown_08A3ED60
_080C34A0:
	ldr r1, _080C34C0  @ gUnknown_08A3ED60
	mov r0, sp
	bl Proc_FindBegin
_080C34A8:
	mov r0, sp
	bl Proc_FindNext
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	cmp r0, r4
	beq _080C34C4
	cmp r1, #0
	bne _080C34A8
	movs r0, #0
	b _080C34C6
	.align 2, 0
_080C34C0: .4byte gUnknown_08A3ED60
_080C34C4:
	movs r0, #1
_080C34C6:
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C3484

	THUMB_FUNC_START sub_80C34D0
sub_80C34D0: @ 0x080C34D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	movs r2, #0
	cmp r2, r7
	bge _080C357E
	movs r0, #0x1f
	mov r1, sl
	ands r1, r0
	str r1, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	mov r8, r4
	ldr r1, [sp]
	mov r9, r1
	mov r3, r9
	ands r3, r0
	mov r9, r3
_080C350A:
	subs r6, r7, r2
	mov r0, r9
	muls r0, r6, r0
	ldr r1, [sp, #8]
	adds r0, r0, r1
	adds r1, r7, #0
	str r2, [sp, #0xc]
	bl __divsi3
	adds r4, r0, #0
	movs r3, #0x1f
	ands r4, r3
	ldr r0, [sp]
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r0, r1
	muls r0, r6, r0
	mov r1, sl
	movs r3, #0xf8
	lsls r3, r3, #2
	ands r1, r3
	ldr r2, [sp, #0xc]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r7, #0
	bl __divsi3
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r0, r1
	adds r4, r4, r0
	movs r5, #0xf8
	lsls r5, r5, #7
	ldr r0, [sp]
	ands r0, r5
	muls r0, r6, r0
	mov r1, sl
	ands r1, r5
	ldr r2, [sp, #0xc]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r7, #0
	bl __divsi3
	ands r0, r5
	adds r4, r4, r0
	mov r3, r8
	strh r4, [r3]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r3, #2
	add r8, r3
	ldr r2, [sp, #0xc]
	adds r2, #1
	cmp r2, r7
	blt _080C350A
_080C357E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C34D0

	THUMB_FUNC_START sub_80C3590
sub_80C3590: @ 0x080C3590
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0
	ldr r5, _080C35BC  @ 0x06014000
	movs r4, #3
_080C359A:
	str r6, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _080C35C0  @ 0x010000E0
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080C359A
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C35BC: .4byte 0x06014000
_080C35C0: .4byte 0x010000E0

	THUMB_FUNC_END sub_80C3590

	THUMB_FUNC_START sub_80C35C4
sub_80C35C4: @ 0x080C35C4
	push {lr}
	adds r3, r0, #0
	adds r3, #0x29
	movs r2, #0
	movs r1, #1
	strb r1, [r3]
	adds r0, #0x2a
	strb r2, [r0]
	bl sub_80C3590
	ldr r2, _080C35E8  @ gUnknown_0201BE30
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080C35E8: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80C35C4

	THUMB_FUNC_START sub_80C35EC
sub_80C35EC: @ 0x080C35EC
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C3618
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _080C3608
	movs r2, #0x6f
_080C3608:
	ldr r3, _080C3620  @ gUnknown_08A3EE28
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	bl PutSpriteExt
_080C3618:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080C3620: .4byte gUnknown_08A3EE28

	THUMB_FUNC_END sub_80C35EC

	THUMB_FUNC_START sub_80C3624
sub_80C3624: @ 0x080C3624
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080C3658  @ gUnknown_08A3EE44
	bl Proc_Find
	adds r4, r0, #0
	cmp r4, #0
	beq _080C3652
	bl sub_80C3590
	ldr r2, _080C365C  @ gUnknown_0201BE30
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x29
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
_080C3652:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C3658: .4byte gUnknown_08A3EE44
_080C365C: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80C3624

	THUMB_FUNC_START sub_80C3660
sub_80C3660: @ 0x080C3660
	push {lr}
	ldr r0, _080C3684  @ gUnknown_08A3EE44
	bl Proc_Find
	adds r3, r0, #0
	cmp r3, #0
	beq _080C3680
	ldr r2, _080C3688  @ gUnknown_0201BE30
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
_080C3680:
	pop {r0}
	bx r0
	.align 2, 0
_080C3684: .4byte gUnknown_08A3EE44
_080C3688: .4byte gUnknown_0201BE30

	THUMB_FUNC_END sub_80C3660

	THUMB_FUNC_START sub_80C368C
sub_80C368C: @ 0x080C368C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C369C  @ gUnknown_08A3EE44
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080C369C: .4byte gUnknown_08A3EE44

	THUMB_FUNC_END sub_80C368C

	THUMB_FUNC_START sub_80C36A0
sub_80C36A0: @ 0x080C36A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8006A7C
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #2
	movs r2, #2
	bl sub_80068AC
	bl EnablePaletteSync
	movs r0, #1
	movs r1, #0xf
	adds r2, r4, #0
	bl sub_8006A30
	movs r0, #4
	bl sub_8006AF0
	movs r0, #0x20
	bl sub_8006AA8
	movs r0, #0x80
	bl sub_8006AA8
	movs r0, #4
	bl sub_8006AA8
	movs r0, #1
	bl sub_8006AA8
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C36A0

	THUMB_FUNC_START sub_80C36E8
sub_80C36E8: @ 0x080C36E8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080C375C  @ gUnknown_03005280
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldr r6, [r0, #0xc]
	asrs r6, r6, #8
	adds r0, r4, #0
	adds r0, #0x2f
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r5, r5, #3
	lsls r0, r1, #6
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #1
	bl __divsi3
	adds r5, r5, r0
	adds r4, #0x30
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r4, r4, #3
	movs r0, #0x2b
	muls r0, r6, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	bl __divsi3
	adds r4, r4, r0
	subs r1, r5, #1
	adds r2, r4, #7
	adds r5, #0x1f
	ldr r0, _080C3760  @ 0x0000012F
	cmp r5, r0
	bhi _080C3754
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	blt _080C3754
	cmp r2, #0xbf
	bgt _080C3754
	ldr r0, _080C3764  @ 0x000001FF
	ands r1, r0
	movs r0, #0xff
	ands r2, r0
	ldr r3, _080C3768  @ gObject_8x8
	ldr r0, _080C376C  @ 0x000040F6
	str r0, [sp]
	movs r0, #0
	bl PutSpriteExt
_080C3754:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C375C: .4byte gUnknown_03005280
_080C3760: .4byte 0x0000012F
_080C3764: .4byte 0x000001FF
_080C3768: .4byte gObject_8x8
_080C376C: .4byte 0x000040F6

	THUMB_FUNC_END sub_80C36E8

	THUMB_FUNC_START sub_80C3770
sub_80C3770: @ 0x080C3770
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080C37F4  @ gUnknown_03005280
	bl sub_80BD014
	cmp r0, #0
	blt _080C37EA
	lsls r0, r0, #5
	ldr r1, _080C37F8  @ gUnknown_082060B0
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	movs r2, #0x1a
	ldrsh r6, [r0, r2]
	adds r0, r4, #0
	adds r0, #0x2f
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r5, r5, #3
	lsls r0, r1, #6
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #1
	bl __divsi3
	adds r5, r5, r0
	adds r0, r4, #0
	adds r0, #0x30
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r4, r4, #3
	movs r0, #0x2b
	muls r0, r6, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	bl __divsi3
	adds r4, r4, r0
	subs r1, r5, #1
	adds r2, r4, #7
	adds r5, #0x1f
	ldr r0, _080C37FC  @ 0x0000012F
	cmp r5, r0
	bhi _080C37EA
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	blt _080C37EA
	cmp r2, #0xbf
	bgt _080C37EA
	ldr r0, _080C3800  @ 0x000001FF
	ands r1, r0
	movs r0, #0xff
	ands r2, r0
	ldr r3, _080C3804  @ gObject_8x8
	ldr r0, _080C3808  @ 0x000040F7
	str r0, [sp]
	movs r0, #0
	bl PutSpriteExt
_080C37EA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C37F4: .4byte gUnknown_03005280
_080C37F8: .4byte gUnknown_082060B0
_080C37FC: .4byte 0x0000012F
_080C3800: .4byte 0x000001FF
_080C3804: .4byte gObject_8x8
_080C3808: .4byte 0x000040F7

	THUMB_FUNC_END sub_80C3770

	THUMB_FUNC_START sub_80C380C
sub_80C380C: @ 0x080C380C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _080C38A4  @ gUnknown_03005280
	ldrb r1, [r0, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C389A
	ldr r0, _080C38A8  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r4, sp
	adds r4, #6
	movs r1, #0
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_80BE3A0
	add r0, sp, #4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r6, [r4, r0]
	adds r0, r7, #0
	adds r0, #0x2f
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r5, r5, #3
	lsls r0, r1, #6
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #1
	bl __divsi3
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0x30
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r4, r4, #3
	movs r0, #0x2b
	muls r0, r6, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	bl __divsi3
	adds r4, r4, r0
	subs r1, r5, #3
	adds r2, r4, #7
	adds r5, #0x1d
	ldr r0, _080C38AC  @ 0x0000012F
	cmp r5, r0
	bhi _080C389A
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	blt _080C389A
	cmp r2, #0xbf
	bgt _080C389A
	ldr r0, _080C38B0  @ 0x000001FF
	ands r1, r0
	movs r0, #0xff
	ands r2, r0
	ldr r3, _080C38B4  @ gObject_8x8
	ldr r0, _080C38B8  @ 0x000090F4
	str r0, [sp]
	movs r0, #0
	bl PutSpriteExt
_080C389A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C38A4: .4byte gUnknown_03005280
_080C38A8: .4byte gUnknown_08A3D748
_080C38AC: .4byte 0x0000012F
_080C38B0: .4byte 0x000001FF
_080C38B4: .4byte gObject_8x8
_080C38B8: .4byte 0x000090F4

	THUMB_FUNC_END sub_80C380C

	THUMB_FUNC_START sub_80C38BC
sub_80C38BC: @ 0x080C38BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #4
	mov r9, r1
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x1c]
	movs r3, #0x12
	add r3, sp
	mov sl, r3
	add r0, sp, #4
	mov r8, r0
_080C38E2:
	ldr r1, _080C3A10  @ gUnknown_03005280
	mov r2, r9
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r1, [r0, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C3956
	ldr r0, _080C3A14  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x54]
	mov r1, r9
	ldr r2, [sp, #0x1c]
	mov r3, sl
	bl sub_80BE3A0
	ldr r3, [sp, #0x1c]
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r2, sl
	movs r3, #0
	ldrsh r6, [r2, r3]
	ldr r0, [sp, #0x14]
	adds r0, #0x2f
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r5, r5, #3
	lsls r0, r1, #6
	subs r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #1
	bl __divsi3
	adds r5, r5, r0
	ldr r0, [sp, #0x14]
	adds r0, #0x30
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r4, r4, #3
	movs r0, #0x2b
	muls r0, r6, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	bl __divsi3
	adds r4, r4, r0
	subs r5, #3
	mov r0, r8
	strh r5, [r0]
	adds r4, #7
	strh r4, [r0, #2]
	movs r1, #4
	add r8, r1
	ldr r2, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x18]
_080C3956:
	movs r3, #1
	add r9, r3
	mov r0, r9
	cmp r0, #6
	ble _080C38E2
	movs r5, #0
	ldr r1, [sp, #0x18]
	subs r1, #1
	mov r8, r1
	cmp r5, r8
	bge _080C39B6
_080C396C:
	adds r6, r5, #1
	ldr r2, [sp, #0x18]
	cmp r6, r2
	bge _080C39B0
	lsls r0, r5, #2
	mov r4, sp
	adds r4, r4, r0
	adds r4, #4
	lsls r0, r6, #2
	adds r2, r0, #0
	add r2, sp
	adds r2, #4
	ldr r3, [sp, #0x18]
	subs r5, r3, r6
_080C3988:
	ldrh r0, [r4, #2]
	movs r3, #2
	ldrsh r1, [r2, r3]
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r1, r0
	bge _080C39A8
	ldrh r7, [r4]
	orrs r7, r3
	ldrh r0, [r2]
	strh r0, [r4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	strh r7, [r2]
	asrs r0, r7, #0x10
	strh r0, [r2, #2]
_080C39A8:
	adds r2, #4
	subs r5, #1
	cmp r5, #0
	bne _080C3988
_080C39B0:
	adds r5, r6, #0
	cmp r5, r8
	blt _080C396C
_080C39B6:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _080C3A00
	ldr r7, _080C3A18  @ 0x0000012F
	add r4, sp, #4
	movs r6, #0x20
	negs r6, r6
	adds r5, r0, #0
_080C39C6:
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	bhi _080C39F8
	ldrh r3, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, r6
	blt _080C39F8
	cmp r0, #0xbf
	bgt _080C39F8
	ldr r0, _080C3A1C  @ 0x000001FF
	adds r1, r0, #0
	ands r1, r2
	movs r2, #0xff
	ands r2, r3
	ldr r0, _080C3A20  @ 0x000090F5
	str r0, [sp]
	movs r0, #0
	ldr r3, _080C3A24  @ gObject_8x8
	bl PutSpriteExt
_080C39F8:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bne _080C39C6
_080C3A00:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3A10: .4byte gUnknown_03005280
_080C3A14: .4byte gUnknown_08A3D748
_080C3A18: .4byte 0x0000012F
_080C3A1C: .4byte 0x000001FF
_080C3A20: .4byte 0x000090F5
_080C3A24: .4byte gObject_8x8

	THUMB_FUNC_END sub_80C38BC

	THUMB_FUNC_START sub_80C3A28
sub_80C3A28: @ 0x080C3A28
	push {lr}
	ldr r0, _080C3A54  @ gUnknown_08A3D748
	bl Proc_Find
	ldr r0, [r0, #0x50]
	adds r0, #0x34
	ldrb r1, [r0]
	ldr r2, _080C3A58  @ gUnknown_02022BC8
	lsls r1, r1, #1
	ldr r0, _080C3A5C  @ gUnknown_08AA1930
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	ldr r0, _080C3A60  @ gUnknown_08AA1950
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xe]
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_080C3A54: .4byte gUnknown_08A3D748
_080C3A58: .4byte gUnknown_02022BC8
_080C3A5C: .4byte gUnknown_08AA1930
_080C3A60: .4byte gUnknown_08AA1950

	THUMB_FUNC_END sub_80C3A28

	THUMB_FUNC_START sub_80C3A64
sub_80C3A64: @ 0x080C3A64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C3770
	adds r0, r4, #0
	bl sub_80C38BC
	adds r0, r4, #0
	bl sub_80C380C
	adds r0, r4, #0
	bl sub_80C36E8
	adds r0, r4, #0
	bl sub_80C3A28
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C3A64

	THUMB_FUNC_START sub_80C3A8C
sub_80C3A8C: @ 0x080C3A8C
	push {r4, lr}
	ldr r4, _080C3AAC  @ gUnknown_0201B458
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl TileMap_FillRect
	ldr r1, _080C3AB0  @ gUnknown_08AA18AC
	ldr r2, _080C3AB4  @ 0x000071E0
	adds r0, r4, #0
	bl CallARM_FillTileRect
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3AAC: .4byte gUnknown_0201B458
_080C3AB0: .4byte gUnknown_08AA18AC
_080C3AB4: .4byte 0x000071E0

	THUMB_FUNC_END sub_80C3A8C

	THUMB_FUNC_START sub_80C3AB8
sub_80C3AB8: @ 0x080C3AB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _080C3B38  @ gUnknown_03005280
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C3B32
	movs r0, #0
	str r0, [r5, #0x34]
	movs r0, #0x20
	movs r1, #0x20
	movs r2, #0x30
	movs r3, #0x30
	bl sub_80C089C
	adds r1, r5, #0
	adds r1, #0x2a
	strb r0, [r1]
	ldr r3, _080C3B3C  @ gUnknown_08206B70
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldrb r4, [r6]
	lsls r1, r4, #0x1a
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x31
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_80C3A8C
	adds r1, r5, #0
	adds r1, #0x2d
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x2e
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	strb r0, [r2]
	ldrb r0, [r1]
	subs r1, #2
	strb r0, [r1]
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	bl Proc_Break
_080C3B32:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C3B38: .4byte gUnknown_03005280
_080C3B3C: .4byte gUnknown_08206B70

	THUMB_FUNC_END sub_80C3AB8

	THUMB_FUNC_START sub_80C3B40
sub_80C3B40: @ 0x080C3B40
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_80C3A64
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r0, [r2]
	adds r5, r4, #0
	adds r5, #0x2b
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	adds r7, r4, #0
	adds r7, #0x2c
	strb r0, [r7]
	ldr r6, _080C3BDC  @ gUnknown_03005280
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	strb r0, [r2]
	ldr r0, [r6, #0xc]
	asrs r3, r0, #8
	strb r3, [r1]
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C3BC6
	movs r0, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0
	ble _080C3BD4
	ldrb r0, [r2]
	ldrb r5, [r5]
	cmp r0, r5
	bne _080C3B92
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	ldrb r7, [r7]
	cmp r0, r7
	beq _080C3BD4
_080C3B92:
	movs r0, #0x20
	movs r1, #0x20
	movs r2, #0x30
	movs r3, #0x30
	bl sub_80C089C
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	beq _080C3BD4
	ldrb r1, [r6]
	lsls r1, r1, #0x1a
	ldr r3, _080C3BE0  @ gUnknown_08206B70
	lsrs r2, r1, #0x1e
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	adds r0, r0, r3
	adds r1, r2, #0
	ldrb r0, [r0]
	cmp r1, r0
	beq _080C3BD4
_080C3BC6:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080C3BD4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3BDC: .4byte gUnknown_03005280
_080C3BE0: .4byte gUnknown_08206B70

	THUMB_FUNC_END sub_80C3B40

	THUMB_FUNC_START sub_80C3BE4
sub_80C3BE4: @ 0x080C3BE4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r3, _080C3C14  @ gUnknown_08206B70
	adds r0, #0x2a
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _080C3C18  @ gUnknown_03005280
	ldrb r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r5, [r2]
	cmp r5, #1
	beq _080C3C64
	cmp r5, #1
	bgt _080C3C1C
	cmp r5, #0
	beq _080C3C26
	b _080C3D0C
	.align 2, 0
_080C3C14: .4byte gUnknown_08206B70
_080C3C18: .4byte gUnknown_03005280
_080C3C1C:
	cmp r5, #2
	beq _080C3CA4
	cmp r5, #3
	beq _080C3CD4
	b _080C3D0C
_080C3C26:
	ldr r4, _080C3C5C  @ gBG0TilemapBuffer
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl TileMap_FillRect
	movs r0, #0x1c
	subs r0, r0, r6
	lsls r0, r0, #1
	ldr r1, _080C3C60  @ gUnknown_0201B430
	adds r0, r0, r1
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #8
	bl TileMap_CopyRect
	adds r0, r6, #0
	subs r0, #8
	adds r3, r7, #0
	adds r3, #0x2f
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x30
	strb r5, [r0]
	b _080C3D0C
	.align 2, 0
_080C3C5C: .4byte gBG0TilemapBuffer
_080C3C60: .4byte gUnknown_0201B430
_080C3C64:
	ldr r4, _080C3C9C  @ gUnknown_02022CD4
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080C3CA0  @ gUnknown_0201B458
	movs r1, #0x1e
	subs r1, r1, r6
	lsls r1, r1, #1
	subs r4, #0x2c
	adds r1, r1, r4
	adds r2, r6, #0
	movs r3, #8
	bl TileMap_CopyRect
	movs r0, #0x1e
	subs r0, r0, r6
	adds r3, r7, #0
	adds r3, #0x2f
	movs r1, #0
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x30
	strb r1, [r0]
	b _080C3D0C
	.align 2, 0
_080C3C9C: .4byte gUnknown_02022CD4
_080C3CA0: .4byte gUnknown_0201B458
_080C3CA4:
	ldr r4, _080C3CCC  @ gUnknown_02022FA8
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl TileMap_FillRect
	movs r0, #0x1c
	subs r0, r0, r6
	lsls r0, r0, #1
	ldr r1, _080C3CD0  @ gUnknown_0201B430
	adds r0, r0, r1
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #8
	bl TileMap_CopyRect
	adds r0, r6, #0
	subs r0, #8
	b _080C3CFE
	.align 2, 0
_080C3CCC: .4byte gUnknown_02022FA8
_080C3CD0: .4byte gUnknown_0201B430
_080C3CD4:
	ldr r4, _080C3D18  @ gUnknown_02022FD4
	adds r0, r4, #0
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl TileMap_FillRect
	ldr r0, _080C3D1C  @ gUnknown_0201B458
	movs r1, #0xcf
	lsls r1, r1, #1
	subs r1, r1, r6
	lsls r1, r1, #1
	ldr r2, _080C3D20  @ 0xFFFFFCD4
	adds r4, r4, r2
	adds r1, r1, r4
	adds r2, r6, #0
	movs r3, #0xc
	bl TileMap_CopyRect
	movs r0, #0x1e
	subs r0, r0, r6
_080C3CFE:
	adds r3, r7, #0
	adds r3, #0x2f
	strb r0, [r3]
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #0xc
	strb r0, [r1]
_080C3D0C:
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3D18: .4byte gUnknown_02022FD4
_080C3D1C: .4byte gUnknown_0201B458
_080C3D20: .4byte 0xFFFFFCD4

	THUMB_FUNC_END sub_80C3BE4

	THUMB_FUNC_START sub_80C3D24
sub_80C3D24: @ 0x080C3D24
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080C3D58  @ gUnknown_08A3EE6C
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r4, #0
	bl sub_80C3BE4
	adds r0, r4, #0
	bl sub_80C3A64
	ldr r0, [r4, #0x34]
	adds r0, #1
	str r0, [r4, #0x34]
	cmp r0, #4
	bne _080C3D52
	movs r0, #0
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080C3D52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3D58: .4byte gUnknown_08A3EE6C

	THUMB_FUNC_END sub_80C3D24

	THUMB_FUNC_START sub_80C3D5C
sub_80C3D5C: @ 0x080C3D5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080C3D98  @ gUnknown_08A3EE70
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r4, #0
	bl sub_80C3BE4
	adds r0, r4, #0
	bl sub_80C3A64
	ldr r0, [r4, #0x34]
	adds r0, #1
	str r0, [r4, #0x34]
	cmp r0, #4
	bne _080C3D90
	movs r0, #0
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x29
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080C3D90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3D98: .4byte gUnknown_08A3EE70

	THUMB_FUNC_END sub_80C3D5C

	THUMB_FUNC_START sub_80C3D9C
sub_80C3D9C: @ 0x080C3D9C
	movs r1, #0
	str r1, [r0, #0x34]
	adds r2, r0, #0
	adds r2, #0x29
	strb r1, [r2]
	adds r0, #0x2a
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80C3D9C

	THUMB_FUNC_START sub_80C3DAC
sub_80C3DAC: @ 0x080C3DAC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C3E68  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	adds r2, #0x36
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0xe
	movs r2, #3
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	ldr r0, _080C3E6C  @ gUnknown_08AA1280
	ldr r1, _080C3E70  @ 0x06003C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C3E74  @ gUnknown_08AA188C
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080C3E78  @ gUnknown_08A97A60
	movs r1, #0xc8
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	ldr r0, _080C3E7C  @ gUnknown_08A3EE74
	ldr r1, [r4, #0x14]
	bl Proc_Start
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3E68: .4byte gLCDControlBuffer
_080C3E6C: .4byte gUnknown_08AA1280
_080C3E70: .4byte 0x06003C00
_080C3E74: .4byte gUnknown_08AA188C
_080C3E78: .4byte gUnknown_08A97A60
_080C3E7C: .4byte gUnknown_08A3EE74

	THUMB_FUNC_END sub_80C3DAC

	THUMB_FUNC_START sub_80C3E80
sub_80C3E80: @ 0x080C3E80
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C3E90  @ gUnknown_08A3EED4
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080C3E90: .4byte gUnknown_08A3EED4

	THUMB_FUNC_END sub_80C3E80

	THUMB_FUNC_START sub_80C3E94
sub_80C3E94: @ 0x080C3E94
	push {lr}
	ldr r0, _080C3EB8  @ gUnknown_08A3EE74
	bl Proc_EndEach
	ldr r0, _080C3EBC  @ gUnknown_08A3EED4
	bl Proc_EndEach
	bl SetDefaultColorEffects
	ldr r0, _080C3EC0  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #2
	bl BG_EnableSyncByMask
	pop {r0}
	bx r0
	.align 2, 0
_080C3EB8: .4byte gUnknown_08A3EE74
_080C3EBC: .4byte gUnknown_08A3EED4
_080C3EC0: .4byte gBG1TilemapBuffer

	THUMB_FUNC_END sub_80C3E94

	THUMB_FUNC_START nullsub_71
nullsub_71: @ 0x080C3EC4
	bx lr

	THUMB_FUNC_END nullsub_71

	THUMB_FUNC_START sub_80C3EC8
sub_80C3EC8: @ 0x080C3EC8
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x2a
	movs r0, #0
	strb r0, [r2]
	adds r2, #1
	strb r0, [r2]
	subs r0, #1
	str r0, [r1, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80C3EC8

	THUMB_FUNC_START sub_80C3EDC
sub_80C3EDC: @ 0x080C3EDC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8002264
	adds r1, r4, #0
	adds r1, #0x30
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C3EF6
	bl Sound_GetCurrentSong
	str r0, [r4, #0x34]
_080C3EF6:
	adds r0, r4, #0
	bl sub_8099F68
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C3EDC

	THUMB_FUNC_START sub_80C3F04
sub_80C3F04: @ 0x080C3F04
	push {lr}
	adds r1, r0, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080C3F1E
	ldr r0, [r1, #0x34]
	movs r1, #1
	movs r2, #0
	bl Sound_PlaySong8002574
_080C3F1E:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C3F04

	THUMB_FUNC_START sub_80C3F24
sub_80C3F24: @ 0x080C3F24
	push {lr}
	adds r1, r0, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	beq _080C3F50
	cmp r0, #1
	bgt _080C3F3A
	cmp r0, #0
	beq _080C3F40
	b _080C3F7A
_080C3F3A:
	cmp r0, #2
	beq _080C3F60
	b _080C3F7A
_080C3F40:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _080C3F70
	adds r0, r1, #0
	movs r1, #1
	bl Proc_Goto
	b _080C3F82
_080C3F50:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _080C3F70
	adds r0, r1, #0
	movs r1, #2
	bl Proc_Goto
	b _080C3F82
_080C3F60:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _080C3F70
	adds r0, r1, #0
	movs r1, #3
	bl Proc_Goto
	b _080C3F82
_080C3F70:
	adds r0, r1, #0
	movs r1, #5
	bl Proc_Goto
	b _080C3F82
_080C3F7A:
	adds r0, r1, #0
	movs r1, #5
	bl Proc_Goto
_080C3F82:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C3F24

	THUMB_FUNC_START sub_80C3F88
sub_80C3F88: @ 0x080C3F88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl GetUnitFromCharId
	ldr r1, _080C3FAC  @ gUnknown_03005280
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #5
	ldr r2, _080C3FB0  @ gUnknown_082060B0
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	bl StartArmoryScreen
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3FAC: .4byte gUnknown_03005280
_080C3FB0: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80C3F88

	THUMB_FUNC_START sub_80C3FB4
sub_80C3FB4: @ 0x080C3FB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl GetUnitFromCharId
	ldr r1, _080C3FD8  @ gUnknown_03005280
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #5
	ldr r2, _080C3FDC  @ gUnknown_082060B0
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	adds r2, r4, #0
	bl StartVendorScreen
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C3FD8: .4byte gUnknown_03005280
_080C3FDC: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80C3FB4

	THUMB_FUNC_START sub_80C3FE0
sub_80C3FE0: @ 0x080C3FE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl GetUnitFromCharId
	ldr r1, _080C4004  @ gUnknown_03005280
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #5
	ldr r2, _080C4008  @ gUnknown_082060B0
	adds r1, r1, r2
	ldr r1, [r1, #0x14]
	adds r2, r4, #0
	bl StartSecretShopScreen
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4004: .4byte gUnknown_03005280
_080C4008: .4byte gUnknown_082060B0

	THUMB_FUNC_END sub_80C3FE0

	THUMB_FUNC_START sub_80C400C
sub_80C400C: @ 0x080C400C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _080C4020
	ldr r0, _080C401C  @ gUnknown_08A3EEEC
	bl Proc_StartBlocking
	b _080C4028
	.align 2, 0
_080C401C: .4byte gUnknown_08A3EEEC
_080C4020:
	ldr r0, _080C4034  @ gUnknown_08A3EEEC
	movs r1, #3
	bl Proc_Start
_080C4028:
	adds r1, r0, #0
	adds r1, #0x29
	strb r4, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C4034: .4byte gUnknown_08A3EEEC

	THUMB_FUNC_END sub_80C400C

	THUMB_FUNC_START sub_80C4038
sub_80C4038: @ 0x080C4038
	push {lr}
	ldr r0, _080C4044  @ gUnknown_08A3EEEC
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C4044: .4byte gUnknown_08A3EEEC

	THUMB_FUNC_END sub_80C4038

	THUMB_FUNC_START sub_80C4048
sub_80C4048: @ 0x080C4048
	push {lr}
	ldr r0, _080C4054  @ gUnknown_08A3EEEC
	bl Proc_Find
	pop {r1}
	bx r1
	.align 2, 0
_080C4054: .4byte gUnknown_08A3EEEC

	THUMB_FUNC_END sub_80C4048

	THUMB_FUNC_START sub_80C4058
sub_80C4058: @ 0x080C4058
	push {lr}
	ldr r0, _080C406C  @ gUnknown_08A3EEEC
	bl Proc_Find
	cmp r0, #0
	beq _080C4066
	movs r0, #1
_080C4066:
	pop {r1}
	bx r1
	.align 2, 0
_080C406C: .4byte gUnknown_08A3EEEC

	THUMB_FUNC_END sub_80C4058

	THUMB_FUNC_START sub_80C4070
sub_80C4070: @ 0x080C4070
	push {lr}
	bl sub_80C4048
	cmp r0, #0
	bne _080C407E
	movs r0, #0
	b _080C4082
_080C407E:
	adds r0, #0x29
	ldrb r0, [r0]
_080C4082:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C4070

	THUMB_FUNC_START sub_80C4088
sub_80C4088: @ 0x080C4088
	push {lr}
	bl sub_80C4048
	cmp r0, #0
	bne _080C4096
	movs r0, #0
	b _080C4098
_080C4096:
	ldr r0, [r0, #0x2c]
_080C4098:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80C4088

	THUMB_FUNC_START sub_80C409C
sub_80C409C: @ 0x080C409C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C4048
	cmp r0, #0
	beq _080C40AA
	str r4, [r0, #0x2c]
_080C40AA:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C409C

	THUMB_FUNC_START sub_80C40B0
sub_80C40B0: @ 0x080C40B0
	movs r1, #0
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x34]
	bx lr

	THUMB_FUNC_END sub_80C40B0

	THUMB_FUNC_START sub_80C40B8
sub_80C40B8: @ 0x080C40B8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	bgt _080C4100
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	movs r0, #0x77
	subs r0, r0, r1
	movs r1, #0x78
	movs r2, #1
	bl sub_800B84C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	subs r1, r0, r1
	lsls r1, r1, #4
	bl DivArm
	adds r2, r0, #0
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C4124
_080C4100:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0x34]
	ldr r1, [r4, #0x14]
	adds r1, #0x29
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080C4124:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C40B8

	THUMB_FUNC_START sub_80C412C
sub_80C412C: @ 0x080C412C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x34]
	subs r0, #1
	strh r0, [r2, #0x34]
	ldr r1, [r2, #0x14]
	ldr r0, [r1, #0x30]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	ldr r3, [r1, #0x40]
	cmp r0, r3
	blt _080C4150
	str r3, [r1, #0x30]
	adds r0, r2, #0
	bl Proc_Break
	b _080C4152
_080C4150:
	str r0, [r1, #0x30]
_080C4152:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C412C

	THUMB_FUNC_START sub_80C4158
sub_80C4158: @ 0x080C4158
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0x34]
	subs r0, #1
	strh r0, [r3, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C417E
	movs r0, #0
	strh r0, [r3, #0x30]
	ldr r1, [r3, #0x14]
	adds r1, #0x29
	ldrb r2, [r1]
	subs r0, #2
	ands r0, r2
	strb r0, [r1]
	adds r0, r3, #0
	bl Proc_Break
_080C417E:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C4158

	THUMB_FUNC_START sub_80C4184
sub_80C4184: @ 0x080C4184
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	bgt _080C41CA
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	movs r0, #0x77
	subs r0, r0, r1
	movs r1, #0x78
	movs r2, #1
	bl sub_800B84C
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	subs r1, r0, r1
	lsls r1, r1, #4
	bl DivArm
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C41DC
_080C41CA:
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r4, #0
	bl Proc_Break
_080C41DC:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C4184

	THUMB_FUNC_START sub_80C41E4
sub_80C41E4: @ 0x080C41E4
	ldr r1, [r0, #0x14]
	adds r1, #0x29
	ldrb r2, [r1]
	movs r0, #5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	bx lr

	THUMB_FUNC_END sub_80C41E4

	THUMB_FUNC_START sub_80C41F4
sub_80C41F4: @ 0x080C41F4
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _080C420C  @ gUnknown_08AA2044
	adds r1, r2, #0
	bl Proc_Start
	str r4, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C420C: .4byte gUnknown_08AA2044

	THUMB_FUNC_END sub_80C41F4

	THUMB_FUNC_START sub_80C4210
sub_80C4210: @ 0x080C4210
	push {lr}
	ldr r0, _080C4224  @ gUnknown_08AA2044
	bl Proc_Find
	cmp r0, #0
	beq _080C421E
	movs r0, #1
_080C421E:
	pop {r1}
	bx r1
	.align 2, 0
_080C4224: .4byte gUnknown_08AA2044

	THUMB_FUNC_END sub_80C4210

	THUMB_FUNC_START sub_80C4228
sub_80C4228: @ 0x080C4228
	push {lr}
	ldr r0, _080C4234  @ gUnknown_08AA2044
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C4234: .4byte gUnknown_08AA2044

	THUMB_FUNC_END sub_80C4228

	THUMB_FUNC_START sub_80C4238
sub_80C4238: @ 0x080C4238
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	ldr r0, [r3, #0x30]
	asrs r0, r0, #8
	cmp r0, #0
	bge _080C4250
	adds r0, #0xff
_080C4250:
	asrs r4, r0, #8
	adds r1, r3, #0
	adds r1, #0x35
	strb r4, [r1]
	ldr r0, [r3, #0x30]
	asrs r2, r0, #8
	adds r0, r2, #0
	mov r8, r1
	cmp r2, #0
	bge _080C4266
	adds r0, #0xff
_080C4266:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r2, r0
	cmp r0, #0xf
	bgt _080C4272
	b _080C4398
_080C4272:
	adds r0, r3, #0
	adds r0, #0x34
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	movs r2, #0
	ldrsb r2, [r0, r2]
	str r0, [sp, #4]
	cmp r1, r2
	bne _080C4286
	b _080C4398
_080C4286:
	adds r4, r3, #0
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	ldr r1, _080C42D4  @ gUnknown_08206E24
	mov r9, r1
	ldr r2, _080C42D8  @ gUnknown_08206FDC
	mov sl, r2
	cmp r0, #0
	bne _080C4302
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r0, #1
	cmp r2, #0x16
	bhi _080C4302
	adds r6, r3, #0
	adds r6, #0x48
	mov r7, r9
	subs r7, #0x14
	ldr r0, _080C42DC  @ gRAMChapterData
	mov ip, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r1, r0, #2
_080C42BA:
	adds r5, r1, r7
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080C42FA
	movs r0, #0
	strb r0, [r6]
	mov r1, ip
	ldrb r0, [r1, #0x1b]
	cmp r0, #2
	bne _080C42E0
	ldr r0, [r5, #4]
	b _080C42E2
	.align 2, 0
_080C42D4: .4byte gUnknown_08206E24
_080C42D8: .4byte gUnknown_08206FDC
_080C42DC: .4byte gRAMChapterData
_080C42E0:
	ldr r0, [r5, #8]
_080C42E2:
	str r0, [r3, #0x44]
	ldr r0, [r5, #0xc]
	str r0, [r3, #0x3c]
	ldr r0, [r5, #0x10]
	str r0, [r3, #0x40]
	ldrb r1, [r4]
	movs r0, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4]
	b _080C4302
_080C42FA:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #0x16
	bls _080C42BA
_080C4302:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r2, r9
	adds r5, r1, r2
	adds r2, r0, #1
	movs r0, #1
	ands r2, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _080C435C
	ldr r0, [r0]
	lsls r1, r2, #2
	add r1, sl
	ldr r4, [r1]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldr r5, _080C4354  @ gUnknown_02020188
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C4358  @ gUnknown_0201C5D4
	lsrs r4, r4, #5
	movs r1, #0xe0
	lsls r1, r1, #7
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl CallARM_FillTileRect
	b _080C4390
	.align 2, 0
_080C4354: .4byte gUnknown_02020188
_080C4358: .4byte gUnknown_0201C5D4
_080C435C:
	movs r0, #1
	negs r0, r0
	str r0, [sp]
	ldr r1, _080C43A8  @ gUnknown_08206FDC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r4, r2
	ldr r2, _080C43AC  @ 0x01000008
	mov r0, sp
	bl CpuFastSet
	lsrs r4, r4, #5
	movs r1, #0xe0
	lsls r1, r1, #7
	adds r0, r4, r1
	ldr r3, _080C43B0  @ gUnknown_0201C5D4
	movs r2, #0x80
	lsls r2, r2, #3
_080C4386:
	strh r0, [r3]
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bne _080C4386
_080C4390:
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [sp, #4]
	strb r0, [r1]
_080C4398:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C43A8: .4byte gUnknown_08206FDC
_080C43AC: .4byte 0x01000008
_080C43B0: .4byte gUnknown_0201C5D4

	THUMB_FUNC_END sub_80C4238

	THUMB_FUNC_START sub_80C43B4
sub_80C43B4: @ 0x080C43B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	asrs r5, r0, #8
	adds r0, r5, #0
	cmp r5, #0
	bge _080C43C4
	adds r0, #0xf
_080C43C4:
	asrs r0, r0, #4
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _080C440C
	adds r1, r5, #0
	adds r1, #0xf0
	adds r0, r1, #0
	cmp r1, #0
	bge _080C43E2
	ldr r2, _080C4454  @ 0x000001EF
	adds r0, r5, r2
_080C43E2:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _080C43F0
	adds r1, r0, #7
_080C43F0:
	asrs r1, r1, #3
	lsls r1, r1, #6
	ldr r0, _080C4458  @ gUnknown_0201C5D4
	adds r0, r1, r0
	ldr r2, _080C445C  @ gBG0TilemapBuffer
	adds r1, r1, r2
	movs r2, #0x20
	bl CpuFastSet
	movs r0, #1
	bl BG_EnableSyncByMask
	ldrh r0, [r4, #0x38]
	strh r0, [r4, #0x36]
_080C440C:
	bl sub_80C4210
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C443A
	ldr r0, [r4, #0x2c]
	ldr r2, [r4, #0x30]
	cmp r0, r2
	beq _080C443A
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C443A
	ldr r0, [r4, #0x3c]
	cmp r2, r0
	blt _080C443A
	ldr r1, [r4, #0x44]
	adds r0, r4, #0
	bl sub_80C41F4
_080C443A:
	movs r0, #0xff
	ands r5, r0
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	bl BG_SetPosition
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4454: .4byte 0x000001EF
_080C4458: .4byte gUnknown_0201C5D4
_080C445C: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_80C43B4

	THUMB_FUNC_START sub_80C4460
sub_80C4460: @ 0x080C4460
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	bl SetPrimaryHBlankHandler
	movs r0, #0
	bl SetupBackgrounds
	ldr r3, _080C45B8  @ gLCDControlBuffer
	ldrb r1, [r3, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r2, [r3, #0xc]
	adds r1, #0xd
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xc]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	str r4, [sp, #4]
	ldr r1, _080C45BC  @ gPaletteBuffer
	ldr r2, _080C45C0  @ 0x01000100
	add r0, sp, #4
	bl CpuFastSet
	ldr r0, _080C45C4  @ gUnknown_08A40FC8
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #1
	negs r0, r0
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, _080C45C8  @ gUnknown_08206FDC
	ldr r4, [r1]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r4, r2
	ldr r2, _080C45CC  @ 0x01000008
	bl CpuFastSet
	lsrs r4, r4, #5
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r4, r4, r0
	ldr r0, _080C45D0  @ gBG0TilemapBuffer
	movs r5, #0x80
	lsls r5, r5, #3
_080C452A:
	strh r4, [r0]
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bne _080C452A
	ldr r0, _080C45D4  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C45D8  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C45DC  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0xf
	bl BG_EnableSyncByMask
	bl EnablePaletteSync
	ldr r2, _080C45B8  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r4, #3
	negs r4, r4
	ands r0, r4
	movs r1, #5
	negs r1, r1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #1]
	bl SetDefaultColorEffects
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	str r5, [r6, #0x2c]
	str r5, [r6, #0x30]
	adds r1, r6, #0
	adds r1, #0x34
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x35
	strb r5, [r0]
	strh r5, [r6, #0x36]
	strh r5, [r6, #0x38]
	adds r0, #0x15
	strh r5, [r0]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C45B8: .4byte gLCDControlBuffer
_080C45BC: .4byte gPaletteBuffer
_080C45C0: .4byte 0x01000100
_080C45C4: .4byte gUnknown_08A40FC8
_080C45C8: .4byte gUnknown_08206FDC
_080C45CC: .4byte 0x01000008
_080C45D0: .4byte gBG0TilemapBuffer
_080C45D4: .4byte gBG1TilemapBuffer
_080C45D8: .4byte gBG2TilemapBuffer
_080C45DC: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80C4460

	THUMB_FUNC_START sub_80C45E0
sub_80C45E0: @ 0x080C45E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C465A
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #9
	bgt _080C461C
	ldr r0, [r4, #0x44]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r2, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #0xb
	ldr r2, _080C4618  @ 0x06008000
	adds r1, r1, r2
	bl CopyDataWithPossibleUncomp
	b _080C463E
	.align 2, 0
_080C4618: .4byte 0x06008000
_080C461C:
	ldr r0, _080C4660  @ gBG3TilemapBuffer
	ldr r1, [r4, #0x44]
	ldr r1, [r1, #0x28]
	movs r2, #0
	bl CallARM_FillTileRect
	movs r0, #8
	bl BG_EnableSyncByMask
	ldr r0, [r4, #0x44]
	ldr r0, [r0, #0x2c]
	movs r1, #0
	movs r2, #0xc0
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
_080C463E:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	ble _080C465A
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_080C465A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4660: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80C45E0

	THUMB_FUNC_START sub_80C4664
sub_80C4664: @ 0x080C4664
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C4688  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C468C
	bl sub_80A4CB4
	cmp r0, #0
	beq _080C468C
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
	b _080C46DA
	.align 2, 0
_080C4688: .4byte gKeyStatusPtr
_080C468C:
	ldr r1, [r4, #0x30]
	ldr r0, _080C46E0  @ 0x000037FF
	cmp r1, r0
	bgt _080C469C
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r1, r2
	str r0, [r4, #0x30]
_080C469C:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C46B0
	ldr r0, [r4, #0x30]
	adds r0, #0x80
	str r0, [r4, #0x30]
_080C46B0:
	adds r0, r4, #0
	bl sub_80C4238
	adds r0, r4, #0
	bl sub_80C43B4
	adds r0, r4, #0
	bl sub_80C45E0
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _080C46DA
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080C46DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C46E0: .4byte 0x000037FF

	THUMB_FUNC_END sub_80C4664

	THUMB_FUNC_START sub_80C46E4
sub_80C46E4: @ 0x080C46E4
	push {lr}
	bl sub_80C4228
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C46E4

	THUMB_FUNC_START sub_80C46F0
sub_80C46F0: @ 0x080C46F0
	push {lr}
	ldr r2, _080C4730  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	bl SetDefaultColorEffects
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _080C4734  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #8
	bl BG_EnableSyncByMask
	pop {r0}
	bx r0
	.align 2, 0
_080C4730: .4byte gLCDControlBuffer
_080C4734: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80C46F0

	THUMB_FUNC_START sub_80C4738
sub_80C4738: @ 0x080C4738
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080C4798  @ gUnknown_08206FB4
	ldr r5, [r0]
	ldr r0, [r5]
	ldr r1, _080C479C  @ gUnknown_08206FDC
	ldr r4, [r1]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
	ldr r0, [r5, #4]
	ldr r5, _080C47A0  @ gUnknown_02020188
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C47A4  @ gBG0TilemapBuffer
	lsrs r4, r4, #5
	movs r1, #0xe0
	lsls r1, r1, #7
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl CallARM_FillTileRect
	movs r0, #1
	bl BG_EnableSyncByMask
	ldr r1, _080C47A8  @ gPaletteBuffer
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080C47AC  @ gUnknown_08A40FC8
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	adds r6, #0x4a
	movs r0, #0xf0
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C4798: .4byte gUnknown_08206FB4
_080C479C: .4byte gUnknown_08206FDC
_080C47A0: .4byte gUnknown_02020188
_080C47A4: .4byte gBG0TilemapBuffer
_080C47A8: .4byte gPaletteBuffer
_080C47AC: .4byte gUnknown_08A40FC8

	THUMB_FUNC_END sub_80C4738

	THUMB_FUNC_START sub_80C47B0
sub_80C47B0: @ 0x080C47B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x4a
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, _080C47F0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C47D8
	bl sub_80A4CB4
	cmp r0, #0
	beq _080C47D8
	movs r0, #0
	strh r0, [r4]
_080C47D8:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080C47EA
	adds r0, r5, #0
	bl Proc_Break
_080C47EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C47F0: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80C47B0

	THUMB_FUNC_START sub_80C47F4
sub_80C47F4: @ 0x080C47F4
	push {lr}
	sub sp, #4
	ldr r0, _080C4860  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C4864  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C4868  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080C486C  @ 0x01006000
	mov r0, sp
	bl CpuFastSet
	ldr r2, _080C4870  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, _080C4874  @ gBG3TilemapBuffer
	movs r1, #1
	negs r1, r1
	bl BG_Fill
	movs r0, #8
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080C4860: .4byte gBG0TilemapBuffer
_080C4864: .4byte gBG1TilemapBuffer
_080C4868: .4byte gBG2TilemapBuffer
_080C486C: .4byte 0x01006000
_080C4870: .4byte gLCDControlBuffer
_080C4874: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80C47F4

	THUMB_FUNC_START sub_80C4878
sub_80C4878: @ 0x080C4878
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C4888  @ gUnknown_08AA2084
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080C4888: .4byte gUnknown_08AA2084

	THUMB_FUNC_END sub_80C4878

	THUMB_FUNC_START sub_80C488C
sub_80C488C: @ 0x080C488C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl GetBackgroundTileDataOffset
	adds r4, r0, #0
	ldr r0, _080C48DC  @ gUnknown_08B12DB4
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
	movs r0, #0
	str r0, [sp]
	ldr r0, _080C48E0  @ 0x06005000
	adds r4, r4, r0
	ldr r5, _080C48E4  @ 0x01000008
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	movs r0, #1
	lsls r0, r6
	bl BG_EnableSyncByMask
	ldr r0, _080C48E8  @ 0x08A708A7
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _080C48EC  @ gUnknown_02022A68
	adds r2, r5, #0
	bl CpuFastSet
	bl EnablePaletteSync
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C48DC: .4byte gUnknown_08B12DB4
_080C48E0: .4byte 0x06005000
_080C48E4: .4byte 0x01000008
_080C48E8: .4byte 0x08A708A7 @ Not a pointer - this is a palette for text shadow in the intro scroll.
_080C48EC: .4byte gUnknown_02022A68

	THUMB_FUNC_END sub_80C488C

	THUMB_FUNC_START sub_80C48F0
sub_80C48F0: @ 0x080C48F0
	push {r4, lr}
	bl BG_GetMapBuffer
	adds r2, r0, #0
	movs r4, #0xf0
	lsls r4, r4, #8
	movs r1, #0
	ldr r3, _080C4914  @ 0x0000027F
_080C4900:
	adds r0, r4, r1
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, r3
	ble _080C4900
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4914: .4byte 0x0000027F

	THUMB_FUNC_END sub_80C48F0

	THUMB_FUNC_START sub_80C4918
sub_80C4918: @ 0x080C4918
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C4940  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C4938
	movs r0, #1
	bl Sound_FadeOutBGM
	adds r0, r4, #0
	movs r1, #6
	bl Proc_Goto
_080C4938:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4940: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80C4918

	THUMB_FUNC_START sub_80C4944
sub_80C4944: @ 0x080C4944
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080C4A28  @ gUnknown_08AA213C
	bl SetupBackgrounds
	ldr r3, _080C4A2C  @ gLCDControlBuffer
	ldrb r1, [r3]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	strb r0, [r3]
	ldrb r0, [r3, #0xc]
	movs r2, #3
	orrs r0, r2
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #0x10]
	orrs r0, r2
	strb r0, [r3, #0x10]
	ldrb r1, [r3, #0x14]
	movs r0, #4
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	orrs r0, r2
	strb r0, [r3, #0x18]
	ldrb r1, [r3, #1]
	orrs r1, r4
	movs r0, #3
	negs r0, r0
	ands r1, r0
	subs r0, #2
	ands r1, r0
	subs r0, #4
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	ldrb r2, [r3, #0x15]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	strb r0, [r3, #0x15]
	ands r1, r2
	movs r0, #0x41
	negs r0, r0
	ands r1, r0
	movs r0, #0x7f
	ands r1, r0
	strb r1, [r3, #1]
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	ldr r4, _080C4A30  @ gUnknown_08B17B64
	movs r0, #2
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C4A34  @ gUnknown_08B18ED4
	movs r1, #0
	movs r2, #0x60
	bl CopyToPaletteBuffer
	ldr r0, _080C4A38  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	movs r0, #3
	movs r1, #0
	bl Sound_PlaySong80024D4
	adds r0, r6, #0
	adds r0, #0x29
	strb r5, [r0]
	movs r0, #0x3c
	strh r0, [r6, #0x2a]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C4A28: .4byte gUnknown_08AA213C
_080C4A2C: .4byte gLCDControlBuffer
_080C4A30: .4byte gUnknown_08B17B64
_080C4A34: .4byte gUnknown_08B18ED4
_080C4A38: .4byte gBG2TilemapBuffer

	THUMB_FUNC_END sub_80C4944

	THUMB_FUNC_START sub_80C4A3C
sub_80C4A3C: @ 0x080C4A3C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x4c
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x4e
	strh r2, [r0]
	ldr r0, _080C4A7C  @ gBG2TilemapBuffer
	ldr r1, _080C4A80  @ gUnknown_08B18D68
	movs r3, #5
	bl sub_800154C
	movs r0, #4
	bl BG_EnableSyncByMask
	ldr r2, _080C4A84  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_080C4A7C: .4byte gBG2TilemapBuffer
_080C4A80: .4byte gUnknown_08B18D68
_080C4A84: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C4A3C

	THUMB_FUNC_START sub_80C4A88
sub_80C4A88: @ 0x080C4A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	mov r5, r9
	adds r5, #0x4c
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x1d
	bgt _080C4AC2
	adds r3, r0, #0
	movs r4, #0x1e
	str r4, [sp]
	movs r0, #5
	movs r1, #4
	movs r2, #0x32
	bl Interpolate
	adds r7, r0, #0
	movs r0, #0
	ldrsh r3, [r5, r0]
	str r4, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x10
	b _080C4AE6
_080C4AC2:
	movs r1, #0
	ldrsh r3, [r5, r1]
	subs r3, #0x1e
	movs r4, #0x1e
	str r4, [sp]
	movs r0, #0
	movs r1, #0x32
	movs r2, #0x64
	bl Interpolate
	adds r7, r0, #0
	movs r2, #0
	ldrsh r3, [r5, r2]
	subs r3, #0x1e
	str r4, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
_080C4AE6:
	bl Interpolate
	mov sl, r0
	cmp r7, #0x31
	ble _080C4AF4
	movs r0, #0x64
	subs r7, r0, r7
_080C4AF4:
	mov r6, r9
	adds r6, #0x4c
	movs r0, #0
	ldrsh r3, [r6, r0]
	movs r4, #0x3c
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0xd6
	bl Interpolate
	adds r5, r0, #0
	movs r1, #0
	ldrsh r3, [r6, r1]
	str r4, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x80
	bl Interpolate
	adds r4, r0, #0
	movs r2, #0x4e
	add r2, r9
	mov r8, r2
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_80ADDFC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #2
	adds r1, r2, #0
	bl sub_80ADE90
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x48
	str r0, [sp]
	movs r0, #2
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x50
	bl sub_80ADEE0
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	mov r2, sl
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _080C4B90
	mov r0, r9
	bl Proc_Break
_080C4B90:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C4A88

	THUMB_FUNC_START sub_80C4BA0
sub_80C4BA0: @ 0x080C4BA0
	ldr r2, _080C4BB0  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #5
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080C4BB0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C4BA0

	THUMB_FUNC_START sub_80C4BB4
sub_80C4BB4: @ 0x080C4BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r3
	cmp r2, #0
	ble _080C4C2E
	mov r9, r1
	adds r7, r0, #0
	mov r8, r2
_080C4BCA:
	ldrh r6, [r7]
	adds r0, r6, #0
	movs r1, #0x1f
	ands r0, r1
	mov r1, sl
	muls r1, r0, r1
	movs r0, #0x80
	lsls r0, r0, #5
	bl DivArm
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	asrs r0, r6, #5
	movs r1, #0x1f
	ands r0, r1
	mov r1, sl
	muls r1, r0, r1
	movs r0, #0x80
	lsls r0, r0, #5
	bl DivArm
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	asrs r6, r6, #0xa
	movs r0, #0x1f
	ands r6, r0
	mov r1, sl
	muls r1, r6, r1
	movs r0, #0x80
	lsls r0, r0, #5
	bl DivArm
	lsls r0, r0, #0x10
	lsls r4, r4, #5
	adds r5, r5, r4
	lsrs r0, r0, #6
	adds r5, r5, r0
	mov r1, r9
	strh r5, [r1]
	movs r0, #2
	add r9, r0
	adds r7, #2
	movs r1, #1
	negs r1, r1
	add r8, r1
	mov r0, r8
	cmp r0, #0
	bne _080C4BCA
_080C4C2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C4BB4

	THUMB_FUNC_START sub_80C4C3C
sub_80C4C3C: @ 0x080C4C3C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	subs r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080C4C52
	adds r0, r4, #0
	bl Proc_Break
_080C4C52:
	adds r0, r4, #0
	bl sub_80C4918
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C4C3C

	THUMB_FUNC_START sub_80C4C60
sub_80C4C60: @ 0x080C4C60
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _080C4CBC  @ gUnknown_08206FE4
	adds r6, r5, #0
	adds r6, #0x29
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _080C4CC0  @ 0x06001000
	bl CopyDataWithPossibleUncomp
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r4, _080C4CC4  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C4CC8  @ gBG0TilemapBuffer
	movs r2, #0xc2
	lsls r2, r2, #6
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r2, _080C4CCC  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0
	strh r0, [r5, #0x2c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C4CBC: .4byte gUnknown_08206FE4
_080C4CC0: .4byte 0x06001000
_080C4CC4: .4byte gUnknown_02020188
_080C4CC8: .4byte gBG0TilemapBuffer
_080C4CCC: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C4C60

	THUMB_FUNC_START sub_80C4CD0
sub_80C4CD0: @ 0x080C4CD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _080C4D38  @ gUnknown_08206FE4
	adds r6, r5, #0
	adds r6, #0x29
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _080C4D3C  @ 0x06001000
	bl CopyDataWithPossibleUncomp
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r4, _080C4D40  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C4D44  @ gBG0TilemapBuffer
	movs r2, #0xc2
	lsls r2, r2, #6
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r0, _080C4D48  @ gBG1TilemapBuffer
	ldr r2, _080C4D4C  @ 0x0000E080
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r2, _080C4D50  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #3
	bl BG_EnableSyncByMask
	movs r0, #0
	strh r0, [r5, #0x2c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C4D38: .4byte gUnknown_08206FE4
_080C4D3C: .4byte 0x06001000
_080C4D40: .4byte gUnknown_02020188
_080C4D44: .4byte gBG0TilemapBuffer
_080C4D48: .4byte gBG1TilemapBuffer
_080C4D4C: .4byte 0x0000E080
_080C4D50: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C4CD0

	THUMB_FUNC_START sub_80C4D54
sub_80C4D54: @ 0x080C4D54
	push {r4, r5, lr}
	ldr r5, _080C4D90  @ gUnknown_08206FE4
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r1, _080C4D94  @ 0x06005000
	bl CopyDataWithPossibleUncomp
	adds r5, #4
	adds r4, r4, r5
	ldr r0, [r4]
	ldr r4, _080C4D98  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C4D9C  @ gBG0TilemapBuffer
	movs r2, #0xca
	lsls r2, r2, #6
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4D90: .4byte gUnknown_08206FE4
_080C4D94: .4byte 0x06005000
_080C4D98: .4byte gUnknown_02020188
_080C4D9C: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_80C4D54

	THUMB_FUNC_START sub_80C4DA0
sub_80C4DA0: @ 0x080C4DA0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080C4DD4
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r1, #0x50
	movs r2, #0
	bl sub_800B7E0
	adds r3, r0, #0
	ldr r0, _080C4DCC  @ gUnknown_08AA239C
	ldr r1, _080C4DD0  @ gUnknown_02022908
	movs r2, #0x10
	bl sub_80C4BB4
	b _080C4E00
	.align 2, 0
_080C4DCC: .4byte gUnknown_08AA239C
_080C4DD0: .4byte gUnknown_02022908
_080C4DD4:
	ldr r0, _080C4E10  @ gUnknown_08AA239C
	movs r1, #0x60
	movs r2, #0x20
	bl CopyToPaletteBuffer
	adds r0, r4, #0
	bl Proc_Break
	ldr r2, _080C4E14  @ gUnknown_08206FE4
	adds r0, r4, #0
	adds r0, #0x29
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x2a]
	movs r0, #0
	strh r0, [r4, #0x2c]
_080C4E00:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl sub_80C4918
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4E10: .4byte gUnknown_08AA239C
_080C4E14: .4byte gUnknown_08206FE4

	THUMB_FUNC_END sub_80C4DA0

	THUMB_FUNC_START sub_80C4E18
sub_80C4E18: @ 0x080C4E18
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080C4E54
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r1, #0x50
	movs r2, #0
	bl sub_800B7E0
	movs r3, #0x80
	lsls r3, r3, #5
	subs r3, r3, r0
	ldr r0, _080C4E4C  @ gUnknown_08AA239C
	ldr r1, _080C4E50  @ gUnknown_02022908
	movs r2, #0x10
	bl sub_80C4BB4
	b _080C4EAE
	.align 2, 0
_080C4E4C: .4byte gUnknown_08AA239C
_080C4E50: .4byte gUnknown_02022908
_080C4E54:
	str r5, [sp]
	ldr r1, _080C4E80  @ gUnknown_02022908
	ldr r2, _080C4E84  @ 0x01000008
	mov r0, sp
	bl CpuFastSet
	strh r5, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bgt _080C4E88
	movs r0, #0x50
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C4EAE
	.align 2, 0
_080C4E80: .4byte gUnknown_02022908
_080C4E84: .4byte 0x01000008
_080C4E88:
	ldr r2, _080C4EC0  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	adds r0, r4, #0
	movs r1, #1
	bl Proc_Goto
_080C4EAE:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl sub_80C4918
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4EC0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C4E18

	THUMB_FUNC_START sub_80C4EC4
sub_80C4EC4: @ 0x080C4EC4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080C4F00
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r1, #0x50
	movs r2, #0
	bl sub_800B7E0
	movs r3, #0x80
	lsls r3, r3, #5
	subs r3, r3, r0
	ldr r0, _080C4EF8  @ gUnknown_08AA239C
	ldr r1, _080C4EFC  @ gUnknown_02022908
	movs r2, #0x10
	bl sub_80C4BB4
	b _080C4F40
	.align 2, 0
_080C4EF8: .4byte gUnknown_08AA239C
_080C4EFC: .4byte gUnknown_02022908
_080C4F00:
	str r5, [sp]
	ldr r1, _080C4F54  @ gUnknown_02022908
	ldr r2, _080C4F58  @ 0x01000008
	mov r0, sp
	bl CpuFastSet
	strh r5, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x5a
	strh r0, [r4, #0x2a]
	ldr r2, _080C4F5C  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	subs r0, #0x5c
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	adds r0, r4, #0
	bl Proc_Break
_080C4F40:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl sub_80C4918
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4F54: .4byte gUnknown_02022908
_080C4F58: .4byte 0x01000008
_080C4F5C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C4EC4

	THUMB_FUNC_START sub_80C4F60
sub_80C4F60: @ 0x080C4F60
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080C4FA6
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	movs r1, #0x50
	movs r2, #0
	bl sub_800B7E0
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	lsls r1, r1, #4
	bl DivArm
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C5006
_080C4FA6:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r4, r5, #0
	adds r4, #0x29
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	bgt _080C4FE4
	adds r0, r5, #0
	bl Proc_Break
	ldr r2, _080C4FE0  @ gUnknown_08206FE4
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r5, #0x2a]
	movs r0, #0
	strh r0, [r5, #0x2c]
	b _080C5006
	.align 2, 0
_080C4FE0: .4byte gUnknown_08206FE4
_080C4FE4:
	ldr r2, _080C5018  @ gUnknown_08206FE4
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r5, #0x2a]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #4
	bl Proc_Goto
_080C5006:
	bl EnablePaletteSync
	adds r0, r5, #0
	bl sub_80C4918
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5018: .4byte gUnknown_08206FE4

	THUMB_FUNC_END sub_80C4F60

	THUMB_FUNC_START sub_80C501C
sub_80C501C: @ 0x080C501C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080C5064
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r1, #0x50
	movs r2, #0
	bl sub_800B7E0
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	subs r1, r0, r1
	lsls r1, r1, #4
	bl DivArm
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _080C508E
_080C5064:
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x50
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	adds r0, r4, #0
	bl sub_80C4918
_080C508E:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl sub_80C4918
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C501C

	THUMB_FUNC_START sub_80C50A0
sub_80C50A0: @ 0x080C50A0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #1
	bl sub_80C488C
	movs r4, #0
	str r4, [sp]
	ldr r1, _080C50F0  @ gUnknown_02022A88
	ldr r2, _080C50F4  @ 0x01000008
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	bl sub_80C48F0
	movs r0, #2
	bl BG_EnableSyncByMask
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _080C50F8  @ 0x06005000
	ldr r2, _080C50FC  @ 0x01000400
	bl CpuFastSet
	ldr r0, _080C5100  @ gBG0TilemapBuffer
	movs r1, #0xa0
	lsls r1, r1, #2
	bl BG_Fill
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0x16
	strh r0, [r5, #0x2a]
	strh r4, [r5, #0x2c]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C50F0: .4byte gUnknown_02022A88
_080C50F4: .4byte 0x01000008
_080C50F8: .4byte 0x06005000
_080C50FC: .4byte 0x01000400
_080C5100: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_80C50A0

	THUMB_FUNC_START sub_80C5104
sub_80C5104: @ 0x080C5104
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080C512C
	ldr r2, _080C5154  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
_080C512C:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2d
	bgt _080C5160
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r1, #0x2e
	movs r2, #0
	bl sub_800B7E0
	adds r3, r0, #0
	ldr r0, _080C5158  @ gUnknown_08B1756C
	ldr r1, _080C515C  @ gUnknown_02022A88
	movs r2, #0x10
	bl sub_80C4BB4
	b _080C518E
	.align 2, 0
_080C5154: .4byte gLCDControlBuffer
_080C5158: .4byte gUnknown_08B1756C
_080C515C: .4byte gUnknown_02022A88
_080C5160:
	ldr r0, _080C51A0  @ gUnknown_08B1756C
	movs r1, #0xf0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	adds r0, r4, #0
	bl Proc_Break
	ldr r2, _080C51A4  @ gUnknown_08206FE4
	adds r0, r4, #0
	adds r0, #0x29
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x2a]
	movs r0, #0
	strh r0, [r4, #0x2c]
_080C518E:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl sub_80C4918
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C51A0: .4byte gUnknown_08B1756C
_080C51A4: .4byte gUnknown_08206FE4

	THUMB_FUNC_END sub_80C5104

	THUMB_FUNC_START sub_80C51A8
sub_80C51A8: @ 0x080C51A8
	push {lr}
	movs r0, #2
	bl sub_80C4D54
	ldr r0, _080C51C4  @ gUnknown_08AA239C
	movs r1, #0x60
	movs r2, #0x20
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_080C51C4: .4byte gUnknown_08AA239C

	THUMB_FUNC_END sub_80C51A8

	THUMB_FUNC_START sub_80C51C8
sub_80C51C8: @ 0x080C51C8
	push {r4, r5, lr}
	ldr r1, _080C5210  @ gUnknown_0300308C
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	strh r0, [r1, #8]
	strh r0, [r1, #0xc]
	ldr r4, _080C5214  @ gUnknown_08AA21A4
	movs r5, #0
_080C51DA:
	ldrh r1, [r4]
	adds r4, #2
	adds r0, r5, #0
	bl SetBackgroundTileDataOffset
	ldrh r1, [r4]
	adds r4, #2
	adds r0, r5, #0
	bl SetBackgroundMapDataOffset
	ldrh r1, [r4]
	adds r4, #2
	adds r0, r5, #0
	bl SetBackgroundScreenSize
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r5, #1
	cmp r5, #3
	ble _080C51DA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5210: .4byte gUnknown_0300308C
_080C5214: .4byte gUnknown_08AA21A4

	THUMB_FUNC_END sub_80C51C8

	THUMB_FUNC_START sub_80C5218
sub_80C5218: @ 0x080C5218
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	bl sub_80C51C8
	ldr r4, _080C5318  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r4, #0xc]
	movs r2, #4
	negs r2, r2
	adds r0, r2, #0
	ands r0, r1
	movs r6, #1
	orrs r0, r6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	ands r2, r0
	strb r2, [r4, #0x18]
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetA
	str r5, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r2, _080C531C  @ 0x0000FFFD
	movs r0, #1
	adds r1, r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	bl sub_80C488C
	movs r0, #3
	bl sub_80C48F0
	ldr r0, _080C5320  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C5324  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0xe
	bl BG_EnableSyncByMask
	movs r0, #2
	bl sub_80C4D54
	ldrb r0, [r4, #1]
	orrs r0, r6
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #1]
	mov r1, r8
	adds r1, #0x29
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	mov r1, r8
	strh r0, [r1, #0x2a]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C5318: .4byte gLCDControlBuffer
_080C531C: .4byte 0x0000FFFD
_080C5320: .4byte gBG1TilemapBuffer
_080C5324: .4byte gBG2TilemapBuffer

	THUMB_FUNC_END sub_80C5218

	THUMB_FUNC_START sub_80C5328
sub_80C5328: @ 0x080C5328
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080C5368  @ 0x01000008
	mov r0, sp
	bl CpuFastSet
	movs r0, #2
	bl BG_EnableSyncByMask
	ldr r2, _080C536C  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080C5368: .4byte 0x01000008
_080C536C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C5328

	THUMB_FUNC_START sub_80C5370
sub_80C5370: @ 0x080C5370
	push {lr}
	movs r1, #0
	strh r1, [r0, #0x2c]
	ldr r0, _080C5384  @ gPaletteBuffer
	ldr r1, _080C5388  @ gUnknown_0201CDD4
	movs r2, #0x80
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_080C5384: .4byte gPaletteBuffer
_080C5388: .4byte gUnknown_0201CDD4

	THUMB_FUNC_END sub_80C5370

	THUMB_FUNC_START sub_80C538C
sub_80C538C: @ 0x080C538C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	bgt _080C53CC
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	movs r1, #0x3c
	movs r2, #0
	bl sub_800B7E0
	movs r3, #0x80
	lsls r3, r3, #5
	subs r3, r3, r0
	ldr r0, _080C53C4  @ gUnknown_0201CDD4
	ldr r1, _080C53C8  @ gPaletteBuffer
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_80C4BB4
	b _080C53E4
	.align 2, 0
_080C53C4: .4byte gUnknown_0201CDD4
_080C53C8: .4byte gPaletteBuffer
_080C53CC:
	str r5, [sp]
	ldr r1, _080C53F8  @ gPaletteBuffer
	ldr r2, _080C53FC  @ 0x01000080
	mov r0, sp
	bl CpuFastSet
	strh r5, [r4, #0x2c]
	movs r0, #0x3c
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
_080C53E4:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl sub_80C4918
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C53F8: .4byte gPaletteBuffer
_080C53FC: .4byte 0x01000080

	THUMB_FUNC_END sub_80C538C

	THUMB_FUNC_START sub_80C5400
sub_80C5400: @ 0x080C5400
	push {lr}
	movs r0, #4
	bl Sound_FadeOutBGM
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C5400

	THUMB_FUNC_START sub_80C540C
sub_80C540C: @ 0x080C540C
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C540C

	THUMB_FUNC_START sub_80C541C
sub_80C541C: @ 0x080C541C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C542C  @ gUnknown_08AA21BC
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080C542C: .4byte gUnknown_08AA21BC

	THUMB_FUNC_END sub_80C541C

	THUMB_FUNC_START sub_80C5430
sub_80C5430: @ 0x080C5430
	adds r1, r0, #0
	adds r1, #0x4c
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x52
	strh r2, [r0]
	bx lr

	THUMB_FUNC_END sub_80C5430

	THUMB_FUNC_START sub_80C5440
sub_80C5440: @ 0x080C5440
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _080C54F4  @ gUnknown_08AA6774
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #4
	movs r2, #0x30
	adds r3, r4, #0
	bl PutSpriteExt
	ldr r3, _080C54F8  @ gObject_16x16
	ldr r0, _080C54FC  @ 0x0000201E
	str r0, [sp]
	movs r0, #0
	movs r1, #0xdc
	movs r2, #0x29
	bl PutSpriteExt
	ldr r2, _080C5500  @ 0x00000435
	movs r0, #0x82
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #2
	movs r1, #4
	adds r3, r4, #0
	bl PutSpriteExt
	ldr r3, _080C5504  @ gUnknown_08AA6794
	ldr r0, _080C5508  @ 0x000031A0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x55
	bl PutSpriteExt
	ldr r3, _080C550C  @ gUnknown_08AA67E0
	movs r0, #0xdd
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x48
	movs r2, #0x7c
	bl PutSpriteExt
	ldr r3, _080C5510  @ gUnknown_08AA67AE
	movs r0, #0x8c
	lsls r0, r0, #5
	str r0, [sp]
	movs r0, #1
	movs r1, #4
	movs r2, #0x94
	bl PutSpriteExt
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #3
	bl DivRem
	cmp r0, #0
	bne _080C54D0
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
_080C54D0:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C5518
	movs r0, #0xf
	ands r0, r2
	lsls r0, r0, #1
	ldr r1, _080C5514  @ gUnknown_08AADBE8
	adds r0, r0, r1
	movs r1, #0x84
	lsls r1, r1, #2
	movs r2, #2
	bl CopyToPaletteBuffer
	b _080C5532
	.align 2, 0
_080C54F4: .4byte gUnknown_08AA6774
_080C54F8: .4byte gObject_16x16
_080C54FC: .4byte 0x0000201E
_080C5500: .4byte 0x00000435
_080C5504: .4byte gUnknown_08AA6794
_080C5508: .4byte 0x000031A0
_080C550C: .4byte gUnknown_08AA67E0
_080C5510: .4byte gUnknown_08AA67AE
_080C5514: .4byte gUnknown_08AADBE8
_080C5518:
	ldrh r1, [r1]
	movs r0, #0x1f
	subs r0, r0, r1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _080C5544  @ gUnknown_08AADBE8
	adds r0, r0, r1
	movs r1, #0x84
	lsls r1, r1, #2
	movs r2, #2
	bl CopyToPaletteBuffer
_080C5532:
	adds r1, r5, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5544: .4byte gUnknown_08AADBE8

	THUMB_FUNC_END sub_80C5440

	THUMB_FUNC_START sub_80C5548
sub_80C5548: @ 0x080C5548
	push {lr}
	sub sp, #0x14
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [sp]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [sp, #4]
	mov r2, sp
	movs r3, #0
	movs r1, #0x78
	strh r1, [r2, #8]
	movs r1, #0x50
	strh r1, [r2, #0xa]
	mov r1, sp
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	mov r0, sp
	strh r3, [r0, #0x10]
	ldr r1, _080C557C  @ gUnknown_030030C8
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_080C557C: .4byte gUnknown_030030C8

	THUMB_FUNC_END sub_80C5548

	THUMB_FUNC_START sub_80C5580
sub_80C5580: @ 0x080C5580
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C55A0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C559A
	ldr r0, [r2, #0x14]
	movs r1, #3
	bl Proc_Goto
_080C559A:
	pop {r0}
	bx r0
	.align 2, 0
_080C55A0: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80C5580

	THUMB_FUNC_START sub_80C55A4
sub_80C55A4: @ 0x080C55A4
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C55B4  @ gUnknown_08AA6814
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_080C55B4: .4byte gUnknown_08AA6814

	THUMB_FUNC_END sub_80C55A4

	THUMB_FUNC_START sub_80C55B8
sub_80C55B8: @ 0x080C55B8
	push {lr}
	ldr r0, _080C55C8  @ gUnknown_08AA6814
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080C55C8: .4byte gUnknown_08AA6814

	THUMB_FUNC_END sub_80C55B8

	THUMB_FUNC_START sub_80C55CC
sub_80C55CC: @ 0x080C55CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080C56E0  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r0, #1
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundTileDataOffset
	movs r1, #0xc0
	lsls r1, r1, #8
	movs r0, #3
	bl SetBackgroundTileDataOffset
	movs r1, #0xd0
	lsls r1, r1, #7
	movs r0, #0
	bl SetBackgroundMapDataOffset
	movs r1, #0xe0
	lsls r1, r1, #7
	movs r0, #1
	bl SetBackgroundMapDataOffset
	movs r1, #0xb0
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	movs r1, #0xf0
	lsls r1, r1, #7
	movs r0, #3
	bl SetBackgroundMapDataOffset
	movs r0, #0
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #1
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #2
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #3
	movs r1, #0
	bl SetBackgroundScreenSize
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _080C56E4  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C56E8  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C56EC  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C56F0  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	bl SetDefaultColorEffects
	movs r0, #0xf
	bl BG_EnableSyncByMask
	movs r0, #0
	strh r0, [r5, #0x2a]
	str r0, [r5, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C56E0: .4byte gLCDControlBuffer
_080C56E4: .4byte gBG0TilemapBuffer
_080C56E8: .4byte gBG1TilemapBuffer
_080C56EC: .4byte gBG2TilemapBuffer
_080C56F0: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80C55CC

	THUMB_FUNC_START sub_80C56F4
sub_80C56F4: @ 0x080C56F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2a]
	cmp r0, #4
	bls _080C5700
	b _080C583C
_080C5700:
	lsls r0, r0, #2
	ldr r1, _080C570C  @ _080C5710
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C570C: .4byte _080C5710
_080C5710: @ jump table
	.4byte _080C5724 @ case 0
	.4byte _080C5734 @ case 1
	.4byte _080C57A8 @ case 2
	.4byte _080C57FC @ case 3
	.4byte _080C5810 @ case 4
_080C5724:
	ldr r0, _080C5730  @ gUnknown_08AA7760
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CopyDataWithPossibleUncomp
	b _080C583C
	.align 2, 0
_080C5730: .4byte gUnknown_08AA7760
_080C5734:
	ldr r0, _080C5780  @ gUnknown_08AA9708
	ldr r1, _080C5784  @ 0x06003000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5788  @ gUnknown_08AAAE90
	ldr r4, _080C578C  @ gBG1TilemapBuffer
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5790  @ gUnknown_08AAB3F4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	adds r2, r5, #0
	adds r2, #0x29
	movs r0, #0xe0
	lsls r0, r0, #8
	adds r3, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C5760:
	ldrh r6, [r4]
	adds r0, r3, r6
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _080C5760
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _080C579C
	ldr r1, _080C5794  @ gPaletteBuffer
	ldr r0, _080C5798  @ 0x00007FFF
	strh r0, [r1]
	b _080C583C
	.align 2, 0
_080C5780: .4byte gUnknown_08AA9708
_080C5784: .4byte 0x06003000
_080C5788: .4byte gUnknown_08AAAE90
_080C578C: .4byte gBG1TilemapBuffer
_080C5790: .4byte gUnknown_08AAB3F4
_080C5794: .4byte gPaletteBuffer
_080C5798: .4byte 0x00007FFF
_080C579C:
	ldr r0, _080C57A4  @ gPaletteBuffer
	strh r1, [r0]
	b _080C583C
	.align 2, 0
_080C57A4: .4byte gPaletteBuffer
_080C57A8:
	ldr r0, _080C57E4  @ gUnknown_08AAB414
	ldr r1, _080C57E8  @ 0x06005000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C57EC  @ gUnknown_08AAC2A4
	ldr r4, _080C57F0  @ gBG0TilemapBuffer
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C57F4  @ gUnknown_08AAC58C
	movs r1, #0xf0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080C57F8  @ 0x0000F280
	adds r2, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C57CE:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _080C57CE
	movs r0, #1
	bl BG_EnableSyncByMask
	b _080C583C
	.align 2, 0
_080C57E4: .4byte gUnknown_08AAB414
_080C57E8: .4byte 0x06005000
_080C57EC: .4byte gUnknown_08AAC2A4
_080C57F0: .4byte gBG0TilemapBuffer
_080C57F4: .4byte gUnknown_08AAC58C
_080C57F8: .4byte 0x0000F280
_080C57FC:
	ldr r0, _080C5808  @ gUnknown_08AAC5AC
	ldr r1, _080C580C  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	b _080C583C
	.align 2, 0
_080C5808: .4byte gUnknown_08AAC5AC
_080C580C: .4byte 0x06010000
_080C5810:
	ldr r0, _080C5830  @ gUnknown_08AACEDC
	ldr r1, _080C5834  @ 0x06013000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5838  @ gUnknown_08AADB68
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x80
	bl CopyToPaletteBuffer
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C5842
	.align 2, 0
_080C5830: .4byte gUnknown_08AACEDC
_080C5834: .4byte 0x06013000
_080C5838: .4byte gUnknown_08AADB68
_080C583C:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C5842:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C56F4

	THUMB_FUNC_START sub_80C5848
sub_80C5848: @ 0x080C5848
	push {lr}
	adds r1, r0, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080C5862
	adds r0, r1, #0
	movs r1, #0
	bl Proc_Goto
	b _080C5868
_080C5862:
	ldr r0, _080C586C  @ gUnknown_08AA67FC
	bl Proc_Start
_080C5868:
	pop {r0}
	bx r0
	.align 2, 0
_080C586C: .4byte gUnknown_08AA67FC

	THUMB_FUNC_END sub_80C5848

	THUMB_FUNC_START sub_80C5870
sub_80C5870: @ 0x080C5870
	push {r4, lr}
	sub sp, #4
	movs r0, #0xf
	bl BG_EnableSyncByMask
	ldr r2, _080C58C8  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C58C8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C5870

	THUMB_FUNC_START sub_80C58CC
sub_80C58CC: @ 0x080C58CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2a]
	cmp r0, #4
	bls _080C58D8
	b _080C5A14
_080C58D8:
	lsls r0, r0, #2
	ldr r1, _080C58E4  @ _080C58E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C58E4: .4byte _080C58E8
_080C58E8: @ jump table
	.4byte _080C58FC @ case 0
	.4byte _080C5950 @ case 1
	.4byte _080C59A0 @ case 2
	.4byte _080C59EC @ case 3
	.4byte _080C5A34 @ case 4
_080C58FC:
	movs r1, #0xc0
	lsls r1, r1, #8
	movs r0, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0xf0
	lsls r1, r1, #7
	movs r0, #0
	bl SetBackgroundMapDataOffset
	ldr r0, _080C5934  @ gUnknown_08AAFD14
	ldr r1, _080C5938  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C593C  @ gUnknown_08AAFF10
	ldr r1, _080C5940  @ 0x0600B000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5944  @ gUnknown_08AB0114
	movs r1, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r1, _080C5948  @ gPaletteBuffer
	ldr r0, _080C594C  @ 0x00007FFF
	strh r0, [r1]
	b _080C5A14
	.align 2, 0
_080C5934: .4byte gUnknown_08AAFD14
_080C5938: .4byte 0x06008000
_080C593C: .4byte gUnknown_08AAFF10
_080C5940: .4byte 0x0600B000
_080C5944: .4byte gUnknown_08AB0114
_080C5948: .4byte gPaletteBuffer
_080C594C: .4byte 0x00007FFF
_080C5950:
	ldr r0, _080C598C  @ gUnknown_08AADC08
	ldr r1, _080C5990  @ 0x0600C000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5994  @ gUnknown_08AAE61C
	ldr r4, _080C5998  @ gBG0TilemapBuffer
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C599C  @ gUnknown_08AAE8CC
	movs r1, #0x20
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C5976:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _080C5976
	movs r0, #1
	bl BG_EnableSyncByMask
	b _080C5A14
	.align 2, 0
_080C598C: .4byte gUnknown_08AADC08
_080C5990: .4byte 0x0600C000
_080C5994: .4byte gUnknown_08AAE61C
_080C5998: .4byte gBG0TilemapBuffer
_080C599C: .4byte gUnknown_08AAE8CC
_080C59A0:
	ldr r0, _080C59D8  @ gUnknown_08AAE8EC
	ldr r1, _080C59DC  @ 0x0600D000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C59E0  @ gUnknown_08AAF928
	ldr r4, _080C59E4  @ gBG0TilemapBuffer
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C59E8  @ gUnknown_08AAFCF4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #0x82
	lsls r0, r0, #6
	adds r2, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C59C6:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _080C59C6
	b _080C5A14
	.align 2, 0
_080C59D8: .4byte gUnknown_08AAE8EC
_080C59DC: .4byte 0x0600D000
_080C59E0: .4byte gUnknown_08AAF928
_080C59E4: .4byte gBG0TilemapBuffer
_080C59E8: .4byte gUnknown_08AAFCF4
_080C59EC:
	ldr r0, _080C5A1C  @ gUnknown_08AB1C24
	ldr r1, _080C5A20  @ 0x06014400
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5A24  @ gUnknown_08AB210C
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x60
	bl CopyToPaletteBuffer
	ldr r0, _080C5A28  @ gUnknown_08AB216C
	ldr r1, _080C5A2C  @ 0x06015400
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5A30  @ gUnknown_08AB21B8
	movs r1, #0xb8
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
_080C5A14:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
	b _080C5A3E
	.align 2, 0
_080C5A1C: .4byte gUnknown_08AB1C24
_080C5A20: .4byte 0x06014400
_080C5A24: .4byte gUnknown_08AB210C
_080C5A28: .4byte gUnknown_08AB216C
_080C5A2C: .4byte 0x06015400
_080C5A30: .4byte gUnknown_08AB21B8
_080C5A34:
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
_080C5A3E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C58CC

	THUMB_FUNC_START sub_80C5A44
sub_80C5A44: @ 0x080C5A44
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _080C5AE8  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r5, #1
	orrs r0, r5
	strb r0, [r4]
	movs r0, #2
	movs r1, #2
	bl SetBackgroundScreenSize
	movs r0, #8
	movs r1, #0
	bl sub_80C6BF0
	ldrb r1, [r4, #0x15]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #0xc]
	movs r2, #4
	negs r2, r2
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r2, r0
	strb r2, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #2
	movs r1, #8
	movs r2, #8
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
	ldr r0, _080C5AEC  @ gPaletteBuffer
	movs r4, #0
	strh r4, [r0]
	bl EnablePaletteSync
	strh r4, [r6, #0x2a]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C5AE8: .4byte gLCDControlBuffer
_080C5AEC: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80C5A44

	THUMB_FUNC_START sub_80C5AF0
sub_80C5AF0: @ 0x080C5AF0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x2c
	bhi _080C5B0C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r0, #0
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #0
	movs r1, #0x40
	b _080C5B1E
_080C5B0C:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xe0
	lsls r2, r2, #1
	ldrh r3, [r5, #0x2a]
	subs r3, #0x2d
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #0
_080C5B1E:
	bl Interpolate
	adds r4, r0, #0
	ldrh r3, [r5, #0x2a]
	movs r0, #0x5a
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl Interpolate
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80C6BF0
	cmp r4, #0xff
	ble _080C5B50
	ldr r3, _080C5BBC  @ gObject_32x32
	ldr r0, _080C5BC0  @ 0x00004220
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0x40
	bl PutSpriteExt
_080C5B50:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x16
	bhi _080C5B6C
	adds r3, r0, #0
	movs r0, #0x16
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	ldr r1, _080C5BC4  @ gLCDControlBuffer
	adds r1, #0x46
	strb r0, [r1]
_080C5B6C:
	ldrh r0, [r5, #0x2a]
	adds r4, r0, #0
	subs r4, #0x44
	cmp r4, #0
	blt _080C5BAA
	cmp r4, #0
	bne _080C5B94
	ldr r0, _080C5BC4  @ gLCDControlBuffer
	adds r0, #0x3c
	ldrb r1, [r0]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0]
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
_080C5B94:
	movs r0, #0x16
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	adds r3, r4, #0
	bl Interpolate
	ldr r1, _080C5BC4  @ gLCDControlBuffer
	adds r1, #0x46
	strb r0, [r1]
_080C5BAA:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x5a
	bne _080C5BC8
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C5BCC
	.align 2, 0
_080C5BBC: .4byte gObject_32x32
_080C5BC0: .4byte 0x00004220
_080C5BC4: .4byte gLCDControlBuffer
_080C5BC8:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C5BCC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C5AF0

	THUMB_FUNC_START sub_80C5BD4
sub_80C5BD4: @ 0x080C5BD4
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080C5C54  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #6
	bl BG_EnableSyncByMask
	ldr r4, _080C5C58  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0x10
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	ldrb r1, [r4, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	str r5, [sp, #4]
	ldr r1, _080C5C5C  @ gUnknown_02022A68
	ldr r2, _080C5C60  @ 0x01000008
	add r0, sp, #4
	bl CpuFastSet
	bl EnablePaletteSync
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5C54: .4byte gBG2TilemapBuffer
_080C5C58: .4byte gLCDControlBuffer
_080C5C5C: .4byte gUnknown_02022A68
_080C5C60: .4byte 0x01000008

	THUMB_FUNC_END sub_80C5BD4

	THUMB_FUNC_START sub_80C5C64
sub_80C5C64: @ 0x080C5C64
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _080C5CC0  @ gUnknown_08AAB3F4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080C5CC4  @ gUnknown_02022A68
	ldrh r3, [r7, #0x2a]
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_80C69B0
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x14
	bne _080C5CA6
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl Sound_PlaySong80024E4
_080C5CA6:
	ldrh r1, [r7, #0x2a]
	adds r0, r1, #0
	cmp r0, #0x13
	bhi _080C5CD0
	ldr r3, _080C5CC8  @ gObject_32x32
	ldr r0, _080C5CCC  @ 0x00004220
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0x40
	bl PutSpriteExt
	b _080C5DC0
	.align 2, 0
_080C5CC0: .4byte gUnknown_08AAB3F4
_080C5CC4: .4byte gUnknown_02022A68
_080C5CC8: .4byte gObject_32x32
_080C5CCC: .4byte 0x00004220
_080C5CD0:
	cmp r0, #0x17
	bhi _080C5D30
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5D00
	ldr r4, _080C5CF4  @ gObject_32x32
	ldr r0, _080C5CF8  @ 0x00006228
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0x40
	adds r3, r4, #0
	bl PutSpriteExt
	ldr r0, _080C5CFC  @ 0x00005224
	b _080C5D14
	.align 2, 0
_080C5CF4: .4byte gObject_32x32
_080C5CF8: .4byte 0x00006228
_080C5CFC: .4byte 0x00005224
_080C5D00:
	ldr r4, _080C5D24  @ gObject_32x32
	ldr r0, _080C5D28  @ 0x00005224
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0x40
	adds r3, r4, #0
	bl PutSpriteExt
	ldr r0, _080C5D2C  @ 0x00006228
_080C5D14:
	str r0, [sp]
	movs r0, #1
	movs r1, #0x68
	movs r2, #0x40
	adds r3, r4, #0
	bl PutSpriteExt
	b _080C5DC0
	.align 2, 0
_080C5D24: .4byte gObject_32x32
_080C5D28: .4byte 0x00005224
_080C5D2C: .4byte 0x00006228
_080C5D30:
	ldrh r0, [r7, #0x2a]
	adds r3, r0, #0
	subs r3, #0x18
	cmp r3, #8
	bgt _080C5DC0
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0x80
	bl Interpolate
	adds r6, r0, #0
	ldrh r1, [r7, #0x2a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5D94
	movs r1, #0x68
	subs r1, r1, r6
	ldr r4, _080C5D84  @ 0x000001FF
	ands r1, r4
	ldr r5, _080C5D88  @ gObject_32x32
	ldr r0, _080C5D8C  @ 0x00006228
	str r0, [sp]
	movs r0, #0
	movs r2, #0x40
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r6, #0
	adds r1, #0x68
	ands r1, r4
	ldr r0, _080C5D90  @ 0x00005224
	str r0, [sp]
	movs r0, #1
	movs r2, #0x40
	adds r3, r5, #0
	bl PutSpriteExt
	b _080C5DC0
	.align 2, 0
_080C5D84: .4byte 0x000001FF
_080C5D88: .4byte gObject_32x32
_080C5D8C: .4byte 0x00006228
_080C5D90: .4byte 0x00005224
_080C5D94:
	adds r1, r6, #0
	adds r1, #0x68
	ldr r4, _080C5DD4  @ 0x000001FF
	ands r1, r4
	ldr r5, _080C5DD8  @ gObject_32x32
	ldr r0, _080C5DDC  @ 0x00005224
	str r0, [sp]
	movs r0, #0
	movs r2, #0x40
	adds r3, r5, #0
	bl PutSpriteExt
	movs r1, #0x68
	subs r1, r1, r6
	ands r1, r4
	ldr r0, _080C5DE0  @ 0x00006228
	str r0, [sp]
	movs r0, #1
	movs r2, #0x40
	adds r3, r5, #0
	bl PutSpriteExt
_080C5DC0:
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x30
	bne _080C5DE4
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C5DE8
	.align 2, 0
_080C5DD4: .4byte 0x000001FF
_080C5DD8: .4byte gObject_32x32
_080C5DDC: .4byte 0x00005224
_080C5DE0: .4byte 0x00006228
_080C5DE4:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C5DE8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C5C64

	THUMB_FUNC_START sub_80C5DF0
sub_80C5DF0: @ 0x080C5DF0
	push {r4, lr}
	sub sp, #4
	ldr r2, _080C5E54  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	ldr r0, _080C5E58  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C5E4C
	ldr r0, _080C5E5C  @ 0x00000317
	bl m4aSongNumStart
_080C5E4C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C5E54: .4byte gLCDControlBuffer
_080C5E58: .4byte gRAMChapterData
_080C5E5C: .4byte 0x00000317

	THUMB_FUNC_END sub_80C5DF0

	THUMB_FUNC_START sub_80C5E60
sub_80C5E60: @ 0x080C5E60
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r3, [r4, #0x2a]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	bl Interpolate
	ldr r1, _080C5E90  @ gLCDControlBuffer
	adds r1, #0x44
	strb r0, [r1]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xc
	bne _080C5E94
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C5E98
	.align 2, 0
_080C5E90: .4byte gLCDControlBuffer
_080C5E94:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C5E98:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C5E60

	THUMB_FUNC_START sub_80C5EA0
sub_80C5EA0: @ 0x080C5EA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x2a]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	adds r5, r0, #0
	ldrh r0, [r7, #0x2a]
	cmp r0, #0
	bne _080C5EC4
	movs r0, #1
	bl BG_EnableSyncByMask
_080C5EC4:
	ldr r0, _080C5F10  @ gUnknown_08AAFCF4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080C5F14  @ gUnknown_020228E8
	ldr r6, _080C5F18  @ 0x00007FFF
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80C69B0
	ldr r0, _080C5F1C  @ gUnknown_08AAB3F4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80C69B0
	ldrh r0, [r7, #0x2a]
	cmp r0, #0xc
	bne _080C5F20
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C5F24
	.align 2, 0
_080C5F10: .4byte gUnknown_08AAFCF4
_080C5F14: .4byte gUnknown_020228E8
_080C5F18: .4byte 0x00007FFF
_080C5F1C: .4byte gUnknown_08AAB3F4
_080C5F20:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C5F24:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C5EA0

	THUMB_FUNC_START sub_80C5F2C
sub_80C5F2C: @ 0x080C5F2C
	push {r4, lr}
	ldr r0, _080C5F70  @ gUnknown_08AB0B44
	ldr r1, _080C5F74  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5F78  @ gUnknown_08AB1890
	ldr r4, _080C5F7C  @ gBG2TilemapBuffer
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C5F80  @ gUnknown_08AB1C04
	movs r1, #0x60
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r2, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C5F54:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _080C5F54
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C5F70: .4byte gUnknown_08AB0B44
_080C5F74: .4byte 0x06008000
_080C5F78: .4byte gUnknown_08AB1890
_080C5F7C: .4byte gBG2TilemapBuffer
_080C5F80: .4byte gUnknown_08AB1C04

	THUMB_FUNC_END sub_80C5F2C

	THUMB_FUNC_START sub_80C5F84
sub_80C5F84: @ 0x080C5F84
	ldr r2, _080C5FB0  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080C5FB0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C5F84

	THUMB_FUNC_START sub_80C5FB4
sub_80C5FB4: @ 0x080C5FB4
	ldr r2, _080C5FE4  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080C5FE4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C5FB4

	THUMB_FUNC_START sub_80C5FE8
sub_80C5FE8: @ 0x080C5FE8
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _080C606C  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r5, #1
	orrs r0, r5
	strb r0, [r4]
	movs r0, #2
	movs r1, #1
	bl SetBackgroundScreenSize
	movs r0, #0x40
	bl sub_80C5548
	ldr r0, _080C6070  @ gUnknown_08AB0134
	ldr r1, _080C6074  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6078  @ gUnknown_08AB0A20
	ldr r1, _080C607C  @ gBG2TilemapBuffer
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6080  @ gUnknown_08AB0B24
	movs r1, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #4
	bl BG_EnableSyncByMask
	ldr r0, _080C6084  @ 0x7FFF7FFF
	str r0, [sp]
	ldr r1, _080C6088  @ gUnknown_02022A68
	ldr r2, _080C608C  @ 0x01000010
	mov r0, sp
	bl CpuFastSet
	movs r0, #0
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0xd0
	lsls r1, r1, #7
	movs r0, #0
	bl SetBackgroundMapDataOffset
	ldrb r0, [r4, #1]
	orrs r0, r5
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C606C: .4byte gLCDControlBuffer
_080C6070: .4byte gUnknown_08AB0134
_080C6074: .4byte 0x06008000
_080C6078: .4byte gUnknown_08AB0A20
_080C607C: .4byte gBG2TilemapBuffer
_080C6080: .4byte gUnknown_08AB0B24
_080C6084: .4byte 0x7FFF7FFF
_080C6088: .4byte gUnknown_02022A68
_080C608C: .4byte 0x01000010

	THUMB_FUNC_END sub_80C5FE8

	THUMB_FUNC_START sub_80C6090
sub_80C6090: @ 0x080C6090
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	ldrh r3, [r4, #0x2a]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	movs r1, #0x20
	bl Interpolate
	bl sub_80C5548
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C60BE
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C60C2
_080C60BE:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C60C2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C6090

	THUMB_FUNC_START sub_80C60CC
sub_80C60CC: @ 0x080C60CC
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _080C60F8  @ gUnknown_02020188
	movs r6, #0
	movs r4, #3
_080C60D6:
	str r6, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _080C60FC  @ 0x01000080
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080C60D6
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C60F8: .4byte gUnknown_02020188
_080C60FC: .4byte 0x01000080

	THUMB_FUNC_END sub_80C60CC

	THUMB_FUNC_START nullsub_23
nullsub_23: @ 0x080C6100
	bx lr

	THUMB_FUNC_END nullsub_23

	THUMB_FUNC_START sub_80C6104
sub_80C6104: @ 0x080C6104
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	str r4, [r5, #0x30]
	bl sub_80C60CC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C6104

	THUMB_FUNC_START sub_80C6144
sub_80C6144: @ 0x080C6144
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, _080C61F4  @ gUnknown_08AA6858
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080C61E6
	ldr r3, _080C61F8  @ gUnknown_08AA682C
	mov r8, r3
	movs r7, #0x18
_080C615E:
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r3, #2
	ldrsh r0, [r5, r3]
	muls r2, r0, r2
	asrs r2, r2, #8
	str r7, [sp]
	movs r0, #0
	adds r3, r6, #0
	bl Interpolate
	adds r4, r0, #0
	adds r4, #0x74
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r0, #1
	add r0, r8
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r3, #2
	ldrsh r0, [r5, r3]
	muls r2, r0, r2
	asrs r2, r2, #8
	str r7, [sp]
	movs r0, #0
	adds r3, r6, #0
	bl Interpolate
	adds r2, r0, #0
	adds r2, #0x38
	ldr r0, _080C61FC  @ 0x000001FF
	ands r4, r0
	movs r0, #0xff
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	ldrb r0, [r5, #5]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xe8
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [sp]
	movs r0, #4
	adds r1, r4, #0
	ldr r3, _080C6200  @ gObject_8x8
	bl PutSpriteExt
	adds r5, #8
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _080C615E
_080C61E6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C61F4: .4byte gUnknown_08AA6858
_080C61F8: .4byte gUnknown_08AA682C
_080C61FC: .4byte 0x000001FF
_080C6200: .4byte gObject_8x8

	THUMB_FUNC_END sub_80C6144

	THUMB_FUNC_START sub_80C6204
sub_80C6204: @ 0x080C6204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x2a]
	movs r0, #0x18
	mov r8, r0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	ldr r1, _080C62B0  @ gLCDControlBuffer
	adds r1, #0x44
	strb r0, [r1]
	ldrh r3, [r7, #0x2a]
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	adds r5, r0, #0
	ldr r0, _080C62B4  @ gUnknown_08AAB3F4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080C62B8  @ gUnknown_02022A68
	ldr r6, _080C62BC  @ 0x00007FFF
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80C69B0
	ldr r0, _080C62C0  @ gUnknown_08AAC58C
	movs r1, #0xf0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80C69B0
	ldrh r3, [r7, #0x2a]
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x3f
	bl Interpolate
	adds r5, r0, #0
	ldr r1, [r7, #0x30]
	bl nullsub_23
	str r5, [r7, #0x30]
	ldr r3, _080C62C4  @ gUnknown_08AA6794
	ldr r0, _080C62C8  @ 0x000031A0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x55
	bl PutSpriteExt
	ldrh r0, [r7, #0x2a]
	bl sub_80C6144
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x18
	bne _080C62CC
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C62D0
	.align 2, 0
_080C62B0: .4byte gLCDControlBuffer
_080C62B4: .4byte gUnknown_08AAB3F4
_080C62B8: .4byte gUnknown_02022A68
_080C62BC: .4byte 0x00007FFF
_080C62C0: .4byte gUnknown_08AAC58C
_080C62C4: .4byte gUnknown_08AA6794
_080C62C8: .4byte 0x000031A0
_080C62CC:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C62D0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C6204

	THUMB_FUNC_START sub_80C62DC
sub_80C62DC: @ 0x080C62DC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _080C634C  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	movs r0, #2
	movs r1, #0
	bl SetBackgroundScreenSize
	ldrb r0, [r4, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r0, _080C6350  @ gUnknown_08AA67FC
	adds r1, r5, #0
	bl Proc_Start
	movs r0, #1
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C634C: .4byte gLCDControlBuffer
_080C6350: .4byte gUnknown_08AA67FC

	THUMB_FUNC_END sub_80C62DC

	THUMB_FUNC_START sub_80C6354
sub_80C6354: @ 0x080C6354
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	adds r2, r0, #1
	str r2, [r4, #0x2c]
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	ldr r3, _080C639C  @ 0x0000FFFF
	adds r1, r3, #0
	ands r0, r1
	movs r1, #0x3f
	ands r0, r1
	strh r0, [r4, #0x2a]
	ldr r0, _080C63A0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080C63A8
	ldr r0, _080C63A4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080C638E
	movs r0, #0x6d
	bl m4aSongNumStart
_080C638E:
	movs r0, #0
	bl SetNextGameActionId
	adds r0, r4, #0
	bl Proc_Break
	b _080C63BA
	.align 2, 0
_080C639C: .4byte 0x0000FFFF
_080C63A0: .4byte gKeyStatusPtr
_080C63A4: .4byte gRAMChapterData
_080C63A8:
	ldr r0, _080C63C0  @ 0x0000032F
	cmp r2, r0
	bne _080C63BA
	movs r0, #1
	bl SetNextGameActionId
	adds r0, r4, #0
	bl Proc_Break
_080C63BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C63C0: .4byte 0x0000032F

	THUMB_FUNC_END sub_80C6354

	THUMB_FUNC_START sub_80C63C4
sub_80C63C4: @ 0x080C63C4
	push {lr}
	bl EndAllProcChildren
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C63C4

	THUMB_FUNC_START sub_80C63D0
sub_80C63D0: @ 0x080C63D0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl EndAllProcChildren
	bl sub_80C55B8
	ldr r1, _080C641C  @ gPaletteBuffer
	movs r5, #0
	movs r0, #0
	strh r0, [r1]
	bl EnablePaletteSync
	adds r4, #0x29
	strb r5, [r4]
	ldr r2, _080C6420  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #0x43
	movs r1, #0
	movs r2, #0
	bl Sound_PlaySong80024E4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C641C: .4byte gPaletteBuffer
_080C6420: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C63D0

	THUMB_FUNC_START sub_80C6424
sub_80C6424: @ 0x080C6424
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C6440  @ gUnknown_08AA6A50
	bl Proc_StartBlocking
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x43
	movs r2, #0
	bl Sound_PlaySong80024E4
	pop {r0}
	bx r0
	.align 2, 0
_080C6440: .4byte gUnknown_08AA6A50

	THUMB_FUNC_END sub_80C6424

	THUMB_FUNC_START sub_80C6444
sub_80C6444: @ 0x080C6444
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C6458  @ gUnknown_08AA6A50
	bl Proc_StartBlocking
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080C6458: .4byte gUnknown_08AA6A50

	THUMB_FUNC_END sub_80C6444

	THUMB_FUNC_START sub_80C645C
sub_80C645C: @ 0x080C645C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C6470  @ gUnknown_08AA6A50
	bl Proc_StartBlocking
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080C6470: .4byte gUnknown_08AA6A50

	THUMB_FUNC_END sub_80C645C

	THUMB_FUNC_START sub_80C6474
sub_80C6474: @ 0x080C6474
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r0, #4
	bls _080C648A
	b _080C66DE
_080C648A:
	lsls r0, r0, #2
	ldr r1, _080C6494  @ _080C6498
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6494: .4byte _080C6498
_080C6498: @ jump table
	.4byte _080C64AC @ case 0
	.4byte _080C64F4 @ case 1
	.4byte _080C653C @ case 2
	.4byte _080C65B0 @ case 3
	.4byte _080C6624 @ case 4
_080C64AC:
	cmp r3, #1
	beq _080C64D0
	cmp r3, #1
	bgt _080C64BA
	cmp r3, #0
	beq _080C64C4
	b _080C66DE
_080C64BA:
	cmp r3, #2
	beq _080C64DC
	cmp r3, #3
	beq _080C64E8
	b _080C66DE
_080C64C4:
	movs r5, #0x8a
	ldr r4, _080C64CC  @ gUnknown_08AA6C22
	b _080C66DE
	.align 2, 0
_080C64CC: .4byte gUnknown_08AA6C22
_080C64D0:
	movs r5, #0x8a
	ldr r4, _080C64D8  @ gUnknown_08AA6C36
	b _080C66DE
	.align 2, 0
_080C64D8: .4byte gUnknown_08AA6C36
_080C64DC:
	movs r5, #0xb2
	ldr r4, _080C64E4  @ gUnknown_08AA6C22
	b _080C66DE
	.align 2, 0
_080C64E4: .4byte gUnknown_08AA6C22
_080C64E8:
	movs r5, #0xb2
	ldr r4, _080C64F0  @ gUnknown_08AA6C36
	b _080C66DE
	.align 2, 0
_080C64F0: .4byte gUnknown_08AA6C36
_080C64F4:
	cmp r3, #1
	beq _080C6518
	cmp r3, #1
	bgt _080C6502
	cmp r3, #0
	beq _080C650C
	b _080C66DE
_080C6502:
	cmp r3, #2
	beq _080C6524
	cmp r3, #3
	beq _080C6530
	b _080C66DE
_080C650C:
	movs r5, #0xda
	ldr r4, _080C6514  @ gUnknown_08AA6C4A
	b _080C66DE
	.align 2, 0
_080C6514: .4byte gUnknown_08AA6C4A
_080C6518:
	movs r5, #0xda
	ldr r4, _080C6520  @ gUnknown_08AA6C58
	b _080C66DE
	.align 2, 0
_080C6520: .4byte gUnknown_08AA6C58
_080C6524:
	movs r5, #0xf2
	ldr r4, _080C652C  @ gUnknown_08AA6C4A
	b _080C66DE
	.align 2, 0
_080C652C: .4byte gUnknown_08AA6C4A
_080C6530:
	movs r5, #0xf2
	ldr r4, _080C6538  @ gUnknown_08AA6C58
	b _080C66DE
	.align 2, 0
_080C6538: .4byte gUnknown_08AA6C58
_080C653C:
	cmp r3, #5
	bls _080C6542
	b _080C66DE
_080C6542:
	lsls r0, r3, #2
	ldr r1, _080C654C  @ _080C6550
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C654C: .4byte _080C6550
_080C6550: @ jump table
	.4byte _080C6568 @ case 0
	.4byte _080C6574 @ case 1
	.4byte _080C6580 @ case 2
	.4byte _080C658C @ case 3
	.4byte _080C6598 @ case 4
	.4byte _080C65A4 @ case 5
_080C6568:
	movs r5, #0x85
	lsls r5, r5, #1
	ldr r4, _080C6570  @ gUnknown_08AA6C66
	b _080C66DE
	.align 2, 0
_080C6570: .4byte gUnknown_08AA6C66
_080C6574:
	movs r5, #0x85
	lsls r5, r5, #1
	ldr r4, _080C657C  @ gUnknown_08AA6C74
	b _080C66DE
	.align 2, 0
_080C657C: .4byte gUnknown_08AA6C74
_080C6580:
	movs r5, #0x8b
	lsls r5, r5, #1
	ldr r4, _080C6588  @ gUnknown_08AA6C66
	b _080C66DE
	.align 2, 0
_080C6588: .4byte gUnknown_08AA6C66
_080C658C:
	movs r5, #0x8b
	lsls r5, r5, #1
	ldr r4, _080C6594  @ gUnknown_08AA6C74
	b _080C66DE
	.align 2, 0
_080C6594: .4byte gUnknown_08AA6C74
_080C6598:
	movs r5, #0x9d
	lsls r5, r5, #1
	ldr r4, _080C65A0  @ gUnknown_08AA6C66
	b _080C66DE
	.align 2, 0
_080C65A0: .4byte gUnknown_08AA6C66
_080C65A4:
	movs r5, #0x9d
	lsls r5, r5, #1
	ldr r4, _080C65AC  @ gUnknown_08AA6C74
	b _080C66DE
	.align 2, 0
_080C65AC: .4byte gUnknown_08AA6C74
_080C65B0:
	cmp r3, #5
	bls _080C65B6
	b _080C66DE
_080C65B6:
	lsls r0, r3, #2
	ldr r1, _080C65C0  @ _080C65C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C65C0: .4byte _080C65C4
_080C65C4: @ jump table
	.4byte _080C65DC @ case 0
	.4byte _080C65E8 @ case 1
	.4byte _080C65F4 @ case 2
	.4byte _080C6600 @ case 3
	.4byte _080C660C @ case 4
	.4byte _080C6618 @ case 5
_080C65DC:
	movs r5, #0x91
	lsls r5, r5, #1
	ldr r4, _080C65E4  @ gUnknown_08AA6C82
	b _080C66DE
	.align 2, 0
_080C65E4: .4byte gUnknown_08AA6C82
_080C65E8:
	movs r5, #0x91
	lsls r5, r5, #1
	ldr r4, _080C65F0  @ gUnknown_08AA6C8A
	b _080C66DE
	.align 2, 0
_080C65F0: .4byte gUnknown_08AA6C8A
_080C65F4:
	movs r5, #0x93
	lsls r5, r5, #1
	ldr r4, _080C65FC  @ gUnknown_08AA6C82
	b _080C66DE
	.align 2, 0
_080C65FC: .4byte gUnknown_08AA6C82
_080C6600:
	movs r5, #0x93
	lsls r5, r5, #1
	ldr r4, _080C6608  @ gUnknown_08AA6C8A
	b _080C66DE
	.align 2, 0
_080C6608: .4byte gUnknown_08AA6C8A
_080C660C:
	movs r5, #0x97
	lsls r5, r5, #1
	ldr r4, _080C6614  @ gUnknown_08AA6C82
	b _080C66DE
	.align 2, 0
_080C6614: .4byte gUnknown_08AA6C82
_080C6618:
	movs r5, #0x97
	lsls r5, r5, #1
	ldr r4, _080C6620  @ gUnknown_08AA6C8A
	b _080C66DE
	.align 2, 0
_080C6620: .4byte gUnknown_08AA6C8A
_080C6624:
	cmp r3, #0xb
	bhi _080C66DE
	lsls r0, r3, #2
	ldr r1, _080C6634  @ _080C6638
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6634: .4byte _080C6638
_080C6638: @ jump table
	.4byte _080C6668 @ case 0
	.4byte _080C6674 @ case 1
	.4byte _080C667A @ case 2
	.4byte _080C6688 @ case 3
	.4byte _080C668E @ case 4
	.4byte _080C669C @ case 5
	.4byte _080C66A2 @ case 6
	.4byte _080C66B0 @ case 7
	.4byte _080C66B6 @ case 8
	.4byte _080C66C4 @ case 9
	.4byte _080C66CA @ case 10
	.4byte _080C66D8 @ case 11
_080C6668:
	movs r5, #0x95
	lsls r5, r5, #1
	ldr r4, _080C6670  @ gUnknown_08AA6C92
	b _080C66DE
	.align 2, 0
_080C6670: .4byte gUnknown_08AA6C92
_080C6674:
	movs r5, #0x95
	lsls r5, r5, #1
	b _080C66DC
_080C667A:
	movs r5, #0x96
	lsls r5, r5, #1
	ldr r4, _080C6684  @ gUnknown_08AA6C92
	b _080C66DE
	.align 2, 0
_080C6684: .4byte gUnknown_08AA6C92
_080C6688:
	movs r5, #0x96
	lsls r5, r5, #1
	b _080C66DC
_080C668E:
	movs r5, #0x99
	lsls r5, r5, #1
	ldr r4, _080C6698  @ gUnknown_08AA6C92
	b _080C66DE
	.align 2, 0
_080C6698: .4byte gUnknown_08AA6C92
_080C669C:
	movs r5, #0x99
	lsls r5, r5, #1
	b _080C66DC
_080C66A2:
	movs r5, #0x9a
	lsls r5, r5, #1
	ldr r4, _080C66AC  @ gUnknown_08AA6C92
	b _080C66DE
	.align 2, 0
_080C66AC: .4byte gUnknown_08AA6C92
_080C66B0:
	movs r5, #0x9a
	lsls r5, r5, #1
	b _080C66DC
_080C66B6:
	movs r5, #0x9b
	lsls r5, r5, #1
	ldr r4, _080C66C0  @ gUnknown_08AA6C92
	b _080C66DE
	.align 2, 0
_080C66C0: .4byte gUnknown_08AA6C92
_080C66C4:
	movs r5, #0x9b
	lsls r5, r5, #1
	b _080C66DC
_080C66CA:
	movs r5, #0x9c
	lsls r5, r5, #1
	ldr r4, _080C66D4  @ gUnknown_08AA6C92
	b _080C66DE
	.align 2, 0
_080C66D4: .4byte gUnknown_08AA6C92
_080C66D8:
	movs r5, #0x9c
	lsls r5, r5, #1
_080C66DC:
	ldr r4, _080C6700  @ gUnknown_08AA6C9A
_080C66DE:
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl PutSpriteExt
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6700: .4byte gUnknown_08AA6C9A

	THUMB_FUNC_END sub_80C6474

	THUMB_FUNC_START sub_80C6704
sub_80C6704: @ 0x080C6704
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C6730  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C672A
	movs r0, #2
	bl SetNextGameActionId
	ldr r0, _080C6734  @ gUnknown_02022188
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r0, [r4, #0x14]
	movs r1, #0x63
	bl Proc_Goto
_080C672A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6730: .4byte gKeyStatusPtr
_080C6734: .4byte gUnknown_02022188

	THUMB_FUNC_END sub_80C6704

	THUMB_FUNC_START AddSomeChild6C
AddSomeChild6C: @ 0x080C6738
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C6748  @ gUnknown_08AA6CA4
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_080C6748: .4byte gUnknown_08AA6CA4

	THUMB_FUNC_END AddSomeChild6C

	THUMB_FUNC_START DeleteSome6C
DeleteSome6C: @ 0x080C674C
	push {lr}
	ldr r0, _080C675C  @ gUnknown_08AA6CA4
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080C675C: .4byte gUnknown_08AA6CA4

	THUMB_FUNC_END DeleteSome6C

	THUMB_FUNC_START StorePaletteToBufferMaybe
StorePaletteToBufferMaybe: @ 0x080C6760
	push {lr}
	bl CopyToPaletteBuffer
	ldr r1, _080C6774  @ gPaletteBuffer
	ldr r0, _080C6778  @ gUnknown_02022188
	ldrh r0, [r0, #0xc]
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080C6774: .4byte gPaletteBuffer
_080C6778: .4byte gUnknown_02022188

	THUMB_FUNC_END StorePaletteToBufferMaybe

	THUMB_FUNC_START sub_80C677C
sub_80C677C: @ 0x080C677C
	push {lr}
	adds r2, r0, #0
	movs r3, #0x13
_080C6782:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #0x40
	adds r1, #0x40
	subs r3, #1
	cmp r3, #0
	bge _080C6782
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C677C

	THUMB_FUNC_START sub_80C6794
sub_80C6794: @ 0x080C6794
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsls r2, r2, #0x18
	ldr r6, _080C67BC  @ 0x00007FFF
	lsrs r5, r2, #0xc
	movs r2, #0x13
_080C67A2:
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r3]
	adds r4, #0x40
	adds r3, #0x40
	subs r2, #1
	cmp r2, #0
	bge _080C67A2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C67BC: .4byte 0x00007FFF

	THUMB_FUNC_END sub_80C6794

	THUMB_FUNC_START sub_80C67C0
sub_80C67C0: @ 0x080C67C0
	push {lr}
	movs r2, #0
	movs r1, #0x13
_080C67C6:
	strh r2, [r0]
	adds r0, #0x40
	subs r1, #1
	cmp r1, #0
	bge _080C67C6
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C67C0

	THUMB_FUNC_START sub_80C67D4
sub_80C67D4: @ 0x080C67D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, [sp, #0x24]
	mov r9, r2
	ldr r2, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	mov r0, sl
	bl BG_GetMapBuffer
	adds r5, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080C680E
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C680E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x13
	adds r4, r0, #1
	lsls r1, r6, #0x10
	asrs r0, r1, #0x13
	adds r0, #1
	adds r6, r1, #0
	cmp r4, r0
	bge _080C687E
	movs r7, #0x1f
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_080C682A:
	cmp r4, #0x3f
	bhi _080C6838
	cmp r4, #0x1f
	ble _080C6846
	mov r2, r9
	cmp r2, #0
	bne _080C6846
_080C6838:
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #1
	adds r0, r5, r0
	bl sub_80C67C0
	b _080C6874
_080C6846:
	mov r0, r9
	cmp r4, #0x1f
	bgt _080C684E
	ldr r0, [sp, #0x20]
_080C684E:
	mov r1, r8
	cmp r1, #0
	bne _080C6864
	adds r1, r4, #0
	ands r1, r7
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, r1
	bl sub_80C677C
	b _080C6874
_080C6864:
	adds r1, r4, #0
	ands r1, r7
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, r1
	movs r2, #0xf
	bl sub_80C6794
_080C6874:
	adds r4, #1
	asrs r0, r6, #0x13
	adds r0, #1
	cmp r4, r0
	blt _080C682A
_080C687E:
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r6, r2
	lsrs r1, r1, #0x10
	mov r0, sl
	movs r2, #0
	bl BG_SetPosition
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C67D4

	THUMB_FUNC_START sub_80C689C
sub_80C689C: @ 0x080C689C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x28]
	mov r9, r4
	ldr r4, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sl, r4
	adds r0, r3, #0
	bl BG_GetMapBuffer
	adds r7, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080C68DE
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080C68DE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r4, r9
	cmp r4, #0
	beq _080C6906
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	b _080C690C
_080C6906:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
_080C690C:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	subs r1, r0, r1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x13
	subs r4, r0, #1
	lsls r1, r6, #0x10
	asrs r0, r1, #0x13
	subs r0, #1
	adds r5, r1, #0
	cmp r4, r0
	ble _080C6994
	movs r6, #0x1f
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_080C693C:
	cmp r4, #0x3f
	bhi _080C694A
	cmp r4, #0x1f
	ble _080C6958
	mov r2, r9
	cmp r2, #0
	bne _080C6958
_080C694A:
	adds r0, r4, #0
	ands r0, r6
	lsls r0, r0, #1
	adds r0, r7, r0
	bl sub_80C67C0
	b _080C698A
_080C6958:
	mov r0, r9
	cmp r4, #0x1f
	bgt _080C6960
	ldr r0, [sp, #0x24]
_080C6960:
	cmp r0, #0
	beq _080C6994
	mov r1, r8
	cmp r1, #0
	bne _080C697A
	adds r1, r4, #0
	ands r1, r6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r7, r1
	bl sub_80C677C
	b _080C698A
_080C697A:
	adds r1, r4, #0
	ands r1, r6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r7, r1
	movs r2, #0xf
	bl sub_80C6794
_080C698A:
	subs r4, #1
	asrs r0, r5, #0x13
	subs r0, #1
	cmp r4, r0
	bgt _080C693C
_080C6994:
	lsrs r1, r5, #0x10
	ldr r0, [sp]
	movs r2, #0
	bl BG_SetPosition
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C689C

	THUMB_FUNC_START sub_80C69B0
sub_80C69B0: @ 0x080C69B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0x1f
	mov ip, r0
	movs r5, #0x1f
	movs r0, #0x10
	subs r6, r0, r2
	movs r1, #0xf
	mov r9, r1
	mov r0, r8
	ands r0, r5
	adds r7, r0, #0
	muls r7, r2, r7
	mov sl, r7
_080C69E2:
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	adds r3, r0, #0
	muls r3, r6, r3
	add r3, sl
	asrs r3, r3, #4
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r6, r2
	mov r7, r8
	lsrs r0, r7, #5
	mov r7, ip
	ands r0, r7
	ldr r7, [sp]
	muls r0, r7, r0
	adds r2, r2, r0
	asrs r2, r2, #4
	lsrs r1, r1, #0x1a
	mov r0, ip
	ands r1, r0
	muls r1, r6, r1
	mov r7, r8
	lsrs r0, r7, #0xa
	mov r7, ip
	ands r0, r7
	ldr r7, [sp]
	muls r0, r7, r0
	adds r1, r1, r0
	asrs r1, r1, #4
	ands r1, r5
	lsls r1, r1, #0xa
	ands r2, r5
	lsls r2, r2, #5
	orrs r1, r2
	ands r3, r5
	orrs r3, r1
	strh r3, [r4]
	adds r4, #2
	movs r0, #1
	negs r0, r0
	add r9, r0
	mov r1, r9
	cmp r1, #0
	bge _080C69E2
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C69B0

	THUMB_FUNC_START Initialize6CIntroSequence
Initialize6CIntroSequence: @ 0x080C6A54
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #1
	bl Sound_FadeOutBGM
	movs r0, #0
	bl SetupBackgrounds
	movs r0, #0
	bl SetPrimaryHBlankHandler
	movs r1, #0
	strh r1, [r4, #0x2a]
	ldr r0, _080C6B10  @ gUnknown_02022188
	strh r1, [r0, #0xc]
	ldr r2, _080C6B14  @ gLCDControlBuffer
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, _080C6B18  @ gUnknown_08AF1AE8
	ldr r1, _080C6B1C  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6B20  @ gUnknown_08AF1B38
	ldr r1, _080C6B24  @ 0x06010100
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6B28  @ gUnknown_08AF1FD0
	ldr r1, _080C6B2C  @ 0x060108C0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6B30  @ gUnknown_08AF2654
	ldr r1, _080C6B34  @ 0x06011140
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6B38  @ gUnknown_08AF1B18
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C6B3C  @ gUnknown_08AF1FB0
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C6B40  @ gUnknown_08AF2634
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C6B44  @ gUnknown_08AF310C
	movs r1, #0x98
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	movs r0, #1
	negs r0, r0
	str r0, [sp]
	ldr r1, _080C6B48  @ 0x06017800
	ldr r2, _080C6B4C  @ 0x01000200
	mov r0, sp
	bl CpuFastSet
	movs r0, #3
	bl SetNextGameActionId
	adds r0, r4, #0
	bl AddSomeChild6C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6B10: .4byte gUnknown_02022188
_080C6B14: .4byte gLCDControlBuffer
_080C6B18: .4byte gUnknown_08AF1AE8
_080C6B1C: .4byte 0x06010000
_080C6B20: .4byte gUnknown_08AF1B38
_080C6B24: .4byte 0x06010100
_080C6B28: .4byte gUnknown_08AF1FD0
_080C6B2C: .4byte 0x060108C0
_080C6B30: .4byte gUnknown_08AF2654
_080C6B34: .4byte 0x06011140
_080C6B38: .4byte gUnknown_08AF1B18
_080C6B3C: .4byte gUnknown_08AF1FB0
_080C6B40: .4byte gUnknown_08AF2634
_080C6B44: .4byte gUnknown_08AF310C
_080C6B48: .4byte 0x06017800
_080C6B4C: .4byte 0x01000200

	THUMB_FUNC_END Initialize6CIntroSequence

	THUMB_FUNC_START sub_80C6B50
sub_80C6B50: @ 0x080C6B50
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C6B88  @ gLCDControlBuffer
	adds r3, r2, #0
	adds r3, #0x3c
	ldrb r1, [r3]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	adds r2, #0x46
	movs r5, #0
	strb r5, [r2]
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
	adds r4, #0x4c
	strh r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C6B88: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C6B50

	THUMB_FUNC_START sub_80C6B8C
sub_80C6B8C: @ 0x080C6B8C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x4c
	movs r0, #0
	ldrsh r3, [r5, r0]
	adds r4, r6, #0
	adds r4, #0x64
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	ldr r1, _080C6BD4  @ gLCDControlBuffer
	adds r1, #0x46
	strb r0, [r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _080C6BC6
	adds r0, r6, #0
	bl Proc_Break
_080C6BC6:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C6BD4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C6B8C

	THUMB_FUNC_START sub_80C6BD8
sub_80C6BD8: @ 0x080C6BD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080C6BEC  @ gUnknown_08AA6CBC
	bl Proc_Start
	adds r0, #0x64
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6BEC: .4byte gUnknown_08AA6CBC

	THUMB_FUNC_END sub_80C6BD8

	THUMB_FUNC_START sub_80C6BF0
sub_80C6BF0: @ 0x080C6BF0
	push {lr}
	sub sp, #0x14
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [sp]
	str r2, [sp, #4]
	mov r3, sp
	movs r2, #0x78
	strh r2, [r3, #8]
	movs r2, #0x50
	strh r2, [r3, #0xa]
	mov r2, sp
	strh r0, [r2, #0xc]
	strh r0, [r2, #0xe]
	mov r0, sp
	lsls r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, _080C6C20  @ gUnknown_030030C8
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_080C6C20: .4byte gUnknown_030030C8

	THUMB_FUNC_END sub_80C6BF0

	THUMB_FUNC_START sub_80C6C24
sub_80C6C24: @ 0x080C6C24
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _080C6DE8  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #1
	bl SetBackgroundTileDataOffset
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundTileDataOffset
	movs r0, #3
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0xd8
	lsls r1, r1, #8
	movs r0, #0
	bl SetBackgroundMapDataOffset
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r0, #1
	bl SetBackgroundMapDataOffset
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	movs r1, #0xf8
	lsls r1, r1, #8
	movs r0, #3
	bl SetBackgroundMapDataOffset
	movs r0, #0
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #1
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #2
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #3
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	ldr r4, _080C6DEC  @ gUnknown_08AB21D8
	movs r0, #2
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6DF0  @ gUnknown_08AB5D90
	ldr r1, _080C6DF4  @ 0x0600F000
	bl CopyDataWithPossibleUncomp
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C6DF8  @ gPaletteBuffer
	ldr r2, _080C6DFC  @ 0x01000008
	add r0, sp, #4
	bl CpuFastSet
	ldr r0, _080C6E00  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #1
	bl BG_EnableSyncByMask
	ldr r4, _080C6E04  @ gUnknown_08AB632C
	movs r0, #1
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	adds r1, r1, r5
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C6E08  @ gUnknown_08AB7DB0
	movs r1, #0x40
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r4, _080C6E0C  @ 0x0600E800
	ldr r0, _080C6E10  @ gUnknown_08AB7AC0
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	movs r5, #0x80
	lsls r5, r5, #3
_080C6D72:
	ldrh r2, [r4]
	adds r0, r1, r2
	strh r0, [r4]
	subs r5, #1
	adds r4, #2
	cmp r5, #0
	bne _080C6D72
	bl EnablePaletteSync
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r5, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	strh r5, [r6, #0x2a]
	strh r5, [r6, #0x34]
	strh r5, [r6, #0x36]
	ldr r2, _080C6DE8  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl Sound_PlaySong80024E4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C6DE8: .4byte gLCDControlBuffer
_080C6DEC: .4byte gUnknown_08AB21D8
_080C6DF0: .4byte gUnknown_08AB5D90
_080C6DF4: .4byte 0x0600F000
_080C6DF8: .4byte gPaletteBuffer
_080C6DFC: .4byte 0x01000008
_080C6E00: .4byte gBG0TilemapBuffer
_080C6E04: .4byte gUnknown_08AB632C
_080C6E08: .4byte gUnknown_08AB7DB0
_080C6E0C: .4byte 0x0600E800
_080C6E10: .4byte gUnknown_08AB7AC0

	THUMB_FUNC_END sub_80C6C24

	THUMB_FUNC_START sub_80C6E14
sub_80C6E14: @ 0x080C6E14
	movs r1, #0
	strh r1, [r0, #0x2a]
	bx lr

	THUMB_FUNC_END sub_80C6E14

	THUMB_FUNC_START sub_80C6E1C
sub_80C6E1C: @ 0x080C6E1C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r3, [r4, #0x2a]
	movs r0, #0x3e
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1f
	bl Interpolate
	adds r2, r0, #0
	lsls r0, r2, #0xa
	lsls r1, r2, #5
	orrs r0, r1
	orrs r2, r0
	ldr r1, _080C6E78  @ gPaletteBuffer
	adds r0, r1, #0
	adds r0, #0x1e
_080C6E42:
	strh r2, [r0]
	subs r0, #2
	cmp r0, r1
	bge _080C6E42
	bl EnablePaletteSync
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x3e
	bne _080C6E84
	movs r0, #0
	strh r0, [r4, #0x2a]
	ldr r1, _080C6E7C  @ gUnknown_02022188
	ldr r0, _080C6E80  @ 0x00007FFF
	strh r0, [r1, #0xc]
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	adds r0, r4, #0
	bl Proc_Break
	b _080C6E88
	.align 2, 0
_080C6E78: .4byte gPaletteBuffer
_080C6E7C: .4byte gUnknown_02022188
_080C6E80: .4byte 0x00007FFF
_080C6E84:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C6E88:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C6E1C

	THUMB_FUNC_START Until6C2AIs8Callback
Until6C2AIs8Callback: @ 0x080C6E90
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	cmp r0, #8
	bne _080C6EA6
	movs r0, #0
	strh r0, [r1, #0x2a]
	adds r0, r1, #0
	bl Proc_Break
	b _080C6EAA
_080C6EA6:
	adds r0, #1
	strh r0, [r1, #0x2a]
_080C6EAA:
	pop {r0}
	bx r0

	THUMB_FUNC_END Until6C2AIs8Callback

	THUMB_FUNC_START sub_80C6EB0
sub_80C6EB0: @ 0x080C6EB0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r3, [r4, #0x2a]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	ldr r2, _080C6EE8  @ gLCDControlBuffer
	adds r1, r2, #0
	adds r1, #0x44
	strb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	adds r2, #0x45
	strb r1, [r2]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C6EEC
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C6EF0
	.align 2, 0
_080C6EE8: .4byte gLCDControlBuffer
_080C6EEC:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C6EF0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C6EB0

	THUMB_FUNC_START sub_80C6EF8
sub_80C6EF8: @ 0x080C6EF8
	push {lr}
	ldr r0, _080C6F0C  @ gUnknown_08AA6CDC
	bl Proc_Find
	cmp r0, #0
	beq _080C6F06
	movs r0, #1
_080C6F06:
	pop {r1}
	bx r1
	.align 2, 0
_080C6F0C: .4byte gUnknown_08AA6CDC

	THUMB_FUNC_END sub_80C6EF8

	THUMB_FUNC_START sub_80C6F10
sub_80C6F10: @ 0x080C6F10
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #1
	movs r1, #8
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetB
	ldr r2, _080C6F6C  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	strh r4, [r5, #0x2c]
	strh r4, [r5, #0x2e]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C6F6C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C6F10

	THUMB_FUNC_START sub_80C6F70
sub_80C6F70: @ 0x080C6F70
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r1, [r5, #0x2a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C6F86
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
_080C6F86:
	ldrh r1, [r5, #0x2a]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080C6F96
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
_080C6F96:
	ldrh r1, [r5, #0x2c]
	ldrh r2, [r5, #0x2e]
	movs r0, #1
	bl BG_SetPosition
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x60
	bhi _080C6FD0
	adds r3, r0, #0
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	adds r4, r0, #0
	ldr r0, _080C7034  @ gUnknown_08AB630C
	movs r1, #0
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C7038  @ gPaletteBuffer
	ldr r1, _080C703C  @ 0x00007FFF
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r2, r4, #0
	bl sub_80C69B0
_080C6FD0:
	ldrh r0, [r5, #0x2a]
	adds r3, r0, #0
	subs r3, #0x80
	cmp r3, #0x60
	bhi _080C6FEE
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0
	movs r1, #8
	movs r2, #0
	bl Interpolate
	ldr r1, _080C7040  @ gLCDControlBuffer
	adds r1, #0x44
	strb r0, [r1]
_080C6FEE:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0xef
	bne _080C701C
	ldr r2, _080C7040  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0x20
	adds r1, r5, #0
	bl sub_80C6BD8
_080C701C:
	ldrh r1, [r5, #0x2a]
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r1, r0
	bne _080C7044
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C7048
	.align 2, 0
_080C7034: .4byte gUnknown_08AB630C
_080C7038: .4byte gPaletteBuffer
_080C703C: .4byte 0x00007FFF
_080C7040: .4byte gLCDControlBuffer
_080C7044:
	adds r0, r1, #1
	strh r0, [r5, #0x2a]
_080C7048:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C6F70

	THUMB_FUNC_START sub_80C7050
sub_80C7050: @ 0x080C7050
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, _080C719C  @ gLCDControlBuffer
	ldrb r1, [r5]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r5]
	movs r0, #0
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r0, #1
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r4, #0x80
	lsls r4, r4, #7
	movs r0, #2
	adds r1, r4, #0
	bl SetBackgroundTileDataOffset
	movs r0, #3
	adds r1, r4, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0xd8
	lsls r1, r1, #8
	movs r0, #0
	bl SetBackgroundMapDataOffset
	movs r1, #0xe0
	lsls r1, r1, #8
	movs r0, #1
	bl SetBackgroundMapDataOffset
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	movs r1, #0xf8
	lsls r1, r1, #8
	movs r0, #3
	bl SetBackgroundMapDataOffset
	movs r0, #0
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #1
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #2
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #3
	movs r1, #0
	bl SetBackgroundScreenSize
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldrb r2, [r5, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #0xc]
	ldrb r2, [r5, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r5, #0x14]
	ldrb r0, [r5, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #0
	strb r0, [r5, #1]
	ldr r0, _080C71A0  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C71A4  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C71A8  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C71AC  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0xf
	bl BG_EnableSyncByMask
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	movs r0, #1
	movs r1, #8
	movs r2, #8
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #0
	strh r4, [r6, #0x2a]
	strh r4, [r6, #0x38]
	strh r4, [r6, #0x3a]
	strh r4, [r6, #0x3c]
	adds r1, r6, #0
	adds r1, #0x46
	strb r0, [r1]
	strh r4, [r6, #0x3e]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C719C: .4byte gLCDControlBuffer
_080C71A0: .4byte gBG0TilemapBuffer
_080C71A4: .4byte gBG1TilemapBuffer
_080C71A8: .4byte gBG2TilemapBuffer
_080C71AC: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80C7050

	THUMB_FUNC_START sub_80C71B0
sub_80C71B0: @ 0x080C71B0
	ldr r0, _080C71BC  @ gUnknown_02022188
	ldrh r1, [r0, #2]
	strh r1, [r0, #8]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xa]
	bx lr
	.align 2, 0
_080C71BC: .4byte gUnknown_02022188

	THUMB_FUNC_END sub_80C71B0

	THUMB_FUNC_START sub_80C71C0
sub_80C71C0: @ 0x080C71C0
	push {lr}
	ldr r0, _080C71D0  @ gUnknown_08AA6D04
	movs r1, #0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_080C71D0: .4byte gUnknown_08AA6D04

	THUMB_FUNC_END sub_80C71C0

	THUMB_FUNC_START sub_80C71D4
sub_80C71D4: @ 0x080C71D4
	push {lr}
	ldr r0, _080C71E0  @ gUnknown_08AA6D04
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_080C71E0: .4byte gUnknown_08AA6D04

	THUMB_FUNC_END sub_80C71D4

	THUMB_FUNC_START sub_80C71E4
sub_80C71E4: @ 0x080C71E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x63
	bhi _080C7250
	asrs r1, r1, #0x10
	movs r0, #0x1f
	bics r0, r1
	lsls r0, r0, #6
	ldr r2, _080C725C  @ 0x0600E800
	adds r7, r0, r2
	movs r5, #0x63
	subs r5, r5, r1
	ldr r1, _080C7260  @ gUnknown_08AA6D14
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r0, #2
	adds r1, r4, r1
	ldr r6, [r1]
	movs r1, #0x16
	bl DivRem
	adds r1, r0, #0
	lsls r1, r1, #0xa
	ldr r0, _080C7264  @ 0x06008000
	adds r1, r1, r0
	adds r0, r6, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7268  @ gUnknown_08AA6EA4
	adds r4, r4, r0
	ldr r4, [r4]
	movs r6, #0
	movs r2, #0xfc
	lsls r2, r2, #8
	mov r8, r2
_080C7230:
	asrs r0, r5, #0x10
	movs r1, #0x16
	bl DivRem
	ldrh r1, [r4]
	mov r2, r8
	ands r1, r2
	lsls r0, r0, #5
	adds r0, r0, r6
	orrs r1, r0
	strh r1, [r7]
	adds r6, #1
	adds r7, #2
	adds r4, #2
	cmp r6, #0x1d
	ble _080C7230
_080C7250:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C725C: .4byte 0x0600E800
_080C7260: .4byte gUnknown_08AA6D14
_080C7264: .4byte 0x06008000
_080C7268: .4byte gUnknown_08AA6EA4

	THUMB_FUNC_END sub_80C71E4

	THUMB_FUNC_START sub_80C726C
sub_80C726C: @ 0x080C726C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	asrs r1, r1, #3
	adds r4, r1, #0
	adds r4, #0x15
	asrs r0, r6, #3
	adds r0, #0x15
	cmp r4, r0
	bge _080C728E
	adds r5, r0, #0
_080C7280:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_80C71E4
	adds r4, #1
	cmp r4, r5
	blt _080C7280
_080C728E:
	movs r2, #0x60
	subs r2, r2, r6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C726C

	THUMB_FUNC_START sub_80C72A4
sub_80C72A4: @ 0x080C72A4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl SetDefaultColorEffects
	cmp r4, #0
	bne _080C72DC
	ldr r2, _080C72D8  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	b _080C737C
	.align 2, 0
_080C72D8: .4byte gLCDControlBuffer
_080C72DC:
	ldr r4, _080C73A4  @ gLCDControlBuffer
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #1]
	orrs r0, r2
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r4, #1]
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #1
	bl SetBackgroundTileDataOffset
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r0, #1
	bl SetBackgroundMapDataOffset
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetB
	ldr r0, _080C73A8  @ gUnknown_08AF47F0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x80
	bl StorePaletteToBufferMaybe
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldrb r1, [r4, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
_080C737C:
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundTileDataOffset
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	ldr r0, _080C73AC  @ gUnknown_08B103D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C73A4: .4byte gLCDControlBuffer
_080C73A8: .4byte gUnknown_08AF47F0
_080C73AC: .4byte gUnknown_08B103D8

	THUMB_FUNC_END sub_80C72A4

	THUMB_FUNC_START sub_80C73B0
sub_80C73B0: @ 0x080C73B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2a]
	cmp r0, #6
	bls _080C73BC
	b _080C7604
_080C73BC:
	lsls r0, r0, #2
	ldr r1, _080C73C8  @ _080C73CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C73C8: .4byte _080C73CC
_080C73CC: @ jump table
	.4byte _080C73E8 @ case 0
	.4byte _080C7454 @ case 1
	.4byte _080C7480 @ case 2
	.4byte _080C74B0 @ case 3
	.4byte _080C74EC @ case 4
	.4byte _080C7510 @ case 5
	.4byte _080C754C @ case 6
_080C73E8:
	ldr r4, _080C743C  @ gUnknown_08AB7DD0
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C7440  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7444  @ gUnknown_08AB87E0
	ldr r1, _080C7448  @ gBG3TilemapBuffer
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C744C  @ gPaletteBuffer
	ldr r1, _080C7450  @ 0x00007FFF
	movs r2, #0xe1
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r2, #0xe
_080C7410:
	strh r1, [r0]
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bge _080C7410
	movs r4, #0xe1
	lsls r4, r4, #8
	adds r3, r4, #0
	ldr r1, _080C7448  @ gBG3TilemapBuffer
	movs r2, #0xa0
	lsls r2, r2, #2
_080C7426:
	ldrh r4, [r1]
	adds r0, r3, r4
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _080C7426
	movs r0, #8
	bl BG_EnableSyncByMask
	b _080C7604
	.align 2, 0
_080C743C: .4byte gUnknown_08AB7DD0
_080C7440: .4byte 0x06002000
_080C7444: .4byte gUnknown_08AB87E0
_080C7448: .4byte gBG3TilemapBuffer
_080C744C: .4byte gPaletteBuffer
_080C7450: .4byte 0x00007FFF
_080C7454:
	ldr r4, _080C7474  @ gUnknown_08ABF168
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7478  @ gUnknown_08AC1878
	ldr r1, _080C747C  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C7604
	.align 2, 0
_080C7474: .4byte gUnknown_08ABF168
_080C7478: .4byte gUnknown_08AC1878
_080C747C: .4byte gUnknown_02020188
_080C7480:
	ldr r4, _080C74A0  @ gUnknown_08AC0BD8
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r2, _080C74A4  @ 0x06002000
	adds r1, r1, r2
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C74A8  @ gUnknown_08AC1B98
	ldr r1, _080C74AC  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C7604
	.align 2, 0
_080C74A0: .4byte gUnknown_08AC0BD8
_080C74A4: .4byte 0x06002000
_080C74A8: .4byte gUnknown_08AC1B98
_080C74AC: .4byte gUnknown_02020988
_080C74B0:
	ldr r4, _080C74DC  @ gUnknown_08ABB14C
	movs r0, #2
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C74E0  @ gUnknown_08ABC074
	ldr r1, _080C74E4  @ gUnknown_02021188
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C74E8  @ gUnknown_08AC1C8C
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	b _080C7604
	.align 2, 0
_080C74DC: .4byte gUnknown_08ABB14C
_080C74E0: .4byte gUnknown_08ABC074
_080C74E4: .4byte gUnknown_02021188
_080C74E8: .4byte gUnknown_08AC1C8C
_080C74EC:
	ldr r0, _080C7500  @ gUnknown_08ABE304
	ldr r1, _080C7504  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7508  @ gUnknown_08ABEF70
	ldr r1, _080C750C  @ 0x0600C000
	bl CopyDataWithPossibleUncomp
	b _080C7604
	.align 2, 0
_080C7500: .4byte gUnknown_08ABE304
_080C7504: .4byte 0x06008000
_080C7508: .4byte gUnknown_08ABEF70
_080C750C: .4byte 0x0600C000
_080C7510:
	ldr r0, _080C753C  @ gUnknown_08ABD348
	ldr r1, _080C7540  @ 0x0600A000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7544  @ gUnknown_08ABE120
	ldr r4, _080C7548  @ 0x0600C800
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r0, #0
	movs r2, #0xa0
	lsls r2, r2, #2
_080C752C:
	ldrh r3, [r4]
	adds r0, r1, r3
	strh r0, [r4]
	adds r4, #2
	subs r2, #1
	cmp r2, #0
	bne _080C752C
	b _080C7604
	.align 2, 0
_080C753C: .4byte gUnknown_08ABD348
_080C7540: .4byte 0x0600A000
_080C7544: .4byte gUnknown_08ABE120
_080C7548: .4byte 0x0600C800
_080C754C:
	ldr r3, _080C75EC  @ gUnknown_02021188
	ldr r0, _080C75F0  @ gPaletteBuffer
	movs r1, #0
	movs r4, #0xf1
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r2, #0xe
_080C755A:
	strh r1, [r0]
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bge _080C755A
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r3, r0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r3, #0
	adds r1, r4, #0
	bl CpuFastSet
	adds r7, r4, #0
	ldr r6, _080C75F4  @ 0x00000FFF
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r4, r2, #0
	adds r3, r7, #0
	movs r2, #0xa0
	lsls r2, r2, #2
_080C7586:
	ldrh r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bne _080C7586
	ldr r1, _080C75F8  @ 0x0600F000
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, #0
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r2, _080C75FC  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	strh r0, [r5, #0x2a]
	strh r0, [r5, #0x30]
	strh r0, [r5, #0x32]
	ldr r1, _080C7600  @ gUnknown_02022188
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r2, #0xa0
	strh r2, [r1, #6]
	strh r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundTileDataOffset
	adds r0, r5, #0
	bl Proc_Break
	b _080C760A
	.align 2, 0
_080C75EC: .4byte gUnknown_02021188
_080C75F0: .4byte gPaletteBuffer
_080C75F4: .4byte 0x00000FFF
_080C75F8: .4byte 0x0600F000
_080C75FC: .4byte gLCDControlBuffer
_080C7600: .4byte gUnknown_02022188
_080C7604:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C760A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C73B0

	THUMB_FUNC_START sub_80C7610
sub_80C7610: @ 0x080C7610
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80C7610

	THUMB_FUNC_START sub_80C7618
sub_80C7618: @ 0x080C7618
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x4c
	movs r0, #0
	ldrsh r3, [r5, r0]
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	adds r4, r0, #0
	ldr r0, _080C7668  @ gUnknown_08AB8CAC
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C766C  @ gUnknown_02022A68
	ldr r1, _080C7670  @ 0x00007FFF
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r2, r4, #0
	bl sub_80C69B0
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x20
	bne _080C7674
	movs r0, #0
	strh r0, [r5]
	adds r0, r6, #0
	bl Proc_Break
	b _080C7678
	.align 2, 0
_080C7668: .4byte gUnknown_08AB8CAC
_080C766C: .4byte gUnknown_02022A68
_080C7670: .4byte 0x00007FFF
_080C7674:
	adds r0, r1, #1
	strh r0, [r5]
_080C7678:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C7618

	THUMB_FUNC_START sub_80C7680
sub_80C7680: @ 0x080C7680
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r6, #4
_080C768C:
	lsls r1, r4, #5
	str r6, [sp]
	movs r0, #0
	adds r2, r5, #0
	ldr r3, _080C76C0  @ gObject_32x8
	bl PutSpriteExt
	adds r4, #1
	cmp r4, #7
	ble _080C768C
	movs r4, #0
	movs r5, #0
_080C76A4:
	lsls r2, r4, #5
	str r5, [sp]
	movs r0, #0
	adds r1, r7, #0
	ldr r3, _080C76C4  @ gObject_8x32
	bl PutSpriteExt
	adds r4, #1
	cmp r4, #7
	ble _080C76A4
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C76C0: .4byte gObject_32x8
_080C76C4: .4byte gObject_8x32

	THUMB_FUNC_END sub_80C7680

	THUMB_FUNC_START sub_80C76C8
sub_80C76C8: @ 0x080C76C8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #7
	bl BG_EnableSyncByMask
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x10
	bhi _080C77BA
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x80
	bl Interpolate
	adds r6, r0, #0
	ldrh r0, [r5, #0x2a]
	subs r0, #0xc
	cmp r0, #4
	bhi _080C7770
	lsls r0, r0, #2
	ldr r1, _080C7704  @ _080C7708
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C7704: .4byte _080C7708
_080C7708: @ jump table
	.4byte _080C771C @ case 0
	.4byte _080C7730 @ case 1
	.4byte _080C7750 @ case 2
	.4byte _080C7770 @ case 3
	.4byte _080C7790 @ case 4
_080C771C:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080C772C  @ 0x0600C800
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	b _080C7782
	.align 2, 0
_080C772C: .4byte 0x0600C800
_080C7730:
	ldr r0, _080C7744  @ gUnknown_08ABC22C
	ldr r1, _080C7748  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	ldr r2, _080C774C  @ 0x0600C800
	b _080C777A
	.align 2, 0
_080C7744: .4byte gUnknown_08ABC22C
_080C7748: .4byte 0x06008000
_080C774C: .4byte 0x0600C800
_080C7750:
	ldr r0, _080C7768  @ gUnknown_08ABD174
	ldr r4, _080C776C  @ 0x0600C000
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	b _080C7782
	.align 2, 0
_080C7768: .4byte gUnknown_08ABD174
_080C776C: .4byte 0x0600C000
_080C7770:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	ldr r2, _080C778C  @ 0x0600C000
_080C777A:
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
_080C7782:
	movs r2, #0x88
	movs r3, #2
	bl sub_80C67D4
	b _080C77B8
	.align 2, 0
_080C778C: .4byte 0x0600C000
_080C7790:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080C7824  @ gUnknown_02021188
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r2, #0x88
	movs r3, #2
	bl sub_80C67D4
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #2
	bl SetBackgroundTileDataOffset
	ldr r0, _080C7828  @ gUnknown_08AA7034
	adds r1, r5, #0
	bl Proc_Start
_080C77B8:
	strh r6, [r5, #0x30]
_080C77BA:
	ldrh r0, [r5, #0x2a]
	subs r4, r0, #5
	cmp r4, #0
	blt _080C7830
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x90
	adds r3, r4, #0
	bl Interpolate
	adds r6, r0, #0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldr r7, _080C782C  @ gUnknown_02020188
	str r7, [sp]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r2, r2, r7
	mov r9, r2
	str r2, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0xc8
	movs r3, #1
	bl sub_80C689C
	movs r0, #0
	mov r8, r0
	strh r6, [r5, #0x32]
	cmp r4, #0x10
	bne _080C7830
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	str r7, [sp]
	mov r2, r9
	str r2, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0xc8
	movs r3, #0
	bl sub_80C689C
	mov r2, r8
	strh r2, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C7836
	.align 2, 0
_080C7824: .4byte gUnknown_02021188
_080C7828: .4byte gUnknown_08AA7034
_080C782C: .4byte gUnknown_02020188
_080C7830:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C7836:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C76C8

	THUMB_FUNC_START sub_80C7844
sub_80C7844: @ 0x080C7844
	push {r4, lr}
	ldr r0, _080C78A0  @ 0x04000006
	ldrh r0, [r0]
	adds r3, r0, #0
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bls _080C7870
	ldr r2, _080C78A4  @ 0x0400000C
	ldrh r1, [r2]
	ldr r0, _080C78A8  @ 0x0000C0FF
	ands r0, r1
	movs r4, #0xf0
	lsls r4, r4, #5
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C78AC  @ 0x04000050
	ldr r2, _080C78B0  @ 0x00000C46
	adds r0, r2, #0
	strh r0, [r1]
_080C7870:
	ldr r1, _080C78B4  @ gUnknown_02022188
	movs r4, #8
	ldrsh r0, [r1, r4]
	cmp r3, r0
	beq _080C787E
	cmp r0, #0
	bne _080C7898
_080C787E:
	ldr r2, _080C78A4  @ 0x0400000C
	ldrh r1, [r2]
	ldr r0, _080C78A8  @ 0x0000C0FF
	ands r0, r1
	movs r3, #0xe8
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C78AC  @ 0x04000050
	ldr r4, _080C78B8  @ 0x00000C42
	adds r0, r4, #0
	strh r0, [r1]
_080C7898:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C78A0: .4byte 0x04000006
_080C78A4: .4byte 0x0400000C
_080C78A8: .4byte 0x0000C0FF
_080C78AC: .4byte 0x04000050
_080C78B0: .4byte 0x00000C46
_080C78B4: .4byte gUnknown_02022188
_080C78B8: .4byte 0x00000C42

	THUMB_FUNC_END sub_80C7844

	THUMB_FUNC_START sub_80C78BC
sub_80C78BC: @ 0x080C78BC
	push {lr}
	ldr r0, _080C78EC  @ 0x04000006
	ldrh r0, [r0]
	adds r2, r0, #0
	subs r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bls _080C78D6
	ldr r1, _080C78F0  @ 0x04000050
	ldr r3, _080C78F4  @ 0x00000C46
	adds r0, r3, #0
	strh r0, [r1]
_080C78D6:
	ldr r0, _080C78F8  @ gUnknown_02022188
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bne _080C78E8
	ldr r1, _080C78F0  @ 0x04000050
	ldr r2, _080C78FC  @ 0x00000CCF
	adds r0, r2, #0
	strh r0, [r1]
_080C78E8:
	pop {r0}
	bx r0
	.align 2, 0
_080C78EC: .4byte 0x04000006
_080C78F0: .4byte 0x04000050
_080C78F4: .4byte 0x00000C46
_080C78F8: .4byte gUnknown_02022188
_080C78FC: .4byte 0x00000CCF

	THUMB_FUNC_END sub_80C78BC

	THUMB_FUNC_START sub_80C7900
sub_80C7900: @ 0x080C7900
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _080C79E4  @ sub_80C7844
	bl SetPrimaryHBlankHandler
	ldr r7, _080C79E8  @ gLCDControlBuffer
	ldrb r2, [r7, #1]
	movs r0, #0x20
	orrs r2, r0
	subs r0, #0x61
	ands r2, r0
	movs r0, #0x7f
	ands r2, r0
	ldr r1, _080C79EC  @ gUnknown_030030B4
	ldrb r3, [r1]
	movs r0, #1
	mov r9, r0
	mov r1, r9
	orrs r3, r1
	movs r6, #2
	orrs r3, r6
	movs r0, #4
	mov r8, r0
	mov r1, r8
	orrs r3, r1
	movs r5, #8
	orrs r3, r5
	movs r4, #0x10
	orrs r3, r4
	movs r0, #0x35
	adds r0, r0, r7
	mov ip, r0
	ldrb r0, [r0]
	mov r1, r9
	orrs r0, r1
	orrs r0, r6
	movs r1, #5
	negs r1, r1
	ands r0, r1
	orrs r0, r5
	orrs r0, r4
	mov r1, ip
	strb r0, [r1]
	movs r0, #0x36
	adds r0, r0, r7
	mov sl, r0
	ldrb r1, [r0]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	mov r1, r8
	orrs r0, r1
	orrs r0, r5
	orrs r0, r4
	mov r1, r9
	orrs r2, r1
	orrs r2, r6
	mov r1, r8
	orrs r2, r1
	orrs r2, r5
	orrs r2, r4
	strb r2, [r7, #1]
	movs r1, #0x20
	orrs r3, r1
	ldr r1, _080C79EC  @ gUnknown_030030B4
	strb r3, [r1]
	movs r1, #0x20
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2d
	movs r4, #0
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	ldr r0, _080C79F0  @ gUnknown_02022188
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #0xa0
	strb r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	ldr r0, [sp, #4]
	bl Proc_Break
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C79E4: .4byte sub_80C7844
_080C79E8: .4byte gLCDControlBuffer
_080C79EC: .4byte gUnknown_030030B4
_080C79F0: .4byte gUnknown_02022188

	THUMB_FUNC_END sub_80C7900

	THUMB_FUNC_START sub_80C79F4
sub_80C79F4: @ 0x080C79F4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x2a]
	movs r5, #0x10
	str r5, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0xf0
	bl Interpolate
	ldr r4, _080C7A6C  @ gUnknown_02022188
	movs r6, #0
	strh r0, [r4]
	ldrh r3, [r7, #0x2a]
	str r5, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0xa0
	bl Interpolate
	strh r0, [r4, #2]
	ldr r2, _080C7A70  @ gLCDControlBuffer
	adds r0, r2, #0
	adds r0, #0x2d
	strb r6, [r0]
	adds r0, #4
	strb r6, [r0]
	ldrh r1, [r4]
	subs r0, #5
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x30
	movs r0, #0xa0
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	cmp r0, #0xe8
	ble _080C7A48
	movs r0, #0xe8
_080C7A48:
	cmp r1, #0x88
	ble _080C7A4E
	movs r1, #0x88
_080C7A4E:
	bl sub_80C7680
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x10
	bne _080C7A78
	ldr r0, _080C7A74  @ sub_80C78BC
	bl SetPrimaryHBlankHandler
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C7A7C
	.align 2, 0
_080C7A6C: .4byte gUnknown_02022188
_080C7A70: .4byte gLCDControlBuffer
_080C7A74: .4byte sub_80C78BC
_080C7A78:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C7A7C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C79F4

	THUMB_FUNC_START sub_80C7A84
sub_80C7A84: @ 0x080C7A84
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r3, [r4, #0x2a]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0xa0
	movs r2, #0x78
	bl Interpolate
	ldr r1, _080C7AD0  @ gUnknown_02022188
	strh r0, [r1, #6]
	movs r0, #0xe8
	movs r1, #0x88
	bl sub_80C7680
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xe
	bls _080C7ABC
	ldr r3, _080C7AD4  @ gUnknown_08AA6BFA
	ldr r0, _080C7AD8  @ 0x00002046
	str r0, [sp]
	movs r0, #1
	movs r1, #0x98
	movs r2, #0x88
	bl PutSpriteExt
_080C7ABC:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C7ADC
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C7AE0
	.align 2, 0
_080C7AD0: .4byte gUnknown_02022188
_080C7AD4: .4byte gUnknown_08AA6BFA
_080C7AD8: .4byte 0x00002046
_080C7ADC:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C7AE0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C7A84

	THUMB_FUNC_START sub_80C7AE8
sub_80C7AE8: @ 0x080C7AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xe8
	movs r1, #0x88
	bl sub_80C7680
	ldr r3, _080C7B60  @ gUnknown_08AA6BFA
	ldr r0, _080C7B64  @ 0x0000205A
	str r0, [sp]
	movs r0, #1
	movs r1, #0x98
	movs r2, #0x88
	bl PutSpriteExt
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x38
	bne _080C7B74
	movs r0, #0
	strh r0, [r4, #0x2a]
	ldrh r0, [r4, #0x30]
	strh r0, [r4, #0x34]
	ldrh r0, [r4, #0x32]
	strh r0, [r4, #0x36]
	ldr r2, _080C7B68  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r6, _080C7B6C  @ 0x00007FFF
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r5, r0, #0
	ldr r2, _080C7B70  @ gBG2TilemapBuffer
	movs r7, #0
	movs r3, #0xa0
	lsls r3, r3, #2
_080C7B44:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _080C7B44
	adds r0, r4, #0
	bl Proc_Break
	b _080C7B78
	.align 2, 0
_080C7B60: .4byte gUnknown_08AA6BFA
_080C7B64: .4byte 0x0000205A
_080C7B68: .4byte gLCDControlBuffer
_080C7B6C: .4byte 0x00007FFF
_080C7B70: .4byte gBG2TilemapBuffer
_080C7B74:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C7B78:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C7AE8

	THUMB_FUNC_START sub_80C7B80
sub_80C7B80: @ 0x080C7B80
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #5
	bl BG_EnableSyncByMask
	ldrh r0, [r6, #0x2a]
	cmp r0, #1
	bhi _080C7BA8
	ldr r3, _080C7CD0  @ gUnknown_08AA6BFA
	ldr r0, _080C7CD4  @ 0x00002046
	str r0, [sp]
	movs r0, #1
	movs r1, #0x98
	movs r2, #0x88
	bl PutSpriteExt
_080C7BA8:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x10
	bhi _080C7BEC
	adds r3, r0, #0
	movs r5, #0x10
	str r5, [sp]
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xa0
	bl Interpolate
	ldr r4, _080C7CD8  @ gUnknown_02022188
	strh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #1
	ldrh r3, [r6, #0x2a]
	str r5, [sp]
	movs r0, #1
	movs r1, #0xe8
	bl Interpolate
	adds r5, r0, #0
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, #0x10
	adds r0, r5, #0
	bl sub_80C7680
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x10
	bne _080C7BEC
	movs r0, #0
	bl SetPrimaryHBlankHandler
_080C7BEC:
	ldrh r2, [r6, #0x2a]
	mov r8, r2
	mov r7, r8
	subs r7, #4
	cmp r7, #0
	blt _080C7CE4
	cmp r7, #0x18
	bgt _080C7C2E
	ldrh r1, [r6, #0x34]
	movs r2, #0xb8
	lsls r2, r2, #1
	movs r0, #0x18
	str r0, [sp]
	movs r0, #1
	adds r3, r7, #0
	bl Interpolate
	adds r5, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x30
	ldrsh r1, [r6, r3]
	ldr r2, _080C7CDC  @ gUnknown_02021188
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0x88
	movs r3, #2
	bl sub_80C67D4
	strh r5, [r6, #0x30]
_080C7C2E:
	movs r0, #0xb
	negs r0, r0
	add r0, r8
	mov r9, r0
	cmp r0, #0
	blt _080C7CE4
	cmp r7, #0x18
	bne _080C7C5C
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
_080C7C5C:
	cmp r7, #0x17
	ble _080C7C88
	mov r3, r8
	subs r3, #0x1b
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	adds r5, r0, #0
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C7C88:
	ldrh r1, [r6, #0x36]
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r0, #0x18
	str r0, [sp]
	movs r0, #1
	mov r3, r9
	bl Interpolate
	adds r5, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r2, _080C7CE0  @ gUnknown_02020188
	str r2, [sp]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r2, r3
	str r2, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r2, #0xc8
	movs r3, #0
	bl sub_80C689C
	strh r5, [r6, #0x32]
	mov r0, r9
	cmp r0, #0x18
	bne _080C7CE4
	strh r4, [r6, #0x2a]
	adds r0, r6, #0
	bl Proc_Break
	b _080C7CEA
	.align 2, 0
_080C7CD0: .4byte gUnknown_08AA6BFA
_080C7CD4: .4byte 0x00002046
_080C7CD8: .4byte gUnknown_02022188
_080C7CDC: .4byte gUnknown_02021188
_080C7CE0: .4byte gUnknown_02020188
_080C7CE4:
	ldrh r0, [r6, #0x2a]
	adds r0, #1
	strh r0, [r6, #0x2a]
_080C7CEA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C7B80

	THUMB_FUNC_START sub_80C7CF8
sub_80C7CF8: @ 0x080C7CF8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrh r0, [r6, #0x2a]
	cmp r0, #6
	bls _080C7D06
	b _080C7F80
_080C7D06:
	lsls r0, r0, #2
	ldr r1, _080C7D10  @ _080C7D14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C7D10: .4byte _080C7D14
_080C7D14: @ jump table
	.4byte _080C7D30 @ case 0
	.4byte _080C7DEC @ case 1
	.4byte _080C7E18 @ case 2
	.4byte _080C7E48 @ case 3
	.4byte _080C7E84 @ case 4
	.4byte _080C7EA8 @ case 5
	.4byte _080C7EE4 @ case 6
_080C7D30:
	ldr r2, _080C7DDC  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _080C7DE0  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C7DE4  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C7DE8  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #7
	bl BG_EnableSyncByMask
	movs r0, #0
	bl sub_8001F48
	movs r0, #0
	bl sub_8001F64
	movs r0, #1
	movs r1, #8
	movs r2, #8
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	b _080C7F80
	.align 2, 0
_080C7DDC: .4byte gLCDControlBuffer
_080C7DE0: .4byte gBG0TilemapBuffer
_080C7DE4: .4byte gBG1TilemapBuffer
_080C7DE8: .4byte gBG2TilemapBuffer
_080C7DEC:
	ldr r4, _080C7E0C  @ gUnknown_08AC5614
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7E10  @ gUnknown_08AC8DDC
	ldr r1, _080C7E14  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C7F80
	.align 2, 0
_080C7E0C: .4byte gUnknown_08AC5614
_080C7E10: .4byte gUnknown_08AC8DDC
_080C7E14: .4byte gUnknown_02020188
_080C7E18:
	ldr r4, _080C7E38  @ gUnknown_08AC7374
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r2, _080C7E3C  @ 0x06002000
	adds r1, r1, r2
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7E40  @ gUnknown_08AC91F8
	ldr r1, _080C7E44  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C7F80
	.align 2, 0
_080C7E38: .4byte gUnknown_08AC7374
_080C7E3C: .4byte 0x06002000
_080C7E40: .4byte gUnknown_08AC91F8
_080C7E44: .4byte gUnknown_02020988
_080C7E48:
	ldr r4, _080C7E74  @ gUnknown_08AC1DEC
	movs r0, #2
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7E78  @ gUnknown_08AC2B24
	ldr r1, _080C7E7C  @ gUnknown_02021188
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7E80  @ gUnknown_08AC933C
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	b _080C7F80
	.align 2, 0
_080C7E74: .4byte gUnknown_08AC1DEC
_080C7E78: .4byte gUnknown_08AC2B24
_080C7E7C: .4byte gUnknown_02021188
_080C7E80: .4byte gUnknown_08AC933C
_080C7E84:
	ldr r0, _080C7E98  @ gUnknown_08AC4928
	ldr r1, _080C7E9C  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7EA0  @ gUnknown_08AC5420
	ldr r1, _080C7EA4  @ 0x0600C000
	bl CopyDataWithPossibleUncomp
	b _080C7F80
	.align 2, 0
_080C7E98: .4byte gUnknown_08AC4928
_080C7E9C: .4byte 0x06008000
_080C7EA0: .4byte gUnknown_08AC5420
_080C7EA4: .4byte 0x0600C000
_080C7EA8:
	ldr r0, _080C7ED4  @ gUnknown_08AC3BC8
	ldr r1, _080C7ED8  @ 0x0600A000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C7EDC  @ gUnknown_08AC4760
	ldr r4, _080C7EE0  @ 0x0600C800
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	movs r3, #0xa0
	lsls r3, r3, #2
_080C7EC4:
	ldrh r2, [r4]
	adds r0, r1, r2
	strh r0, [r4]
	adds r4, #2
	subs r3, #1
	cmp r3, #0
	bne _080C7EC4
	b _080C7F80
	.align 2, 0
_080C7ED4: .4byte gUnknown_08AC3BC8
_080C7ED8: .4byte 0x0600A000
_080C7EDC: .4byte gUnknown_08AC4760
_080C7EE0: .4byte 0x0600C800
_080C7EE4:
	ldr r0, _080C7F6C  @ gUnknown_02021188
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r4, #0
	bl CpuFastSet
	adds r7, r4, #0
	ldr r5, _080C7F70  @ 0x00000FFF
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r4, r2, #0
	adds r2, r7, #0
	movs r3, #0xa0
	lsls r3, r3, #2
_080C7F06:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _080C7F06
	ldr r1, _080C7F74  @ 0x0600F000
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, #0
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r2, _080C7F78  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r2, #0
	strh r2, [r6, #0x2a]
	strh r2, [r6, #0x30]
	strh r2, [r6, #0x32]
	ldr r1, _080C7F7C  @ gUnknown_02022188
	movs r0, #0xf0
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #6]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundTileDataOffset
	adds r0, r6, #0
	bl Proc_Break
	b _080C7F86
	.align 2, 0
_080C7F6C: .4byte gUnknown_02021188
_080C7F70: .4byte 0x00000FFF
_080C7F74: .4byte 0x0600F000
_080C7F78: .4byte gLCDControlBuffer
_080C7F7C: .4byte gUnknown_02022188
_080C7F80:
	ldrh r0, [r6, #0x2a]
	adds r0, #1
	strh r0, [r6, #0x2a]
_080C7F86:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C7CF8

	THUMB_FUNC_START sub_80C7F90
sub_80C7F90: @ 0x080C7F90
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #7
	bl BG_EnableSyncByMask
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x10
	bhi _080C807A
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x68
	bl Interpolate
	adds r6, r0, #0
	ldrh r0, [r5, #0x2a]
	subs r0, #0xc
	cmp r0, #4
	bhi _080C8038
	lsls r0, r0, #2
	ldr r1, _080C7FCC  @ _080C7FD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C7FCC: .4byte _080C7FD0
_080C7FD0: @ jump table
	.4byte _080C7FE4 @ case 0
	.4byte _080C7FF8 @ case 1
	.4byte _080C8018 @ case 2
	.4byte _080C8038 @ case 3
	.4byte _080C8058 @ case 4
_080C7FE4:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080C7FF4  @ 0x0600C800
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	b _080C804A
	.align 2, 0
_080C7FF4: .4byte 0x0600C800
_080C7FF8:
	ldr r0, _080C800C  @ gUnknown_08AC2CB4
	ldr r1, _080C8010  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	ldr r2, _080C8014  @ 0x0600C800
	b _080C8042
	.align 2, 0
_080C800C: .4byte gUnknown_08AC2CB4
_080C8010: .4byte 0x06008000
_080C8014: .4byte 0x0600C800
_080C8018:
	ldr r0, _080C8030  @ gUnknown_08AC3A2C
	ldr r4, _080C8034  @ 0x0600C000
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	b _080C804A
	.align 2, 0
_080C8030: .4byte gUnknown_08AC3A2C
_080C8034: .4byte 0x0600C000
_080C8038:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	ldr r2, _080C8054  @ 0x0600C000
_080C8042:
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
_080C804A:
	movs r2, #0x98
	movs r3, #2
	bl sub_80C689C
	b _080C8078
	.align 2, 0
_080C8054: .4byte 0x0600C000
_080C8058:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080C80E4  @ gUnknown_02021188
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r2, #0x98
	movs r3, #2
	bl sub_80C689C
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #2
	bl SetBackgroundTileDataOffset
_080C8078:
	strh r6, [r5, #0x30]
_080C807A:
	ldrh r0, [r5, #0x2a]
	subs r4, r0, #5
	cmp r4, #0
	blt _080C80EC
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0xcc
	adds r3, r4, #0
	bl Interpolate
	adds r6, r0, #0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldr r7, _080C80E8  @ gUnknown_02020188
	str r7, [sp]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r2, r2, r7
	mov r9, r2
	str r2, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0xc0
	movs r3, #1
	bl sub_80C67D4
	movs r0, #0
	mov r8, r0
	strh r6, [r5, #0x32]
	cmp r4, #0x10
	bne _080C80EC
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	str r7, [sp]
	mov r2, r9
	str r2, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #0xc0
	movs r3, #0
	bl sub_80C67D4
	mov r2, r8
	strh r2, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C80F2
	.align 2, 0
_080C80E4: .4byte gUnknown_02021188
_080C80E8: .4byte gUnknown_02020188
_080C80EC:
	ldrh r0, [r5, #0x2a]
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C80F2:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C7F90

	THUMB_FUNC_START sub_80C8100
sub_80C8100: @ 0x080C8100
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8178  @ sub_80C7844
	bl SetPrimaryHBlankHandler
	ldr r2, _080C817C  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _080C8180  @ gUnknown_02022188
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r4, #0
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x31
	strb r4, [r0]
	subs r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	adds r0, r5, #0
	bl Proc_Break
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8178: .4byte sub_80C7844
_080C817C: .4byte gLCDControlBuffer
_080C8180: .4byte gUnknown_02022188

	THUMB_FUNC_END sub_80C8100

	THUMB_FUNC_START sub_80C8184
sub_80C8184: @ 0x080C8184
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x2a]
	movs r5, #0x10
	str r5, [sp]
	movs r0, #4
	movs r1, #0xf0
	movs r2, #0
	bl Interpolate
	ldr r4, _080C81FC  @ gUnknown_02022188
	movs r6, #0
	strh r0, [r4]
	ldrh r3, [r7, #0x2a]
	str r5, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0xa0
	bl Interpolate
	strh r0, [r4, #2]
	ldr r2, _080C8200  @ gLCDControlBuffer
	ldrh r0, [r4]
	adds r1, r2, #0
	adds r1, #0x2d
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x31
	strb r6, [r0]
	subs r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	cmp r0, #7
	bgt _080C81DA
	movs r0, #8
_080C81DA:
	cmp r1, #0x88
	ble _080C81E0
	movs r1, #0x88
_080C81E0:
	bl sub_80C7680
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x10
	bne _080C8208
	ldr r0, _080C8204  @ sub_80C78BC
	bl SetPrimaryHBlankHandler
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C820C
	.align 2, 0
_080C81FC: .4byte gUnknown_02022188
_080C8200: .4byte gLCDControlBuffer
_080C8204: .4byte sub_80C78BC
_080C8208:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C820C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8184

	THUMB_FUNC_START sub_80C8214
sub_80C8214: @ 0x080C8214
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r3, [r4, #0x2a]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0xa0
	movs r2, #0x78
	bl Interpolate
	ldr r1, _080C8260  @ gUnknown_02022188
	strh r0, [r1, #6]
	movs r0, #8
	movs r1, #0x88
	bl sub_80C7680
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xe
	bls _080C824C
	ldr r3, _080C8264  @ gUnknown_08AA6C0E
	ldr r0, _080C8268  @ 0x0000206E
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0x88
	bl PutSpriteExt
_080C824C:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C826C
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C8270
	.align 2, 0
_080C8260: .4byte gUnknown_02022188
_080C8264: .4byte gUnknown_08AA6C0E
_080C8268: .4byte 0x0000206E
_080C826C:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C8270:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8214

	THUMB_FUNC_START sub_80C8278
sub_80C8278: @ 0x080C8278
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #8
	movs r1, #0x88
	bl sub_80C7680
	ldr r3, _080C82A8  @ gUnknown_08AA6C0E
	ldr r0, _080C82AC  @ 0x0000207C
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0x88
	bl PutSpriteExt
	ldrh r0, [r5, #0x2a]
	cmp r0, #1
	beq _080C82C8
	cmp r0, #1
	bgt _080C82B0
	cmp r0, #0
	beq _080C82B6
	b _080C82EA
	.align 2, 0
_080C82A8: .4byte gUnknown_08AA6C0E
_080C82AC: .4byte 0x0000207C
_080C82B0:
	cmp r0, #2
	beq _080C82DA
	b _080C82EA
_080C82B6:
	movs r4, #0
_080C82B8:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_80C71E4
	adds r4, #1
	cmp r4, #7
	ble _080C82B8
	b _080C82EA
_080C82C8:
	movs r4, #8
_080C82CA:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_80C71E4
	adds r4, #1
	cmp r4, #0xf
	ble _080C82CA
	b _080C82EA
_080C82DA:
	movs r4, #0x10
_080C82DC:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_80C71E4
	adds r4, #1
	cmp r4, #0x15
	ble _080C82DC
_080C82EA:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x38
	bne _080C8350
	movs r0, #0
	strh r0, [r5, #0x2a]
	ldrh r0, [r5, #0x30]
	strh r0, [r5, #0x34]
	ldrh r0, [r5, #0x32]
	strh r0, [r5, #0x36]
	ldr r2, _080C8344  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r6, _080C8348  @ 0x00007FFF
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r3, r0, #0
	ldr r2, _080C834C  @ gBG2TilemapBuffer
	movs r7, #0
	movs r4, #0xa0
	lsls r4, r4, #2
_080C8328:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bne _080C8328
	adds r0, r5, #0
	bl Proc_Break
	b _080C8354
	.align 2, 0
_080C8344: .4byte gLCDControlBuffer
_080C8348: .4byte 0x00007FFF
_080C834C: .4byte gBG2TilemapBuffer
_080C8350:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C8354:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8278

	THUMB_FUNC_START sub_80C835C
sub_80C835C: @ 0x080C835C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #5
	bl BG_EnableSyncByMask
	ldrh r0, [r6, #0x2a]
	cmp r0, #1
	bhi _080C8384
	ldr r3, _080C84B0  @ gUnknown_08AA6C0E
	ldr r0, _080C84B4  @ 0x0000206E
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0x88
	bl PutSpriteExt
_080C8384:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x10
	bhi _080C83C6
	adds r3, r0, #0
	movs r5, #0x10
	str r5, [sp]
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xa0
	bl Interpolate
	ldr r4, _080C84B8  @ gUnknown_02022188
	strh r0, [r4, #6]
	ldrh r3, [r6, #0x2a]
	str r5, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0
	bl Interpolate
	adds r5, r0, #0
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, #0x10
	adds r0, r5, #0
	bl sub_80C7680
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x10
	bne _080C83C6
	movs r0, #0
	bl SetPrimaryHBlankHandler
_080C83C6:
	ldrh r2, [r6, #0x2a]
	mov r8, r2
	mov r7, r8
	subs r7, #4
	cmp r7, #0
	blt _080C84C4
	cmp r7, #0x18
	bgt _080C8408
	ldrh r1, [r6, #0x34]
	movs r2, #0xac
	lsls r2, r2, #1
	movs r0, #0x18
	str r0, [sp]
	movs r0, #1
	adds r3, r7, #0
	bl Interpolate
	adds r5, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x30
	ldrsh r1, [r6, r3]
	ldr r2, _080C84BC  @ gUnknown_02021188
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0x98
	movs r3, #2
	bl sub_80C689C
	strh r5, [r6, #0x30]
_080C8408:
	movs r0, #0xb
	negs r0, r0
	add r0, r8
	mov r9, r0
	cmp r0, #0
	blt _080C84C4
	cmp r7, #0x18
	bne _080C8436
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
_080C8436:
	cmp r7, #0x17
	ble _080C8462
	mov r3, r8
	subs r3, #0x1b
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	adds r5, r0, #0
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C8462:
	ldrh r1, [r6, #0x36]
	movs r2, #0xde
	lsls r2, r2, #1
	movs r0, #0x18
	str r0, [sp]
	movs r0, #1
	mov r3, r9
	bl Interpolate
	adds r5, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r2, _080C84C0  @ gUnknown_02020188
	str r2, [sp]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r2, r3
	str r2, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r2, #0xc0
	movs r3, #0
	bl sub_80C67D4
	strh r5, [r6, #0x32]
	mov r0, r9
	cmp r0, #0x18
	bne _080C84C4
	movs r0, #0
	bl SetPrimaryHBlankHandler
	strh r4, [r6, #0x2a]
	adds r0, r6, #0
	bl Proc_Break
	b _080C84CA
	.align 2, 0
_080C84B0: .4byte gUnknown_08AA6C0E
_080C84B4: .4byte 0x0000206E
_080C84B8: .4byte gUnknown_02022188
_080C84BC: .4byte gUnknown_02021188
_080C84C0: .4byte gUnknown_02020188
_080C84C4:
	ldrh r0, [r6, #0x2a]
	adds r0, #1
	strh r0, [r6, #0x2a]
_080C84CA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C835C

	THUMB_FUNC_START sub_80C84D8
sub_80C84D8: @ 0x080C84D8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080C851C
	ldr r2, _080C8544  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #3
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetA
_080C851C:
	ldrh r3, [r4, #0x2a]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	ldr r1, _080C8544  @ gLCDControlBuffer
	adds r1, #0x46
	strb r0, [r1]
	ldrh r0, [r4, #0x2a]
	cmp r0, #8
	bne _080C8548
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C854C
	.align 2, 0
_080C8544: .4byte gLCDControlBuffer
_080C8548:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C854C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C84D8

	THUMB_FUNC_START sub_80C8554
sub_80C8554: @ 0x080C8554
	ldr r1, _080C8560  @ gLCDControlBuffer
	ldrh r0, [r1, #0x28]
	adds r0, #2
	strh r0, [r1, #0x28]
	bx lr
	.align 2, 0
_080C8560: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C8554

	THUMB_FUNC_START sub_80C8564
sub_80C8564: @ 0x080C8564
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x46
	ldrb r0, [r0]
	bl sub_80C72A4
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	bl sub_80C726C
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8564

	THUMB_FUNC_START sub_80C8580
sub_80C8580: @ 0x080C8580
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #3
	movs r1, #8
	movs r2, #8
	movs r3, #0xe
	bl SetSpecialColorEffectsParameters
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	adds r4, #0x4c
	strh r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8580

	THUMB_FUNC_START sub_80C85B0
sub_80C85B0: @ 0x080C85B0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x4c
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0
	movs r1, #0xe
	movs r2, #0
	bl Interpolate
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #3
	movs r1, #8
	movs r2, #8
	bl SetSpecialColorEffectsParameters
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	bne _080C85EE
	adds r0, r5, #0
	bl Proc_Break
	b _080C85F2
_080C85EE:
	adds r0, r1, #1
	strh r0, [r4]
_080C85F2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C85B0

	THUMB_FUNC_START sub_80C85FC
sub_80C85FC: @ 0x080C85FC
	push {lr}
	bl SetDefaultColorEffects
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C85FC

	THUMB_FUNC_START sub_80C8608
sub_80C8608: @ 0x080C8608
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #3
	movs r1, #8
	movs r2, #8
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	adds r4, #0x4c
	strh r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8608

	THUMB_FUNC_START sub_80C8638
sub_80C8638: @ 0x080C8638
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x4c
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	bl Interpolate
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #3
	movs r1, #8
	movs r2, #8
	bl SetSpecialColorEffectsParameters
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x28
	bne _080C8676
	adds r0, r5, #0
	bl Proc_Break
	b _080C867A
_080C8676:
	adds r0, r1, #1
	strh r0, [r4]
_080C867A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8638

	THUMB_FUNC_START sub_80C8684
sub_80C8684: @ 0x080C8684
	push {lr}
	bl SetDefaultColorEffects
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8684

	THUMB_FUNC_START sub_80C8690
sub_80C8690: @ 0x080C8690
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #0x2a]
	subs r0, #1
	cmp r0, #5
	bls _080C86C8
	b _080C8802
_080C86C8:
	lsls r0, r0, #2
	ldr r1, _080C86D4  @ _080C86D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C86D4: .4byte _080C86D8
_080C86D8: @ jump table
	.4byte _080C86F0 @ case 0
	.4byte _080C8740 @ case 1
	.4byte _080C876C @ case 2
	.4byte _080C879C @ case 3
	.4byte _080C87CC @ case 4
	.4byte _080C87E0 @ case 5
_080C86F0:
	ldr r4, _080C8730  @ gUnknown_08AB8CCC
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C8734  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8738  @ gUnknown_08AB942C
	ldr r4, _080C873C  @ gBG3TilemapBuffer
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r3, #0xe1
	lsls r3, r3, #8
	adds r2, r3, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C8718:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _080C8718
	movs r0, #8
	bl BG_EnableSyncByMask
	b _080C8802
	.align 2, 0
_080C8730: .4byte gUnknown_08AB8CCC
_080C8734: .4byte 0x06002000
_080C8738: .4byte gUnknown_08AB942C
_080C873C: .4byte gBG3TilemapBuffer
_080C8740:
	ldr r4, _080C8760  @ gUnknown_08AC949C
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8764  @ gUnknown_08ACBF58
	ldr r1, _080C8768  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C8802
	.align 2, 0
_080C8760: .4byte gUnknown_08AC949C
_080C8764: .4byte gUnknown_08ACBF58
_080C8768: .4byte gUnknown_02020188
_080C876C:
	ldr r4, _080C878C  @ gUnknown_08ACAF70
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r3, _080C8790  @ 0x06002000
	adds r1, r1, r3
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8794  @ gUnknown_08ACC340
	ldr r1, _080C8798  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C8802
	.align 2, 0
_080C878C: .4byte gUnknown_08ACAF70
_080C8790: .4byte 0x06002000
_080C8794: .4byte gUnknown_08ACC340
_080C8798: .4byte gUnknown_02020988
_080C879C:
	ldr r0, _080C87BC  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C87C0  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C87C4  @ 0x0600D800
	ldr r2, _080C87C8  @ 0x01000400
	add r0, sp, #4
	bl CpuFastSet
	b _080C8802
	.align 2, 0
_080C87BC: .4byte gBG0TilemapBuffer
_080C87C0: .4byte gBG1TilemapBuffer
_080C87C4: .4byte 0x0600D800
_080C87C8: .4byte 0x01000400
_080C87CC:
	ldr r0, _080C87D8  @ gUnknown_08AF312C
	ldr r1, _080C87DC  @ 0x06004000
	bl CopyDataWithPossibleUncomp
	b _080C8802
	.align 2, 0
_080C87D8: .4byte gUnknown_08AF312C
_080C87DC: .4byte 0x06004000
_080C87E0:
	ldr r0, _080C8820  @ gUnknown_08AF404C
	ldr r4, _080C8824  @ 0x0600F000
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r0, #0x80
	lsls r0, r0, #8
	adds r2, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080C87F4:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	subs r1, #1
	adds r4, #2
	cmp r1, #0
	bne _080C87F4
_080C8802:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x28
	bne _080C8830
	ldr r0, _080C8828  @ gUnknown_08AA705C
	bl Proc_EndEach
	ldr r0, _080C882C  @ gUnknown_08AA707C
	bl Proc_EndEach
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C8834
	.align 2, 0
_080C8820: .4byte gUnknown_08AF404C
_080C8824: .4byte 0x0600F000
_080C8828: .4byte gUnknown_08AA705C
_080C882C: .4byte gUnknown_08AA707C
_080C8830:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C8834:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8690

	THUMB_FUNC_START sub_80C883C
sub_80C883C: @ 0x080C883C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #0x2a]
	cmp r0, #2
	beq _080C88AC
	cmp r0, #2
	bgt _080C887A
	cmp r0, #1
	beq _080C8880
	b _080C88FA
_080C887A:
	cmp r0, #3
	beq _080C88DC
	b _080C88FA
_080C8880:
	ldr r4, _080C88A0  @ gUnknown_08ACC540
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C88A4  @ gUnknown_08ACEED0
	ldr r1, _080C88A8  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C88FA
	.align 2, 0
_080C88A0: .4byte gUnknown_08ACC540
_080C88A4: .4byte gUnknown_08ACEED0
_080C88A8: .4byte gUnknown_02020188
_080C88AC:
	ldr r4, _080C88CC  @ gUnknown_08ACE0B8
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C88D0  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C88D4  @ gUnknown_08ACF200
	ldr r1, _080C88D8  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C88FA
	.align 2, 0
_080C88CC: .4byte gUnknown_08ACE0B8
_080C88D0: .4byte 0x06002000
_080C88D4: .4byte gUnknown_08ACF200
_080C88D8: .4byte gUnknown_02020988
_080C88DC:
	ldr r0, _080C8914  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C8918  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C891C  @ 0x0600D800
	ldr r2, _080C8920  @ 0x01000400
	add r0, sp, #4
	bl CpuFastSet
_080C88FA:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x28
	bne _080C8928
	ldr r0, _080C8924  @ gUnknown_08AA705C
	bl Proc_EndEach
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C892C
	.align 2, 0
_080C8914: .4byte gBG0TilemapBuffer
_080C8918: .4byte gBG1TilemapBuffer
_080C891C: .4byte 0x0600D800
_080C8920: .4byte 0x01000400
_080C8924: .4byte gUnknown_08AA705C
_080C8928:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C892C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C883C

	THUMB_FUNC_START sub_80C8934
sub_80C8934: @ 0x080C8934
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #0x2a]
	cmp r0, #2
	beq _080C89A4
	cmp r0, #2
	bgt _080C8972
	cmp r0, #1
	beq _080C8978
	b _080C89F2
_080C8972:
	cmp r0, #3
	beq _080C89D4
	b _080C89F2
_080C8978:
	ldr r4, _080C8998  @ gUnknown_08ACF474
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C899C  @ gUnknown_08AD206C
	ldr r1, _080C89A0  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C89F2
	.align 2, 0
_080C8998: .4byte gUnknown_08ACF474
_080C899C: .4byte gUnknown_08AD206C
_080C89A0: .4byte gUnknown_02020188
_080C89A4:
	ldr r4, _080C89C4  @ gUnknown_08AD1048
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C89C8  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C89CC  @ gUnknown_08AD236C
	ldr r1, _080C89D0  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C89F2
	.align 2, 0
_080C89C4: .4byte gUnknown_08AD1048
_080C89C8: .4byte 0x06002000
_080C89CC: .4byte gUnknown_08AD236C
_080C89D0: .4byte gUnknown_02020988
_080C89D4:
	ldr r0, _080C8A04  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C8A08  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C8A0C  @ 0x0600D800
	ldr r2, _080C8A10  @ 0x01000400
	add r0, sp, #4
	bl CpuFastSet
_080C89F2:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x28
	bne _080C8A14
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C8A18
	.align 2, 0
_080C8A04: .4byte gBG0TilemapBuffer
_080C8A08: .4byte gBG1TilemapBuffer
_080C8A0C: .4byte 0x0600D800
_080C8A10: .4byte 0x01000400
_080C8A14:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C8A18:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8934

	THUMB_FUNC_START sub_80C8A20
sub_80C8A20: @ 0x080C8A20
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #0x2a]
	cmp r0, #2
	beq _080C8A90
	cmp r0, #2
	bgt _080C8A5E
	cmp r0, #1
	beq _080C8A64
	b _080C8ADE
_080C8A5E:
	cmp r0, #3
	beq _080C8AC0
	b _080C8ADE
_080C8A64:
	ldr r4, _080C8A84  @ gUnknown_08AD2614
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8A88  @ gUnknown_08AD5094
	ldr r1, _080C8A8C  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C8ADE
	.align 2, 0
_080C8A84: .4byte gUnknown_08AD2614
_080C8A88: .4byte gUnknown_08AD5094
_080C8A8C: .4byte gUnknown_02020188
_080C8A90:
	ldr r4, _080C8AB0  @ gUnknown_08AD423C
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C8AB4  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8AB8  @ gUnknown_08AD543C
	ldr r1, _080C8ABC  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C8ADE
	.align 2, 0
_080C8AB0: .4byte gUnknown_08AD423C
_080C8AB4: .4byte 0x06002000
_080C8AB8: .4byte gUnknown_08AD543C
_080C8ABC: .4byte gUnknown_02020988
_080C8AC0:
	ldr r0, _080C8AF0  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C8AF4  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C8AF8  @ 0x0600D800
	ldr r2, _080C8AFC  @ 0x01000400
	add r0, sp, #4
	bl CpuFastSet
_080C8ADE:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x28
	bne _080C8B00
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C8B04
	.align 2, 0
_080C8AF0: .4byte gBG0TilemapBuffer
_080C8AF4: .4byte gBG1TilemapBuffer
_080C8AF8: .4byte 0x0600D800
_080C8AFC: .4byte 0x01000400
_080C8B00:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C8B04:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8A20

	THUMB_FUNC_START sub_80C8B0C
sub_80C8B0C: @ 0x080C8B0C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #0x2a]
	cmp r0, #2
	beq _080C8B7C
	cmp r0, #2
	bgt _080C8B4A
	cmp r0, #1
	beq _080C8B50
	b _080C8BCA
_080C8B4A:
	cmp r0, #3
	beq _080C8BAC
	b _080C8BCA
_080C8B50:
	ldr r4, _080C8B70  @ gUnknown_08AD563C
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8B74  @ gUnknown_08AD8518
	ldr r1, _080C8B78  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C8BCA
	.align 2, 0
_080C8B70: .4byte gUnknown_08AD563C
_080C8B74: .4byte gUnknown_08AD8518
_080C8B78: .4byte gUnknown_02020188
_080C8B7C:
	ldr r4, _080C8B9C  @ gUnknown_08AD72FC
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C8BA0  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8BA4  @ gUnknown_08AD88D4
	ldr r1, _080C8BA8  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C8BCA
	.align 2, 0
_080C8B9C: .4byte gUnknown_08AD72FC
_080C8BA0: .4byte 0x06002000
_080C8BA4: .4byte gUnknown_08AD88D4
_080C8BA8: .4byte gUnknown_02020988
_080C8BAC:
	ldr r0, _080C8BDC  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C8BE0  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C8BE4  @ 0x0600D800
	ldr r2, _080C8BE8  @ 0x01000400
	add r0, sp, #4
	bl CpuFastSet
_080C8BCA:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x28
	bne _080C8BEC
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C8BF0
	.align 2, 0
_080C8BDC: .4byte gBG0TilemapBuffer
_080C8BE0: .4byte gBG1TilemapBuffer
_080C8BE4: .4byte 0x0600D800
_080C8BE8: .4byte 0x01000400
_080C8BEC:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C8BF0:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8B0C

	THUMB_FUNC_START sub_80C8BF8
sub_80C8BF8: @ 0x080C8BF8
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #0x2a]
	cmp r0, #2
	beq _080C8C68
	cmp r0, #2
	bgt _080C8C36
	cmp r0, #1
	beq _080C8C3C
	b _080C8CB6
_080C8C36:
	cmp r0, #3
	beq _080C8C98
	b _080C8CB6
_080C8C3C:
	ldr r4, _080C8C5C  @ gUnknown_08AD8B08
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8C60  @ gUnknown_08ADB804
	ldr r1, _080C8C64  @ gUnknown_02020188
	bl CopyDataWithPossibleUncomp
	b _080C8CB6
	.align 2, 0
_080C8C5C: .4byte gUnknown_08AD8B08
_080C8C60: .4byte gUnknown_08ADB804
_080C8C64: .4byte gUnknown_02020188
_080C8C68:
	ldr r4, _080C8C88  @ gUnknown_08ADA31C
	movs r0, #0
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080C8C8C  @ 0x06002000
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8C90  @ gUnknown_08ADBC0C
	ldr r1, _080C8C94  @ gUnknown_02020988
	bl CopyDataWithPossibleUncomp
	b _080C8CB6
	.align 2, 0
_080C8C88: .4byte gUnknown_08ADA31C
_080C8C8C: .4byte 0x06002000
_080C8C90: .4byte gUnknown_08ADBC0C
_080C8C94: .4byte gUnknown_02020988
_080C8C98:
	ldr r0, _080C8CC8  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080C8CCC  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080C8CD0  @ 0x0600D800
	ldr r2, _080C8CD4  @ 0x01000400
	add r0, sp, #4
	bl CpuFastSet
_080C8CB6:
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x28
	bne _080C8CD8
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080C8CDC
	.align 2, 0
_080C8CC8: .4byte gBG0TilemapBuffer
_080C8CCC: .4byte gBG1TilemapBuffer
_080C8CD0: .4byte 0x0600D800
_080C8CD4: .4byte 0x01000400
_080C8CD8:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080C8CDC:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8BF8

	THUMB_FUNC_START sub_80C8CE4
sub_80C8CE4: @ 0x080C8CE4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	bl sub_80C726C
	ldrh r0, [r4, #0x38]
	strh r0, [r4, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r4, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x28
	bne _080C8D24
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C8D28
_080C8D24:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C8D28:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8CE4

	THUMB_FUNC_START sub_80C8D30
sub_80C8D30: @ 0x080C8D30
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r0, [r7, #0x3e]
	movs r1, #0x4c
	bl DivRem
	adds r4, r0, #0
	movs r0, #0x4c
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	adds r3, r4, #0
	bl Interpolate
	adds r4, r0, #0
	cmp r4, #0xc
	bgt _080C8D66
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C8D78
_080C8D66:
	movs r1, #0x19
	subs r1, r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C8D78:
	ldrh r0, [r7, #0x3e]
	adds r0, #1
	strh r0, [r7, #0x3e]
	ldr r0, _080C8DC4  @ gUnknown_08B103D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	ldrh r3, [r7, #0x2a]
	movs r0, #0x26
	str r0, [sp]
	movs r0, #0
	movs r1, #0xc
	movs r2, #0
	bl Interpolate
	ldr r5, _080C8DC8  @ gPaletteBuffer
	lsls r6, r0, #0x10
	movs r4, #7
_080C8DA0:
	adds r0, r5, #0
	movs r1, #0
	lsrs r2, r6, #0x10
	bl sub_80C69B0
	adds r5, #0x20
	subs r4, #1
	cmp r4, #0
	bge _080C8DA0
	ldrh r0, [r7, #0x2a]
	subs r0, #1
	cmp r0, #4
	bhi _080C8EA0
	lsls r0, r0, #2
	ldr r1, _080C8DCC  @ _080C8DD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C8DC4: .4byte gUnknown_08B103D8
_080C8DC8: .4byte gPaletteBuffer
_080C8DCC: .4byte _080C8DD0
_080C8DD0: @ jump table
	.4byte _080C8EA0 @ case 0
	.4byte _080C8DE4 @ case 1
	.4byte _080C8E1C @ case 2
	.4byte _080C8E50 @ case 3
	.4byte _080C8E84 @ case 4
_080C8DE4:
	ldr r4, _080C8E18  @ gUnknown_08ADBE78
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	b _080C8EA0
	.align 2, 0
_080C8E18: .4byte gUnknown_08ADBE78
_080C8E1C:
	ldr r0, _080C8E3C  @ gUnknown_08ADBE98
	ldr r1, _080C8E40  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8E44  @ gUnknown_08ADC708
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C8E48  @ gUnknown_08ADC3C0
	ldr r1, _080C8E4C  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C8EA0
	.align 2, 0
_080C8E3C: .4byte gUnknown_08ADBE98
_080C8E40: .4byte 0x06010000
_080C8E44: .4byte gUnknown_08ADC708
_080C8E48: .4byte gUnknown_08ADC3C0
_080C8E4C: .4byte 0x06010F00
_080C8E50:
	ldr r0, _080C8E70  @ gUnknown_08ADC728
	ldr r1, _080C8E74  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8E78  @ gUnknown_08ADD050
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C8E7C  @ gUnknown_08ADCCB8
	ldr r1, _080C8E80  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C8EA0
	.align 2, 0
_080C8E70: .4byte gUnknown_08ADC728
_080C8E74: .4byte 0x06011E00
_080C8E78: .4byte gUnknown_08ADD050
_080C8E7C: .4byte gUnknown_08ADCCB8
_080C8E80: .4byte 0x06012D00
_080C8E84:
	ldr r0, _080C8EB4  @ gUnknown_08ADD070
	ldr r1, _080C8EB8  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8EBC  @ gUnknown_08ADDA54
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C8EC0  @ gUnknown_08ADD6EC
	ldr r1, _080C8EC4  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
_080C8EA0:
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x26
	bne _080C8EC8
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C8ECC
	.align 2, 0
_080C8EB4: .4byte gUnknown_08ADD070
_080C8EB8: .4byte 0x06013C00
_080C8EBC: .4byte gUnknown_08ADDA54
_080C8EC0: .4byte gUnknown_08ADD6EC
_080C8EC4: .4byte 0x06014B00
_080C8EC8:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C8ECC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8D30

	THUMB_FUNC_START sub_80C8ED4
sub_80C8ED4: @ 0x080C8ED4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #0x12
	bl DivRem
	adds r3, r0, #0
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C8F08
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C8F1A
_080C8F08:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C8F1A:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C8F6C
	cmp r0, #2
	bgt _080C8F30
	cmp r0, #1
	beq _080C8F3A
	b _080C8FF0
_080C8F30:
	cmp r0, #3
	beq _080C8FA0
	cmp r0, #4
	beq _080C8FD4
	b _080C8FF0
_080C8F3A:
	ldr r0, _080C8F58  @ gUnknown_08ADDA74
	ldr r1, _080C8F5C  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8F60  @ gUnknown_08ADE47C
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C8F64  @ gUnknown_08ADE080
	ldr r1, _080C8F68  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C8FF0
	.align 2, 0
_080C8F58: .4byte gUnknown_08ADDA74
_080C8F5C: .4byte 0x06010000
_080C8F60: .4byte gUnknown_08ADE47C
_080C8F64: .4byte gUnknown_08ADE080
_080C8F68: .4byte 0x06010F00
_080C8F6C:
	ldr r0, _080C8F8C  @ gUnknown_08ADEEF4
	ldr r1, _080C8F90  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8F94  @ gUnknown_08ADFA08
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C8F98  @ gUnknown_08ADF58C
	ldr r1, _080C8F9C  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C8FF0
	.align 2, 0
_080C8F8C: .4byte gUnknown_08ADEEF4
_080C8F90: .4byte 0x06011E00
_080C8F94: .4byte gUnknown_08ADFA08
_080C8F98: .4byte gUnknown_08ADF58C
_080C8F9C: .4byte 0x06012D00
_080C8FA0:
	ldr r0, _080C8FC0  @ gUnknown_08ADE49C
	ldr r1, _080C8FC4  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C8FC8  @ gUnknown_08ADEED4
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C8FCC  @ gUnknown_08ADEB1C
	ldr r1, _080C8FD0  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
	b _080C8FF0
	.align 2, 0
_080C8FC0: .4byte gUnknown_08ADE49C
_080C8FC4: .4byte 0x06013C00
_080C8FC8: .4byte gUnknown_08ADEED4
_080C8FCC: .4byte gUnknown_08ADEB1C
_080C8FD0: .4byte 0x06014B00
_080C8FD4:
	ldr r0, _080C9004  @ gUnknown_08ADFA28
	ldr r1, _080C9008  @ 0x06015A00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C900C  @ gUnknown_08AE04D4
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9010  @ gUnknown_08AE00E4
	ldr r1, _080C9014  @ 0x06016900
	bl CopyDataWithPossibleUncomp
_080C8FF0:
	ldrh r0, [r4, #0x2a]
	cmp r0, #7
	bne _080C9018
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C901C
	.align 2, 0
_080C9004: .4byte gUnknown_08ADFA28
_080C9008: .4byte 0x06015A00
_080C900C: .4byte gUnknown_08AE04D4
_080C9010: .4byte gUnknown_08AE00E4
_080C9014: .4byte 0x06016900
_080C9018:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C901C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C8ED4

	THUMB_FUNC_START sub_80C9024
sub_80C9024: @ 0x080C9024
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #0xe
	bl DivRem
	adds r3, r0, #0
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C9058
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C906A
_080C9058:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C906A:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #1
	beq _080C907C
	cmp r0, #2
	beq _080C90B0
	b _080C90CC
_080C907C:
	ldr r0, _080C909C  @ gUnknown_08AE04F4
	ldr r1, _080C90A0  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C90A4  @ gUnknown_08AE0D74
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C90A8  @ gUnknown_08AE0A48
	ldr r1, _080C90AC  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C90CC
	.align 2, 0
_080C909C: .4byte gUnknown_08AE04F4
_080C90A0: .4byte 0x06010000
_080C90A4: .4byte gUnknown_08AE0D74
_080C90A8: .4byte gUnknown_08AE0A48
_080C90AC: .4byte 0x06010F00
_080C90B0:
	ldr r0, _080C90E0  @ gUnknown_08AE0D94
	ldr r1, _080C90E4  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C90E8  @ gUnknown_08AE1634
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C90EC  @ gUnknown_08AE12BC
	ldr r1, _080C90F0  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
_080C90CC:
	ldrh r0, [r4, #0x2a]
	cmp r0, #8
	bne _080C90F4
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C90F8
	.align 2, 0
_080C90E0: .4byte gUnknown_08AE0D94
_080C90E4: .4byte 0x06011E00
_080C90E8: .4byte gUnknown_08AE1634
_080C90EC: .4byte gUnknown_08AE12BC
_080C90F0: .4byte 0x06012D00
_080C90F4:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C90F8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9024

	THUMB_FUNC_START sub_80C9100
sub_80C9100: @ 0x080C9100
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #0xc
	bl DivRem
	adds r3, r0, #0
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C9134
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C9146
_080C9134:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C9146:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C9194
	cmp r0, #2
	bgt _080C915C
	cmp r0, #1
	beq _080C9162
	b _080C91E4
_080C915C:
	cmp r0, #3
	beq _080C91C8
	b _080C91E4
_080C9162:
	ldr r0, _080C9180  @ gUnknown_08AE1654
	ldr r1, _080C9184  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9188  @ gUnknown_08AE20C4
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C918C  @ gUnknown_08AE1D00
	ldr r1, _080C9190  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C91E4
	.align 2, 0
_080C9180: .4byte gUnknown_08AE1654
_080C9184: .4byte 0x06010000
_080C9188: .4byte gUnknown_08AE20C4
_080C918C: .4byte gUnknown_08AE1D00
_080C9190: .4byte 0x06010F00
_080C9194:
	ldr r0, _080C91B4  @ gUnknown_08AE20E4
	ldr r1, _080C91B8  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C91BC  @ gUnknown_08AE2BF4
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C91C0  @ gUnknown_08AE281C
	ldr r1, _080C91C4  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C91E4
	.align 2, 0
_080C91B4: .4byte gUnknown_08AE20E4
_080C91B8: .4byte 0x06011E00
_080C91BC: .4byte gUnknown_08AE2BF4
_080C91C0: .4byte gUnknown_08AE281C
_080C91C4: .4byte 0x06012D00
_080C91C8:
	ldr r0, _080C91F8  @ gUnknown_08AE2C14
	ldr r1, _080C91FC  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9200  @ gUnknown_08AE3734
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9204  @ gUnknown_08AE33D4
	ldr r1, _080C9208  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
_080C91E4:
	ldrh r0, [r4, #0x2a]
	cmp r0, #9
	bne _080C920C
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9210
	.align 2, 0
_080C91F8: .4byte gUnknown_08AE2C14
_080C91FC: .4byte 0x06013C00
_080C9200: .4byte gUnknown_08AE3734
_080C9204: .4byte gUnknown_08AE33D4
_080C9208: .4byte 0x06014B00
_080C920C:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9210:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9100

	THUMB_FUNC_START sub_80C9218
sub_80C9218: @ 0x080C9218
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #0xa
	bl DivRem
	adds r3, r0, #0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C924C
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C925E
_080C924C:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C925E:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C92AC
	cmp r0, #2
	bgt _080C9274
	cmp r0, #1
	beq _080C927A
	b _080C92FC
_080C9274:
	cmp r0, #3
	beq _080C92E0
	b _080C92FC
_080C927A:
	ldr r0, _080C9298  @ gUnknown_08AE3754
	ldr r1, _080C929C  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C92A0  @ gUnknown_08AE41E4
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C92A4  @ gUnknown_08AE3E54
	ldr r1, _080C92A8  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C92FC
	.align 2, 0
_080C9298: .4byte gUnknown_08AE3754
_080C929C: .4byte 0x06010000
_080C92A0: .4byte gUnknown_08AE41E4
_080C92A4: .4byte gUnknown_08AE3E54
_080C92A8: .4byte 0x06010F00
_080C92AC:
	ldr r0, _080C92CC  @ gUnknown_08AE4204
	ldr r1, _080C92D0  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C92D4  @ gUnknown_08AE4CE8
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C92D8  @ gUnknown_08AE4940
	ldr r1, _080C92DC  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C92FC
	.align 2, 0
_080C92CC: .4byte gUnknown_08AE4204
_080C92D0: .4byte 0x06011E00
_080C92D4: .4byte gUnknown_08AE4CE8
_080C92D8: .4byte gUnknown_08AE4940
_080C92DC: .4byte 0x06012D00
_080C92E0:
	ldr r0, _080C9310  @ gUnknown_08AE4D08
	ldr r1, _080C9314  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9318  @ gUnknown_08AE5730
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C931C  @ gUnknown_08AE53C8
	ldr r1, _080C9320  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
_080C92FC:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xa
	bne _080C9324
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9328
	.align 2, 0
_080C9310: .4byte gUnknown_08AE4D08
_080C9314: .4byte 0x06013C00
_080C9318: .4byte gUnknown_08AE5730
_080C931C: .4byte gUnknown_08AE53C8
_080C9320: .4byte 0x06014B00
_080C9324:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9328:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9218

	THUMB_FUNC_START sub_80C9330
sub_80C9330: @ 0x080C9330
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #9
	bl DivRem
	adds r3, r0, #0
	movs r0, #9
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C9364
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C9376
_080C9364:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C9376:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #1
	beq _080C9388
	cmp r0, #2
	beq _080C93BC
	b _080C93D8
_080C9388:
	ldr r0, _080C93A8  @ gUnknown_08AE5750
	ldr r1, _080C93AC  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C93B0  @ gUnknown_08AE60B0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C93B4  @ gUnknown_08AE5D54
	ldr r1, _080C93B8  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C93D8
	.align 2, 0
_080C93A8: .4byte gUnknown_08AE5750
_080C93AC: .4byte 0x06010000
_080C93B0: .4byte gUnknown_08AE60B0
_080C93B4: .4byte gUnknown_08AE5D54
_080C93B8: .4byte 0x06010F00
_080C93BC:
	ldr r0, _080C93EC  @ gUnknown_08AE60D0
	ldr r1, _080C93F0  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C93F4  @ gUnknown_08AE69EC
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C93F8  @ gUnknown_08AE6648
	ldr r1, _080C93FC  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
_080C93D8:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xb
	bne _080C9400
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9404
	.align 2, 0
_080C93EC: .4byte gUnknown_08AE60D0
_080C93F0: .4byte 0x06011E00
_080C93F4: .4byte gUnknown_08AE69EC
_080C93F8: .4byte gUnknown_08AE6648
_080C93FC: .4byte 0x06012D00
_080C9400:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9404:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9330

	THUMB_FUNC_START sub_80C940C
sub_80C940C: @ 0x080C940C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #8
	bl DivRem
	adds r3, r0, #0
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C9440
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C9452
_080C9440:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C9452:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C94A4
	cmp r0, #2
	bgt _080C9468
	cmp r0, #1
	beq _080C9472
	b _080C9528
_080C9468:
	cmp r0, #3
	beq _080C94D8
	cmp r0, #4
	beq _080C950C
	b _080C9528
_080C9472:
	ldr r0, _080C9490  @ gUnknown_08AE6A0C
	ldr r1, _080C9494  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9498  @ gUnknown_08AE72C8
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C949C  @ gUnknown_08AE6FA8
	ldr r1, _080C94A0  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C9528
	.align 2, 0
_080C9490: .4byte gUnknown_08AE6A0C
_080C9494: .4byte 0x06010000
_080C9498: .4byte gUnknown_08AE72C8
_080C949C: .4byte gUnknown_08AE6FA8
_080C94A0: .4byte 0x06010F00
_080C94A4:
	ldr r0, _080C94C4  @ gUnknown_08AE84DC
	ldr r1, _080C94C8  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C94CC  @ gUnknown_08AE8D84
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C94D0  @ gUnknown_08AE8AB8
	ldr r1, _080C94D4  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C9528
	.align 2, 0
_080C94C4: .4byte gUnknown_08AE84DC
_080C94C8: .4byte 0x06011E00
_080C94CC: .4byte gUnknown_08AE8D84
_080C94D0: .4byte gUnknown_08AE8AB8
_080C94D4: .4byte 0x06012D00
_080C94D8:
	ldr r0, _080C94F8  @ gUnknown_08AE72E8
	ldr r1, _080C94FC  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9500  @ gUnknown_08AE7C2C
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9504  @ gUnknown_08AE78B0
	ldr r1, _080C9508  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
	b _080C9528
	.align 2, 0
_080C94F8: .4byte gUnknown_08AE72E8
_080C94FC: .4byte 0x06013C00
_080C9500: .4byte gUnknown_08AE7C2C
_080C9504: .4byte gUnknown_08AE78B0
_080C9508: .4byte 0x06014B00
_080C950C:
	ldr r0, _080C953C  @ gUnknown_08AE7C4C
	ldr r1, _080C9540  @ 0x06015A00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9544  @ gUnknown_08AE84BC
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9548  @ gUnknown_08AE819C
	ldr r1, _080C954C  @ 0x06016900
	bl CopyDataWithPossibleUncomp
_080C9528:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xc
	bne _080C9550
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9554
	.align 2, 0
_080C953C: .4byte gUnknown_08AE7C4C
_080C9540: .4byte 0x06015A00
_080C9544: .4byte gUnknown_08AE84BC
_080C9548: .4byte gUnknown_08AE819C
_080C954C: .4byte 0x06016900
_080C9550:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9554:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C940C

	THUMB_FUNC_START sub_80C955C
sub_80C955C: @ 0x080C955C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #7
	bl DivRem
	adds r3, r0, #0
	movs r0, #7
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C9590
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C95A2
_080C9590:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C95A2:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #1
	beq _080C95B4
	cmp r0, #2
	beq _080C95E8
	b _080C9604
_080C95B4:
	ldr r0, _080C95D4  @ gUnknown_08AE8DA4
	ldr r1, _080C95D8  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C95DC  @ gUnknown_08AE9720
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C95E0  @ gUnknown_08AE9364
	ldr r1, _080C95E4  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C9604
	.align 2, 0
_080C95D4: .4byte gUnknown_08AE8DA4
_080C95D8: .4byte 0x06010000
_080C95DC: .4byte gUnknown_08AE9720
_080C95E0: .4byte gUnknown_08AE9364
_080C95E4: .4byte 0x06010F00
_080C95E8:
	ldr r0, _080C9618  @ gUnknown_08AE9740
	ldr r1, _080C961C  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9620  @ gUnknown_08AEA02C
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9624  @ gUnknown_08AE9CA4
	ldr r1, _080C9628  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
_080C9604:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xd
	bne _080C962C
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9630
	.align 2, 0
_080C9618: .4byte gUnknown_08AE9740
_080C961C: .4byte 0x06011E00
_080C9620: .4byte gUnknown_08AEA02C
_080C9624: .4byte gUnknown_08AE9CA4
_080C9628: .4byte 0x06012D00
_080C962C:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9630:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C955C

	THUMB_FUNC_START sub_80C9638
sub_80C9638: @ 0x080C9638
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #6
	bl DivRem
	adds r3, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C966C
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C967E
_080C966C:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C967E:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C96CC
	cmp r0, #2
	bgt _080C9694
	cmp r0, #1
	beq _080C969A
	b _080C971C
_080C9694:
	cmp r0, #3
	beq _080C9700
	b _080C971C
_080C969A:
	ldr r0, _080C96B8  @ gUnknown_08AECAE0
	ldr r1, _080C96BC  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C96C0  @ gUnknown_08AED3E8
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C96C4  @ gUnknown_08AED0A4
	ldr r1, _080C96C8  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C971C
	.align 2, 0
_080C96B8: .4byte gUnknown_08AECAE0
_080C96BC: .4byte 0x06010000
_080C96C0: .4byte gUnknown_08AED3E8
_080C96C4: .4byte gUnknown_08AED0A4
_080C96C8: .4byte 0x06010F00
_080C96CC:
	ldr r0, _080C96EC  @ gUnknown_08AED408
	ldr r1, _080C96F0  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C96F4  @ gUnknown_08AEDC80
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C96F8  @ gUnknown_08AED95C
	ldr r1, _080C96FC  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C971C
	.align 2, 0
_080C96EC: .4byte gUnknown_08AED408
_080C96F0: .4byte 0x06011E00
_080C96F4: .4byte gUnknown_08AEDC80
_080C96F8: .4byte gUnknown_08AED95C
_080C96FC: .4byte 0x06012D00
_080C9700:
	ldr r0, _080C9730  @ gUnknown_08AEDCA0
	ldr r1, _080C9734  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9738  @ gUnknown_08AEE564
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C973C  @ gUnknown_08AEE218
	ldr r1, _080C9740  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
_080C971C:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xe
	bne _080C9744
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9748
	.align 2, 0
_080C9730: .4byte gUnknown_08AEDCA0
_080C9734: .4byte 0x06013C00
_080C9738: .4byte gUnknown_08AEE564
_080C973C: .4byte gUnknown_08AEE218
_080C9740: .4byte 0x06014B00
_080C9744:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9748:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9638

	THUMB_FUNC_START sub_80C9750
sub_80C9750: @ 0x080C9750
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #5
	bl DivRem
	adds r3, r0, #0
	movs r0, #5
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C9784
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C9796
_080C9784:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C9796:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C97E8
	cmp r0, #2
	bgt _080C97AC
	cmp r0, #1
	beq _080C97B6
	b _080C986C
_080C97AC:
	cmp r0, #3
	beq _080C981C
	cmp r0, #4
	beq _080C9850
	b _080C986C
_080C97B6:
	ldr r0, _080C97D4  @ gUnknown_08AEA04C
	ldr r1, _080C97D8  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C97DC  @ gUnknown_08AEAB50
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C97E0  @ gUnknown_08AEA7A8
	ldr r1, _080C97E4  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C986C
	.align 2, 0
_080C97D4: .4byte gUnknown_08AEA04C
_080C97D8: .4byte 0x06010000
_080C97DC: .4byte gUnknown_08AEAB50
_080C97E0: .4byte gUnknown_08AEA7A8
_080C97E4: .4byte 0x06010F00
_080C97E8:
	ldr r0, _080C9808  @ gUnknown_08AEAB70
	ldr r1, _080C980C  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9810  @ gUnknown_08AEB56C
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9814  @ gUnknown_08AEB1B8
	ldr r1, _080C9818  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C986C
	.align 2, 0
_080C9808: .4byte gUnknown_08AEAB70
_080C980C: .4byte 0x06011E00
_080C9810: .4byte gUnknown_08AEB56C
_080C9814: .4byte gUnknown_08AEB1B8
_080C9818: .4byte 0x06012D00
_080C981C:
	ldr r0, _080C983C  @ gUnknown_08AEB58C
	ldr r1, _080C9840  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9844  @ gUnknown_08AEC048
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9848  @ gUnknown_08AEBCEC
	ldr r1, _080C984C  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
	b _080C986C
	.align 2, 0
_080C983C: .4byte gUnknown_08AEB58C
_080C9840: .4byte 0x06013C00
_080C9844: .4byte gUnknown_08AEC048
_080C9848: .4byte gUnknown_08AEBCEC
_080C984C: .4byte 0x06014B00
_080C9850:
	ldr r0, _080C9880  @ gUnknown_08AEC068
	ldr r1, _080C9884  @ 0x06015A00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9888  @ gUnknown_08AECAC0
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C988C  @ gUnknown_08AEC724
	ldr r1, _080C9890  @ 0x06016900
	bl CopyDataWithPossibleUncomp
_080C986C:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0xf
	bne _080C9894
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9898
	.align 2, 0
_080C9880: .4byte gUnknown_08AEC068
_080C9884: .4byte 0x06015A00
_080C9888: .4byte gUnknown_08AECAC0
_080C988C: .4byte gUnknown_08AEC724
_080C9890: .4byte 0x06016900
_080C9894:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9898:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9750

	THUMB_FUNC_START sub_80C98A0
sub_80C98A0: @ 0x080C98A0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #4
	bl DivRem
	adds r3, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C98D4
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C98E6
_080C98D4:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C98E6:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #2
	beq _080C9934
	cmp r0, #2
	bgt _080C98FC
	cmp r0, #1
	beq _080C9902
	b _080C9984
_080C98FC:
	cmp r0, #3
	beq _080C9968
	b _080C9984
_080C9902:
	ldr r0, _080C9920  @ gUnknown_08AEE584
	ldr r1, _080C9924  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9928  @ gUnknown_08AEEECC
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C992C  @ gUnknown_08AEEBB0
	ldr r1, _080C9930  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C9984
	.align 2, 0
_080C9920: .4byte gUnknown_08AEE584
_080C9924: .4byte 0x06010000
_080C9928: .4byte gUnknown_08AEEECC
_080C992C: .4byte gUnknown_08AEEBB0
_080C9930: .4byte 0x06010F00
_080C9934:
	ldr r0, _080C9954  @ gUnknown_08AEEEEC
	ldr r1, _080C9958  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C995C  @ gUnknown_08AEF880
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9960  @ gUnknown_08AEF580
	ldr r1, _080C9964  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
	b _080C9984
	.align 2, 0
_080C9954: .4byte gUnknown_08AEEEEC
_080C9958: .4byte 0x06011E00
_080C995C: .4byte gUnknown_08AEF880
_080C9960: .4byte gUnknown_08AEF580
_080C9964: .4byte 0x06012D00
_080C9968:
	ldr r0, _080C9998  @ gUnknown_08AEF8A0
	ldr r1, _080C999C  @ 0x06013C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C99A0  @ gUnknown_08AF0130
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C99A4  @ gUnknown_08AEFDC8
	ldr r1, _080C99A8  @ 0x06014B00
	bl CopyDataWithPossibleUncomp
_080C9984:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C99AC
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C99B0
	.align 2, 0
_080C9998: .4byte gUnknown_08AEF8A0
_080C999C: .4byte 0x06013C00
_080C99A0: .4byte gUnknown_08AF0130
_080C99A4: .4byte gUnknown_08AEFDC8
_080C99A8: .4byte 0x06014B00
_080C99AC:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C99B0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C98A0

	THUMB_FUNC_START sub_80C99B8
sub_80C99B8: @ 0x080C99B8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	movs r1, #3
	bl DivRem
	adds r3, r0, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1a
	bl Interpolate
	adds r3, r0, #0
	cmp r3, #0xc
	bgt _080C99EC
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	b _080C99FE
_080C99EC:
	movs r1, #0x19
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
_080C99FE:
	ldrh r0, [r4, #0x3e]
	adds r0, #1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x2a]
	cmp r0, #1
	beq _080C9A10
	cmp r0, #2
	beq _080C9A44
	b _080C9A60
_080C9A10:
	ldr r0, _080C9A30  @ gUnknown_08AF0150
	ldr r1, _080C9A34  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9A38  @ gUnknown_08AF0DE8
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9A3C  @ gUnknown_08AF09E4
	ldr r1, _080C9A40  @ 0x06010F00
	bl CopyDataWithPossibleUncomp
	b _080C9A60
	.align 2, 0
_080C9A30: .4byte gUnknown_08AF0150
_080C9A34: .4byte 0x06010000
_080C9A38: .4byte gUnknown_08AF0DE8
_080C9A3C: .4byte gUnknown_08AF09E4
_080C9A40: .4byte 0x06010F00
_080C9A44:
	ldr r0, _080C9A74  @ gUnknown_08AF0E08
	ldr r1, _080C9A78  @ 0x06011E00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080C9A7C  @ gUnknown_08AF1AC8
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl StorePaletteToBufferMaybe
	ldr r0, _080C9A80  @ gUnknown_08AF16CC
	ldr r1, _080C9A84  @ 0x06012D00
	bl CopyDataWithPossibleUncomp
_080C9A60:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x12
	bne _080C9A88
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9A8C
	.align 2, 0
_080C9A74: .4byte gUnknown_08AF0E08
_080C9A78: .4byte 0x06011E00
_080C9A7C: .4byte gUnknown_08AF1AC8
_080C9A80: .4byte gUnknown_08AF16CC
_080C9A84: .4byte 0x06012D00
_080C9A88:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9A8C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C99B8

	THUMB_FUNC_START sub_80C9A94
sub_80C9A94: @ 0x080C9A94
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C9AEC  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	ldrh r3, [r4, #0x2a]
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	bl Interpolate
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x30
	bne _080C9AF0
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9AF4
	.align 2, 0
_080C9AEC: .4byte gLCDControlBuffer
_080C9AF0:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9AF4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9A94

	THUMB_FUNC_START sub_80C9AFC
sub_80C9AFC: @ 0x080C9AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x2a]
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	adds r4, r0, #0
	ldr r0, _080C9B50  @ gUnknown_08B103D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	ldr r5, _080C9B54  @ gPaletteBuffer
	lsls r6, r4, #0x10
	movs r4, #7
_080C9B26:
	adds r0, r5, #0
	ldr r1, _080C9B58  @ 0x00007FFF
	lsrs r2, r6, #0x10
	bl sub_80C69B0
	adds r5, #0x20
	subs r4, #1
	cmp r4, #0
	bge _080C9B26
	ldrh r0, [r7, #0x2a]
	cmp r0, #0x30
	bne _080C9B60
	ldr r0, _080C9B5C  @ gUnknown_02022188
	movs r2, #0
	ldr r1, _080C9B58  @ 0x00007FFF
	strh r1, [r0, #0xc]
	strh r2, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080C9B64
	.align 2, 0
_080C9B50: .4byte gUnknown_08B103D8
_080C9B54: .4byte gPaletteBuffer
_080C9B58: .4byte 0x00007FFF
_080C9B5C: .4byte gUnknown_02022188
_080C9B60:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080C9B64:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9AFC

	THUMB_FUNC_START sub_80C9B6C
sub_80C9B6C: @ 0x080C9B6C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r4, _080C9C04  @ gLCDControlBuffer
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	movs r6, #2
	orrs r1, r6
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	ldrb r0, [r4, #1]
	mov r1, r8
	orrs r0, r1
	orrs r0, r6
	movs r1, #5
	negs r1, r1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0xe0
	lsls r1, r1, #8
	movs r0, #1
	bl SetBackgroundMapDataOffset
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C9C04: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C9B6C

	THUMB_FUNC_START sub_80C9C08
sub_80C9C08: @ 0x080C9C08
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C9B6C
	ldr r0, _080C9C54  @ gUnknown_08ACC3E0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	adds r1, r4, #0
	adds r1, #0x47
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080C9C58  @ gUnknown_02020188
	str r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0xe8
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9C54: .4byte gUnknown_08ACC3E0
_080C9C58: .4byte gUnknown_02020188

	THUMB_FUNC_END sub_80C9C08

	THUMB_FUNC_START sub_80C9C5C
sub_80C9C5C: @ 0x080C9C5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C9B6C
	ldr r0, _080C9CA4  @ gUnknown_08ACF314
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	adds r0, r4, #0
	adds r0, #0x47
	movs r2, #0
	strb r2, [r0]
	ldr r0, _080C9CA8  @ gUnknown_02020188
	str r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #2
	adds r0, #0x80
	strh r0, [r1]
	subs r1, #2
	subs r0, #0x38
	strh r0, [r1]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9CA4: .4byte gUnknown_08ACF314
_080C9CA8: .4byte gUnknown_02020188

	THUMB_FUNC_END sub_80C9C5C

	THUMB_FUNC_START sub_80C9CAC
sub_80C9CAC: @ 0x080C9CAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C9B6C
	ldr r0, _080C9CF4  @ gUnknown_08AD24B4
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	adds r1, r4, #0
	adds r1, #0x47
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080C9CF8  @ gUnknown_02020188
	str r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #2
	adds r0, #0x80
	strh r0, [r1]
	subs r1, #2
	subs r0, #0x28
	strh r0, [r1]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9CF4: .4byte gUnknown_08AD24B4
_080C9CF8: .4byte gUnknown_02020188

	THUMB_FUNC_END sub_80C9CAC

	THUMB_FUNC_START sub_80C9CFC
sub_80C9CFC: @ 0x080C9CFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C9B6C
	ldr r0, _080C9D44  @ gUnknown_08AD54DC
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	adds r0, r4, #0
	adds r0, #0x47
	movs r2, #0
	strb r2, [r0]
	ldr r0, _080C9D48  @ gUnknown_02020188
	str r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x88
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xf0
	strh r0, [r1]
	subs r1, #2
	adds r0, #0x18
	strh r0, [r1]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9D44: .4byte gUnknown_08AD54DC
_080C9D48: .4byte gUnknown_02020188

	THUMB_FUNC_END sub_80C9CFC

	THUMB_FUNC_START sub_80C9D4C
sub_80C9D4C: @ 0x080C9D4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C9B6C
	ldr r0, _080C9D98  @ gUnknown_08AD89A8
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	adds r1, r4, #0
	adds r1, #0x47
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080C9D9C  @ gUnknown_02020188
	str r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #0xe8
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x42
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9D98: .4byte gUnknown_08AD89A8
_080C9D9C: .4byte gUnknown_02020188

	THUMB_FUNC_END sub_80C9D4C

	THUMB_FUNC_START sub_80C9DA0
sub_80C9DA0: @ 0x080C9DA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80C9B6C
	ldr r0, _080C9DE8  @ gUnknown_08ADBD18
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	adds r0, r4, #0
	adds r0, #0x47
	movs r2, #0
	strb r2, [r0]
	ldr r0, _080C9DEC  @ gUnknown_02020188
	str r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0xc8
	strh r0, [r1]
	subs r1, #2
	adds r0, #0x70
	strh r0, [r1]
	subs r1, #2
	subs r0, #0x10
	strh r0, [r1]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9DE8: .4byte gUnknown_08ADBD18
_080C9DEC: .4byte gUnknown_02020188

	THUMB_FUNC_END sub_80C9DA0

	THUMB_FUNC_START sub_80C9DF0
sub_80C9DF0: @ 0x080C9DF0
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	ldr r2, _080C9E68  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r4, #1
	orrs r0, r4
	movs r5, #2
	orrs r0, r5
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldrb r3, [r2, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0xc]
	ldrb r3, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	ands r1, r0
	strb r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C9E68: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C9DF0

	THUMB_FUNC_START sub_80C9E6C
sub_80C9E6C: @ 0x080C9E6C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	bl sub_80C726C
	ldrh r0, [r4, #0x38]
	strh r0, [r4, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r4, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bhi _080C9ED8
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	ldr r2, _080C9ED4  @ gLCDControlBuffer
	adds r1, r2, #0
	adds r1, #0x44
	strb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	adds r2, #0x45
	strb r1, [r2]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C9ED8
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9EDE
	.align 2, 0
_080C9ED4: .4byte gLCDControlBuffer
_080C9ED8:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9EDE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9E6C

	THUMB_FUNC_START sub_80C9EE8
sub_80C9EE8: @ 0x080C9EE8
	push {r4, lr}
	sub sp, #4
	ldr r0, _080C9F74  @ gUnknown_08B103D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	ldr r3, _080C9F78  @ gLCDControlBuffer
	ldrb r1, [r3, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #0xc]
	movs r2, #4
	negs r2, r2
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x14]
	ands r2, r0
	strb r2, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9F74: .4byte gUnknown_08B103D8
_080C9F78: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80C9EE8

	THUMB_FUNC_START sub_80C9F7C
sub_80C9F7C: @ 0x080C9F7C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	bl sub_80C726C
	ldrh r0, [r4, #0x38]
	strh r0, [r4, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r4, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bhi _080C9FE8
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	ldr r2, _080C9FE4  @ gLCDControlBuffer
	adds r1, r2, #0
	adds r1, #0x44
	strb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	adds r2, #0x45
	strb r1, [r2]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x10
	bne _080C9FE8
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080C9FEE
	.align 2, 0
_080C9FE4: .4byte gLCDControlBuffer
_080C9FE8:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
_080C9FEE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9F7C

	THUMB_FUNC_START sub_80C9FF8
sub_80C9FF8: @ 0x080C9FF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrh r0, [r5, #0x38]
	ldrh r1, [r5, #0x3a]
	bl sub_80C726C
	ldrh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r5, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	movs r0, #1
	bl BG_EnableSyncByMask
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r2, [r0]
	ldrh r3, [r5, #0x2a]
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	bl Interpolate
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x47
	ldrb r6, [r0]
	cmp r6, #0
	beq _080CA06E
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	adds r4, r5, #0
	adds r4, #0x44
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [r5, #0x48]
	str r3, [sp]
	ldr r3, [r5, #0x4c]
	str r3, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	bl sub_80C67D4
	b _080CA08E
_080CA06E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	adds r4, r5, #0
	adds r4, #0x44
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [r5, #0x48]
	str r3, [sp]
	ldr r3, [r5, #0x4c]
	str r3, [sp, #4]
	str r6, [sp, #8]
	movs r3, #0
	bl sub_80C689C
_080CA08E:
	strh r7, [r5, #0x30]
	ldrh r0, [r5, #0x2a]
	cmp r0, #0x1e
	bne _080CA0FE
	movs r0, #2
	bl BG_EnableSyncByMask
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0xf0
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA0D6
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r1, [r5, #0x48]
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0
	movs r3, #1
	bl sub_80C689C
	b _080CA0F2
_080CA0D6:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r1, [r5, #0x48]
	str r1, [sp]
	ldr r1, [r5, #0x4c]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0
	movs r3, #1
	bl sub_80C67D4
_080CA0F2:
	movs r0, #0
	strh r0, [r5, #0x2a]
	adds r0, r5, #0
	bl Proc_Break
	b _080CA102
_080CA0FE:
	adds r0, #1
	strh r0, [r5, #0x2a]
_080CA102:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80C9FF8

	THUMB_FUNC_START sub_80CA10C
sub_80CA10C: @ 0x080CA10C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldrh r0, [r6, #0x38]
	ldrh r1, [r6, #0x3a]
	bl sub_80C726C
	ldrh r0, [r6, #0x38]
	strh r0, [r6, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r6, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r6, #0x38]
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
	ldrh r3, [r6, #0x2a]
	movs r0, #0x28
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0
	bl Interpolate
	adds r5, r0, #0
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	bl BG_EnableSyncByMask
	adds r0, r6, #0
	adds r0, #0x40
	ldrh r1, [r0]
	adds r2, r1, #0
	adds r2, #0x10
	ldrh r3, [r6, #0x2a]
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #0
	bl Interpolate
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x47
	ldrb r7, [r0]
	cmp r7, #0
	beq _080CA1AA
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	adds r4, r6, #0
	adds r4, #0x44
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [r6, #0x48]
	str r3, [sp]
	ldr r3, [r6, #0x4c]
	str r3, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	bl sub_80C67D4
	b _080CA1CA
_080CA1AA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	adds r4, r6, #0
	adds r4, #0x44
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [r6, #0x48]
	str r3, [sp]
	ldr r3, [r6, #0x4c]
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r3, #0
	bl sub_80C689C
_080CA1CA:
	adds r7, r4, #0
	strh r5, [r6, #0x30]
	movs r0, #2
	bl BG_EnableSyncByMask
	ldrh r3, [r6, #0x2a]
	movs r4, #0x3c
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x60
	bl Interpolate
	adds r5, r0, #0
	ldrh r3, [r6, #0x2a]
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0x60
	bl Interpolate
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, #0xf0
	adds r2, r6, #0
	adds r2, #0x40
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r1, r1, r5
	adds r5, r1, r0
	adds r0, r6, #0
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA230
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r7, r3]
	ldr r3, [r6, #0x48]
	str r3, [sp]
	ldr r3, [r6, #0x4c]
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	bl sub_80C689C
	b _080CA24C
_080CA230:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r7, r3]
	ldr r3, [r6, #0x48]
	str r3, [sp]
	ldr r3, [r6, #0x4c]
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	bl sub_80C67D4
_080CA24C:
	strh r5, [r6, #0x32]
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x1e
	bne _080CA260
	movs r0, #0
	strh r0, [r6, #0x2a]
	adds r0, r6, #0
	bl Proc_Break
	b _080CA264
_080CA260:
	adds r0, #1
	strh r0, [r6, #0x2a]
_080CA264:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CA10C

	THUMB_FUNC_START sub_80CA26C
sub_80CA26C: @ 0x080CA26C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldrh r0, [r7, #0x2a]
	cmp r0, #0xb
	bne _080CA2E6
	ldr r5, _080CA380  @ gLCDControlBuffer
	ldrb r0, [r5, #1]
	movs r1, #1
	orrs r0, r1
	movs r2, #3
	negs r2, r2
	mov sl, r2
	ands r0, r2
	movs r3, #5
	negs r3, r3
	mov r9, r3
	ands r0, r3
	movs r1, #8
	mov r8, r1
	mov r2, r8
	orrs r0, r2
	movs r6, #0x10
	orrs r0, r6
	strb r0, [r5, #1]
	movs r4, #0
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	ldrb r0, [r5, #1]
	movs r3, #1
	orrs r0, r3
	mov r1, sl
	ands r0, r1
	mov r2, r9
	ands r0, r2
	mov r3, r8
	orrs r0, r3
	orrs r0, r6
	strb r0, [r5, #1]
_080CA2E6:
	ldrh r0, [r7, #0x2a]
	cmp r0, #0xa
	bhi _080CA3A6
	adds r3, r0, #0
	adds r3, #0x1e
	movs r0, #0x28
	str r0, [sp]
	movs r0, #1
	movs r1, #8
	movs r2, #0
	bl Interpolate
	adds r4, r0, #0
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x10
	subs r2, r2, r4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r0, #2
	bl BG_EnableSyncByMask
	ldrh r3, [r7, #0x2a]
	adds r3, #0x1e
	movs r4, #0x3c
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x60
	bl Interpolate
	adds r5, r0, #0
	ldrh r3, [r7, #0x2a]
	adds r3, #0x1e
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0x60
	bl Interpolate
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, #0xf0
	adds r2, r7, #0
	adds r2, #0x40
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r1, r1, r5
	adds r4, r1, r0
	adds r0, r7, #0
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CA384
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x44
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, [r7, #0x48]
	str r3, [sp]
	ldr r3, [r7, #0x4c]
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	bl sub_80C689C
	b _080CA3A4
	.align 2, 0
_080CA380: .4byte gLCDControlBuffer
_080CA384:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x44
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, [r7, #0x48]
	str r3, [sp]
	ldr r3, [r7, #0x4c]
	str r3, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	bl sub_80C67D4
_080CA3A4:
	strh r4, [r7, #0x32]
_080CA3A6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CA26C

	THUMB_FUNC_START sub_80CA3B8
sub_80CA3B8: @ 0x080CA3B8
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_80CA26C
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	bl sub_80C726C
	ldrh r0, [r4, #0x38]
	strh r0, [r4, #0x3a]
	movs r2, #0x9c
	lsls r2, r2, #2
	ldrh r3, [r4, #0x3c]
	movs r0, #0x86
	lsls r0, r0, #3
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #0x2a]
	adds r3, r0, #0
	subs r3, #0xf
	cmp r3, #0
	blt _080CA412
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	ldr r2, _080CA460  @ gLCDControlBuffer
	adds r1, r2, #0
	adds r1, #0x44
	strb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	adds r2, #0x45
	strb r1, [r2]
_080CA412:
	movs r0, #1
	bl BG_EnableSyncByMask
	adds r0, r4, #0
	adds r0, #0x40
	ldrh r2, [r0]
	adds r1, r2, #0
	adds r1, #0x10
	lsls r2, r2, #1
	adds r2, #0x10
	ldrh r3, [r4, #0x2a]
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #1
	bl Interpolate
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0x47
	ldrb r5, [r0]
	cmp r5, #0
	beq _080CA464
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x44
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, [r4, #0x48]
	str r3, [sp]
	ldr r3, [r4, #0x4c]
	str r3, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	bl sub_80C67D4
	b _080CA484
	.align 2, 0
_080CA460: .4byte gLCDControlBuffer
_080CA464:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x44
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, [r4, #0x48]
	str r3, [sp]
	ldr r3, [r4, #0x4c]
	str r3, [sp, #4]
	str r5, [sp, #8]
	movs r3, #0
	bl sub_80C689C
_080CA484:
	strh r6, [r4, #0x30]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x1e
	bne _080CA498
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
	b _080CA49C
_080CA498:
	adds r0, #1
	strh r0, [r4, #0x2a]
_080CA49C:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CA3B8

	THUMB_FUNC_START sub_80CA4A4
sub_80CA4A4: @ 0x080CA4A4
	push {lr}
	ldr r0, _080CA4D4  @ gUnknown_08AA707C
	bl Proc_EndEach
	ldr r2, _080CA4D8  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	bl SetDefaultColorEffects
	pop {r0}
	bx r0
	.align 2, 0
_080CA4D4: .4byte gUnknown_08AA707C
_080CA4D8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80CA4A4

	THUMB_FUNC_START sub_80CA4DC
sub_80CA4DC: @ 0x080CA4DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrh r0, [r6, #0x2a]
	cmp r0, #4
	bhi _080CA53E
	lsls r0, r0, #2
	ldr r1, _080CA4F4  @ _080CA4F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CA4F4: .4byte _080CA4F8
_080CA4F8: @ jump table
	.4byte _080CA53E @ case 0
	.4byte _080CA50C @ case 1
	.4byte _080CA51A @ case 2
	.4byte _080CA528 @ case 3
	.4byte _080CA536 @ case 4
_080CA50C:
	movs r0, #0xd8
	lsls r0, r0, #1
	movs r1, #0xc4
	lsls r1, r1, #1
	bl sub_80C726C
	b _080CA53E
_080CA51A:
	movs r0, #0xf8
	lsls r0, r0, #1
	movs r1, #0xd8
	lsls r1, r1, #1
	bl sub_80C726C
	b _080CA53E
_080CA528:
	movs r0, #0x8c
	lsls r0, r0, #2
	movs r1, #0xf8
	lsls r1, r1, #1
	bl sub_80C726C
	b _080CA53E
_080CA536:
	movs r0, #0x8c
	lsls r0, r0, #2
	strh r0, [r6, #0x3a]
	strh r0, [r6, #0x38]
_080CA53E:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x8e
	bls _080CA550
	movs r0, #0xae
	movs r1, #0xa
	movs r2, #4
	movs r3, #9
	bl sub_80C6474
_080CA550:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x8d
	bls _080CA562
	movs r0, #0x38
	movs r1, #0x28
	movs r2, #4
	movs r3, #7
	bl sub_80C6474
_080CA562:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x8c
	bls _080CA574
	movs r0, #0x9c
	movs r1, #0x3a
	movs r2, #3
	movs r3, #3
	bl sub_80C6474
_080CA574:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x8b
	bls _080CA586
	movs r0, #0x22
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl sub_80C6474
_080CA586:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x8a
	bls _080CA598
	movs r0, #0xd2
	movs r1, #0x10
	movs r2, #4
	movs r3, #5
	bl sub_80C6474
_080CA598:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x89
	bls _080CA5AA
	movs r0, #0xc
	movs r1, #0x1a
	movs r2, #3
	movs r3, #1
	bl sub_80C6474
_080CA5AA:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x88
	bls _080CA5BC
	movs r0, #0xcc
	movs r1, #0x2a
	movs r2, #3
	movs r3, #4
	bl sub_80C6474
_080CA5BC:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x87
	bls _080CA5CE
	movs r0, #0x60
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_80C6474
_080CA5CE:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x86
	bls _080CA5E0
	movs r0, #0xe4
	movs r1, #0x10
	movs r2, #4
	movs r3, #0xb
	bl sub_80C6474
_080CA5E0:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x85
	bls _080CA5F2
	movs r0, #0x58
	movs r1, #0x1e
	movs r2, #3
	movs r3, #3
	bl sub_80C6474
_080CA5F2:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x84
	bls _080CA604
	movs r0, #0x54
	movs r1, #0x2e
	movs r2, #2
	movs r3, #1
	bl sub_80C6474
_080CA604:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x83
	bls _080CA616
	movs r0, #0
	movs r1, #2
	movs r2, #4
	movs r3, #2
	bl sub_80C6474
_080CA616:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x82
	bls _080CA628
	movs r0, #0xc6
	movs r1, #0x18
	movs r2, #4
	movs r3, #9
	bl sub_80C6474
_080CA628:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x81
	bls _080CA63A
	movs r0, #0x90
	movs r1, #0x22
	movs r2, #3
	movs r3, #5
	bl sub_80C6474
_080CA63A:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x80
	bls _080CA64C
	movs r0, #0xa8
	movs r1, #0x44
	movs r2, #2
	movs r3, #0
	bl sub_80C6474
_080CA64C:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x7f
	bls _080CA65E
	movs r0, #0xca
	movs r1, #2
	movs r2, #4
	movs r3, #7
	bl sub_80C6474
_080CA65E:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x7e
	bls _080CA670
	movs r0, #0x26
	movs r1, #0x18
	movs r2, #4
	movs r3, #2
	bl sub_80C6474
_080CA670:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x7d
	bls _080CA682
	movs r0, #0x80
	movs r1, #0x26
	movs r2, #3
	movs r3, #0
	bl sub_80C6474
_080CA682:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x7b
	bls _080CA694
	movs r0, #0x80
	movs r1, #0x32
	movs r2, #2
	movs r3, #5
	bl sub_80C6474
_080CA694:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x79
	bls _080CA6A6
	movs r0, #0x86
	movs r1, #6
	movs r2, #4
	movs r3, #0
	bl sub_80C6474
_080CA6A6:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x77
	bls _080CA6B8
	movs r0, #0x98
	movs r1, #0x16
	movs r2, #4
	movs r3, #1
	bl sub_80C6474
_080CA6B8:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x75
	bls _080CA6CA
	movs r0, #0xe8
	movs r1, #0x16
	movs r2, #3
	movs r3, #3
	bl sub_80C6474
_080CA6CA:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x73
	bls _080CA6DC
	movs r0, #0x64
	movs r1, #0x48
	movs r2, #2
	movs r3, #1
	bl sub_80C6474
_080CA6DC:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x71
	bls _080CA6EE
	movs r0, #0x70
	movs r1, #6
	movs r2, #4
	movs r3, #0xa
	bl sub_80C6474
_080CA6EE:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x6f
	bls _080CA700
	movs r0, #0x40
	movs r1, #0x14
	movs r2, #4
	movs r3, #8
	bl sub_80C6474
_080CA700:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x6d
	bls _080CA712
	movs r0, #0
	movs r1, #0x2e
	movs r2, #3
	movs r3, #4
	bl sub_80C6474
_080CA712:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x6b
	bls _080CA724
	movs r0, #0x2c
	movs r1, #0x4a
	movs r2, #2
	movs r3, #4
	bl sub_80C6474
_080CA724:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x69
	bls _080CA736
	movs r0, #0x40
	movs r1, #8
	movs r2, #4
	movs r3, #6
	bl sub_80C6474
_080CA736:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x67
	bls _080CA748
	movs r0, #0x78
	movs r1, #0x1a
	movs r2, #4
	movs r3, #2
	bl sub_80C6474
_080CA748:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x65
	bls _080CA75A
	movs r0, #0x24
	movs r1, #0x32
	movs r2, #3
	movs r3, #2
	bl sub_80C6474
_080CA75A:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x62
	bls _080CA76C
	movs r0, #0xe
	movs r1, #0x4e
	movs r2, #2
	movs r3, #0
	bl sub_80C6474
_080CA76C:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x5f
	bls _080CA77E
	movs r0, #0x16
	movs r1, #0xa
	movs r2, #4
	movs r3, #4
	bl sub_80C6474
_080CA77E:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x5c
	bls _080CA790
	movs r0, #0xb4
	movs r1, #0x28
	movs r2, #4
	movs r3, #1
	bl sub_80C6474
_080CA790:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x59
	bls _080CA7A2
	movs r0, #0x42
	movs r1, #0x36
	movs r2, #3
	movs r3, #1
	bl sub_80C6474
_080CA7A2:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x55
	bls _080CA7B4
	movs r0, #0xdc
	movs r1, #0x32
	movs r2, #2
	movs r3, #2
	bl sub_80C6474
_080CA7B4:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x51
	bls _080CA7C6
	movs r0, #0xc8
	movs r1, #0x48
	movs r2, #1
	movs r3, #0
	bl sub_80C6474
_080CA7C6:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x4c
	bls _080CA7D8
	movs r0, #0x38
	movs r1, #0x28
	movs r2, #4
	movs r3, #0
	bl sub_80C6474
_080CA7D8:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x47
	bls _080CA7EA
	movs r0, #0x8c
	movs r1, #0x54
	movs r2, #1
	movs r3, #2
	bl sub_80C6474
_080CA7EA:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x41
	bls _080CA7FC
	movs r0, #0x10
	movs r1, #0x64
	movs r2, #1
	movs r3, #1
	bl sub_80C6474
_080CA7FC:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x37
	bls _080CA80E
	movs r0, #0
	movs r1, #0x7e
	movs r2, #0
	movs r3, #1
	bl sub_80C6474
_080CA80E:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x31
	bls _080CA820
	movs r0, #0xa0
	movs r1, #0x78
	movs r2, #0
	movs r3, #2
	bl sub_80C6474
_080CA820:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0x1d
	bls _080CA832
	movs r0, #0x58
	movs r1, #0x70
	movs r2, #0
	movs r3, #0
	bl sub_80C6474
_080CA832:
	ldrh r0, [r6, #0x2a]
	adds r4, r0, #0
	subs r4, #0x52
	cmp r4, #0
	bne _080CA870
	ldr r2, _080CA914  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundTileDataOffset
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r0, #2
	bl SetBackgroundMapDataOffset
_080CA870:
	cmp r4, #0x5f
	bhi _080CA8A8
	ldr r0, _080CA918  @ gUnknown_08B103D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl StorePaletteToBufferMaybe
	movs r0, #0x5f
	str r0, [sp]
	movs r0, #4
	movs r1, #0x10
	movs r2, #0xc
	adds r3, r4, #0
	bl Interpolate
	ldr r5, _080CA91C  @ gPaletteBuffer
	lsls r7, r0, #0x10
	movs r4, #7
_080CA896:
	adds r0, r5, #0
	movs r1, #0
	lsrs r2, r7, #0x10
	bl sub_80C69B0
	adds r5, #0x20
	subs r4, #1
	cmp r4, #0
	bge _080CA896
_080CA8A8:
	ldrh r0, [r6, #0x2a]
	adds r4, r0, #0
	subs r4, #0xb1
	cmp r4, #0
	bne _080CA8DC
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetB
_080CA8DC:
	cmp r4, #0x20
	bhi _080CA900
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	adds r3, r4, #0
	bl Interpolate
	ldr r2, _080CA914  @ gLCDControlBuffer
	adds r1, r2, #0
	adds r1, #0x44
	strb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	adds r2, #0x45
	strb r1, [r2]
_080CA900:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0xd1
	bne _080CA920
	movs r0, #0
	strh r0, [r6, #0x2a]
	adds r0, r6, #0
	bl Proc_Break
	b _080CA924
	.align 2, 0
_080CA914: .4byte gLCDControlBuffer
_080CA918: .4byte gUnknown_08B103D8
_080CA91C: .4byte gPaletteBuffer
_080CA920:
	adds r0, #1
	strh r0, [r6, #0x2a]
_080CA924:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CA4DC

	THUMB_FUNC_START sub_80CA92C
sub_80CA92C: @ 0x080CA92C
	push {r4, lr}
	adds r4, r0, #0
	bl SetDefaultColorEffects
	adds r4, #0x46
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CA92C

	THUMB_FUNC_START sub_80CA940
sub_80CA940: @ 0x080CA940
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	ldr r0, _080CA9F0  @ gUnknown_08AA707C
	bl Proc_EndEach
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r3, _080CA9F4  @ gLCDControlBuffer
	ldrb r1, [r3, #1]
	movs r2, #2
	negs r2, r2
	adds r0, r2, #0
	ands r0, r1
	movs r5, #3
	negs r5, r5
	ands r0, r5
	movs r1, #4
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	movs r4, #9
	negs r4, r4
	ands r0, r4
	movs r6, #0x10
	orrs r0, r6
	movs r1, #0x21
	negs r1, r1
	mov r9, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #1]
	movs r0, #0x37
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	ands r0, r5
	mov r1, r8
	orrs r0, r1
	ands r0, r4
	orrs r0, r6
	adds r3, #0x36
	ldrb r1, [r3]
	ands r2, r1
	ands r2, r5
	movs r1, #5
	negs r1, r1
	ands r2, r1
	ands r2, r4
	subs r1, #0xc
	ands r2, r1
	movs r1, #0x20
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	mov r0, r9
	ands r2, r0
	strb r2, [r3]
	movs r0, #1
	movs r1, #4
	movs r2, #8
	movs r3, #8
	bl SetSpecialColorEffectsParameters
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080CA9F0: .4byte gUnknown_08AA707C
_080CA9F4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80CA940

	THUMB_FUNC_START sub_80CA9F8
sub_80CA9F8: @ 0x080CA9F8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	subs r2, r3, r2
	movs r5, #0x10
	subs r3, r5, r2
	cmp r3, #0
	bge _080CAA14
	ldr r0, _080CAA10  @ 0x0000FFFF
	b _080CAA2E
	.align 2, 0
_080CAA10: .4byte 0x0000FFFF
_080CAA14:
	cmp r3, #0xf
	bgt _080CAA2C
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #4
	adds r1, r4, r1
	str r5, [sp]
	movs r0, #4
	adds r2, r4, #0
	bl Interpolate
	b _080CAA2E
_080CAA2C:
	adds r0, r4, #0
_080CAA2E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80CA9F8

	THUMB_FUNC_START sub_80CAA38
sub_80CAA38: @ 0x080CAA38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r9, r0
	ldrh r0, [r0, #0x2a]
	adds r2, r0, #0
	adds r2, #0xa
	movs r0, #0x78
	movs r1, #1
	negs r1, r1
	movs r3, #0x14
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CAB60  @ 0x0000FFFF
	mov sl, r0
	cmp r7, sl
	beq _080CAAA2
	adds r4, r7, #0
	subs r4, #0x30
	ldr r5, _080CAB64  @ 0x000001FF
	ands r4, r5
	ldr r6, _080CAB68  @ gUnknown_08AA709C
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0xec
	adds r3, r6, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x2c
	ands r1, r5
	ldr r2, _080CAB6C  @ 0x000004EC
	ldr r0, _080CAB70  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r3, r6, #0
	bl PutSpriteExt
	ldr r2, _080CAB74  @ 0x00000804
	ldr r3, _080CAB78  @ gUnknown_08AA70BC
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	bl PutSpriteExt
_080CAAA2:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	adds r2, r0, #6
	movs r0, #0x78
	movs r1, #1
	negs r1, r1
	movs r3, #0x14
	bl sub_80CA9F8
	adds r7, r0, #0
	cmp r7, sl
	beq _080CAAF8
	adds r4, r7, #0
	subs r4, #0x30
	ldr r5, _080CAB64  @ 0x000001FF
	ands r4, r5
	ldr r6, _080CAB68  @ gUnknown_08AA709C
	ldr r0, _080CAB7C  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x2c
	ands r1, r5
	movs r2, #0x84
	lsls r2, r2, #3
	ldr r0, _080CAB80  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r3, r6, #0
	bl PutSpriteExt
	ldr r2, _080CAB84  @ 0x00000838
	ldr r3, _080CAB78  @ gUnknown_08AA70BC
	movs r0, #0
	str r0, [sp]
	adds r1, r4, #0
	bl PutSpriteExt
_080CAAF8:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	adds r2, r0, #2
	movs r0, #0x78
	movs r1, #1
	negs r1, r1
	movs r3, #0x14
	bl sub_80CA9F8
	adds r7, r0, #0
	cmp r7, sl
	beq _080CAB4C
	adds r4, r7, #0
	subs r4, #0x30
	ldr r5, _080CAB64  @ 0x000001FF
	ands r4, r5
	ldr r6, _080CAB68  @ gUnknown_08AA709C
	ldr r0, _080CAB88  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x54
	adds r3, r6, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x2c
	ands r1, r5
	ldr r2, _080CAB8C  @ 0x00000454
	ldr r0, _080CAB90  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	adds r3, r6, #0
	bl PutSpriteExt
	ldr r2, _080CAB94  @ 0x0000086C
	ldr r3, _080CAB78  @ gUnknown_08AA70BC
	movs r0, #0
	str r0, [sp]
	adds r1, r4, #0
	bl PutSpriteExt
_080CAB4C:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	cmp r0, #0x14
	bne _080CAB98
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, r9
	bl Proc_Break
	b _080CAB9E
	.align 2, 0
_080CAB60: .4byte 0x0000FFFF
_080CAB64: .4byte 0x000001FF
_080CAB68: .4byte gUnknown_08AA709C
_080CAB6C: .4byte 0x000004EC
_080CAB70: .4byte 0x00001078
_080CAB74: .4byte 0x00000804
_080CAB78: .4byte gUnknown_08AA70BC
_080CAB7C: .4byte 0x000020F0
_080CAB80: .4byte 0x00003168
_080CAB84: .4byte 0x00000838
_080CAB88: .4byte 0x000041E0
_080CAB8C: .4byte 0x00000454
_080CAB90: .4byte 0x00005258
_080CAB94: .4byte 0x0000086C
_080CAB98:
	adds r0, #1
	mov r1, r9
	strh r0, [r1, #0x2a]
_080CAB9E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CAA38

	THUMB_FUNC_START sub_80CABB0
sub_80CABB0: @ 0x080CABB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	ldrh r4, [r0, #0x2a]
	adds r4, #2
	movs r5, #1
	negs r5, r5
	movs r0, #0x42
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x12
	bl sub_80CA9F8
	mov sl, r0
	movs r0, #0x2a
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x12
	bl sub_80CA9F8
	adds r7, r0, #0
	movs r0, #0xae
	movs r1, #1
	adds r2, r4, #0
	movs r3, #0x12
	bl sub_80CA9F8
	str r0, [sp, #8]
	movs r0, #0x76
	movs r1, #1
	adds r2, r4, #0
	movs r3, #0x12
	bl sub_80CA9F8
	str r0, [sp, #0xc]
	ldr r0, _080CADDC  @ 0x0000FFFF
	cmp sl, r0
	beq _080CACE0
	cmp r7, r0
	beq _080CAC6E
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CAC6E
	cmp r7, #0xc8
	bgt _080CAC6E
	mov r5, sl
	subs r5, #0x30
	ldr r6, _080CADE0  @ 0x000001FF
	ands r5, r6
	adds r4, r7, #0
	subs r4, #0x28
	movs r0, #0xff
	mov r9, r0
	ands r4, r0
	ldr r1, _080CADE4  @ gUnknown_08AA709C
	mov r8, r1
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CADE8  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	adds r2, r7, #0
	subs r2, #0x20
	mov r1, r9
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CADEC  @ gUnknown_08AA70DC
	movs r0, #0
	str r0, [sp]
	adds r1, r5, #0
	bl PutSpriteExt
_080CAC6E:
	ldr r0, _080CADDC  @ 0x0000FFFF
	cmp sl, r0
	beq _080CACE0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _080CACE0
	movs r0, #0x28
	negs r0, r0
	cmp r1, r0
	blt _080CACE0
	cmp r1, #0xc8
	bgt _080CACE0
	mov r5, sl
	subs r5, #0x30
	ldr r6, _080CADE0  @ 0x000001FF
	ands r5, r6
	adds r4, r1, #0
	subs r4, #0x28
	movs r0, #0xff
	mov r9, r0
	ands r4, r0
	ldr r1, _080CADE4  @ gUnknown_08AA709C
	mov r8, r1
	ldr r0, _080CADF0  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CADF4  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	ldr r2, [sp, #0xc]
	subs r2, #0x20
	mov r0, r9
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CADEC  @ gUnknown_08AA70DC
	movs r0, #0
	str r0, [sp]
	adds r1, r5, #0
	bl PutSpriteExt
_080CACE0:
	ldr r0, _080CADDC  @ 0x0000FFFF
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _080CADC6
	cmp r7, r0
	beq _080CAD52
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CAD52
	cmp r7, #0xc8
	bgt _080CAD52
	adds r5, r1, #0
	subs r5, #0x30
	ldr r6, _080CADE0  @ 0x000001FF
	ands r5, r6
	adds r4, r7, #0
	subs r4, #0x28
	movs r0, #0xff
	mov r9, r0
	ands r4, r0
	ldr r1, _080CADE4  @ gUnknown_08AA709C
	mov r8, r1
	ldr r0, _080CADF8  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	ldr r1, [sp, #8]
	subs r1, #0x2c
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CADFC  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	adds r2, r7, #0
	subs r2, #0x20
	mov r0, r9
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CADEC  @ gUnknown_08AA70DC
	movs r0, #0
	str r0, [sp]
	adds r1, r5, #0
	bl PutSpriteExt
_080CAD52:
	ldr r0, _080CADDC  @ 0x0000FFFF
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _080CADC6
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _080CADC6
	movs r0, #0x28
	negs r0, r0
	cmp r1, r0
	blt _080CADC6
	cmp r1, #0xc8
	bgt _080CADC6
	ldr r5, [sp, #8]
	subs r5, #0x30
	ldr r6, _080CADE0  @ 0x000001FF
	ands r5, r6
	adds r4, r1, #0
	subs r4, #0x28
	movs r0, #0xff
	mov r9, r0
	ands r4, r0
	ldr r1, _080CADE4  @ gUnknown_08AA709C
	mov r8, r1
	ldr r0, _080CAE00  @ 0x000062D0
	str r0, [sp]
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	ldr r1, [sp, #8]
	subs r1, #0x2c
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CAE04  @ 0x00007348
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	mov r3, r8
	bl PutSpriteExt
	ldr r2, [sp, #0xc]
	subs r2, #0x20
	mov r0, r9
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CADEC  @ gUnknown_08AA70DC
	movs r0, #0
	str r0, [sp]
	adds r1, r5, #0
	bl PutSpriteExt
_080CADC6:
	ldr r1, [sp, #4]
	ldrh r0, [r1, #0x2a]
	cmp r0, #0x12
	bne _080CAE08
	movs r0, #0
	strh r0, [r1, #0x2a]
	ldr r0, [sp, #4]
	bl Proc_Break
	b _080CAE0E
	.align 2, 0
_080CADDC: .4byte 0x0000FFFF
_080CADE0: .4byte 0x000001FF
_080CADE4: .4byte gUnknown_08AA709C
_080CADE8: .4byte 0x00001078
_080CADEC: .4byte gUnknown_08AA70DC
_080CADF0: .4byte 0x000020F0
_080CADF4: .4byte 0x00003168
_080CADF8: .4byte 0x000041E0
_080CADFC: .4byte 0x00005258
_080CAE00: .4byte 0x000062D0
_080CAE04: .4byte 0x00007348
_080CAE08:
	adds r0, #1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x2a]
_080CAE0E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CABB0

	THUMB_FUNC_START sub_80CAE20
sub_80CAE20: @ 0x080CAE20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldrh r0, [r0, #0x2a]
	adds r0, #2
	mov r9, r0
	movs r1, #1
	negs r1, r1
	movs r0, #0x3e
	mov r2, r9
	movs r3, #0x10
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CAEF4  @ 0x0000FFFF
	mov sl, r0
	cmp r7, sl
	beq _080CAE8C
	adds r1, r7, #0
	subs r1, #0x20
	ldr r4, _080CAEF8  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CAEFC  @ gUnknown_08AA709C
	movs r6, #0
	str r6, [sp]
	movs r0, #1
	movs r2, #0x20
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x1c
	ands r1, r4
	movs r2, #0x84
	lsls r2, r2, #3
	ldr r0, _080CAF00  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CAF04  @ 0x00000838
	ldr r3, _080CAF08  @ gUnknown_08AA70EA
	str r6, [sp]
	movs r0, #0
	bl PutSpriteExt
_080CAE8C:
	movs r0, #0xb2
	movs r1, #1
	mov r2, r9
	movs r3, #0x10
	bl sub_80CA9F8
	adds r7, r0, #0
	cmp r7, sl
	beq _080CAEDE
	adds r1, r7, #0
	subs r1, #0x40
	ldr r4, _080CAEF8  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CAEFC  @ gUnknown_08AA709C
	ldr r0, _080CAF0C  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r2, #0x20
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x3c
	ands r1, r4
	movs r2, #0x84
	lsls r2, r2, #3
	ldr r0, _080CAF10  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CAF04  @ 0x00000838
	ldr r3, _080CAF08  @ gUnknown_08AA70EA
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CAEDE:
	mov r1, r8
	ldrh r0, [r1, #0x2a]
	cmp r0, #0x10
	bne _080CAF14
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, r8
	bl Proc_Break
	b _080CAF1A
	.align 2, 0
_080CAEF4: .4byte 0x0000FFFF
_080CAEF8: .4byte 0x000001FF
_080CAEFC: .4byte gUnknown_08AA709C
_080CAF00: .4byte 0x00001078
_080CAF04: .4byte 0x00000838
_080CAF08: .4byte gUnknown_08AA70EA
_080CAF0C: .4byte 0x000020F0
_080CAF10: .4byte 0x00003168
_080CAF14:
	adds r0, #1
	mov r1, r8
	strh r0, [r1, #0x2a]
_080CAF1A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CAE20

	THUMB_FUNC_START sub_80CAF2C
sub_80CAF2C: @ 0x080CAF2C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r0, [r7, #0x2a]
	adds r2, r0, #0
	adds r2, #0xa
	movs r1, #1
	negs r1, r1
	movs r0, #0x50
	movs r3, #0xf
	bl sub_80CA9F8
	adds r4, r0, #0
	ldr r0, _080CB074  @ 0x0000FFFF
	cmp r4, r0
	beq _080CAF98
	movs r0, #0x28
	negs r0, r0
	cmp r4, r0
	blt _080CAF98
	cmp r4, #0xc8
	bgt _080CAF98
	movs r6, #0
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CB078  @ gUnknown_08AA709C
	str r6, [sp]
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CB07C  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	movs r1, #4
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CB080  @ gUnknown_08AA7116
	str r6, [sp]
	movs r0, #0
	movs r1, #0x10
	adds r2, r4, #0
	bl PutSpriteExt
_080CAF98:
	ldrh r0, [r7, #0x2a]
	adds r2, r0, #6
	movs r1, #1
	negs r1, r1
	movs r0, #0x50
	movs r3, #0xf
	bl sub_80CA9F8
	adds r4, r0, #0
	ldr r0, _080CB074  @ 0x0000FFFF
	cmp r4, r0
	beq _080CAFFC
	movs r0, #0x28
	negs r0, r0
	cmp r4, r0
	blt _080CAFFC
	cmp r4, #0xc8
	bgt _080CAFFC
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CB078  @ gUnknown_08AA709C
	ldr r0, _080CB084  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x48
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CB088  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	movs r1, #0x4c
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CB080  @ gUnknown_08AA7116
	movs r0, #0
	str r0, [sp]
	movs r1, #0x58
	adds r2, r4, #0
	bl PutSpriteExt
_080CAFFC:
	ldrh r0, [r7, #0x2a]
	adds r2, r0, #2
	movs r1, #1
	negs r1, r1
	movs r0, #0x50
	movs r3, #0xf
	bl sub_80CA9F8
	adds r4, r0, #0
	ldr r0, _080CB074  @ 0x0000FFFF
	cmp r4, r0
	beq _080CB060
	movs r0, #0x28
	negs r0, r0
	cmp r4, r0
	blt _080CB060
	cmp r4, #0xc8
	bgt _080CB060
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CB078  @ gUnknown_08AA709C
	ldr r0, _080CB08C  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x90
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CB090  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	movs r1, #0x94
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CB080  @ gUnknown_08AA7116
	movs r0, #0
	str r0, [sp]
	movs r1, #0xa0
	adds r2, r4, #0
	bl PutSpriteExt
_080CB060:
	ldrh r0, [r7, #0x2a]
	cmp r0, #0xf
	bne _080CB094
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080CB098
	.align 2, 0
_080CB074: .4byte 0x0000FFFF
_080CB078: .4byte gUnknown_08AA709C
_080CB07C: .4byte 0x00001078
_080CB080: .4byte gUnknown_08AA7116
_080CB084: .4byte 0x000020F0
_080CB088: .4byte 0x00003168
_080CB08C: .4byte 0x000041E0
_080CB090: .4byte 0x00005258
_080CB094:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080CB098:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CAF2C

	THUMB_FUNC_START sub_80CB0A0
sub_80CB0A0: @ 0x080CB0A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r0, [r7, #0x2a]
	adds r2, r0, #0
	adds r2, #0xa
	movs r0, #0x50
	movs r1, #1
	movs r3, #0xd
	bl sub_80CA9F8
	adds r4, r0, #0
	ldr r0, _080CB1E0  @ 0x0000FFFF
	cmp r4, r0
	beq _080CB10A
	movs r0, #0x28
	negs r0, r0
	cmp r4, r0
	blt _080CB10A
	cmp r4, #0xc8
	bgt _080CB10A
	movs r6, #0
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CB1E4  @ gUnknown_08AA709C
	str r6, [sp]
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CB1E8  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	movs r1, #4
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CB1EC  @ gUnknown_08AA7116
	str r6, [sp]
	movs r0, #0
	movs r1, #0x10
	adds r2, r4, #0
	bl PutSpriteExt
_080CB10A:
	ldrh r0, [r7, #0x2a]
	adds r2, r0, #6
	movs r0, #0x50
	movs r1, #1
	movs r3, #0xd
	bl sub_80CA9F8
	adds r4, r0, #0
	ldr r0, _080CB1E0  @ 0x0000FFFF
	cmp r4, r0
	beq _080CB16C
	movs r0, #0x28
	negs r0, r0
	cmp r4, r0
	blt _080CB16C
	cmp r4, #0xc8
	bgt _080CB16C
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CB1E4  @ gUnknown_08AA709C
	ldr r0, _080CB1F0  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x48
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CB1F4  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	movs r1, #0x4c
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CB1EC  @ gUnknown_08AA7116
	movs r0, #0
	str r0, [sp]
	movs r1, #0x58
	adds r2, r4, #0
	bl PutSpriteExt
_080CB16C:
	ldrh r0, [r7, #0x2a]
	adds r2, r0, #2
	movs r0, #0x50
	movs r1, #1
	movs r3, #0xd
	bl sub_80CA9F8
	adds r4, r0, #0
	ldr r0, _080CB1E0  @ 0x0000FFFF
	cmp r4, r0
	beq _080CB1CE
	movs r0, #0x28
	negs r0, r0
	cmp r4, r0
	blt _080CB1CE
	cmp r4, #0xc8
	bgt _080CB1CE
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CB1E4  @ gUnknown_08AA709C
	ldr r0, _080CB1F8  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x90
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CB1FC  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	movs r1, #0x94
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CB1EC  @ gUnknown_08AA7116
	movs r0, #0
	str r0, [sp]
	movs r1, #0xa0
	adds r2, r4, #0
	bl PutSpriteExt
_080CB1CE:
	ldrh r0, [r7, #0x2a]
	cmp r0, #0xd
	bne _080CB200
	movs r0, #0
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	b _080CB204
	.align 2, 0
_080CB1E0: .4byte 0x0000FFFF
_080CB1E4: .4byte gUnknown_08AA709C
_080CB1E8: .4byte 0x00001078
_080CB1EC: .4byte gUnknown_08AA7116
_080CB1F0: .4byte 0x000020F0
_080CB1F4: .4byte 0x00003168
_080CB1F8: .4byte 0x000041E0
_080CB1FC: .4byte 0x00005258
_080CB200:
	adds r0, #1
	strh r0, [r7, #0x2a]
_080CB204:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CB0A0

	THUMB_FUNC_START sub_80CB20C
sub_80CB20C: @ 0x080CB20C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrh r0, [r6, #0x2a]
	adds r2, r0, #6
	movs r0, #1
	negs r0, r0
	mov sl, r0
	movs r0, #0x3c
	mov r1, sl
	movs r3, #0xb
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB2E0  @ 0x0000FFFF
	mov r9, r0
	cmp r7, r9
	beq _080CB27A
	adds r1, r7, #0
	subs r1, #0x20
	ldr r4, _080CB2E4  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CB2E8  @ gUnknown_08AA709C
	movs r0, #0
	mov r8, r0
	str r0, [sp]
	movs r0, #1
	movs r2, #6
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x1c
	ands r1, r4
	ldr r2, _080CB2EC  @ 0x00000406
	ldr r0, _080CB2F0  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CB2F4  @ 0x0000081E
	ldr r3, _080CB2F8  @ gUnknown_08AA70EA
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	bl PutSpriteExt
_080CB27A:
	ldrh r0, [r6, #0x2a]
	adds r2, r0, #2
	movs r0, #0x3c
	mov r1, sl
	movs r3, #0xb
	bl sub_80CA9F8
	adds r7, r0, #0
	cmp r7, r9
	beq _080CB2CC
	adds r1, r7, #0
	subs r1, #0x40
	ldr r4, _080CB2E4  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CB2E8  @ gUnknown_08AA709C
	ldr r0, _080CB2FC  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r2, #0x3a
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x3c
	ands r1, r4
	ldr r2, _080CB300  @ 0x0000043A
	ldr r0, _080CB304  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CB308  @ 0x00000852
	ldr r3, _080CB2F8  @ gUnknown_08AA70EA
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CB2CC:
	ldrh r0, [r6, #0x2a]
	cmp r0, #0xb
	bne _080CB30C
	movs r0, #0
	strh r0, [r6, #0x2a]
	adds r0, r6, #0
	bl Proc_Break
	b _080CB310
	.align 2, 0
_080CB2E0: .4byte 0x0000FFFF
_080CB2E4: .4byte 0x000001FF
_080CB2E8: .4byte gUnknown_08AA709C
_080CB2EC: .4byte 0x00000406
_080CB2F0: .4byte 0x00001078
_080CB2F4: .4byte 0x0000081E
_080CB2F8: .4byte gUnknown_08AA70EA
_080CB2FC: .4byte 0x000020F0
_080CB300: .4byte 0x0000043A
_080CB304: .4byte 0x00003168
_080CB308: .4byte 0x00000852
_080CB30C:
	adds r0, #1
	strh r0, [r6, #0x2a]
_080CB310:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CB20C

	THUMB_FUNC_START sub_80CB320
sub_80CB320: @ 0x080CB320
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldrh r7, [r0, #0x2a]
	cmp r7, #0
	bne _080CB3A6
	ldr r0, _080CB54C  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r2, #0x20
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r5, ip
	adds r5, #0x34
	ldrb r0, [r5]
	orrs r0, r2
	movs r1, #2
	negs r1, r1
	mov r8, r1
	ands r0, r1
	movs r6, #3
	negs r6, r6
	ands r0, r6
	movs r4, #4
	orrs r0, r4
	movs r3, #9
	negs r3, r3
	ands r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	adds r5, #1
	ldrb r0, [r5]
	orrs r0, r2
	mov r2, r8
	ands r0, r2
	ands r0, r6
	orrs r0, r4
	ands r0, r3
	orrs r0, r1
	strb r0, [r5]
	mov r0, ip
	adds r0, #0x2d
	strb r7, [r0]
	adds r0, #4
	strb r7, [r0]
	subs r0, #5
	strb r7, [r0]
	adds r0, #4
	strb r7, [r0]
	subs r0, #1
	strb r7, [r0]
	adds r0, #4
	strb r7, [r0]
	subs r0, #5
	strb r7, [r0]
	adds r0, #4
	strb r7, [r0]
_080CB3A6:
	mov r1, sl
	ldrh r0, [r1, #0x2a]
	adds r0, #2
	mov r9, r0
	movs r1, #1
	negs r1, r1
	movs r0, #0x1c
	mov r2, r9
	movs r3, #0xa
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB550  @ 0x0000FFFF
	cmp r7, r0
	beq _080CB41C
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB41C
	cmp r7, #0xc8
	bgt _080CB41C
	adds r4, r7, #0
	subs r4, #0x30
	movs r6, #0xff
	ands r4, r6
	ldr r5, _080CB554  @ gUnknown_08AA709C
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	movs r0, #1
	movs r1, #0x48
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CB558  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	movs r1, #0x4c
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	adds r2, r7, #0
	subs r2, #0x18
	ands r2, r6
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CB55C  @ gUnknown_08AA70EA
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x40
	bl PutSpriteExt
_080CB41C:
	movs r0, #0x84
	movs r1, #1
	mov r2, r9
	movs r3, #0xa
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB550  @ 0x0000FFFF
	movs r1, #0x78
	cmp r1, r0
	beq _080CB49A
	cmp r7, r0
	beq _080CB49A
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB49A
	cmp r7, #0xc8
	bgt _080CB49A
	subs r1, #0x30
	ldr r5, _080CB560  @ 0x000001FF
	ands r1, r5
	adds r4, r7, #0
	subs r4, #0x30
	movs r2, #0xff
	mov r8, r2
	ands r4, r2
	ldr r6, _080CB554  @ gUnknown_08AA709C
	ldr r0, _080CB564  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	movs r1, #0x78
	subs r1, #0x2c
	ands r1, r5
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CB568  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	movs r1, #0x78
	subs r1, #0x38
	ands r1, r5
	adds r2, r7, #0
	subs r2, #0x18
	mov r0, r8
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CB55C  @ gUnknown_08AA70EA
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CB49A:
	mov r3, r9
	subs r3, #2
	cmp r3, #7
	bhi _080CB4F2
	movs r0, #8
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x18
	bl Interpolate
	adds r7, r0, #0
	ldr r3, _080CB54C  @ gLCDControlBuffer
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #6
	strb r0, [r1]
	movs r2, #0x50
	subs r2, r2, r7
	adds r0, r3, #0
	adds r0, #0x31
	strb r2, [r0]
	subs r1, #1
	movs r0, #0x76
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x50
	adds r0, r3, #0
	adds r0, #0x30
	strb r1, [r0]
	adds r5, r3, #0
	adds r5, #0x2f
	movs r0, #0x7a
	strb r0, [r5]
	adds r0, r3, #0
	adds r0, #0x33
	strb r2, [r0]
	adds r2, r3, #0
	adds r2, #0x2e
	movs r0, #0xea
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x32
	strb r1, [r0]
_080CB4F2:
	ldr r4, _080CB554  @ gUnknown_08AA709C
	ldr r0, _080CB56C  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x20
	adds r3, r4, #0
	bl PutSpriteExt
	movs r5, #0x84
	lsls r5, r5, #3
	ldr r0, _080CB570  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	movs r1, #0x12
	adds r2, r5, #0
	adds r3, r4, #0
	bl PutSpriteExt
	ldr r0, _080CB574  @ 0x000062D0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x82
	movs r2, #0x20
	adds r3, r4, #0
	bl PutSpriteExt
	ldr r0, _080CB578  @ 0x00007348
	str r0, [sp]
	movs r0, #2
	movs r1, #0x86
	adds r2, r5, #0
	adds r3, r4, #0
	bl PutSpriteExt
	mov r1, sl
	ldrh r0, [r1, #0x2a]
	cmp r0, #0xa
	bne _080CB57C
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, sl
	bl Proc_Break
	b _080CB582
	.align 2, 0
_080CB54C: .4byte gLCDControlBuffer
_080CB550: .4byte 0x0000FFFF
_080CB554: .4byte gUnknown_08AA709C
_080CB558: .4byte 0x00001078
_080CB55C: .4byte gUnknown_08AA70EA
_080CB560: .4byte 0x000001FF
_080CB564: .4byte 0x000020F0
_080CB568: .4byte 0x00003168
_080CB56C: .4byte 0x000041E0
_080CB570: .4byte 0x00005258
_080CB574: .4byte 0x000062D0
_080CB578: .4byte 0x00007348
_080CB57C:
	adds r0, #1
	mov r2, sl
	strh r0, [r2, #0x2a]
_080CB582:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CB320

	THUMB_FUNC_START sub_80CB594
sub_80CB594: @ 0x080CB594
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldrh r0, [r6, #0x2a]
	adds r2, r0, #6
	movs r0, #0xb4
	movs r1, #1
	movs r3, #9
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB660  @ 0x0000FFFF
	mov r9, r0
	cmp r7, r9
	beq _080CB5FA
	adds r1, r7, #0
	subs r1, #0x20
	ldr r4, _080CB664  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CB668  @ gUnknown_08AA709C
	movs r0, #0
	mov r8, r0
	str r0, [sp]
	movs r0, #1
	movs r2, #6
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x1c
	ands r1, r4
	ldr r2, _080CB66C  @ 0x00000406
	ldr r0, _080CB670  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CB674  @ 0x0000081E
	ldr r3, _080CB678  @ gUnknown_08AA70EA
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	bl PutSpriteExt
_080CB5FA:
	ldrh r0, [r6, #0x2a]
	adds r2, r0, #2
	movs r0, #0xb4
	movs r1, #1
	movs r3, #9
	bl sub_80CA9F8
	adds r7, r0, #0
	cmp r7, r9
	beq _080CB64C
	adds r1, r7, #0
	subs r1, #0x40
	ldr r4, _080CB664  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CB668  @ gUnknown_08AA709C
	ldr r0, _080CB67C  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r2, #0x3a
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x3c
	ands r1, r4
	ldr r2, _080CB680  @ 0x0000043A
	ldr r0, _080CB684  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CB688  @ 0x00000852
	ldr r3, _080CB678  @ gUnknown_08AA70EA
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CB64C:
	ldrh r0, [r6, #0x2a]
	cmp r0, #9
	bne _080CB68C
	movs r0, #0
	strh r0, [r6, #0x2a]
	adds r0, r6, #0
	bl Proc_Break
	b _080CB690
	.align 2, 0
_080CB660: .4byte 0x0000FFFF
_080CB664: .4byte 0x000001FF
_080CB668: .4byte gUnknown_08AA709C
_080CB66C: .4byte 0x00000406
_080CB670: .4byte 0x00001078
_080CB674: .4byte 0x0000081E
_080CB678: .4byte gUnknown_08AA70EA
_080CB67C: .4byte 0x000020F0
_080CB680: .4byte 0x0000043A
_080CB684: .4byte 0x00003168
_080CB688: .4byte 0x00000852
_080CB68C:
	adds r0, #1
	strh r0, [r6, #0x2a]
_080CB690:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CB594

	THUMB_FUNC_START sub_80CB6A0
sub_80CB6A0: @ 0x080CB6A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r9, r0
	ldrh r0, [r0, #0x2a]
	adds r2, r0, #0
	adds r2, #0xa
	movs r0, #0x78
	mov sl, r0
	movs r0, #0x1c
	movs r1, #1
	movs r3, #8
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB83C  @ 0x0000FFFF
	cmp r7, r0
	beq _080CB722
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB722
	cmp r7, #0xc8
	bgt _080CB722
	adds r4, r7, #0
	subs r4, #0x30
	movs r6, #0xff
	ands r4, r6
	ldr r5, _080CB840  @ gUnknown_08AA709C
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r0, #1
	movs r1, #0x48
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CB844  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	movs r1, #0x4c
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	adds r2, r7, #0
	subs r2, #0x18
	ands r2, r6
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CB848  @ gUnknown_08AA715C
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x18
	bl PutSpriteExt
_080CB722:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	adds r2, r0, #6
	movs r0, #0x50
	movs r1, #1
	movs r3, #8
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB83C  @ 0x0000FFFF
	cmp sl, r0
	beq _080CB7A4
	cmp r7, r0
	beq _080CB7A4
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB7A4
	cmp r7, #0xc8
	bgt _080CB7A4
	mov r1, sl
	subs r1, #0x30
	ldr r5, _080CB84C  @ 0x000001FF
	ands r1, r5
	adds r4, r7, #0
	subs r4, #0x30
	movs r0, #0xff
	mov r8, r0
	ands r4, r0
	ldr r6, _080CB840  @ gUnknown_08AA709C
	ldr r0, _080CB850  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r5
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CB854  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x60
	ands r1, r5
	adds r2, r7, #0
	subs r2, #0x18
	mov r0, r8
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CB848  @ gUnknown_08AA715C
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CB7A4:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	adds r2, r0, #2
	movs r0, #0x84
	movs r1, #1
	movs r3, #8
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CB83C  @ 0x0000FFFF
	cmp sl, r0
	beq _080CB826
	cmp r7, r0
	beq _080CB826
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB826
	cmp r7, #0xc8
	bgt _080CB826
	mov r1, sl
	subs r1, #0x30
	ldr r5, _080CB84C  @ 0x000001FF
	ands r1, r5
	adds r4, r7, #0
	subs r4, #0x30
	movs r0, #0xff
	mov r8, r0
	ands r4, r0
	ldr r6, _080CB840  @ gUnknown_08AA709C
	ldr r0, _080CB858  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r5
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CB85C  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x60
	ands r1, r5
	adds r2, r7, #0
	subs r2, #0x18
	mov r0, r8
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CB848  @ gUnknown_08AA715C
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CB826:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	cmp r0, #8
	bne _080CB860
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, r9
	bl Proc_Break
	b _080CB866
	.align 2, 0
_080CB83C: .4byte 0x0000FFFF
_080CB840: .4byte gUnknown_08AA709C
_080CB844: .4byte 0x00001078
_080CB848: .4byte gUnknown_08AA715C
_080CB84C: .4byte 0x000001FF
_080CB850: .4byte 0x000020F0
_080CB854: .4byte 0x00003168
_080CB858: .4byte 0x000041E0
_080CB85C: .4byte 0x00005258
_080CB860:
	adds r0, #1
	mov r1, r9
	strh r0, [r1, #0x2a]
_080CB866:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CB6A0

	THUMB_FUNC_START sub_80CB878
sub_80CB878: @ 0x080CB878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	ldrh r0, [r0, #0x2a]
	adds r0, #2
	str r0, [sp, #4]
	movs r0, #0x1e
	mov sl, r0
	movs r1, #1
	negs r1, r1
	movs r0, #0x50
	ldr r2, [sp, #4]
	movs r3, #7
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CBA20  @ 0x0000FFFF
	cmp r7, r0
	beq _080CB902
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB902
	cmp r7, #0xc8
	bgt _080CB902
	mov r1, sl
	subs r1, #0x30
	ldr r5, _080CBA24  @ 0x000001FF
	ands r1, r5
	adds r4, r7, #0
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r6, _080CBA28  @ gUnknown_08AA709C
	movs r0, #0
	mov r8, r0
	str r0, [sp]
	movs r0, #1
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r5
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CBA2C  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r3, r6, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CBA30  @ gUnknown_08AA712A
	mov r1, r8
	str r1, [sp]
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl PutSpriteExt
_080CB902:
	ldr r0, _080CBA20  @ 0x0000FFFF
	cmp r7, r0
	beq _080CB956
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB956
	cmp r7, #0xc8
	bgt _080CB956
	adds r4, r7, #0
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CBA28  @ gUnknown_08AA709C
	ldr r0, _080CBA34  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x66
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CBA38  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	movs r1, #0x6a
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CBA30  @ gUnknown_08AA712A
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7a
	adds r2, r4, #0
	bl PutSpriteExt
_080CB956:
	movs r0, #0x50
	movs r1, #1
	ldr r2, [sp, #4]
	movs r3, #7
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CBA20  @ 0x0000FFFF
	cmp r7, r0
	beq _080CB9B8
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CB9B8
	cmp r7, #0xc8
	bgt _080CB9B8
	adds r4, r7, #0
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CBA28  @ gUnknown_08AA709C
	ldr r0, _080CBA3C  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x2a
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CBA40  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	movs r1, #0x2e
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CBA30  @ gUnknown_08AA712A
	movs r0, #0
	str r0, [sp]
	movs r1, #0x3e
	adds r2, r4, #0
	bl PutSpriteExt
_080CB9B8:
	ldr r0, _080CBA20  @ 0x0000FFFF
	cmp r7, r0
	beq _080CBA0C
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CBA0C
	cmp r7, #0xc8
	bgt _080CBA0C
	adds r4, r7, #0
	subs r4, #0x28
	movs r0, #0xff
	ands r4, r0
	ldr r5, _080CBA28  @ gUnknown_08AA709C
	ldr r0, _080CBA44  @ 0x000062D0
	str r0, [sp]
	movs r0, #1
	movs r1, #0xa2
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r4
	ldr r0, _080CBA48  @ 0x00007348
	str r0, [sp]
	movs r0, #2
	movs r1, #0xa6
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r4, r0
	ldr r3, _080CBA30  @ gUnknown_08AA712A
	movs r0, #0
	str r0, [sp]
	movs r1, #0xb6
	adds r2, r4, #0
	bl PutSpriteExt
_080CBA0C:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	cmp r0, #7
	bne _080CBA4C
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, r9
	bl Proc_Break
	b _080CBA52
	.align 2, 0
_080CBA20: .4byte 0x0000FFFF
_080CBA24: .4byte 0x000001FF
_080CBA28: .4byte gUnknown_08AA709C
_080CBA2C: .4byte 0x00001078
_080CBA30: .4byte gUnknown_08AA712A
_080CBA34: .4byte 0x000041E0
_080CBA38: .4byte 0x00005258
_080CBA3C: .4byte 0x000020F0
_080CBA40: .4byte 0x00003168
_080CBA44: .4byte 0x000062D0
_080CBA48: .4byte 0x00007348
_080CBA4C:
	adds r0, #1
	mov r1, r9
	strh r0, [r1, #0x2a]
_080CBA52:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CB878

	THUMB_FUNC_START sub_80CBA64
sub_80CBA64: @ 0x080CBA64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r9, r0
	ldrh r0, [r0, #0x2a]
	adds r2, r0, #2
	movs r0, #0x78
	mov sl, r0
	movs r1, #1
	negs r1, r1
	movs r0, #0x1c
	movs r3, #6
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CBC04  @ 0x0000FFFF
	cmp r7, r0
	beq _080CBAE6
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CBAE6
	cmp r7, #0xc8
	bgt _080CBAE6
	adds r4, r7, #0
	subs r4, #0x30
	movs r6, #0xff
	ands r4, r6
	ldr r5, _080CBC08  @ gUnknown_08AA709C
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r0, #1
	movs r1, #0x48
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CBC0C  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	movs r1, #0x4c
	adds r2, r4, #0
	adds r3, r5, #0
	bl PutSpriteExt
	adds r2, r7, #0
	subs r2, #0x18
	ands r2, r6
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CBC10  @ gUnknown_08AA715C
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x18
	bl PutSpriteExt
_080CBAE6:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	adds r2, r0, #6
	movs r1, #1
	negs r1, r1
	movs r0, #0x50
	movs r3, #6
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CBC04  @ 0x0000FFFF
	cmp sl, r0
	beq _080CBB6A
	cmp r7, r0
	beq _080CBB6A
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CBB6A
	cmp r7, #0xc8
	bgt _080CBB6A
	mov r1, sl
	subs r1, #0x30
	ldr r5, _080CBC14  @ 0x000001FF
	ands r1, r5
	adds r4, r7, #0
	subs r4, #0x30
	movs r0, #0xff
	mov r8, r0
	ands r4, r0
	ldr r6, _080CBC08  @ gUnknown_08AA709C
	ldr r0, _080CBC18  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r5
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CBC1C  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x60
	ands r1, r5
	adds r2, r7, #0
	subs r2, #0x18
	mov r0, r8
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CBC10  @ gUnknown_08AA715C
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CBB6A:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	adds r2, r0, #0
	adds r2, #0xa
	movs r1, #1
	negs r1, r1
	movs r0, #0x84
	movs r3, #6
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CBC04  @ 0x0000FFFF
	cmp sl, r0
	beq _080CBBF0
	cmp r7, r0
	beq _080CBBF0
	movs r0, #0x28
	negs r0, r0
	cmp r7, r0
	blt _080CBBF0
	cmp r7, #0xc8
	bgt _080CBBF0
	mov r1, sl
	subs r1, #0x30
	ldr r5, _080CBC14  @ 0x000001FF
	ands r1, r5
	adds r4, r7, #0
	subs r4, #0x30
	movs r0, #0xff
	mov r8, r0
	ands r4, r0
	ldr r6, _080CBC08  @ gUnknown_08AA709C
	ldr r0, _080CBC20  @ 0x000041E0
	str r0, [sp]
	movs r0, #1
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x2c
	ands r1, r5
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r4, r0
	ldr r0, _080CBC24  @ 0x00005258
	str r0, [sp]
	movs r0, #2
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSpriteExt
	mov r1, sl
	subs r1, #0x60
	ands r1, r5
	adds r2, r7, #0
	subs r2, #0x18
	mov r0, r8
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	ldr r3, _080CBC10  @ gUnknown_08AA715C
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CBBF0:
	mov r1, r9
	ldrh r0, [r1, #0x2a]
	cmp r0, #6
	bne _080CBC28
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, r9
	bl Proc_Break
	b _080CBC2E
	.align 2, 0
_080CBC04: .4byte 0x0000FFFF
_080CBC08: .4byte gUnknown_08AA709C
_080CBC0C: .4byte 0x00001078
_080CBC10: .4byte gUnknown_08AA715C
_080CBC14: .4byte 0x000001FF
_080CBC18: .4byte 0x000020F0
_080CBC1C: .4byte 0x00003168
_080CBC20: .4byte 0x000041E0
_080CBC24: .4byte 0x00005258
_080CBC28:
	adds r0, #1
	mov r1, r9
	strh r0, [r1, #0x2a]
_080CBC2E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CBA64

	THUMB_FUNC_START sub_80CBC40
sub_80CBC40: @ 0x080CBC40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldrh r0, [r0, #0x2a]
	adds r0, #2
	mov r9, r0
	movs r1, #1
	negs r1, r1
	movs r0, #0x3e
	mov r2, r9
	movs r3, #5
	bl sub_80CA9F8
	adds r7, r0, #0
	ldr r0, _080CBD3C  @ 0x0000FFFF
	mov sl, r0
	cmp r7, sl
	beq _080CBCAC
	adds r1, r7, #0
	subs r1, #0x30
	ldr r4, _080CBD40  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CBD44  @ gUnknown_08AA709C
	movs r6, #0
	str r6, [sp]
	movs r0, #1
	movs r2, #0x28
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x2c
	ands r1, r4
	movs r2, #0x85
	lsls r2, r2, #3
	ldr r0, _080CBD48  @ 0x00001078
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CBD4C  @ 0x00000828
	ldr r3, _080CBD50  @ gUnknown_08AA7194
	str r6, [sp]
	movs r0, #0
	bl PutSpriteExt
_080CBCAC:
	movs r0, #0xb2
	movs r1, #1
	mov r2, r9
	movs r3, #5
	bl sub_80CA9F8
	adds r7, r0, #0
	cmp r7, sl
	beq _080CBCFE
	adds r1, r7, #0
	subs r1, #0x30
	ldr r4, _080CBD40  @ 0x000001FF
	ands r1, r4
	ldr r5, _080CBD44  @ gUnknown_08AA709C
	ldr r0, _080CBD54  @ 0x000020F0
	str r0, [sp]
	movs r0, #1
	movs r2, #0x28
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x2c
	ands r1, r4
	movs r2, #0x85
	lsls r2, r2, #3
	ldr r0, _080CBD58  @ 0x00003168
	str r0, [sp]
	movs r0, #2
	adds r3, r5, #0
	bl PutSpriteExt
	adds r1, r7, #0
	subs r1, #0x38
	ands r1, r4
	ldr r2, _080CBD4C  @ 0x00000828
	ldr r3, _080CBD50  @ gUnknown_08AA7194
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_080CBCFE:
	mov r1, r8
	ldrh r0, [r1, #0x2a]
	cmp r0, #1
	bne _080CBD28
	ldr r0, _080CBD5C  @ gUnknown_08AF4330
	ldr r4, _080CBD60  @ 0x0600F000
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r3, #0x80
	lsls r3, r3, #8
	adds r2, r3, #0
	movs r1, #0xa0
	lsls r1, r1, #2
_080CBD1A:
	ldrh r3, [r4]
	adds r0, r2, r3
	strh r0, [r4]
	subs r1, #1
	adds r4, #2
	cmp r1, #0
	bne _080CBD1A
_080CBD28:
	mov r1, r8
	ldrh r0, [r1, #0x2a]
	cmp r0, #5
	bne _080CBD64
	movs r0, #0
	strh r0, [r1, #0x2a]
	mov r0, r8
	bl Proc_Break
	b _080CBD6A
	.align 2, 0
_080CBD3C: .4byte 0x0000FFFF
_080CBD40: .4byte 0x000001FF
_080CBD44: .4byte gUnknown_08AA709C
_080CBD48: .4byte 0x00001078
_080CBD4C: .4byte 0x00000828
_080CBD50: .4byte gUnknown_08AA7194
_080CBD54: .4byte 0x000020F0
_080CBD58: .4byte 0x00003168
_080CBD5C: .4byte gUnknown_08AF4330
_080CBD60: .4byte 0x0600F000
_080CBD64:
	adds r0, #1
	mov r3, r8
	strh r0, [r3, #0x2a]
_080CBD6A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CBC40

	THUMB_FUNC_START sub_80CBD7C
sub_80CBD7C: @ 0x080CBD7C
	push {r4, lr}
	bl EndAllProcChildren
	bl sub_80C71D4
	movs r0, #0
	bl SetPrimaryHBlankHandler
	bl DeleteSome6C
	ldr r4, _080CBDCC  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _080CBDD0  @ gPaletteBuffer
	ldr r0, _080CBDD4  @ gUnknown_02022188
	ldrh r0, [r0, #0xc]
	strh r0, [r1]
	bl EnablePaletteSync
	ldrb r1, [r4, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CBDCC: .4byte gLCDControlBuffer
_080CBDD0: .4byte gPaletteBuffer
_080CBDD4: .4byte gUnknown_02022188

	THUMB_FUNC_END sub_80CBD7C

	THUMB_FUNC_START sub_80CBDD8
sub_80CBDD8: @ 0x080CBDD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #2
	beq _080CBDEA
	bl ShouldSkipHSScreen
	cmp r0, #0
	beq _080CBE00
_080CBDEA:
	ldr r0, _080CBE08  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080CBE00
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
_080CBE00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CBE08: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80CBDD8

	THUMB_FUNC_START sub_80CBE0C
sub_80CBE0C: @ 0x080CBE0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #1
	bl Sound_FadeOutBGM
	movs r0, #0
	bl SetupBackgrounds
	movs r0, #0
	bl SetPrimaryHBlankHandler
	ldr r5, _080CBECC  @ gLCDControlBuffer
	ldrb r1, [r5, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	mov sl, r1
	ands r0, r1
	subs r1, #2
	mov r9, r1
	ands r0, r1
	subs r1, #4
	mov r8, r1
	ands r0, r1
	movs r6, #0x11
	negs r6, r6
	ands r0, r6
	strb r0, [r5, #1]
	ldr r0, _080CBED0  @ gUnknown_08B10630
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CBED4  @ gUnknown_08B104D8
	ldr r4, _080CBED8  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CBEDC  @ gBG0TilemapBuffer
	adds r1, r4, #0
	movs r2, #0
	bl CallARM_FillTileRect
	ldr r0, _080CBEE0  @ gUnknown_08B10CA4
	ldr r1, _080CBEE4  @ 0x06002000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CBEE8  @ gUnknown_08B10ADC
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CBEEC  @ gBG1TilemapBuffer
	movs r2, #0x88
	lsls r2, r2, #5
	adds r1, r4, #0
	bl CallARM_FillTileRect
	movs r4, #0
	str r4, [sp]
	ldr r1, _080CBEF0  @ gPaletteBuffer
	ldr r2, _080CBEF4  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	bl EnablePaletteSync
	movs r0, #3
	bl BG_EnableSyncByMask
	ldrb r0, [r5, #1]
	movs r1, #1
	orrs r0, r1
	mov r1, sl
	ands r0, r1
	mov r1, r9
	ands r0, r1
	mov r1, r8
	ands r0, r1
	ands r0, r6
	strb r0, [r5, #1]
	str r4, [r7, #0x30]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CBECC: .4byte gLCDControlBuffer
_080CBED0: .4byte gUnknown_08B10630
_080CBED4: .4byte gUnknown_08B104D8
_080CBED8: .4byte gUnknown_02020188
_080CBEDC: .4byte gBG0TilemapBuffer
_080CBEE0: .4byte gUnknown_08B10CA4
_080CBEE4: .4byte 0x06002000
_080CBEE8: .4byte gUnknown_08B10ADC
_080CBEEC: .4byte gBG1TilemapBuffer
_080CBEF0: .4byte gPaletteBuffer
_080CBEF4: .4byte 0x01000100

	THUMB_FUNC_END sub_80CBE0C

	THUMB_FUNC_START sub_80CBEF8
sub_80CBEF8: @ 0x080CBEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r7, r3, #0
	lsls r2, r2, #4
	lsls r1, r1, #5
	ldr r0, _080CBF74  @ gPaletteBuffer
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [sp, #0x20]
	cmp r7, r0
	bge _080CBF78
	cmp r2, #0
	ble _080CBF86
	mov r9, r4
	mov sl, r2
_080CBF1E:
	mov r1, r9
	ldrh r4, [r1]
	adds r0, r4, #0
	movs r1, #0x1f
	ands r0, r1
	muls r0, r7, r0
	ldr r1, [sp, #0x20]
	bl __divsi3
	adds r6, r0, #0
	asrs r0, r4, #5
	movs r1, #0x1f
	ands r0, r1
	muls r0, r7, r0
	ldr r1, [sp, #0x20]
	bl __divsi3
	adds r5, r0, #0
	asrs r4, r4, #0xa
	movs r0, #0x1f
	ands r4, r0
	adds r0, r4, #0
	muls r0, r7, r0
	ldr r1, [sp, #0x20]
	bl __divsi3
	lsls r5, r5, #5
	orrs r5, r6
	lsls r0, r0, #0xa
	orrs r0, r5
	mov r1, r8
	strh r0, [r1]
	movs r0, #2
	add r8, r0
	add r9, r0
	movs r1, #1
	negs r1, r1
	add sl, r1
	mov r0, sl
	cmp r0, #0
	bne _080CBF1E
	b _080CBF86
	.align 2, 0
_080CBF74: .4byte gPaletteBuffer
_080CBF78:
	asrs r2, r2, #1
	ldr r0, _080CBF98  @ 0x001FFFFF
	ands r2, r0
	adds r0, r4, #0
	mov r1, r8
	bl CpuFastSet
_080CBF86:
	bl EnablePaletteSync
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CBF98: .4byte 0x001FFFFF

	THUMB_FUNC_END sub_80CBEF8

	THUMB_FUNC_START sub_80CBF9C
sub_80CBF9C: @ 0x080CBF9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080CBFB8  @ gPaletteBuffer
	ldr r1, _080CBFBC  @ gUnknown_02000000
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	movs r0, #4
	str r0, [r4, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CBFB8: .4byte gPaletteBuffer
_080CBFBC: .4byte gUnknown_02000000

	THUMB_FUNC_END sub_80CBF9C

	THUMB_FUNC_START sub_80CBFC0
sub_80CBFC0: @ 0x080CBFC0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [r7, #0x38]
	subs r0, #1
	str r0, [r7, #0x38]
	cmp r0, #0
	ble _080CC044
	movs r6, #0
	ldr r0, _080CC038  @ gPaletteBuffer
	mov r9, r0
	movs r3, #0x1f
	mov r8, r3
	ldr r4, _080CC03C  @ gUnknown_02000000
	mov ip, r4
_080CBFE4:
	lsls r2, r6, #1
	mov r0, ip
	ldrh r3, [r0]
	movs r0, #0x1f
	ands r0, r3
	ldr r1, [r7, #0x38]
	muls r0, r1, r0
	cmp r0, #0
	bge _080CBFF8
	adds r0, #3
_080CBFF8:
	asrs r5, r0, #2
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x15
	mov r4, r8
	ands r0, r4
	muls r0, r1, r0
	cmp r0, #0
	bge _080CC00A
	adds r0, #3
_080CC00A:
	asrs r4, r0, #2
	lsrs r0, r3, #0x1a
	mov r3, r8
	ands r0, r3
	muls r0, r1, r0
	cmp r0, #0
	bge _080CC01A
	adds r0, #3
_080CC01A:
	asrs r1, r0, #2
	add r2, r9
	lsls r0, r4, #5
	orrs r0, r5
	lsls r1, r1, #0xa
	orrs r0, r1
	strh r0, [r2]
	movs r4, #2
	add ip, r4
	adds r6, #1
	ldr r0, _080CC040  @ 0x000001FF
	cmp r6, r0
	ble _080CBFE4
	b _080CC058
	.align 2, 0
_080CC038: .4byte gPaletteBuffer
_080CC03C: .4byte gUnknown_02000000
_080CC040: .4byte 0x000001FF
_080CC044:
	movs r0, #0
	str r0, [sp]
	ldr r1, _080CC06C  @ gPaletteBuffer
	ldr r2, _080CC070  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	adds r0, r7, #0
	bl Proc_Break
_080CC058:
	bl EnablePaletteSync
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CC06C: .4byte gPaletteBuffer
_080CC070: .4byte 0x01000100

	THUMB_FUNC_END sub_80CBFC0

	THUMB_FUNC_START sub_80CC074
sub_80CC074: @ 0x080CC074
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	subs r0, #1
	str r0, [r4, #0x34]
	cmp r0, #0
	bgt _080CC08C
	movs r0, #0
	str r0, [r4, #0x30]
	adds r0, r4, #0
	bl Proc_Break
_080CC08C:
	adds r0, r4, #0
	bl sub_80CBDD8
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80CC074

	THUMB_FUNC_START sub_80CC098
sub_80CC098: @ 0x080CC098
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _080CC0C0
	ldr r2, _080CC0F4  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
_080CC0C0:
	ldr r3, [r4, #0x30]
	adds r3, #1
	str r3, [r4, #0x30]
	ldr r0, _080CC0F8  @ gUnknown_08B10ABC
	movs r1, #0x1e
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	bl sub_80CBEF8
	ldr r0, [r4, #0x30]
	cmp r0, #0x1d
	ble _080CC0E4
	movs r0, #0x3c
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080CC0E4:
	adds r0, r4, #0
	bl sub_80CBDD8
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC0F4: .4byte gLCDControlBuffer
_080CC0F8: .4byte gUnknown_08B10ABC

	THUMB_FUNC_END sub_80CC098

	THUMB_FUNC_START sub_80CC0FC
sub_80CC0FC: @ 0x080CC0FC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x30]
	adds r3, #1
	str r3, [r4, #0x30]
	ldr r0, _080CC138  @ gUnknown_08B10ABC
	movs r1, #0x1e
	subs r3, r1, r3
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	bl sub_80CBEF8
	ldr r0, [r4, #0x30]
	cmp r0, #0x1d
	ble _080CC128
	movs r0, #0x28
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080CC128:
	adds r0, r4, #0
	bl sub_80CBDD8
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC138: .4byte gUnknown_08B10ABC

	THUMB_FUNC_END sub_80CC0FC

	THUMB_FUNC_START sub_80CC13C
sub_80CC13C: @ 0x080CC13C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _080CC166
	ldr r2, _080CC198  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
_080CC166:
	ldr r3, [r4, #0x30]
	adds r3, #1
	str r3, [r4, #0x30]
	ldr r0, _080CC19C  @ gUnknown_08B11864
	movs r1, #0x1e
	str r1, [sp]
	movs r1, #1
	movs r2, #3
	bl sub_80CBEF8
	ldr r0, [r4, #0x30]
	cmp r0, #0x1d
	ble _080CC18A
	movs r0, #0x3c
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080CC18A:
	adds r0, r4, #0
	bl sub_80CBDD8
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC198: .4byte gLCDControlBuffer
_080CC19C: .4byte gUnknown_08B11864

	THUMB_FUNC_END sub_80CC13C

	THUMB_FUNC_START sub_80CC1A0
sub_80CC1A0: @ 0x080CC1A0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x30]
	adds r3, #1
	str r3, [r4, #0x30]
	ldr r0, _080CC1DC  @ gUnknown_08B11864
	movs r1, #0x28
	subs r3, r1, r3
	str r1, [sp]
	movs r1, #1
	movs r2, #3
	bl sub_80CBEF8
	ldr r0, [r4, #0x30]
	cmp r0, #0x27
	ble _080CC1CC
	movs r0, #0x3c
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080CC1CC:
	adds r0, r4, #0
	bl sub_80CBDD8
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC1DC: .4byte gUnknown_08B11864

	THUMB_FUNC_END sub_80CC1A0

	THUMB_FUNC_START sub_80CC1E0
sub_80CC1E0: @ 0x080CC1E0
	movs r1, #0
	str r1, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80CC1E0

	THUMB_FUNC_START sub_80CC1E8
sub_80CC1E8: @ 0x080CC1E8
	movs r1, #1
	str r1, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80CC1E8

	THUMB_FUNC_START sub_80CC1F0
sub_80CC1F0: @ 0x080CC1F0
	movs r1, #2
	str r1, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80CC1F0

	THUMB_FUNC_START PrepareHealthAndSafetyScreen
PrepareHealthAndSafetyScreen: @ 0x080CC1F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	bl ShouldSkipHSScreen
	cmp r0, #1
	bne _080CC21C
	ldr r1, _080CC218  @ 0x000003E7
	adds r0, r7, #0
	bl Proc_Goto
	b _080CC2BA
	.align 2, 0
_080CC218: .4byte 0x000003E7
_080CC21C:
	movs r0, #1
	bl Sound_FadeOutBGM
	movs r0, #0
	bl SetupBackgrounds
	movs r0, #0
	bl SetPrimaryHBlankHandler
	ldr r6, _080CC2CC  @ gLCDControlBuffer
	ldrb r1, [r6, #1]
	movs r4, #2
	negs r4, r4
	adds r0, r4, #0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	mov sl, r1
	ands r0, r1
	subs r1, #4
	mov r9, r1
	ands r0, r1
	subs r1, #8
	mov r8, r1
	ands r0, r1
	strb r0, [r6, #1]
	ldr r0, _080CC2D0  @ gUnknown_08B11D0C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CC2D4  @ gUnknown_08B118C4
	ldr r5, _080CC2D8  @ gUnknown_02020188
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CC2DC  @ gBG1TilemapBuffer
	adds r1, r5, #0
	movs r2, #0
	bl CallARM_FillTileRect
	ldr r0, _080CC2E0  @ gUnknown_08B11C0C
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080CC2E4  @ gBG0TilemapBuffer
	adds r1, r5, #0
	movs r2, #0
	bl CallARM_FillTileRect
	movs r5, #0
	str r5, [sp]
	ldr r1, _080CC2E8  @ gPaletteBuffer
	ldr r2, _080CC2EC  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	bl EnablePaletteSync
	movs r0, #3
	bl BG_EnableSyncByMask
	ldrb r0, [r6, #1]
	ands r4, r0
	movs r0, #2
	orrs r4, r0
	mov r0, sl
	ands r4, r0
	mov r1, r9
	ands r4, r1
	mov r0, r8
	ands r4, r0
	strb r4, [r6, #1]
	str r5, [r7, #0x30]
	ldr r0, _080CC2F0  @ 0x000003FF
	bl SetKeyStatus_IgnoreMask
_080CC2BA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080CC2CC: .4byte gLCDControlBuffer
_080CC2D0: .4byte gUnknown_08B11D0C
_080CC2D4: .4byte gUnknown_08B118C4
_080CC2D8: .4byte gUnknown_02020188
_080CC2DC: .4byte gBG1TilemapBuffer
_080CC2E0: .4byte gUnknown_08B11C0C
_080CC2E4: .4byte gBG0TilemapBuffer
_080CC2E8: .4byte gPaletteBuffer
_080CC2EC: .4byte 0x01000100
_080CC2F0: .4byte 0x000003FF

	THUMB_FUNC_END PrepareHealthAndSafetyScreen

	THUMB_FUNC_START sub_80CC2F4
sub_80CC2F4: @ 0x080CC2F4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x30]
	adds r3, #1
	str r3, [r4, #0x30]
	ldr r0, _080CC328  @ gUnknown_08B125F4
	movs r1, #0x1e
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	bl sub_80CBEF8
	ldr r0, [r4, #0x30]
	cmp r0, #0x1d
	ble _080CC31E
	movs r0, #0x5a
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080CC31E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC328: .4byte gUnknown_08B125F4

	THUMB_FUNC_END sub_80CC2F4

	THUMB_FUNC_START sub_80CC32C
sub_80CC32C: @ 0x080CC32C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, [r5, #0x30]
	cmp r3, #0
	bne _080CC368
	ldr r2, _080CC39C  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	str r3, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #0
	bl SetKeyStatus_IgnoreMask
_080CC368:
	ldr r2, [r5, #0x30]
	adds r1, r2, #1
	str r1, [r5, #0x30]
	adds r0, r1, #0
	cmp r1, #0
	bge _080CC378
	adds r0, r2, #0
	adds r0, #0x40
_080CC378:
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r1, #0
	blt _080CC3A0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl SetSpecialColorEffectsParameters
	b _080CC3B0
	.align 2, 0
_080CC39C: .4byte gLCDControlBuffer
_080CC3A0:
	negs r3, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl SetSpecialColorEffectsParameters
_080CC3B0:
	ldr r1, [r5, #0x30]
	ldr r0, _080CC420  @ 0x00000E0F
	cmp r1, r0
	bgt _080CC3C6
	ldr r0, _080CC424  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	ldr r0, _080CC428  @ 0x000003FF
	ands r0, r1
	cmp r0, #0
	beq _080CC416
_080CC3C6:
	movs r4, #0
	str r4, [r5, #0x30]
	ldr r2, _080CC42C  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetB
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r5, #0
	bl Proc_Break
_080CC416:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080CC420: .4byte 0x00000E0F
_080CC424: .4byte gKeyStatusPtr
_080CC428: .4byte 0x000003FF
_080CC42C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80CC32C

	THUMB_FUNC_START sub_80CC430
sub_80CC430: @ 0x080CC430
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x30]
	adds r3, #1
	str r3, [r4, #0x30]
	ldr r0, _080CC464  @ gUnknown_08B125F4
	movs r1, #0x1e
	subs r3, r1, r3
	str r1, [sp]
	movs r1, #0
	movs r2, #1
	bl sub_80CBEF8
	ldr r0, [r4, #0x30]
	cmp r0, #0x1d
	ble _080CC45C
	movs r0, #0x28
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080CC45C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080CC464: .4byte gUnknown_08B125F4

	THUMB_FUNC_END sub_80CC430

.align 2, 0