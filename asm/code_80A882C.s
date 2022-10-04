	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	THUMB_FUNC_START sub_80A882C
sub_80A882C: @ 0x080A882C
	push {lr}
	movs r1, #0x12
	bl Proc_Goto
	movs r0, #0xc0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl ISuspectThisToBeMusicRelated_8002730
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A882C

	THUMB_FUNC_START sub_80A8844
sub_80A8844: @ 0x080A8844
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	movs r2, #0
	movs r1, #1
_080A8852:
	adds r0, r4, #0
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080A886C
	cmp r5, r3
	bne _080A886A
	adds r0, r1, #0
	lsls r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080A8874
_080A886A:
	adds r3, #1
_080A886C:
	adds r2, #1
	cmp r2, #7
	ble _080A8852
	movs r0, #0xff
_080A8874:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80A8844

	THUMB_FUNC_START sub_80A887C
sub_80A887C: @ 0x080A887C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r3, #0
	movs r2, #0
	movs r1, #1
_080A888C:
	adds r0, r5, #0
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080A88A8
	adds r0, r4, #0
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080A88A6
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	b _080A88B0
_080A88A6:
	adds r3, #1
_080A88A8:
	adds r2, #1
	cmp r2, #7
	ble _080A888C
	movs r0, #0xff
_080A88B0:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80A887C

	THUMB_FUNC_START sub_80A88B8
sub_80A88B8: @ 0x080A88B8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r1, #0
	movs r3, #1
_080A88C2:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080A88D2
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	b _080A88DA
_080A88D2:
	adds r1, #1
	cmp r1, #7
	ble _080A88C2
	movs r0, #0xff
_080A88DA:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80A88B8

	THUMB_FUNC_START sub_80A88E0
sub_80A88E0: @ 0x080A88E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A88F6
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	cmp r1, #0
	bne _080A8904
_080A88F6:
	bl CloseHelpBox
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	b _080A8940
_080A8904:
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	cmp r1, #0x10
	beq _080A891C
	cmp r1, #0x10
	bgt _080A8918
	cmp r1, #2
	beq _080A891C
	b _080A8940
_080A8918:
	cmp r1, #0x20
	bne _080A8940
_080A891C:
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8940
	adds r4, #0x3e
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A8940
	ldr r0, _080A8948  @ 0x06014000
	movs r1, #9
	bl LoadDialogueBoxGfx
	ldr r2, _080A894C  @ 0x00000882
	movs r0, #0x30
	movs r1, #0x30
	bl StartHelpBoxExt_Unk
	movs r0, #1
	strb r0, [r4]
_080A8940:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8948: .4byte 0x06014000
_080A894C: .4byte 0x00000882

	THUMB_FUNC_END sub_80A88E0

	THUMB_FUNC_START sub_80A8950
sub_80A8950: @ 0x080A8950
	push {r4, r5, r6, r7, lr}
	sub sp, #0x168
	adds r4, r0, #0
	bl sub_80A5218
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8964
	movs r0, #0
	b _080A89DA
_080A8964:
	adds r0, r4, #0
	mov r1, sp
	bl sub_80A522C
	mov r0, sp
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	blt _080A897C
	cmp r0, #2
	ble _080A897C
	cmp r0, #3
	beq _080A8980
_080A897C:
	movs r6, #1
	b _080A8982
_080A8980:
	movs r6, #0xf
_080A8982:
	adds r0, r4, #0
	bl CheckSaveAndGetPointer
	adds r7, r0, #0
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x4c
	b _080A8996
_080A8992:
	adds r4, #0x24
	adds r5, #1
_080A8996:
	cmp r5, #0x32
	bgt _080A89D4
	adds r0, r4, #0
	add r1, sp, #0x4c
	bl LoadSavedUnit
	ldr r0, [sp, #0x4c]
	add r1, sp, #0x4c
	cmp r0, #0
	beq _080A8992
	ldrb r0, [r0, #4]
	cmp r0, r6
	bne _080A8992
	ldr r4, _080A89CC  @ gUnknown_0203EF64
	strb r6, [r4]
	ldrb r0, [r1, #8]
	strb r0, [r4, #1]
	ldr r1, _080A89D0  @ 0x00000D8C
	adds r0, r7, r1
	add r5, sp, #0x94
	adds r1, r5, #0
	bl sub_80A7138
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #2]
	b _080A89D8
	.align 2, 0
_080A89CC: .4byte gUnknown_0203EF64
_080A89D0: .4byte 0x00000D8C
_080A89D4:
	bl sub_80AA700
_080A89D8:
	movs r0, #2
_080A89DA:
	add sp, #0x168
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80A8950

	THUMB_FUNC_START sub_80A89E4
sub_80A89E4: @ 0x080A89E4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #8
	adds r5, r6, #0
	adds r5, #0x40
	ldrb r0, [r5]
	cmp r0, #8
	bne _080A8A14
	ldr r0, _080A8A10  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0xf9
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A8A70
	bl CloseHelpBox
	movs r0, #7
	strb r0, [r5]
	b _080A8A70
	.align 2, 0
_080A8A10: .4byte gKeyStatusPtr
_080A8A14:
	ldr r0, _080A8A48  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A8A70
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	bl sub_80A8950
	cmp r0, #0
	bne _080A8A50
	ldr r0, _080A8A4C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A8A70
	movs r0, #0x6c
	bl m4aSongNumStart
	b _080A8A70
	.align 2, 0
_080A8A48: .4byte gKeyStatusPtr
_080A8A4C: .4byte gRAMChapterData
_080A8A50:
	cmp r0, #0
	blt _080A8A70
	cmp r0, #2
	bgt _080A8A70
	ldr r0, _080A8A8C  @ 0x06014000
	movs r1, #9
	bl LoadDialogueBoxGfx
	ldrb r1, [r4]
	lsls r1, r1, #5
	adds r1, #0x2c
	ldr r2, _080A8A90  @ 0x0000FFFE
	movs r0, #0x50
	bl StartItemHelpBox
	strb r7, [r5]
_080A8A70:
	adds r1, r6, #0
	adds r1, #0x40
	ldrb r0, [r1]
	cmp r0, #0
	beq _080A8A88
	cmp r0, r7
	bge _080A8A82
	subs r0, #1
	strb r0, [r1]
_080A8A82:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A8A94
_080A8A88:
	movs r0, #0
	b _080A8A96
	.align 2, 0
_080A8A8C: .4byte 0x06014000
_080A8A90: .4byte 0x0000FFFE
_080A8A94:
	movs r0, #1
_080A8A96:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80A89E4

	THUMB_FUNC_START sub_80A8A9C
sub_80A8A9C: @ 0x080A8A9C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0xac
	lsls r0, r0, #4
	bl sub_8089678
	movs r4, #0
	ldr r6, _080A8ACC  @ 0x0001FFFF
	movs r5, #0xb4
	lsls r5, r5, #9
_080A8AB0:
	adds r0, r7, #0
	adds r0, #0x37
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080A8AD0
	adds r0, r5, #0
	ands r0, r6
	lsrs r0, r0, #5
	ldrb r1, [r1]
	bl sub_8089624
	b _080A8ADE
	.align 2, 0
_080A8ACC: .4byte 0x0001FFFF
_080A8AD0:
	adds r0, r5, #0
	ands r0, r6
	lsrs r0, r0, #5
	movs r1, #1
	negs r1, r1
	bl sub_8089624
_080A8ADE:
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #2
	ble _080A8AB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A8A9C

	THUMB_FUNC_START sub_80A8AF0
sub_80A8AF0: @ 0x080A8AF0
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _080A8B2C  @ gRAMChapterData
	ldrb r1, [r5, #0x14]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A8B7E
	movs r4, #0xe
	ldrsb r4, [r5, r4]
	ldr r2, _080A8B30  @ gUnknown_03005280
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _080A8B34
	cmp r4, #1
	bls _080A8B7E
	cmp r4, #0x38
	beq _080A8B7E
	adds r0, r2, #0
	bl sub_80BD014
	cmp r0, #0
	bge _080A8B24
	movs r0, #0
_080A8B24:
	bl WMLoc_GetChapterId
	strb r0, [r5, #0xe]
	b _080A8B7E
	.align 2, 0
_080A8B2C: .4byte gRAMChapterData
_080A8B30: .4byte gUnknown_03005280
_080A8B34:
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	cmp r0, #6
	bne _080A8B4E
	movs r0, #0x88
	bl CheckEventId
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A8B4E
	movs r0, #0x38
	strb r0, [r5, #0xe]
	b _080A8B7E
_080A8B4E:
	cmp r4, #1
	beq _080A8B7E
	cmp r4, #0xa
	beq _080A8B7E
	cmp r4, #0x17
	beq _080A8B7E
	ldr r4, _080A8C18  @ gRAMChapterData
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #4
	beq _080A8B7E
	ldr r0, _080A8C1C  @ gGameState
	ldrb r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080A8B7E
	ldr r0, _080A8C20  @ gUnknown_03005280
	bl sub_80BD224
	strb r0, [r4, #0xe]
_080A8B7E:
	bl sub_80AA700
	ldr r0, _080A8C24  @ gUnknown_08A20050
	bl SetupBackgrounds
	ldr r3, _080A8C28  @ gLCDControlBuffer
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
	ldrb r1, [r3]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
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
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C18: .4byte gRAMChapterData
_080A8C1C: .4byte gGameState
_080A8C20: .4byte gUnknown_03005280
_080A8C24: .4byte gUnknown_08A20050
_080A8C28: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80A8AF0

	THUMB_FUNC_START sub_80A8C2C
sub_80A8C2C: @ 0x080A8C2C
	push {r4, lr}
	sub sp, #4
	bl sub_80AA700
	ldr r0, _080A8CCC  @ gUnknown_08A20050
	bl SetupBackgrounds
	ldr r3, _080A8CD0  @ gLCDControlBuffer
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
	ldrb r1, [r3]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
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
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8CCC: .4byte gUnknown_08A20050
_080A8CD0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80A8C2C

	THUMB_FUNC_START sub_80A8CD4
sub_80A8CD4: @ 0x080A8CD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	bl sub_8003D20
	bl LoadUiFrameGraphics
	bl LoadObjUIGfx
	ldr r0, _080A8EB0  @ gUnknown_08A25DCC
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	adds r2, r6, #0
	bl CopyToPaletteBuffer
	ldr r4, _080A8EB4  @ gUnknown_08A21658
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080A8EB8  @ gBG3TilemapBuffer
	ldr r1, _080A8EBC  @ gUnknown_08A25ECC
	movs r2, #0x80
	lsls r2, r2, #8
	bl CallARM_FillTileRect
	ldr r0, _080A8EC0  @ gUnknown_08A268D8
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080A8EC4  @ gUnknown_08A26380
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r2, _080A8EC8  @ 0x06004C00
	adds r1, r1, r2
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080A8ECC  @ gUnknown_08A268F8
	ldr r4, _080A8ED0  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080A8ED4  @ gBG2TilemapBuffer
	ldr r2, _080A8ED8  @ 0x00007260
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r0, _080A8EDC  @ gUnknown_08A26A74
	ldr r1, _080A8EE0  @ 0x06010800
	bl CopyDataWithPossibleUncomp
	ldr r0, _080A8EE4  @ gUnknown_08A27F68
	movs r1, #0x90
	lsls r1, r1, #2
	adds r2, r6, #0
	bl CopyToPaletteBuffer
	ldr r0, _080A8EE8  @ gUnknown_08A295B4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080A8EEC  @ gUnknown_02022AE8
	adds r1, r0, #0
	subs r1, #0x20
	movs r2, #1
	bl sub_80AA790
	ldr r0, _080A8EF0  @ gUnknown_08A2C23C
	ldr r1, _080A8EF4  @ gUnknown_020007A0
	movs r2, #2
	bl sub_80AA790
	movs r0, #0xf
	bl BG_EnableSyncByMask
	mov r0, r8
	adds r0, #0x29
	movs r4, #0
	strb r4, [r0]
	ldr r1, _080A8EF8  @ gLCDControlBuffer
	adds r2, r1, #0
	adds r2, #0x34
	ldrb r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2]
	adds r1, #0x35
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x36
	strb r4, [r0]
	mov r1, r8
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x3d
	strb r4, [r0]
	movs r7, #0
	ldr r0, _080A8EFC  @ gSinLookup
	mov r9, r0
	movs r1, #0x80
	add r1, r9
	mov sl, r1
	adds r5, r6, #0
_080A8DCA:
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	adds r1, r5, #0
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	adds r1, r5, #0
	bl Div
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	str r0, [sp, #8]
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r5, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	ldr r2, [sp, #8]
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	adds r7, #1
	cmp r7, #3
	ble _080A8DCA
	mov r1, r8
	adds r1, #0x44
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #5
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x3e
	strb r2, [r0]
	adds r0, #2
	strb r2, [r0]
	movs r7, #0
	mov r4, r8
	adds r4, #0x2c
_080A8E50:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	bl sub_80ABC14
	adds r7, #1
	cmp r7, #3
	ble _080A8E50
	ldrb r0, [r4]
	bl sub_80ABD88
	bl sub_80AB794
	movs r0, #2
	bl BG_EnableSyncByMask
	ldr r2, _080A8EF8  @ gLCDControlBuffer
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
	ldr r1, _080A8F00  @ gPaletteBuffer
	movs r0, #0
	strh r0, [r1]
	bl EnablePaletteSync
	mov r0, r8
	bl sub_80A8A9C
	mov r0, r8
	bl New6C_savedraw
	mov r1, r8
	str r0, [r1, #0x58]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8EB0: .4byte gUnknown_08A25DCC
_080A8EB4: .4byte gUnknown_08A21658
_080A8EB8: .4byte gBG3TilemapBuffer
_080A8EBC: .4byte gUnknown_08A25ECC
_080A8EC0: .4byte gUnknown_08A268D8
_080A8EC4: .4byte gUnknown_08A26380
_080A8EC8: .4byte 0x06004C00
_080A8ECC: .4byte gUnknown_08A268F8
_080A8ED0: .4byte gUnknown_02020188
_080A8ED4: .4byte gBG2TilemapBuffer
_080A8ED8: .4byte 0x00007260
_080A8EDC: .4byte gUnknown_08A26A74
_080A8EE0: .4byte 0x06010800
_080A8EE4: .4byte gUnknown_08A27F68
_080A8EE8: .4byte gUnknown_08A295B4
_080A8EEC: .4byte gUnknown_02022AE8
_080A8EF0: .4byte gUnknown_08A2C23C
_080A8EF4: .4byte gUnknown_020007A0
_080A8EF8: .4byte gLCDControlBuffer
_080A8EFC: .4byte gSinLookup
_080A8F00: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80A8CD4

	THUMB_FUNC_START sub_80A8F04
sub_80A8F04: @ 0x080A8F04
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080A8F34  @ gUnknown_08A2812C
	ldr r1, _080A8F38  @ 0x06014000
	bl CopyDataWithPossibleUncomp
	adds r0, r5, #0
	bl sub_80AB89C
	adds r6, r5, #0
	adds r6, #0x42
	ldrh r0, [r6]
	cmp r0, #0x20
	bne _080A8F3C
	movs r0, #0x20
	adds r1, r5, #0
	bl sub_80ABF44
	adds r1, r5, #0
	adds r1, #0x2b
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x2e
	b _080A8F6A
	.align 2, 0
_080A8F34: .4byte gUnknown_08A2812C
_080A8F38: .4byte 0x06014000
_080A8F3C:
	adds r4, r5, #0
	adds r4, #0x2e
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x2b
	strb r1, [r2]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	subs r0, #0x16
	ldrb r0, [r0]
	ldrb r1, [r2]
	bl sub_80A8844
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r6]
_080A8F6A:
	ldrb r0, [r4]
	cmp r0, #2
	bne _080A8F78
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080A8F78:
	ldrb r0, [r4]
	cmp r0, #5
	bne _080A8F86
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0xdc
	strb r0, [r1]
_080A8F86:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A8F04

	THUMB_FUNC_START sub_80A8F8C
sub_80A8F8C: @ 0x080A8F8C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r4, #0
	movs r0, #5
	strb r0, [r1]
	bl sub_80A4DA0
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2b
	strb r4, [r0]
	adds r0, #9
	strb r4, [r0]
	adds r0, #0x12
	movs r2, #0
	strh r4, [r0]
	subs r0, #0x16
	movs r1, #0x40
	strb r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	subs r0, #0x11
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0xdc
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A8F8C

	THUMB_FUNC_START sub_80A8FD0
sub_80A8FD0: @ 0x080A8FD0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r4, #0
	movs r0, #5
	strb r0, [r1]
	bl sub_80A4DA0
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2b
	strb r4, [r0]
	adds r0, #9
	strb r4, [r0]
	adds r0, #0x12
	movs r2, #0
	strh r4, [r0]
	subs r0, #0x16
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #0x12
	strh r1, [r0]
	subs r0, #0x11
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0xdc
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A8FD0

	THUMB_FUNC_START sub_80A9014
sub_80A9014: @ 0x080A9014
	push {lr}
	adds r1, r0, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	bl Proc_Goto
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9014

	THUMB_FUNC_START Loop6C_savemenu
Loop6C_savemenu: @ 0x080A9024
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080A9054  @ gKeyStatusPtr
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080A906C
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A9058
	subs r0, #1
	b _080A908A
	.align 2, 0
_080A9054: .4byte gKeyStatusPtr
_080A9058:
	ldrh r1, [r3, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A90C2
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	subs r0, #1
	b _080A908A
_080A906C:
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A90C2
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	subs r0, #1
	cmp r1, r0
	bge _080A90A4
	adds r0, r1, #1
_080A908A:
	strb r0, [r2]
	ldr r0, _080A90A0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A90C2
	movs r0, #0x66
	bl m4aSongNumStart
	b _080A90C2
	.align 2, 0
_080A90A0: .4byte gRAMChapterData
_080A90A4:
	ldrh r1, [r3, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A90C2
	strb r4, [r2]
	ldr r0, _080A911C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A90C2
	movs r0, #0x66
	bl m4aSongNumStart
_080A90C2:
	ldr r0, _080A9120  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A90D2
	b _080A921A
_080A90D2:
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	bl sub_80A8844
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x42
	strh r0, [r4]
	ldr r0, _080A911C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A90FE
	movs r0, #0x6a
	bl m4aSongNumStart
_080A90FE:
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4]
	subs r0, #1
	cmp r0, #0x1f
	bls _080A9110
	b _080A9246
_080A9110:
	lsls r0, r0, #2
	ldr r1, _080A9124  @ _080A9128
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A911C: .4byte gRAMChapterData
_080A9120: .4byte gKeyStatusPtr
_080A9124: .4byte _080A9128
_080A9128: @ jump table
	.4byte _080A91A8 @ case 0
	.4byte _080A91B4 @ case 1
	.4byte _080A9246 @ case 2
	.4byte _080A91B4 @ case 3
	.4byte _080A9246 @ case 4
	.4byte _080A9246 @ case 5
	.4byte _080A9246 @ case 6
	.4byte _080A91B4 @ case 7
	.4byte _080A9246 @ case 8
	.4byte _080A9246 @ case 9
	.4byte _080A9246 @ case 10
	.4byte _080A9246 @ case 11
	.4byte _080A9246 @ case 12
	.4byte _080A9246 @ case 13
	.4byte _080A9246 @ case 14
	.4byte _080A91D4 @ case 15
	.4byte _080A9246 @ case 16
	.4byte _080A9246 @ case 17
	.4byte _080A9246 @ case 18
	.4byte _080A9246 @ case 19
	.4byte _080A9246 @ case 20
	.4byte _080A9246 @ case 21
	.4byte _080A9246 @ case 22
	.4byte _080A9246 @ case 23
	.4byte _080A9246 @ case 24
	.4byte _080A9246 @ case 25
	.4byte _080A9246 @ case 26
	.4byte _080A9246 @ case 27
	.4byte _080A9246 @ case 28
	.4byte _080A9246 @ case 29
	.4byte _080A9246 @ case 30
	.4byte _080A91FC @ case 31
_080A91A8:
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r0]
	subs r0, #0x13
	strb r1, [r0]
	b _080A91CA
_080A91B4:
	bl sub_80A4DA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	movs r2, #1
	bl sub_80AB98C
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
_080A91CA:
	adds r0, r5, #0
	movs r1, #3
	bl Proc_Goto
	b _080A9246
_080A91D4:
	adds r4, r5, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	movs r1, #0
	movs r2, #1
	bl sub_80AB98C
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl Proc_Goto
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xc0
	movs r2, #0x10
	movs r3, #0
	bl ISuspectThisToBeMusicRelated_8002730
	b _080A9246
_080A91FC:
	adds r2, r5, #0
	adds r2, #0x34
	adds r1, r5, #0
	adds r1, #0x33
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _080A9210
	movs r0, #0
	strb r0, [r2]
_080A9210:
	adds r0, r5, #0
	movs r1, #8
	bl Proc_Goto
	b _080A9246
_080A921A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A9246
	ldr r0, _080A924C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9234
	movs r0, #0x6b
	bl m4aSongNumStart
_080A9234:
	adds r0, r5, #0
	movs r1, #0x12
	bl Proc_Goto
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_080A9246:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A924C: .4byte gRAMChapterData

	THUMB_FUNC_END Loop6C_savemenu

	THUMB_FUNC_START sub_80A9250
sub_80A9250: @ 0x080A9250
	push {lr}
	adds r2, r0, #0
	adds r2, #0x2a
	ldrb r2, [r2]
	cmp r2, #1
	beq _080A9272
	cmp r2, #1
	bgt _080A9266
	cmp r2, #0
	beq _080A926C
	b _080A927C
_080A9266:
	cmp r2, #2
	beq _080A9278
	b _080A927C
_080A926C:
	movs r3, #0
	movs r1, #0
	b _080A927C
_080A9272:
	movs r3, #1
	movs r1, #0
	b _080A927C
_080A9278:
	movs r3, #1
	movs r1, #1
_080A927C:
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	movs r2, #1
	bl sub_80A4E70
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9250

	THUMB_FUNC_START sub_80A9290
sub_80A9290: @ 0x080A9290
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x36
	ldrb r1, [r5]
	cmp r1, #0
	bne _080A933C
	ldr r0, _080A92C8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A92B0
	movs r0, #0x6a
	bl m4aSongNumStart
_080A92B0:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #8
	beq _080A9312
	cmp r0, #8
	bgt _080A92CC
	cmp r0, #2
	beq _080A9324
	cmp r0, #4
	beq _080A92E0
	b _080A9334
	.align 2, 0
_080A92C8: .4byte gRAMChapterData
_080A92CC:
	cmp r0, #0x20
	beq _080A9324
	cmp r0, #0x20
	bgt _080A92DA
	cmp r0, #0x10
	beq _080A9324
	b _080A9334
_080A92DA:
	cmp r0, #0x40
	beq _080A9316
	b _080A9334
_080A92E0:
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080A92FC
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_80AB9FC
	b _080A9488
_080A92FC:
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	bl sub_80A4E08
	adds r0, r4, #0
	movs r1, #6
	bl Proc_Goto
	b _080A9488
_080A9312:
	movs r0, #2
	b _080A9318
_080A9316:
	movs r0, #1
_080A9318:
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_80AB83C
	b _080A9334
_080A9324:
	adds r1, r4, #0
	adds r1, #0x36
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_80AB83C
_080A9334:
	adds r0, r4, #0
	bl sub_80A88E0
	b _080A9488
_080A933C:
	adds r5, r4, #0
	adds r5, #0x42
	ldrh r0, [r5]
	cmp r0, #0x10
	beq _080A93D0
	cmp r0, #0x10
	bgt _080A9354
	cmp r0, #2
	beq _080A93A4
	cmp r0, #8
	beq _080A93DC
	b _080A947A
_080A9354:
	cmp r0, #0x20
	beq _080A935E
	cmp r0, #0x40
	beq _080A9424
	b _080A947A
_080A935E:
	cmp r1, #1
	bne _080A940C
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl LoadGame
	ldr r0, _080A93A0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9386
	movs r0, #0x6a
	bl m4aSongNumStart
_080A9386:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _080A93C2
	cmp r0, #0x20
	bne _080A947A
	adds r0, r4, #0
	movs r1, #0xe
	bl Proc_Goto
	b _080A947A
	.align 2, 0
_080A93A0: .4byte gRAMChapterData
_080A93A4:
	cmp r1, #1
	bne _080A940C
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0xf0
	strh r0, [r1]
	ldr r0, _080A93CC  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A93C2
	movs r0, #0x6a
	bl m4aSongNumStart
_080A93C2:
	adds r0, r4, #0
	bl sub_80A882C
	b _080A947A
	.align 2, 0
_080A93CC: .4byte gRAMChapterData
_080A93D0:
	cmp r1, #1
	bne _080A940C
	adds r0, r4, #0
	bl sub_80A9250
	b _080A9432
_080A93DC:
	cmp r1, #1
	bne _080A940C
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl sub_80A4DC8
	adds r0, r4, #0
	movs r1, #6
	bl Proc_Goto
	ldr r0, _080A9408  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A947A
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080A947A
	.align 2, 0
_080A9408: .4byte gRAMChapterData
_080A940C:
	ldr r0, _080A9420  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A947A
	movs r0, #0x6b
	bl m4aSongNumStart
	b _080A947A
	.align 2, 0
_080A9420: .4byte gRAMChapterData
_080A9424:
	cmp r1, #1
	bne _080A9454
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl SaveGame
_080A9432:
	adds r0, r4, #0
	movs r1, #6
	bl Proc_Goto
	ldr r0, _080A9450  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A947A
	movs r0, #0x60
	bl m4aSongNumStart
	b _080A947A
	.align 2, 0
_080A9450: .4byte gRAMChapterData
_080A9454:
	adds r0, r4, #0
	movs r1, #0x11
	bl Proc_Goto
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldr r0, _080A9490  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A947A
	movs r0, #0x6b
	bl m4aSongNumStart
_080A947A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80AB83C
	adds r0, r4, #0
	bl sub_80A88E0
_080A9488:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9490: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80A9290

	THUMB_FUNC_START sub_80A9494
sub_80A9494: @ 0x080A9494
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #5
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_80A89E4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A94AE
	b _080A96C8
_080A94AE:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080A9504
	ldr r0, _080A94D0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A94D4
	movs r1, #1
	negs r1, r1
	adds r0, r5, #0
	b _080A94E0
	.align 2, 0
_080A94D0: .4byte gKeyStatusPtr
_080A94D4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9564
	adds r0, r5, #0
	movs r1, #1
_080A94E0:
	bl sub_80AB9FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A9564
	ldr r0, _080A9500  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9564
	movs r0, #0x66
	bl m4aSongNumStart
	b _080A9564
	.align 2, 0
_080A9500: .4byte gRAMChapterData
_080A9504:
	ldr r0, _080A9534  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r2, [r0, #8]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080A953C
	cmp r1, #1
	beq _080A9564
	movs r0, #1
	strb r0, [r4]
	ldr r0, _080A9538  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A952C
	movs r0, #0x67
	bl m4aSongNumStart
_080A952C:
	adds r0, r5, #0
	bl sub_80A88E0
	b _080A9564
	.align 2, 0
_080A9534: .4byte gKeyStatusPtr
_080A9538: .4byte gRAMChapterData
_080A953C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080A9564
	cmp r1, #2
	beq _080A9564
	movs r0, #2
	strb r0, [r4]
	ldr r0, _080A9598  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A955E
	movs r0, #0x67
	bl m4aSongNumStart
_080A955E:
	adds r0, r5, #0
	bl sub_80A88E0
_080A9564:
	ldr r0, _080A959C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r2, [r0, #8]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _080A9648
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #8
	beq _080A9614
	cmp r0, #8
	bgt _080A95A6
	cmp r0, #2
	beq _080A95BA
	cmp r0, #2
	bgt _080A95A0
	cmp r0, #1
	beq _080A95D8
	b _080A96C8
	.align 2, 0
_080A9598: .4byte gRAMChapterData
_080A959C: .4byte gKeyStatusPtr
_080A95A0:
	cmp r0, #4
	beq _080A9614
	b _080A96C8
_080A95A6:
	cmp r0, #0x40
	beq _080A9614
	cmp r0, #0x40
	bgt _080A95B4
	cmp r0, #0x10
	beq _080A95F8
	b _080A96C8
_080A95B4:
	cmp r0, #0x80
	beq _080A95C6
	b _080A96C8
_080A95BA:
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080A9614
	b _080A95D8
_080A95C6:
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A95D8
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xf0
	strh r0, [r1]
_080A95D8:
	ldr r0, _080A95F4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A95EA
	movs r0, #0x6a
	bl m4aSongNumStart
_080A95EA:
	adds r0, r5, #0
	bl sub_80A882C
	b _080A96C8
	.align 2, 0
_080A95F4: .4byte gRAMChapterData
_080A95F8:
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A9620
	ldr r0, _080A961C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9614
	movs r0, #0x6a
	bl m4aSongNumStart
_080A9614:
	adds r0, r5, #0
	bl sub_80A9290
	b _080A96C8
	.align 2, 0
_080A961C: .4byte gRAMChapterData
_080A9620:
	adds r0, r5, #0
	bl sub_80A9250
	adds r0, r5, #0
	movs r1, #6
	bl Proc_Goto
	ldr r0, _080A9644  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A96C8
	movs r0, #0x60
	bl m4aSongNumStart
	b _080A96C8
	.align 2, 0
_080A9644: .4byte gRAMChapterData
_080A9648:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080A96C8
	adds r0, r5, #0
	adds r0, #0x29
	strb r1, [r0]
	ldr r0, _080A9680  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9668
	movs r0, #0x6b
	bl m4aSongNumStart
_080A9668:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A9684
	adds r0, r5, #0
	movs r1, #0
	bl sub_80AB83C
	adds r0, r5, #0
	bl sub_80A88E0
	b _080A96C8
	.align 2, 0
_080A9680: .4byte gRAMChapterData
_080A9684:
	adds r2, r5, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A969C
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r2]
	b _080A96C8
_080A969C:
	adds r4, r5, #0
	adds r4, #0x42
	ldrh r1, [r4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080A96C0
	adds r0, r5, #0
	movs r1, #0x11
	bl Proc_Goto
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	b _080A96C8
_080A96C0:
	adds r0, r5, #0
	movs r1, #4
	bl Proc_Goto
_080A96C8:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9494

	THUMB_FUNC_START sub_80A96D0
sub_80A96D0: @ 0x080A96D0
	push {lr}
	bl sub_80A9290
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A96D0

	THUMB_FUNC_START sub_80A96DC
sub_80A96DC: @ 0x080A96DC
	adds r3, r0, #0
	adds r3, #0x2e
	movs r2, #0
	movs r1, #6
	strb r1, [r3]
	adds r0, #0x29
	strb r2, [r0]
	bx lr

	THUMB_FUNC_END sub_80A96DC

	THUMB_FUNC_START sub_80A96EC
sub_80A96EC: @ 0x080A96EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r3, r7, #0
	adds r3, #0x29
	ldrb r0, [r3]
	cmp r0, #8
	bne _080A9764
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r1, r7, #0
	bl sub_80ABC14
	movs r0, #4
	adds r1, r7, #0
	bl sub_80ABC14
	ldrb r1, [r4]
	adds r0, r7, #0
	adds r0, #0x37
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _080A9740
	lsls r0, r1, #0xb
	movs r1, #0xb4
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, _080A973C  @ 0x0001FFFF
	ands r0, r1
	lsrs r0, r0, #5
	ldrb r1, [r2]
	bl sub_8089624
	b _080A9756
	.align 2, 0
_080A973C: .4byte 0x0001FFFF
_080A9740:
	lsls r0, r1, #0xb
	movs r2, #0xb4
	lsls r2, r2, #9
	adds r0, r0, r2
	ldr r1, _080A9760  @ 0x0001FFFF
	ands r0, r1
	lsrs r0, r0, #5
	movs r1, #1
	negs r1, r1
	bl sub_8089624
_080A9756:
	ldrb r0, [r4]
	bl sub_80ABD88
	b _080A9828
	.align 2, 0
_080A9760: .4byte 0x0001FFFF
_080A9764:
	cmp r0, #0x20
	bne _080A97DA
	adds r0, r7, #0
	bl sub_80AB89C
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x10
	bne _080A978E
	adds r0, r7, #0
	movs r1, #0x12
	bl Proc_Goto
	movs r0, #0xc0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl ISuspectThisToBeMusicRelated_8002730
	b _080A9828
_080A978E:
	cmp r0, #0x40
	bne _080A979C
	adds r0, r7, #0
	movs r1, #0x11
	bl Proc_Goto
	b _080A9828
_080A979C:
	adds r0, r7, #0
	bl sub_80ABA98
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A9828
	adds r2, r7, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A97C0
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r2]
	b _080A97D0
_080A97C0:
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	movs r1, #1
	movs r2, #1
	bl sub_80AB98C
	strb r0, [r4]
_080A97D0:
	adds r0, r7, #0
	movs r1, #5
	bl Proc_Goto
	b _080A9828
_080A97DA:
	cmp r0, #0x30
	bne _080A9828
	adds r0, r7, #0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x2d
	movs r0, #0xff
	strb r0, [r2]
	strb r1, [r3]
	adds r0, r7, #0
	adds r0, #0x2b
	strb r1, [r0]
	adds r0, #5
	ldrb r0, [r0]
	bl sub_80A8844
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _080A9824  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A981A
	movs r0, #0x6b
	bl m4aSongNumStart
_080A981A:
	adds r0, r7, #0
	movs r1, #4
	bl Proc_Goto
	b _080A99AC
	.align 2, 0
_080A9824: .4byte gRAMChapterData
_080A9828:
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0x10
	bne _080A98A0
	ldr r4, _080A989C  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
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
	adds r1, r7, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r6, #0
	b _080A9918
	.align 2, 0
_080A989C: .4byte gSinLookup
_080A98A0:
	cmp r1, #7
	bhi _080A9928
	ldr r4, _080A9924  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	bl Div
	mov r8, r0
	mov r2, r8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #5
	subs r1, r6, r1
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r1, r6, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #5
	subs r6, r6, r1
	adds r1, r6, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	str r0, [sp]
	adds r0, r1, #0
	mov r1, r8
_080A9918:
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	b _080A99A4
	.align 2, 0
_080A9924: .4byte gSinLookup
_080A9928:
	cmp r1, #0xf
	bhi _080A99A4
	ldr r4, _080A99BC  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
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
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #5
	subs r1, #0xe0
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
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #5
	subs r1, #0xe0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
_080A99A4:
	mov r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080A99AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A99BC: .4byte gSinLookup

	THUMB_FUNC_END sub_80A96EC

	THUMB_FUNC_START sub_80A99C0
sub_80A99C0: @ 0x080A99C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #3
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0xe
	subs r0, r0, r1
	movs r1, #0xdc
	muls r1, r0, r1
	muls r0, r1, r0
	movs r1, #0xc4
	bl __divsi3
	movs r2, #0x24
	negs r2, r2
	adds r1, r2, #0
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x2f
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0xe
	bne _080A9A02
	adds r0, r5, #0
	bl Proc_Break
_080A9A02:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A99C0

	THUMB_FUNC_START sub_80A9A08
sub_80A9A08: @ 0x080A9A08
	push {lr}
	adds r0, #0x35
	ldrb r0, [r0]
	bl sub_80ABF74
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9A08

	THUMB_FUNC_START sub_80A9A18
sub_80A9A18: @ 0x080A9A18
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #4
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0xe
	subs r0, r0, r1
	movs r1, #0xdc
	muls r1, r0, r1
	muls r0, r1, r0
	movs r1, #0xc4
	bl __divsi3
	adds r1, r5, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0xe
	bne _080A9A5A
	ldr r0, _080A9A60  @ gUnknown_08A2812C
	ldr r1, _080A9A64  @ 0x06014000
	bl CopyDataWithPossibleUncomp
	adds r0, r5, #0
	bl Proc_Break
_080A9A5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9A60: .4byte gUnknown_08A2812C
_080A9A64: .4byte 0x06014000

	THUMB_FUNC_END sub_80A9A18

	THUMB_FUNC_START sub_80A9A68
sub_80A9A68: @ 0x080A9A68
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #8
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0xe
	subs r0, r0, r1
	movs r1, #0xdc
	muls r1, r0, r1
	muls r0, r1, r0
	movs r1, #0xc4
	bl __divsi3
	movs r1, #0xdc
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0xe
	bne _080A9AA8
	adds r0, r5, #0
	movs r1, #0xa
	bl Proc_Goto
_080A9AA8:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9A68

	THUMB_FUNC_START sub_80A9AB0
sub_80A9AB0: @ 0x080A9AB0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #8
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0xe
	subs r0, r0, r1
	movs r1, #0xdc
	muls r1, r0, r1
	muls r0, r1, r0
	movs r1, #0xc4
	bl __divsi3
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0xe
	bne _080A9AEC
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
_080A9AEC:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9AB0

	THUMB_FUNC_START sub_80A9AF4
sub_80A9AF4: @ 0x080A9AF4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #0xc
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0xe
	subs r0, r0, r1
	movs r1, #0xdc
	muls r1, r0, r1
	muls r0, r1, r0
	movs r1, #0xc4
	bl __divsi3
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r1, #0x24
	subs r0, #0x17
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0xe
	bne _080A9B3E
	adds r0, r5, #0
	movs r1, #0xb
	bl Proc_Goto
_080A9B3E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9AF4

	THUMB_FUNC_START sub_80A9B44
sub_80A9B44: @ 0x080A9B44
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #0xd
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0xe
	subs r0, r0, r1
	movs r1, #0xdc
	muls r1, r0, r1
	muls r0, r1, r0
	movs r1, #0xc4
	bl __divsi3
	adds r0, #0xdc
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, #0x24
	subs r1, #0x17
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0xe
	bne _080A9B88
	adds r0, r5, #0
	movs r1, #0xa
	bl Proc_Goto
_080A9B88:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80A9B44

	THUMB_FUNC_START sub_80A9B90
sub_80A9B90: @ 0x080A9B90
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r7, [r2]
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _080A9BD4  @ gKeyStatusPtr
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080A9BD8
	ldrb r0, [r2]
	cmp r0, #0
	bne _080A9BCE
	ldrh r1, [r3, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A9C02
	adds r0, r4, #0
	adds r0, #0x33
	ldrb r0, [r0]
_080A9BCE:
	subs r0, #1
	strb r0, [r2]
	b _080A9C02
	.align 2, 0
_080A9BD4: .4byte gKeyStatusPtr
_080A9BD8:
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A9C02
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x33
	ldrb r0, [r0]
	subs r0, #1
	cmp r1, r0
	bge _080A9BF6
	adds r0, r1, #1
	strb r0, [r2]
	b _080A9C02
_080A9BF6:
	ldrh r1, [r3, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080A9C02
	strb r5, [r2]
_080A9C02:
	adds r0, r4, #0
	adds r0, #0x34
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r7, r0
	beq _080A9C20
	ldr r0, _080A9C70  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9C20
	movs r0, #0x66
	bl m4aSongNumStart
_080A9C20:
	ldr r0, _080A9C74  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r2, [r0, #8]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _080A9CEC
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	ldrb r1, [r5]
	bl sub_80A8844
	adds r5, r4, #0
	adds r5, #0x35
	movs r6, #0
	strb r0, [r5]
	ldr r0, _080A9C70  @ gRAMChapterData
	adds r7, r0, #0
	adds r7, #0x41
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9C56
	movs r0, #0x6a
	bl m4aSongNumStart
_080A9C56:
	adds r0, r4, #0
	adds r0, #0x29
	strb r6, [r0]
	ldrb r0, [r5]
	cmp r0, #0x10
	beq _080A9CA6
	cmp r0, #0x10
	bgt _080A9C78
	cmp r0, #2
	beq _080A9C82
	cmp r0, #4
	beq _080A9C8C
	b _080A9CDC
	.align 2, 0
_080A9C70: .4byte gRAMChapterData
_080A9C74: .4byte gKeyStatusPtr
_080A9C78:
	cmp r0, #0x20
	beq _080A9CA6
	cmp r0, #0x40
	bne _080A9CDC
	b _080A9CA6
_080A9C82:
	str r6, [sp]
	movs r0, #0
	movs r1, #0xc0
	movs r2, #0
	b _080A9C96
_080A9C8C:
	movs r2, #0x80
	lsls r2, r2, #1
	str r6, [sp]
	movs r0, #9
	movs r1, #0xc0
_080A9C96:
	movs r3, #0x18
	bl sub_80029E8
	adds r0, r4, #0
	movs r1, #0xe
	bl Proc_Goto
	b _080A9D14
_080A9CA6:
	bl sub_80A4DA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	movs r2, #1
	bl sub_80AB98C
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_80A9D20
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9CD2
	movs r0, #0x6a
	bl m4aSongNumStart
_080A9CD2:
	adds r0, r4, #0
	movs r1, #0xc
	bl Proc_Goto
	b _080A9D14
_080A9CDC:
	adds r0, r4, #0
	bl sub_80A882C
	adds r0, r4, #0
	movs r1, #0x12
	bl Proc_Goto
	b _080A9D14
_080A9CEC:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080A9D14
	adds r0, r4, #0
	adds r0, #0x29
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #9
	bl Proc_Goto
	ldr r0, _080A9D1C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9D14
	movs r0, #0x6b
	bl m4aSongNumStart
_080A9D14:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9D1C: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80A9B90

	THUMB_FUNC_START sub_80A9D20
sub_80A9D20: @ 0x080A9D20
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x2c
	ldrb r4, [r2]
	cmp r4, #2
	bls _080A9D32
	movs r0, #0
	strb r0, [r2]
_080A9D32:
	cmp r1, #0
	bne _080A9D3A
_080A9D36:
	movs r0, #1
	b _080A9D7E
_080A9D3A:
	cmp r1, #0
	ble _080A9D4C
	ldrb r0, [r2]
	cmp r0, #1
	bhi _080A9D48
	adds r0, #1
	b _080A9D58
_080A9D48:
	movs r0, #0
	b _080A9D58
_080A9D4C:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080A9D56
	movs r0, #2
	b _080A9D58
_080A9D56:
	subs r0, #1
_080A9D58:
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r4, r0
	beq _080A9D7C
	ldr r0, _080A9D78  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9D36
	movs r0, #0x66
	bl m4aSongNumStart
	b _080A9D36
	.align 2, 0
_080A9D78: .4byte gRAMChapterData
_080A9D7C:
	movs r0, #0
_080A9D7E:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80A9D20

	THUMB_FUNC_START sub_80A9D84
sub_80A9D84: @ 0x080A9D84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A9DB4  @ 0x06014000
	movs r1, #9
	bl LoadDialogueBoxGfx
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x58]
	bl StartHelpBoxExt_Unk
	ldr r0, _080A9DB8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9DAC
	movs r0, #0x70
	bl m4aSongNumStart
_080A9DAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DB4: .4byte 0x06014000
_080A9DB8: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80A9D84

	THUMB_FUNC_START sub_80A9DBC
sub_80A9DBC: @ 0x080A9DBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A9DF0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	ldr r0, _080A9DF4  @ 0x00000103
	ands r0, r1
	cmp r0, #0
	beq _080A9DEA
	ldr r0, _080A9DF8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9DE0
	movs r0, #0x71
	bl m4aSongNumStart
_080A9DE0:
	bl CloseHelpBox
	adds r0, r4, #0
	bl Proc_Break
_080A9DEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DF0: .4byte gKeyStatusPtr
_080A9DF4: .4byte 0x00000103
_080A9DF8: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80A9DBC

	THUMB_FUNC_START sub_80A9DFC
sub_80A9DFC: @ 0x080A9DFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r1, r3, #0
	ldr r0, _080A9E18  @ gUnknown_08A20068
	bl Proc_StartBlocking
	str r4, [r0, #0x58]
	str r5, [r0, #0x2c]
	str r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A9E18: .4byte gUnknown_08A20068

	THUMB_FUNC_END sub_80A9DFC

	THUMB_FUNC_START sub_80A9E1C
sub_80A9E1C: @ 0x080A9E1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #5
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x36
	ldrb r1, [r3]
	cmp r1, #0
	bne _080A9E62
	ldr r0, _080A9E4C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A9E50
	movs r1, #1
	negs r1, r1
	adds r0, r4, #0
	bl sub_80A9D20
	b _080A9EB6
	.align 2, 0
_080A9E4C: .4byte gKeyStatusPtr
_080A9E50:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9EB6
	adds r0, r4, #0
	movs r1, #1
	bl sub_80A9D20
	b _080A9EB6
_080A9E62:
	ldr r0, _080A9E8C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r2, [r0, #8]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080A9E94
	cmp r1, #1
	beq _080A9EB6
	movs r0, #1
	strb r0, [r3]
	ldr r0, _080A9E90  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9EB6
	movs r0, #0x67
	bl m4aSongNumStart
	b _080A9EB6
	.align 2, 0
_080A9E8C: .4byte gKeyStatusPtr
_080A9E90: .4byte gRAMChapterData
_080A9E94:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080A9EB6
	cmp r1, #2
	beq _080A9EB6
	movs r0, #2
	strb r0, [r3]
	ldr r0, _080A9EDC  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9EB6
	movs r0, #0x67
	bl m4aSongNumStart
_080A9EB6:
	ldr r0, _080A9EE0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080A9EC8
	b _080A9FBC
_080A9EC8:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _080A9F24
	cmp r0, #0x20
	bgt _080A9EE4
	cmp r0, #0x10
	beq _080A9F5C
	b _080AA00A
	.align 2, 0
_080A9EDC: .4byte gRAMChapterData
_080A9EE0: .4byte gKeyStatusPtr
_080A9EE4:
	cmp r0, #0x40
	beq _080A9EEA
	b _080AA00A
_080A9EEA:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	adds r0, #0xe
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A9F18
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080A9FA0
	adds r0, r2, #0
	bl LoadGame
	adds r0, r4, #0
	movs r1, #0xe
	bl Proc_Goto
	b _080A9F86
_080A9F18:
	ldr r2, _080A9F20  @ 0x00000892
	movs r0, #0x40
	movs r1, #0x30
	b _080A9FAE
	.align 2, 0
_080A9F20: .4byte 0x00000892
_080A9F24:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	adds r0, #0xe
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A9F52
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080A9FA0
	adds r0, r2, #0
	bl LoadGame
	adds r0, r4, #0
	movs r1, #0xe
	bl Proc_Goto
	b _080A9F86
_080A9F52:
	ldr r2, _080A9F58  @ 0x00000891
	b _080A9FAA
	.align 2, 0
_080A9F58: .4byte 0x00000891
_080A9F5C:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	adds r0, #0xe
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A9FA8
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080A9FA0
	adds r0, r2, #0
	bl LoadGame
	adds r0, r4, #0
	bl sub_80A882C
_080A9F86:
	ldr r0, _080A9F9C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AA00A
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080AA00A
	.align 2, 0
_080A9F9C: .4byte gRAMChapterData
_080A9FA0:
	adds r0, r4, #0
	bl sub_80A9290
	b _080AA00A
_080A9FA8:
	ldr r2, _080A9FB8  @ 0x00000895
_080A9FAA:
	movs r0, #0x2e
	movs r1, #0x38
_080A9FAE:
	adds r3, r4, #0
	bl sub_80A9DFC
	b _080AA00A
	.align 2, 0
_080A9FB8: .4byte 0x00000895
_080A9FBC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AA00A
	ldr r0, _080A9FF0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080A9FD6
	movs r0, #0x6b
	bl m4aSongNumStart
_080A9FD6:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r5, [r0]
	cmp r5, #0
	beq _080A9FF4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80AB83C
	adds r0, r4, #0
	bl sub_80A88E0
	b _080AA00A
	.align 2, 0
_080A9FF0: .4byte gRAMChapterData
_080A9FF4:
	ldr r0, _080AA010  @ gUnknown_08A2812C
	ldr r1, _080AA014  @ 0x06014000
	bl CopyDataWithPossibleUncomp
	adds r0, r4, #0
	adds r0, #0x29
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #0xd
	bl Proc_Goto
_080AA00A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA010: .4byte gUnknown_08A2812C
_080AA014: .4byte 0x06014000

	THUMB_FUNC_END sub_80A9E1C

	THUMB_FUNC_START sub_80AA018
sub_80AA018: @ 0x080AA018
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_80ABBB0
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA018

	THUMB_FUNC_START sub_80AA030
sub_80AA030: @ 0x080AA030
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _080AA03E
	bl APProc_Delete
_080AA03E:
	ldr r0, [r4, #0x58]
	bl Proc_End
	movs r0, #0
	bl SetPrimaryHBlankHandler
	adds r5, r4, #0
	adds r5, #0x42
	ldrh r2, [r5]
	cmp r2, #0x20
	bne _080AA084
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA064
	cmp r0, #0x10
	beq _080AA06C
	b _080AA0FA
_080AA064:
	movs r0, #6
	bl SetNextGameActionId
	b _080AA0FA
_080AA06C:
	movs r0, #0xc
	bl SetNextGameActionId
	ldr r2, _080AA080  @ gRAMChapterData
	ldrb r1, [r2, #0x14]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0x14]
	b _080AA0FA
	.align 2, 0
_080AA080: .4byte gRAMChapterData
_080AA084:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _080AA0FA
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080AA0BC
	movs r0, #0xc0
	movs r2, #0x10
	movs r3, #0
	bl ISuspectThisToBeMusicRelated_8002730
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA0B4
	movs r0, #0xa
	bl SetNextGameActionId
	b _080AA0FA
_080AA0B4:
	movs r0, #5
	bl SetNextGameActionId
	b _080AA0FA
_080AA0BC:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080AA0D2
	movs r0, #3
	bl LoadSuspendedGame
	movs r0, #4
	bl SetNextGameActionId
	b _080AA0FA
_080AA0D2:
	movs r0, #0x82
	ands r0, r2
	cmp r0, #0
	beq _080AA0EC
	adds r4, #0x2c
	ldrb r0, [r4]
	bl LoadGame
	ldrb r0, [r4]
	adds r0, #1
	bl SetNextGameActionId
	b _080AA0FA
_080AA0EC:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080AA0FA
	movs r0, #0
	bl SetNextGameActionId
_080AA0FA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA030

	THUMB_FUNC_START sub_80AA100
sub_80AA100: @ 0x080AA100
	push {lr}
	sub sp, #4
	str r0, [sp]
	movs r0, #0
	movs r1, #0xc0
	movs r2, #0
	movs r3, #0x18
	bl sub_80029E8
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA100

	THUMB_FUNC_START sub_80AA118
sub_80AA118: @ 0x080AA118
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #7
	bl SetNextGameActionId
	ldr r4, _080AA140  @ gRAMChapterData
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x14]
	bl sub_80A6C8C
	movs r0, #0x7f
	strb r0, [r4, #0xe]
	ldr r0, [r5, #0x14]
	bl Proc_End
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA140: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80AA118

	THUMB_FUNC_START sub_80AA144
sub_80AA144: @ 0x080AA144
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA154  @ gUnknown_08A20098
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080AA154: .4byte gUnknown_08A20098

	THUMB_FUNC_END sub_80AA144

	THUMB_FUNC_START sub_80AA158
sub_80AA158: @ 0x080AA158
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, [r4, #0x58]
	bl Proc_End
	movs r0, #0
	bl SetPrimaryHBlankHandler
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _080AA17A
	bl APProc_Delete
_080AA17A:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #4
	beq _080AA1AE
	cmp r0, #4
	bgt _080AA18E
	cmp r0, #2
	beq _080AA1A6
	b _080AA1B4
_080AA18E:
	cmp r0, #0x20
	beq _080AA19E
	cmp r0, #0x40
	bne _080AA1B4
	adds r0, r4, #0
	bl sub_80AA144
	b _080AA1B4
_080AA19E:
	adds r0, r4, #0
	bl sub_80B1688
	b _080AA1B4
_080AA1A6:
	adds r0, r4, #0
	bl sub_80AFF1C
	b _080AA1B4
_080AA1AE:
	adds r0, r4, #0
	bl sub_80A1984
_080AA1B4:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA158

	THUMB_FUNC_START sub_80AA1BC
sub_80AA1BC: @ 0x080AA1BC
	push {lr}
	adds r1, r0, #0
	adds r1, #0x35
	ldrb r1, [r1]
	cmp r1, #4
	beq _080AA1E2
	cmp r1, #4
	bgt _080AA1D2
	cmp r1, #2
	beq _080AA1E2
	b _080AA1E8
_080AA1D2:
	cmp r1, #0x10
	beq _080AA1DA
	cmp r1, #0x20
	bne _080AA1E8
_080AA1DA:
	movs r1, #0xb
	bl Proc_Goto
	b _080AA1E8
_080AA1E2:
	movs r1, #0xa
	bl Proc_Goto
_080AA1E8:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA1BC

	THUMB_FUNC_START sub_80AA1EC
sub_80AA1EC: @ 0x080AA1EC
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	ldr r2, _080AA244  @ gLCDControlBuffer
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
	adds r3, r2, #0
	adds r3, #0x34
	ldrb r0, [r3]
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
	strb r0, [r3]
	adds r2, #0x36
	ldrb r1, [r2]
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
	strb r0, [r2]
	bx lr
	.align 2, 0
_080AA244: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AA1EC

	THUMB_FUNC_START sub_80AA248
sub_80AA248: @ 0x080AA248
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r4, r0, #1
	strb r4, [r1]
	ldrb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	muls r0, r1, r0
	cmp r0, #0
	bge _080AA26A
	adds r0, #0xff
_080AA26A:
	asrs r0, r0, #8
	movs r2, #0x50
	subs r2, r2, r0
	ldr r3, _080AA2A4  @ gLCDControlBuffer
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x50
	subs r0, r0, r2
	adds r1, #4
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r2, #0x50
	adds r0, r3, #0
	adds r0, #0x30
	strb r2, [r0]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _080AA29E
	adds r0, r5, #0
	bl Proc_Break
_080AA29E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA2A4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AA248

	THUMB_FUNC_START sub_80AA2A8
sub_80AA2A8: @ 0x080AA2A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r0, [r1]
	adds r4, r0, #1
	strb r4, [r1]
	ldrb r0, [r1]
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	muls r0, r1, r0
	cmp r0, #0
	bge _080AA2CA
	adds r0, #0xff
_080AA2CA:
	asrs r0, r0, #8
	movs r2, #0x50
	subs r2, r2, r0
	ldr r3, _080AA308  @ gLCDControlBuffer
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x31
	strb r2, [r0]
	subs r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	movs r1, #0x60
	negs r1, r1
	adds r0, r1, #0
	subs r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x30
	strb r0, [r1]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _080AA302
	adds r0, r5, #0
	bl Proc_Break
_080AA302:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA308: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AA2A8

	THUMB_FUNC_START sub_80AA30C
sub_80AA30C: @ 0x080AA30C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080AA408  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AA40C  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	bl sub_8003D20
	bl LoadUiFrameGraphics
	bl LoadObjUIGfx
	ldr r0, _080AA410  @ gUnknown_08A25DCC
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	adds r2, r5, #0
	bl CopyToPaletteBuffer
	ldr r4, _080AA414  @ gUnknown_08A21658
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AA418  @ gBG3TilemapBuffer
	ldr r1, _080AA41C  @ gUnknown_08A25ECC
	movs r2, #0x80
	lsls r2, r2, #8
	bl CallARM_FillTileRect
	ldr r0, _080AA420  @ gUnknown_08A268D8
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080AA424  @ gUnknown_08A26380
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	ldr r0, _080AA428  @ 0x06004C00
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AA42C  @ gUnknown_08A268F8
	ldr r4, _080AA430  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AA434  @ gBG2TilemapBuffer
	ldr r2, _080AA438  @ 0x00007260
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r0, _080AA43C  @ gUnknown_08A26A74
	ldr r1, _080AA440  @ 0x06010800
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AA444  @ gUnknown_08A27F68
	movs r1, #0x90
	lsls r1, r1, #2
	adds r2, r5, #0
	bl CopyToPaletteBuffer
	ldr r0, _080AA448  @ gUnknown_08A295B4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080AA44C  @ gUnknown_02022AE8
	adds r1, r0, #0
	subs r1, #0x20
	movs r2, #1
	bl sub_80AA790
	ldr r0, _080AA450  @ gUnknown_08A2812C
	ldr r1, _080AA454  @ 0x06014000
	bl CopyDataWithPossibleUncomp
	bl sub_80AB794
	adds r0, r6, #0
	bl sub_80A8A9C
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl sub_80ABD88
	movs r0, #0xc
	bl Proc_UnblockEachMarked
	movs r0, #0xd
	bl Proc_UnblockEachMarked
	movs r0, #3
	bl BG_EnableSyncByMask
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #3
	beq _080AA3FE
	adds r1, r6, #0
	adds r1, #0x2e
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xdc
	strb r0, [r1]
_080AA3FE:
	bl EnablePaletteSync
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA408: .4byte gBG0TilemapBuffer
_080AA40C: .4byte gBG1TilemapBuffer
_080AA410: .4byte gUnknown_08A25DCC
_080AA414: .4byte gUnknown_08A21658
_080AA418: .4byte gBG3TilemapBuffer
_080AA41C: .4byte gUnknown_08A25ECC
_080AA420: .4byte gUnknown_08A268D8
_080AA424: .4byte gUnknown_08A26380
_080AA428: .4byte 0x06004C00
_080AA42C: .4byte gUnknown_08A268F8
_080AA430: .4byte gUnknown_02020188
_080AA434: .4byte gBG2TilemapBuffer
_080AA438: .4byte 0x00007260
_080AA43C: .4byte gUnknown_08A26A74
_080AA440: .4byte 0x06010800
_080AA444: .4byte gUnknown_08A27F68
_080AA448: .4byte gUnknown_08A295B4
_080AA44C: .4byte gUnknown_02022AE8
_080AA450: .4byte gUnknown_08A2812C
_080AA454: .4byte 0x06014000

	THUMB_FUNC_END sub_80AA30C

	THUMB_FUNC_START sub_80AA458
sub_80AA458: @ 0x080AA458
	push {lr}
	adds r1, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AA46E
	adds r0, r1, #0
	movs r1, #2
	bl Proc_Goto
	b _080AA476
_080AA46E:
	adds r0, r1, #0
	movs r1, #5
	bl Proc_Goto
_080AA476:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA458

	THUMB_FUNC_START sub_80AA47C
sub_80AA47C: @ 0x080AA47C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x42
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AA496
	movs r0, #0xc0
	movs r1, #8
	movs r2, #8
	bl StartHelpPromptSprite
_080AA496:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA47C

	THUMB_FUNC_START sub_80AA49C
sub_80AA49C: @ 0x080AA49C
	push {lr}
	adds r1, r0, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _080AA4AE
	adds r0, r1, #0
	bl sub_80AA6EC
_080AA4AE:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA49C

	THUMB_FUNC_START sub_80AA4B4
sub_80AA4B4: @ 0x080AA4B4
	push {lr}
	bl EndHelpPromptSprite
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA4B4

	THUMB_FUNC_START Make6C_savemenu
Make6C_savemenu: @ 0x080AA4C0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA4F0  @ gUnknown_08A200B8
	bl Proc_StartBlocking
	adds r3, r0, #0
	adds r3, #0x42
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r3]
	adds r0, #0x35
	strb r2, [r0]
	ldr r2, _080AA4F4  @ gRAMChapterData
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080AA4F0: .4byte gUnknown_08A200B8
_080AA4F4: .4byte gRAMChapterData

	THUMB_FUNC_END Make6C_savemenu

	THUMB_FUNC_START sub_80AA4F8
sub_80AA4F8: @ 0x080AA4F8
	push {lr}
	adds r2, r0, #0
	ldr r0, _080AA514  @ gGameState
	ldrb r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AA510
	adds r0, r2, #0
	movs r1, #0x14
	bl Proc_Goto
_080AA510:
	pop {r0}
	bx r0
	.align 2, 0
_080AA514: .4byte gGameState

	THUMB_FUNC_END sub_80AA4F8

	THUMB_FUNC_START Make6C_savemenu2
Make6C_savemenu2: @ 0x080AA518
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA528  @ gUnknown_08A203A8
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080AA528: .4byte gUnknown_08A203A8

	THUMB_FUNC_END Make6C_savemenu2

	THUMB_FUNC_START savemenu_SetDifficultyChoice
savemenu_SetDifficultyChoice: @ 0x080AA52C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080AA54C  @ gUnknown_08A200B8
	bl Proc_Find
	cmp r0, #0
	beq _080AA546
	adds r1, r0, #0
	adds r1, #0x2a
	strb r4, [r1]
	adds r0, #0x3d
	strb r5, [r0]
_080AA546:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA54C: .4byte gUnknown_08A200B8

	THUMB_FUNC_END savemenu_SetDifficultyChoice

	THUMB_FUNC_START sub_80AA550
sub_80AA550: @ 0x080AA550
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _080AA5F0  @ gUnknown_08A204B8
	ldr r1, [r4]
	ldr r2, _080AA5F4  @ 0x010000A2
	mov r0, sp
	bl CpuSet
	ldr r0, [r4]
	bl sub_80A38F4
	cmp r0, #0
	beq _080AA5E6
	movs r0, #0
	str r0, [r5, #0x5c]
	str r0, [r5, #0x58]
	mov r8, r4
	movs r6, #0
	movs r0, #0xfc
	mov r9, r0
	movs r7, #0xf
_080AA588:
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2]
	movs r4, #3
	ands r4, r0
	cmp r4, #1
	bne _080AA5D2
	ldrb r0, [r2, #1]
	cmp r0, #3
	bne _080AA5B2
	str r4, [r5, #0x58]
	ldrb r1, [r2]
	mov r0, r9
	ands r0, r1
	adds r0, #2
	strb r0, [r2]
	movs r0, #0
	movs r1, #0x75
	bl sub_80A3F08
_080AA5B2:
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r6
	ldrb r0, [r2, #1]
	cmp r0, #4
	bne _080AA5D2
	str r4, [r5, #0x5c]
	ldrb r1, [r2]
	mov r0, r9
	ands r0, r1
	adds r0, #2
	strb r0, [r2]
	movs r0, #0
	movs r1, #0x76
	bl sub_80A3F08
_080AA5D2:
	adds r6, #0x14
	subs r7, #1
	cmp r7, #0
	bge _080AA588
	ldr r0, [r5, #0x58]
	cmp r0, #0
	bne _080AA5F8
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	bne _080AA5F8
_080AA5E6:
	adds r0, r5, #0
	movs r1, #0xa
	bl Proc_Goto
	b _080AA600
	.align 2, 0
_080AA5F0: .4byte gUnknown_08A204B8
_080AA5F4: .4byte 0x010000A2
_080AA5F8:
	ldr r0, _080AA610  @ 0x06014000
	movs r1, #9
	bl LoadDialogueBoxGfx
_080AA600:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA610: .4byte 0x06014000

	THUMB_FUNC_END sub_80AA550

	THUMB_FUNC_START sub_80AA614
sub_80AA614: @ 0x080AA614
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x58]
	cmp r0, #0
	beq _080AA64C
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080AA644  @ 0x00000893
	movs r0, #0x40
	movs r1, #0x30
	bl StartHelpBoxExt_Unk
	ldr r0, _080AA648  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AA654
	movs r0, #0x5b
	bl m4aSongNumStart
	b _080AA654
	.align 2, 0
_080AA644: .4byte 0x00000893
_080AA648: .4byte gRAMChapterData
_080AA64C:
	adds r0, r1, #0
	movs r1, #0
	bl Proc_Goto
_080AA654:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA614

	THUMB_FUNC_START sub_80AA658
sub_80AA658: @ 0x080AA658
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x5c]
	cmp r0, #0
	beq _080AA690
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080AA688  @ 0x00000894
	movs r0, #0x40
	movs r1, #0x30
	bl StartHelpBoxExt_Unk
	ldr r0, _080AA68C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AA698
	movs r0, #0x5b
	bl m4aSongNumStart
	b _080AA698
	.align 2, 0
_080AA688: .4byte 0x00000894
_080AA68C: .4byte gRAMChapterData
_080AA690:
	adds r0, r1, #0
	movs r1, #1
	bl Proc_Goto
_080AA698:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA658

	THUMB_FUNC_START sub_80AA69C
sub_80AA69C: @ 0x080AA69C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x1e
	ble _080AA6CC
	ldr r0, _080AA6C8  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080AA6D0
	bl CloseHelpBox
	adds r0, r4, #0
	bl Proc_Break
	b _080AA6D0
	.align 2, 0
_080AA6C8: .4byte gKeyStatusPtr
_080AA6CC:
	adds r0, r2, #1
	strh r0, [r1]
_080AA6D0:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA69C

	THUMB_FUNC_START sub_80AA6D8
sub_80AA6D8: @ 0x080AA6D8
	push {lr}
	ldr r0, _080AA6E8  @ gUnknown_08A204B8
	ldr r0, [r0]
	bl sub_80A3950
	pop {r0}
	bx r0
	.align 2, 0
_080AA6E8: .4byte gUnknown_08A204B8

	THUMB_FUNC_END sub_80AA6D8

	THUMB_FUNC_START sub_80AA6EC
sub_80AA6EC: @ 0x080AA6EC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA6FC  @ gUnknown_08A204BC
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080AA6FC: .4byte gUnknown_08A204BC

	THUMB_FUNC_END sub_80AA6EC

	THUMB_FUNC_START sub_80AA700
sub_80AA700: @ 0x080AA700
	ldr r1, _080AA714  @ gUnknown_0203EF64
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #1]
	movs r0, #1
	negs r0, r0
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_080AA714: .4byte gUnknown_0203EF64

	THUMB_FUNC_END sub_80AA700

	THUMB_FUNC_START sub_80AA718
sub_80AA718: @ 0x080AA718
	push {lr}
	ldr r1, _080AA734  @ gUnknown_0203EF64
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AA73C
	ldr r2, _080AA738  @ gCharacterData
	subs r0, #1
	movs r1, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	bl GetStringFromIndex
	b _080AA73E
	.align 2, 0
_080AA734: .4byte gUnknown_0203EF64
_080AA738: .4byte gCharacterData
_080AA73C:
	movs r0, #0
_080AA73E:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AA718

	THUMB_FUNC_START sub_80AA744
sub_80AA744: @ 0x080AA744
	push {lr}
	ldr r1, _080AA75C  @ gUnknown_0203EF64
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AA756
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080AA760
_080AA756:
	movs r0, #1
	negs r0, r0
	b _080AA764
	.align 2, 0
_080AA75C: .4byte gUnknown_0203EF64
_080AA760:
	movs r0, #1
	ldrsb r0, [r1, r0]
_080AA764:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AA744

	THUMB_FUNC_START sub_80AA768
sub_80AA768: @ 0x080AA768
	push {lr}
	ldr r1, _080AA780  @ gUnknown_0203EF64
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AA77A
	movs r0, #2
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080AA784
_080AA77A:
	movs r0, #0
	b _080AA78C
	.align 2, 0
_080AA780: .4byte gUnknown_0203EF64
_080AA784:
	movs r0, #2
	ldrsb r0, [r1, r0]
	bl sub_80BBA28
_080AA78C:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AA768

	THUMB_FUNC_START sub_80AA790
sub_80AA790: @ 0x080AA790
	push {lr}
	lsls r2, r2, #4
	cmp r2, #0
	ble _080AA7A8
	adds r3, r0, #0
_080AA79A:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _080AA79A
_080AA7A8:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AA790

	THUMB_FUNC_START sub_80AA7AC
sub_80AA7AC: @ 0x080AA7AC
	push {r4, r5, lr}
	movs r2, #0x3f
	ands r2, r0
	asrs r2, r2, #2
	ldr r4, _080AA7DC  @ gPaletteBuffer
	lsls r2, r2, #1
	ldr r0, _080AA7E0  @ gUnknown_08A28088
	adds r2, r2, r0
	ldrh r3, [r2]
	ldr r5, _080AA7E4  @ 0x00000222
	adds r0, r4, r5
	strh r3, [r0]
	lsls r1, r1, #6
	ldr r0, _080AA7E8  @ 0x00000342
	adds r1, r1, r0
	adds r1, r1, r4
	ldrh r0, [r2]
	strh r0, [r1]
	bl EnablePaletteSync
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA7DC: .4byte gPaletteBuffer
_080AA7E0: .4byte gUnknown_08A28088
_080AA7E4: .4byte 0x00000222
_080AA7E8: .4byte 0x00000342

	THUMB_FUNC_END sub_80AA7AC

	THUMB_FUNC_START sub_80AA7EC
sub_80AA7EC: @ 0x080AA7EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xdc
	bl __divsi3
	movs r1, #0x20
	subs r1, r1, r0
	lsls r1, r1, #0x18
	movs r0, #0x92
	lsls r0, r0, #0x18
	adds r1, r1, r0
	lsrs r1, r1, #0x18
	mov r9, r1
	movs r1, #0x8f
	mov r8, r1
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #1
	bne _080AA83A
	ldr r0, [r4, #0x54]
	mov r4, sp
	adds r4, #6
	add r5, sp, #8
	add r1, sp, #4
	adds r2, r4, #0
	adds r3, r5, #0
	bl ComputeDisplayTime
	b _080AA858
_080AA83A:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	mov r4, sp
	adds r4, #6
	add r5, sp, #8
	add r1, sp, #4
	adds r2, r4, #0
	adds r3, r5, #0
	bl ComputeDisplayTime
_080AA858:
	mov sl, r4
	mov r1, r8
	adds r1, #6
	mov r2, r9
	subs r2, #0xe
	ldr r3, _080AA9CC  @ gUnknown_08A20590
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0xd
	bl PutSpriteExt
	add r0, sp, #4
	ldrh r0, [r0]
	mov r7, r9
	subs r7, #8
	cmp r0, #0x63
	bls _080AA8BE
	mov r5, r8
	adds r5, #0xa
	ldr r4, _080AA9D0  @ gUnknown_08A2067C
	add r0, sp, #4
	ldrh r0, [r0]
	movs r6, #0x64
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r3, [r0]
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	bl PutSpriteExt
	add r5, sp, #4
	adds r0, r5, #0
	ldrh r4, [r0]
	adds r0, r4, #0
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r6, r0
	subs r4, r4, r0
	strh r4, [r5]
_080AA8BE:
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #9
	bls _080AA8EE
	mov r5, r8
	adds r5, #0x12
	ldr r4, _080AA9D0  @ gUnknown_08A2067C
	add r0, sp, #4
	ldrh r0, [r0]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r3, [r0]
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	bl PutSpriteExt
_080AA8EE:
	mov r6, r8
	adds r6, #0x1a
	ldr r5, _080AA9D0  @ gUnknown_08A2067C
	add r0, sp, #4
	ldrh r0, [r0]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	movs r4, #0xe0
	lsls r4, r4, #7
	str r4, [sp]
	movs r0, #0xd
	adds r1, r6, #0
	adds r2, r7, #0
	bl PutSpriteExt
	mov r1, r8
	adds r1, #0x22
	mov r2, r9
	subs r2, #7
	ldr r3, [r5, #0x28]
	str r4, [sp]
	movs r0, #0xd
	bl PutSpriteExt
	adds r6, #0x10
	mov r1, sl
	ldrh r0, [r1]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	str r4, [sp]
	movs r0, #0xd
	adds r1, r6, #0
	adds r2, r7, #0
	bl PutSpriteExt
	adds r6, #8
	mov r1, sl
	ldrh r0, [r1]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	str r4, [sp]
	movs r0, #0xd
	adds r1, r6, #0
	adds r2, r7, #0
	bl PutSpriteExt
	mov r1, r8
	adds r1, #0x3a
	mov r2, r9
	adds r2, #1
	ldr r5, _080AA9D4  @ gUnknown_08A20650
	ldr r3, [r5, #0x28]
	str r4, [sp]
	movs r0, #0xd
	bl PutSpriteExt
	adds r6, #0x10
	mov r1, sp
	ldrh r0, [r1, #8]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	str r4, [sp]
	movs r0, #0xd
	adds r1, r6, #0
	mov r2, r9
	bl PutSpriteExt
	adds r6, #8
	mov r1, sp
	ldrh r0, [r1, #8]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	str r4, [sp]
	movs r0, #0xd
	adds r1, r6, #0
	mov r2, r9
	bl PutSpriteExt
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA9CC: .4byte gUnknown_08A20590
_080AA9D0: .4byte gUnknown_08A2067C
_080AA9D4: .4byte gUnknown_08A20650

	THUMB_FUNC_END sub_80AA7EC

	THUMB_FUNC_START sub_80AA9D8
sub_80AA9D8: @ 0x080AA9D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldrh r1, [r0, #0x3e]
	adds r1, #1
	strh r1, [r0, #0x3e]
	adds r2, r0, #0
	adds r2, #0x40
	ldrh r1, [r2]
	adds r1, #2
	strh r1, [r2]
	ldrh r4, [r0, #0x3e]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x17
	ldrh r0, [r2]
	lsrs r7, r0, #3
	movs r0, #0xff
	ands r7, r0
	movs r0, #0
	movs r1, #1
	bl sub_8014E74
	adds r6, r7, #0
	ldr r1, _080AAA64  @ gSinLookup
	mov sl, r1
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	mov r8, r2
	adds r5, r0, #0
	mov r9, r4
	movs r4, #0x9f
_080AAA1A:
	movs r0, #0xff
	ands r0, r6
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	ldr r2, _080AAA68  @ 0x000001FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5]
	adds r6, #0xc
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _080AAA1A
	mov r0, r9
	lsrs r1, r0, #0x10
	adds r2, r7, #0
	movs r0, #2
	bl BG_SetPosition
	bl sub_8014EA8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAA64: .4byte gSinLookup
_080AAA68: .4byte 0x000001FF

	THUMB_FUNC_END sub_80AA9D8

	THUMB_FUNC_START sub_80AAA6C
sub_80AAA6C: @ 0x080AAA6C
	push {lr}
	bl sub_8014E3C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AAA6C

	THUMB_FUNC_START sub_80AAA78
sub_80AAA78: @ 0x080AAA78
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x29
	movs r7, #0
	movs r0, #1
	strb r0, [r1]
	movs r5, #0
	strh r7, [r6, #0x2c]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r6, #0x2e]
	adds r0, r6, #0
	adds r0, #0x3a
	strb r5, [r0]
	adds r1, #0x12
	movs r0, #0x28
	strb r0, [r1]
	strh r7, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x32
	strb r5, [r0]
	str r4, [sp]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl WriteOAMRotScaleData
	str r4, [sp]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl WriteOAMRotScaleData
	str r4, [sp]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl WriteOAMRotScaleData
	str r4, [sp]
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl WriteOAMRotScaleData
	strh r7, [r6, #0x2a]
	adds r0, r6, #0
	bl sub_80AB534
	str r0, [r6, #0x34]
	adds r0, r6, #0
	adds r0, #0x39
	strb r5, [r0]
	ldr r1, [r6, #0x14]
	adds r2, r1, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080AAAFE
	str r7, [r1, #0x60]
	b _080AAB1C
_080AAAFE:
	ldr r0, _080AAB64  @ gUnknown_08A280A8
	movs r1, #0xa0
	lsls r1, r1, #1
	ldrb r2, [r2]
	lsls r2, r2, #5
	adds r2, #0x30
	movs r3, #0xc5
	lsls r3, r3, #6
	str r7, [sp]
	movs r4, #4
	str r4, [sp, #4]
	bl APProc_Create
	ldr r1, [r6, #0x14]
	str r0, [r1, #0x60]
_080AAB1C:
	ldr r0, [r6, #0x14]
	adds r0, #0x2c
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	movs r1, #0
	strb r2, [r0]
	adds r0, #4
	strh r1, [r0]
	strh r1, [r6, #0x3e]
	ldr r0, _080AAB68  @ gUnknown_02000000
	bl sub_8014DA8
	ldr r1, _080AAB6C  @ 0x04000018
	movs r0, #0
	bl sub_8014EC4
	movs r0, #0
	bl sub_8014EF4
	adds r0, r6, #0
	bl sub_80AA9D8
	ldr r0, _080AAB70  @ gUnknown_03004990
	ldr r0, [r0]
	ldr r1, _080AAB74  @ 0x0000079E
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bl sub_80AB548
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAB64: .4byte gUnknown_08A280A8
_080AAB68: .4byte gUnknown_02000000
_080AAB6C: .4byte 0x04000018
_080AAB70: .4byte gUnknown_03004990
_080AAB74: .4byte 0x0000079E

	THUMB_FUNC_END sub_80AAA78

	THUMB_FUNC_START sub_80AAB78
sub_80AAB78: @ 0x080AAB78
	push {lr}
	lsls r1, r1, #0x10
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AABA4
	ldr r2, _080AABA0  @ gPaletteBuffer
	lsrs r0, r1, #0x12
	movs r1, #0xf
	ands r0, r1
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r2, r2, r1
	strh r0, [r2]
	b _080AABB2
	.align 2, 0
_080AABA0: .4byte gPaletteBuffer
_080AABA4:
	ldr r0, _080AABBC  @ gPaletteBuffer
	ldr r2, _080AABC0  @ 0x0000033A
	adds r1, r0, r2
	ldrh r1, [r1]
	subs r2, #0x6a
	adds r0, r0, r2
	strh r1, [r0]
_080AABB2:
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_080AABBC: .4byte gPaletteBuffer
_080AABC0: .4byte 0x0000033A

	THUMB_FUNC_END sub_80AAB78

	THUMB_FUNC_START sub_80AABC4
sub_80AABC4: @ 0x080AABC4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080AAC34  @ 0x000001FF
	mov r9, r1
	adds r1, r6, #0
	mov r2, r9
	ands r1, r2
	ldr r3, _080AAC38  @ gUnknown_08A2051C
	movs r2, #0xf
	mov sl, r2
	ands r0, r2
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #4
	mov r2, r8
	bl PutSpriteExt
	adds r6, #8
	mov r0, r9
	ands r6, r0
	movs r1, #8
	add r8, r1
	ldr r0, _080AAC3C  @ gUnknown_08A209B8
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r3, [r4]
	mov r2, sl
	ands r5, r2
	lsls r5, r5, #0xc
	str r5, [sp]
	movs r0, #4
	adds r1, r6, #0
	mov r2, r8
	bl PutSpriteExt
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AAC34: .4byte 0x000001FF
_080AAC38: .4byte gUnknown_08A2051C
_080AAC3C: .4byte gUnknown_08A209B8

	THUMB_FUNC_END sub_80AABC4

	THUMB_FUNC_START sub_80AAC40
sub_80AAC40: @ 0x080AAC40
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080AACB0  @ 0x000001FF
	mov r9, r1
	adds r1, r6, #0
	mov r2, r9
	ands r1, r2
	ldr r3, _080AACB4  @ gUnknown_08A2051C
	movs r2, #0xf
	mov sl, r2
	ands r0, r2
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #4
	mov r2, r8
	bl PutSpriteExt
	adds r6, #8
	mov r0, r9
	ands r6, r0
	movs r1, #8
	add r8, r1
	ldr r0, _080AACB8  @ gUnknown_08A2099C
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r3, [r4]
	mov r2, sl
	ands r5, r2
	lsls r5, r5, #0xc
	str r5, [sp]
	movs r0, #4
	adds r1, r6, #0
	mov r2, r8
	bl PutSpriteExt
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AACB0: .4byte 0x000001FF
_080AACB4: .4byte gUnknown_08A2051C
_080AACB8: .4byte gUnknown_08A2099C

	THUMB_FUNC_END sub_80AAC40

	THUMB_FUNC_START sub_80AACBC
sub_80AACBC: @ 0x080AACBC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0x3c
	ldr r0, [r7, #0x14]
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r0, [r4]
	ldrb r2, [r1]
	cmp r0, r2
	beq _080AACE8
	ldrb r0, [r1]
	bl sub_80ABD88
	ldr r0, [r7, #0x14]
	adds r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r4]
_080AACE8:
	ldrh r0, [r7, #0x2a]
	ldrb r1, [r4]
	bl sub_80ABE3C
	bl EnablePaletteSync
	ldr r1, [r7, #0x14]
	adds r4, r1, #0
	adds r4, #0x3f
	ldrb r3, [r4]
	adds r0, r3, #0
	cmp r0, #0xff
	beq _080AADBA
	adds r5, r1, #0
	adds r5, #0x44
	ldrh r2, [r5]
	adds r1, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080AADBA
	cmp r1, #0xf
	bhi _080AAD1C
	movs r0, #0xff
	strb r0, [r4]
	b _080AADB0
_080AAD1C:
	ldr r0, _080AADDC  @ gSinLookup
	mov r9, r0
	movs r4, #0xff
	adds r0, r4, #0
	ands r0, r2
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r9
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	ldrh r1, [r5]
	bl Div
	mov r8, r0
	mov r2, r8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r1, [r7, #0x14]
	adds r1, #0x44
	ldrh r2, [r1]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #1
	add r0, r9
	movs r2, #0
	ldrsh r0, [r0, r2]
	negs r0, r0
	lsls r0, r0, #4
	ldrh r1, [r1]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r1, [r7, #0x14]
	adds r1, #0x44
	ldrh r2, [r1]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #1
	add r0, r9
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldrh r1, [r1]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r1, [r7, #0x14]
	adds r1, #0x44
	ldrh r0, [r1]
	ands r4, r0
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, r9
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	ldrh r1, [r1]
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl WriteOAMRotScaleData
_080AADB0:
	ldr r1, [r7, #0x14]
	adds r1, #0x44
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
_080AADBA:
	ldrh r0, [r7, #0x2a]
	adds r1, r7, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	bl sub_80AA7AC
	ldrh r0, [r7, #0x2a]
	adds r0, #1
	strh r0, [r7, #0x2a]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AADDC: .4byte gSinLookup

	THUMB_FUNC_END sub_80AACBC

	THUMB_FUNC_START sub_80AADE0
sub_80AADE0: @ 0x080AADE0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	adds r0, #0x2f
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xdc
	bl __divsi3
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r0, #0xff
	ands r5, r0
	ldr r3, _080AAE38  @ gUnknown_08A2051C
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #0x30
	adds r2, r5, #0
	bl PutSpriteExt
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	beq _080AAE5C
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AAE40
	adds r2, r5, #0
	adds r2, #8
	ldr r0, _080AAE3C  @ gUnknown_08A209B8
	ldr r3, [r0, #0x28]
	b _080AAE48
	.align 2, 0
_080AAE38: .4byte gUnknown_08A2051C
_080AAE3C: .4byte gUnknown_08A209B8
_080AAE40:
	adds r2, r5, #0
	adds r2, #8
	ldr r0, _080AAE58  @ gUnknown_08A209B8
	ldr r3, [r0, #0x20]
_080AAE48:
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #4
	movs r1, #0x38
	bl PutSpriteExt
	b _080AAE82
	.align 2, 0
_080AAE58: .4byte gUnknown_08A209B8
_080AAE5C:
	adds r0, r1, #0
	adds r0, #0x42
	ldrb r0, [r0]
	bl sub_80A88B8
	lsls r0, r0, #0x18
	adds r2, r5, #0
	adds r2, #8
	ldr r1, _080AAE8C  @ gUnknown_08A209B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #4
	movs r1, #0x38
	bl PutSpriteExt
_080AAE82:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAE8C: .4byte gUnknown_08A209B8

	THUMB_FUNC_END sub_80AADE0

	THUMB_FUNC_START sub_80AAE90
sub_80AAE90: @ 0x080AAE90
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, [r5, #0x14]
	adds r0, r2, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	adds r0, #0x17
	ldrh r0, [r0]
	adds r7, r1, r0
	cmp r7, #0xdb
	bgt _080AAF5E
	adds r0, r2, #0
	adds r0, #0x31
	ldrb r3, [r0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r3
	asrs r0, r0, #1
	movs r1, #0x44
	subs r1, r1, r0
	mov r8, r1
	cmp r1, #1
	bgt _080AAECC
	movs r0, #2
	mov r8, r0
_080AAECC:
	movs r6, #0
	cmp r6, r3
	bge _080AAF36
	mov r4, r8
	movs r2, #0x30
	mov r9, r2
_080AAED8:
	ldr r0, [r5, #0x14]
	adds r0, #0x30
	ldrb r0, [r0]
	adds r1, r6, #0
	bl sub_80A8844
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A88B8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [r5, #0x14]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r6, r0
	bne _080AAF10
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r2, r9
	subs r1, r2, r7
	adds r2, r4, #0
	bl sub_80AABC4
	b _080AAF24
_080AAF10:
	movs r0, #6
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r2, r9
	subs r1, r2, r7
	adds r2, r4, #0
	bl sub_80AABC4
_080AAF24:
	adds r4, #0x19
	adds r6, #1
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r1, #0x31
	adds r2, r0, #0
	ldrb r1, [r1]
	cmp r6, r1
	blt _080AAED8
_080AAF36:
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AAF5E
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r0
	add r2, r8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0x1c
	adds r3, r5, #0
	bl sub_80AB4F4
_080AAF5E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AAE90

	THUMB_FUNC_START sub_80AAF6C
sub_80AAF6C: @ 0x080AAF6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, [r5, #0x14]
	adds r0, r2, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	movs r1, #0xdb
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080AB050
	adds r1, r2, #0
	adds r1, #0x33
	ldrb r0, [r1]
	cmp r0, #7
	bne _080AAF9A
	movs r7, #2
	movs r0, #0x15
	b _080AAFAE
_080AAF9A:
	ldrb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0x44
	subs r7, r0, r1
	cmp r7, #1
	bgt _080AAFAC
	movs r7, #2
_080AAFAC:
	movs r0, #0x19
_080AAFAE:
	mov r8, r0
	movs r6, #0
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r1, #0x33
	adds r2, r0, #0
	ldrb r1, [r1]
	cmp r6, r1
	bge _080AB030
	adds r4, r7, #0
_080AAFC2:
	adds r0, #0x32
	ldrb r0, [r0]
	adds r1, r6, #0
	bl sub_80A8844
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A88B8
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r6, r0
	bne _080AB002
	adds r0, r1, #0
	adds r0, #0x46
	ldrh r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_80AAC40
	b _080AB01E
_080AB002:
	adds r0, r1, #0
	adds r0, #0x46
	ldrh r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #6
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_80AAC40
_080AB01E:
	add r4, r8
	adds r6, #1
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r1, #0x33
	adds r2, r0, #0
	ldrb r1, [r1]
	cmp r6, r1
	blt _080AAFC2
_080AB030:
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080AB050
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r7, r2
	movs r0, #0
	movs r1, #0x1c
	adds r3, r5, #0
	bl sub_80AB4F4
_080AB050:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AAF6C

	THUMB_FUNC_START sub_80AB05C
sub_80AB05C: @ 0x080AB05C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, [r0, #0x14]
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AB076
	b _080AB1DA
_080AB076:
	mov r0, r8
	bl sub_80AA7EC
	mov r0, r8
	bl sub_80AADE0
	movs r7, #0
	movs r0, #0xf
	mov sl, r0
	movs r1, #0xa
	mov r9, r1
_080AB08C:
	mov r2, r8
	ldr r1, [r2, #0x14]
	adds r0, r1, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #6
	bne _080AB0AA
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, r7
	bne _080AB0AA
	movs r2, #0x80
	lsls r2, r2, #1
_080AB0AA:
	mov r1, r8
	ldr r0, [r1, #0x14]
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xf8
	subs r1, r0, r1
	ldr r0, _080AB168  @ 0x000001FF
	ands r1, r0
	lsls r5, r7, #5
	adds r5, #0x20
	adds r5, r2, r5
	ldr r0, _080AB16C  @ gUnknown_08A209F0
	lsls r6, r7, #2
	adds r0, r6, r0
	ldr r3, [r0]
	lsls r4, r7, #1
	mov r0, r9
	mov r2, sl
	ands r0, r2
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #4
	adds r2, r5, #0
	bl PutSpriteExt
	mov r1, r8
	ldr r0, [r1, #0x14]
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r2, #0xf8
	subs r1, r2, r1
	ldr r0, _080AB168  @ 0x000001FF
	ands r1, r0
	adds r5, #8
	ldr r0, _080AB170  @ gUnknown_08A209E4
	adds r6, r6, r0
	ldr r3, [r6]
	adds r4, #0xb
	mov r2, sl
	ands r4, r2
	lsls r4, r4, #0xc
	str r4, [sp]
	movs r0, #4
	adds r2, r5, #0
	bl PutSpriteExt
	movs r0, #2
	add r9, r0
	adds r7, #1
	cmp r7, #2
	ble _080AB08C
	mov r1, r8
	ldr r2, [r1, #0x14]
	adds r3, r2, #0
	adds r3, #0x3f
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080AB1DA
	adds r0, r2, #0
	adds r0, #0x44
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080AB178
	ldr r0, [r2, #0x60]
	cmp r0, #0
	beq _080AB13E
	bl APProc_Delete
	mov r2, r8
	ldr r1, [r2, #0x14]
	movs r0, #0
	str r0, [r1, #0x60]
_080AB13E:
	mov r0, r8
	ldr r2, [r0, #0x14]
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r0, r2, #0
	adds r0, #0x3f
	ldrb r2, [r0]
	lsls r2, r2, #5
	adds r2, #0x1e
	ldr r3, _080AB174  @ gUnknown_08A20588
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #0xca
	bl PutSpriteExt
	b _080AB1DA
	.align 2, 0
_080AB168: .4byte 0x000001FF
_080AB16C: .4byte gUnknown_08A209F0
_080AB170: .4byte gUnknown_08A209E4
_080AB174: .4byte gUnknown_08A20588
_080AB178:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #1
	bne _080AB1A0
	ldr r0, [r2, #0x60]
	adds r1, r2, #0
	adds r1, #0x2f
	ldrb r2, [r1]
	movs r1, #0xda
	lsls r1, r1, #1
	subs r1, r1, r2
	ldrb r2, [r3]
	lsls r2, r2, #5
	adds r2, #0x30
	movs r3, #0xc5
	lsls r3, r3, #6
	bl APProc_SetParameters
	b _080AB1DA
_080AB1A0:
	ldr r0, [r2, #0x60]
	movs r1, #0xa0
	lsls r1, r1, #1
	ldrb r2, [r3]
	lsls r2, r2, #5
	adds r2, #0x30
	movs r3, #0xc5
	lsls r3, r3, #6
	bl APProc_SetParameters
	mov r1, r8
	ldr r0, [r1, #0x14]
	adds r1, r0, #0
	adds r1, #0x2f
	ldrb r2, [r1]
	movs r1, #0xd3
	lsls r1, r1, #1
	subs r1, r1, r2
	adds r0, #0x3f
	ldrb r2, [r0]
	lsls r2, r2, #5
	adds r2, #0x1e
	ldr r3, _080AB248  @ gUnknown_08A20588
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	bl PutSpriteExt
_080AB1DA:
	mov r2, r8
	ldr r1, [r2, #0x14]
	adds r0, r1, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080AB28E
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AB250
	ldr r3, _080AB24C  @ gUnknown_08A20536
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #0x2c
	movs r2, #0x80
	bl PutSpriteExt
	mov r1, r8
	ldr r0, [r1, #0x14]
	adds r0, #0x36
	ldrb r1, [r0]
	subs r1, #1
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, #0x34
	movs r1, #0x88
	bl DisplayUiHand
	mov r2, r8
	ldr r0, [r2, #0x14]
	adds r0, #0x2c
	ldrb r2, [r0]
	lsls r2, r2, #0x15
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0xc
	mov r3, r8
	bl sub_80AB4F4
	b _080AB26E
	.align 2, 0
_080AB248: .4byte gUnknown_08A20588
_080AB24C: .4byte gUnknown_08A20536
_080AB250:
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080AB26E
	adds r2, r0, #0
	lsls r2, r2, #0x15
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0xc
	mov r3, r8
	bl sub_80AB4F4
_080AB26E:
	mov r2, r8
	ldr r0, [r2, #0x14]
	adds r1, r0, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080AB28E
	adds r1, r0, #0
	lsls r1, r1, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x16
	adds r1, r1, r0
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_80AB514
_080AB28E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AB05C

	THUMB_FUNC_START sub_80AB2A0
sub_80AB2A0: @ 0x080AB2A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AB2EC
	ldr r0, [r4, #0x14]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r2, [r1]
	adds r1, r2, #0
	cmp r1, #0xff
	bhi _080AB2D4
	cmp r1, #0x20
	bne _080AB2CE
	adds r0, #0x35
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x33
	strb r0, [r1]
	b _080AB2D4
_080AB2CE:
	adds r0, r4, #0
	adds r0, #0x33
	strb r2, [r0]
_080AB2D4:
	adds r0, r4, #0
	bl sub_80AAE90
	adds r0, r4, #0
	bl sub_80AAF6C
	adds r0, r4, #0
	bl sub_80AB05C
	adds r0, r4, #0
	bl sub_80AACBC
_080AB2EC:
	adds r0, r4, #0
	bl sub_80AA9D8
	ldrh r0, [r4, #0x2a]
	bl sub_80AB56C
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AB2A0

	THUMB_FUNC_START New6C_savedraw
New6C_savedraw: @ 0x080AB300
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AB310  @ gUnknown_08A206A8
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080AB310: .4byte gUnknown_08A206A8

	THUMB_FUNC_END New6C_savedraw

	THUMB_FUNC_START sub_80AB314
sub_80AB314: @ 0x080AB314
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	strh r0, [r2, #0x2a]
	strh r0, [r2, #0x2e]
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x32]
	strh r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x37
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #0xe
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AB314

	THUMB_FUNC_START sub_80AB340
sub_80AB340: @ 0x080AB340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r1, _080AB3DC  @ gUnknown_08205DE9
	add r0, sp, #4
	movs r2, #8
	bl memcpy
	ldr r0, [r7, #0x14]
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080AB368
	b _080AB4E0
_080AB368:
	ldrh r0, [r7, #0x2a]
	adds r0, #1
	strh r0, [r7, #0x2a]
	adds r3, r7, #0
	adds r3, #0x2c
	ldrb r0, [r3]
	str r3, [sp, #0xc]
	cmp r0, #3
	bhi _080AB37E
	adds r0, #1
	strb r0, [r3]
_080AB37E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	str r0, [sp, #0x10]
	cmp r1, #0
	bne _080AB38C
	b _080AB49C
_080AB38C:
	ldrh r2, [r7, #0x32]
	ldrh r5, [r7, #0x2e]
	ldrb r0, [r3]
	cmp r0, #3
	bhi _080AB3C6
	movs r1, #0x32
	ldrsh r0, [r7, r1]
	movs r2, #0x34
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r3, [r7, #0x34]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	movs r3, #0x30
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r4, [r7, #0x30]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080AB3C6:
	adds r0, r7, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080AB3E0
	lsls r1, r5, #0x10
	movs r4, #0x9c
	lsls r4, r4, #0x10
	b _080AB3E6
	.align 2, 0
_080AB3DC: .4byte gUnknown_08205DE9
_080AB3E0:
	lsls r1, r5, #0x10
	movs r4, #0xb0
	lsls r4, r4, #0x10
_080AB3E6:
	adds r0, r1, r4
	lsrs r6, r0, #0x10
	ldrh r0, [r7, #0x32]
	strh r0, [r7, #0x34]
	ldrh r0, [r7, #0x2e]
	strh r0, [r7, #0x30]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080AB468
	ldr r0, _080AB460  @ 0x000001FF
	mov r9, r0
	lsrs r1, r1, #0x10
	ands r1, r0
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	ldrh r0, [r7, #0x2a]
	lsrs r0, r0, #3
	movs r2, #7
	mov r8, r2
	mov r3, r8
	ands r0, r3
	add r0, sp
	adds r0, #4
	ldrb r2, [r0]
	adds r2, r4, r2
	movs r0, #0xff
	mov sl, r0
	ands r2, r0
	movs r5, #0xc0
	lsls r5, r5, #6
	str r5, [sp]
	movs r0, #4
	ldr r3, _080AB464  @ gUnknown_08A20570
	bl PutSpriteExt
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r2, r9
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r1, r0
	ldrh r0, [r7, #0x2a]
	lsrs r0, r0, #3
	mov r2, r8
	ands r0, r2
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	adds r4, r4, r0
	mov r3, sl
	ands r4, r3
	str r5, [sp]
	movs r0, #4
	adds r2, r4, #0
	ldr r3, _080AB464  @ gUnknown_08A20570
	bl PutSpriteExt
	b _080AB490
	.align 2, 0
_080AB460: .4byte 0x000001FF
_080AB464: .4byte gUnknown_08A20570
_080AB468:
	lsls r2, r2, #0x10
	ldrh r0, [r7, #0x2a]
	lsrs r0, r0, #3
	movs r1, #7
	ands r0, r1
	add r0, sp
	adds r0, #4
	asrs r2, r2, #0x10
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r3, _080AB498  @ gUnknown_08A20570
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #4
	bl PutSpriteExt
_080AB490:
	movs r0, #0
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	b _080AB4A8
	.align 2, 0
_080AB498: .4byte gUnknown_08A20570
_080AB49C:
	ldrb r0, [r3]
	cmp r0, #4
	bne _080AB4A8
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_080AB4A8:
	adds r4, r7, #0
	adds r4, #0x38
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB4C8
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r2, [r0]
	ldr r3, _080AB4F0  @ gUnknown_08A20570
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #6
	bl PutSpriteExt
_080AB4C8:
	adds r1, r7, #0
	adds r1, #0x39
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AB4D6
	movs r0, #0
	strb r0, [r4]
_080AB4D6:
	movs r0, #0
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	movs r0, #1
	strb r0, [r1]
_080AB4E0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB4F0: .4byte gUnknown_08A20570

	THUMB_FUNC_END sub_80AB340

	THUMB_FUNC_START sub_80AB4F4
sub_80AB4F4: @ 0x080AB4F4
	ldr r3, [r3, #0x34]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, #0xc
	strh r2, [r3, #0x32]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #2
	strh r1, [r3, #0x2e]
	adds r2, r3, #0
	adds r2, #0x36
	movs r1, #1
	strb r1, [r2]
	adds r3, #0x3a
	strb r0, [r3]
	bx lr

	THUMB_FUNC_END sub_80AB4F4

	THUMB_FUNC_START sub_80AB514
sub_80AB514: @ 0x080AB514
	ldr r2, [r2, #0x34]
	mov ip, r2
	adds r2, #0x37
	movs r3, #0
	strb r1, [r2]
	adds r2, #1
	movs r1, #1
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x3a
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x39
	strb r3, [r0]
	bx lr

	THUMB_FUNC_END sub_80AB514

	THUMB_FUNC_START sub_80AB534
sub_80AB534: @ 0x080AB534
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AB544  @ gUnknown_08A206D8
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080AB544: .4byte gUnknown_08A206D8

	THUMB_FUNC_END sub_80AB534

	THUMB_FUNC_START sub_80AB548
sub_80AB548: @ 0x080AB548
	push {lr}
	movs r2, #0
	movs r3, #0xa0
	ldr r0, _080AB568  @ gUnknown_020007E0
	movs r1, #0x13
_080AB552:
	strb r2, [r0, #0xe]
	str r3, [r0, #4]
	str r3, [r0]
	strh r2, [r0, #0xa]
	strh r2, [r0, #8]
	adds r0, #0x10
	subs r1, #1
	cmp r1, #0
	bge _080AB552
	pop {r0}
	bx r0
	.align 2, 0
_080AB568: .4byte gUnknown_020007E0

	THUMB_FUNC_END sub_80AB548

	THUMB_FUNC_START sub_80AB56C
sub_80AB56C: @ 0x080AB56C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r9, r0
	movs r0, #0
	mov r8, r0
	ldr r6, _080AB5C8  @ gUnknown_020007E0
	movs r7, #0x13
_080AB580:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080AB674
	ldr r2, [r6]
	adds r1, r2, #0
	adds r1, #0xc0
	ldr r0, _080AB5CC  @ 0x00000C5F
	cmp r1, r0
	bhi _080AB606
	ldr r5, [r6, #4]
	ldr r0, _080AB5D0  @ 0x000003BF
	cmp r5, r0
	bgt _080AB5DC
	adds r0, r2, #0
	movs r1, #0xc
	bl __divsi3
	adds r4, r0, #0
	ldr r0, _080AB5D4  @ 0x000001FF
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0xc
	bl __divsi3
	movs r2, #0xff
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0xe
	adds r1, r4, #0
	ldr r3, _080AB5D8  @ gUnknown_08A20580
	bl PutSpriteExt
	b _080AB606
	.align 2, 0
_080AB5C8: .4byte gUnknown_020007E0
_080AB5CC: .4byte 0x00000C5F
_080AB5D0: .4byte 0x000003BF
_080AB5D4: .4byte 0x000001FF
_080AB5D8: .4byte gUnknown_08A20580
_080AB5DC:
	adds r0, r2, #0
	movs r1, #0xc
	bl __divsi3
	adds r4, r0, #0
	ldr r0, _080AB65C  @ 0x000001FF
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0xc
	bl __divsi3
	movs r2, #0xff
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0xe
	adds r1, r4, #0
	ldr r3, _080AB660  @ gUnknown_08A20578
	bl PutSpriteExt
_080AB606:
	movs r2, #8
	ldrsh r1, [r6, r2]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	movs r0, #3
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	bne _080AB638
	movs r0, #0xc
	ldrsb r0, [r6, r0]
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	ldrh r1, [r6, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0xa]
_080AB638:
	ldr r0, [r6]
	movs r2, #0xb4
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, _080AB664  @ 0x0000167F
	cmp r0, r1
	bhi _080AB654
	ldr r1, [r6, #4]
	ldr r0, _080AB668  @ 0xFFFFFC40
	cmp r1, r0
	blt _080AB654
	ldr r0, _080AB66C  @ 0x00000B3F
	cmp r1, r0
	ble _080AB670
_080AB654:
	movs r0, #0
	strb r0, [r6, #0xe]
	b _080AB674
	.align 2, 0
_080AB65C: .4byte 0x000001FF
_080AB660: .4byte gUnknown_08A20578
_080AB664: .4byte 0x0000167F
_080AB668: .4byte 0xFFFFFC40
_080AB66C: .4byte 0x00000B3F
_080AB670:
	movs r0, #1
	add r8, r0
_080AB674:
	subs r7, #1
	adds r6, #0x10
	cmp r7, #0
	blt _080AB67E
	b _080AB580
_080AB67E:
	ldr r0, _080AB71C  @ gUnknown_020007E0
	mov r1, r8
	cmp r1, #0x12
	bgt _080AB70E
	adds r6, r0, #0
	movs r5, #0
	movs r7, #0x13
_080AB68C:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _080AB706
	bl AdvanceGetLCGRNValue
	movs r1, #0xb
	bl DivRem
	cmp r0, #0
	bne _080AB706
	bl AdvanceGetLCGRNValue
	movs r1, #0x11
	bl DivRem
	adds r4, r0, #0
	bl AdvanceGetLCGRNValue
	movs r1, #0x1f
	bl DivRem
	subs r4, #8
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	str r0, [r6]
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r6, #4]
	bl AdvanceGetLCGRNValue
	movs r1, #7
	bl DivRem
	adds r0, #6
	strh r0, [r6, #8]
	bl AdvanceGetLCGRNValue
	movs r1, #0x19
	bl DivRem
	movs r2, #0x18
	negs r2, r2
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r6, #0xa]
	bl AdvanceGetLCGRNValue
	movs r1, #3
	bl DivRem
	adds r0, #1
	strb r0, [r6, #0xc]
	strb r5, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xe]
_080AB706:
	subs r7, #1
	adds r6, #0x10
	cmp r7, #0
	bge _080AB68C
_080AB70E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB71C: .4byte gUnknown_020007E0

	THUMB_FUNC_END sub_80AB56C

	THUMB_FUNC_START sub_80AB720
sub_80AB720: @ 0x080AB720
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	strh r0, [r4, #0x3e]
	ldr r1, _080AB754  @ 0x04000018
	bl sub_8014EC4
	movs r0, #0
	bl sub_8014EF4
	adds r0, r4, #0
	bl sub_80AA9D8
	ldr r0, _080AB758  @ gUnknown_03004990
	ldr r0, [r0]
	ldr r1, _080AB75C  @ 0x0000079E
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB754: .4byte 0x04000018
_080AB758: .4byte gUnknown_03004990
_080AB75C: .4byte 0x0000079E

	THUMB_FUNC_END sub_80AB720

	THUMB_FUNC_START sub_80AB760
sub_80AB760: @ 0x080AB760
	push {lr}
	ldr r0, _080AB774  @ gUnknown_08A206F8
	movs r1, #3
	bl Proc_Start
	ldr r0, _080AB778  @ gUnknown_02000000
	bl sub_8014DA8
	pop {r0}
	bx r0
	.align 2, 0
_080AB774: .4byte gUnknown_08A206F8
_080AB778: .4byte gUnknown_02000000

	THUMB_FUNC_END sub_80AB760

	THUMB_FUNC_START sub_80AB77C
sub_80AB77C: @ 0x080AB77C
	push {lr}
	ldr r0, _080AB790  @ gUnknown_08A206F8
	bl Proc_EndEach
	movs r0, #0
	bl SetPrimaryHBlankHandler
	pop {r0}
	bx r0
	.align 2, 0
_080AB790: .4byte gUnknown_08A206F8

	THUMB_FUNC_END sub_80AB77C

	THUMB_FUNC_START sub_80AB794
sub_80AB794: @ 0x080AB794
	push {lr}
	ldr r0, _080AB7B0  @ gUnknown_02000920
	ldr r1, _080AB7B4  @ 0x06001000
	movs r2, #0x80
	movs r3, #4
	bl Font_InitForUI
	ldr r0, _080AB7B8  @ gUnknown_02000938
	movs r1, #0xa
	bl Text_Init
	pop {r0}
	bx r0
	.align 2, 0
_080AB7B0: .4byte gUnknown_02000920
_080AB7B4: .4byte 0x06001000
_080AB7B8: .4byte gUnknown_02000938

	THUMB_FUNC_END sub_80AB794

	THUMB_FUNC_START sub_80AB7BC
sub_80AB7BC: @ 0x080AB7BC
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	cmp r1, #0
	beq _080AB820
	bl GetStringFromIndex
	adds r5, r0, #0
	ldr r0, _080AB814  @ gUnknown_02000920
	bl SetFont
	ldr r4, _080AB818  @ gUnknown_02000938
	adds r0, r4, #0
	bl Text_Clear
	adds r0, r4, #0
	movs r1, #0
	bl Text_SetXCursor
	adds r0, r4, #0
	movs r1, #0
	bl Text_SetColorId
	adds r0, r4, #0
	adds r1, r5, #0
	bl Text_AppendString
	adds r0, r4, #0
	movs r1, #0x2c
	bl Text_SetXCursor
	movs r0, #0xa1
	lsls r0, r0, #1
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_AppendString
	ldr r1, _080AB81C  @ gUnknown_020238F6
	adds r0, r4, #0
	bl Text_Draw
	b _080AB82C
	.align 2, 0
_080AB814: .4byte gUnknown_02000920
_080AB818: .4byte gUnknown_02000938
_080AB81C: .4byte gUnknown_020238F6
_080AB820:
	ldr r0, _080AB838  @ gUnknown_020238F6
	movs r1, #0xb
	movs r2, #1
	movs r3, #0
	bl TileMap_FillRect
_080AB82C:
	movs r0, #2
	bl BG_EnableSyncByMask
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB838: .4byte gUnknown_020238F6

	THUMB_FUNC_END sub_80AB7BC

	THUMB_FUNC_START sub_80AB83C
sub_80AB83C: @ 0x080AB83C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080AB870  @ gUnknown_08A20720
	adds r0, #0x42
	ldrb r0, [r0]
	bl sub_80A88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r1, r4, #0
	bl sub_80AB7BC
	cmp r4, #0
	bne _080AB86A
	adds r0, r6, #0
	adds r0, #0x36
	strb r4, [r0]
_080AB86A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB870: .4byte gUnknown_08A20720

	THUMB_FUNC_END sub_80AB83C

	THUMB_FUNC_START sub_80AB874
sub_80AB874: @ 0x080AB874
	adds r3, r0, #0
	adds r3, #0x30
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	adds r0, #0x31
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AB874

	THUMB_FUNC_START sub_80AB888
sub_80AB888: @ 0x080AB888
	adds r3, r0, #0
	adds r3, #0x32
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	adds r0, #0x33
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AB888

	THUMB_FUNC_START sub_80AB89C
sub_80AB89C: @ 0x080AB89C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r0, #0x31
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	adds r0, #0x14
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080AB8BE
	adds r0, r4, #0
	movs r1, #1
	bl sub_80AB874
_080AB8BE:
	movs r1, #0
	adds r7, r4, #0
	adds r7, #0x32
	adds r6, r4, #0
	adds r6, #0x33
	adds r2, r4, #0
	adds r2, #0x37
_080AB8CC:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080AB8D6
	adds r5, #1
_080AB8D6:
	adds r1, #1
	cmp r1, #2
	ble _080AB8CC
	cmp r5, #0
	ble _080AB8FC
	adds r0, r4, #0
	movs r1, #2
	bl sub_80AB874
	cmp r5, #2
	bgt _080AB8F4
	adds r0, r4, #0
	movs r1, #4
	bl sub_80AB874
_080AB8F4:
	adds r0, r4, #0
	movs r1, #8
	bl sub_80AB874
_080AB8FC:
	cmp r5, #2
	bgt _080AB908
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_80AB874
_080AB908:
	movs r0, #0
	strb r0, [r7]
	strb r0, [r6]
	bl sub_80A32F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AB920
	adds r0, r4, #0
	movs r1, #1
	bl sub_80AB888
_080AB920:
	bl sub_80A3328
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AB932
	adds r0, r4, #0
	movs r1, #2
	bl sub_80AB888
_080AB932:
	bl sub_80A332C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AB944
	adds r0, r4, #0
	movs r1, #4
	bl sub_80AB888
_080AB944:
	bl sub_80A33EC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AB956
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_80AB888
_080AB956:
	bl sub_80A341C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AB968
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_80AB888
_080AB968:
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB984
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x31
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080AB984:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AB89C

	THUMB_FUNC_START sub_80AB98C
sub_80AB98C: @ 0x080AB98C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	cmp r2, #0
	ble _080AB9CA
	movs r5, #0
	lsls r6, r1, #0x18
_080AB9A0:
	adds r0, r4, #0
	bl sub_80A5218
	lsls r0, r0, #0x18
	cmp r0, r6
	beq _080AB9C6
	cmp r4, #2
	bne _080AB9B4
	movs r4, #0
	b _080AB9BA
_080AB9B4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080AB9BA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080AB9A0
	b _080AB9F2
_080AB9C6:
	adds r0, r4, #0
	b _080AB9F4
_080AB9CA:
	movs r5, #0
	lsls r6, r1, #0x18
_080AB9CE:
	adds r0, r4, #0
	bl sub_80A5218
	lsls r0, r0, #0x18
	cmp r0, r6
	beq _080AB9C6
	cmp r4, #0
	bne _080AB9E2
	movs r4, #2
	b _080AB9E8
_080AB9E2:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080AB9E8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080AB9CE
_080AB9F2:
	movs r0, #0xff
_080AB9F4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AB98C

	THUMB_FUNC_START sub_80AB9FC
sub_80AB9FC: @ 0x080AB9FC
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #0
	adds r0, #0x2c
	ldrb r5, [r0]
	adds r0, #0x16
	ldrh r0, [r0]
	cmp r0, #4
	beq _080ABA34
	cmp r0, #4
	bgt _080ABA20
	cmp r0, #1
	beq _080ABA90
	cmp r0, #2
	beq _080ABA3E
	b _080ABA40
_080ABA20:
	cmp r0, #0x10
	beq _080ABA40
	cmp r0, #0x10
	bgt _080ABA2E
	cmp r0, #8
	beq _080ABA3E
	b _080ABA40
_080ABA2E:
	cmp r0, #0x80
	bne _080ABA40
	b _080ABA3E
_080ABA34:
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080ABA40
_080ABA3E:
	movs r1, #1
_080ABA40:
	lsls r0, r2, #0x18
	adds r2, r0, #0
	cmp r2, #0
	ble _080ABA5C
	mov r0, ip
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r4, r0, #0
	cmp r3, #2
	bne _080ABA58
	movs r0, #0
	b _080ABA6E
_080ABA58:
	adds r0, r3, #1
	b _080ABA6E
_080ABA5C:
	mov r0, ip
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r4, r0, #0
	cmp r3, #0
	bne _080ABA6C
	movs r0, #2
	b _080ABA6E
_080ABA6C:
	subs r0, r3, #1
_080ABA6E:
	strb r0, [r4]
	mov r0, ip
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x40
	beq _080ABA8C
	ldrb r0, [r4]
	asrs r2, r2, #0x18
	bl sub_80AB98C
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, r0
	beq _080ABA90
_080ABA8C:
	movs r0, #1
	b _080ABA92
_080ABA90:
	movs r0, #0
_080ABA92:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AB9FC

	THUMB_FUNC_START sub_80ABA98
sub_80ABA98: @ 0x080ABA98
	push {lr}
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r0, #0x30
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _080ABAAE
	movs r0, #0
	b _080ABAB0
_080ABAAE:
	movs r0, #1
_080ABAB0:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80ABA98

	THUMB_FUNC_START sub_80ABAB4
sub_80ABAB4: @ 0x080ABAB4
	push {r4, lr}
	mov ip, r0
	mov r2, ip
	adds r2, #0x29
	adds r0, #0x2b
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldr r3, _080ABB24  @ gLCDControlBuffer
	ldrb r1, [r3, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080ABB28
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r1, #4
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r4, #0x10
	negs r4, r4
	adds r1, r4, #0
	subs r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x2e
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #1
	movs r2, #0x60
	negs r2, r2
	adds r1, r2, #0
	subs r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x32
	strb r1, [r0]
	b _080ABB5E
	.align 2, 0
_080ABB24: .4byte gLCDControlBuffer
_080ABB28:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x2f
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #1
	movs r1, #0x50
	subs r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x33
	strb r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x78
	adds r1, r3, #0
	adds r1, #0x2e
	strb r0, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, #0x50
	adds r1, #4
	strb r0, [r1]
_080ABB5E:
	adds r2, r3, #0
	adds r2, #0x35
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
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
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
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x27
	bls _080ABBA8
	mov r0, ip
	bl Proc_Break
_080ABBA8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ABAB4

	THUMB_FUNC_START sub_80ABBB0
sub_80ABBB0: @ 0x080ABBB0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _080ABBE0  @ gUnknown_08A2073C
	adds r1, r3, #0
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r2, #0x2a
	movs r1, #0
	strb r4, [r2]
	adds r2, #1
	strb r5, [r2]
	adds r0, #0x29
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ABBE0: .4byte gUnknown_08A2073C

	THUMB_FUNC_END sub_80ABBB0

	THUMB_FUNC_START sub_80ABBE4
sub_80ABBE4: @ 0x080ABBE4
	push {lr}
	ldr r0, _080ABBF8  @ gBG2TilemapBuffer
	ldr r1, _080ABBFC  @ 0x06007000
	movs r2, #0x80
	lsls r2, r2, #4
	bl RegisterTileGraphics
	pop {r0}
	bx r0
	.align 2, 0
_080ABBF8: .4byte gBG2TilemapBuffer
_080ABBFC: .4byte 0x06007000

	THUMB_FUNC_END sub_80ABBE4

	THUMB_FUNC_START sub_80ABC00
sub_80ABC00: @ 0x080ABC00
	push {lr}
	adds r1, r0, #0
	ldr r0, _080ABC10  @ gUnknown_08A2075C
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080ABC10: .4byte gUnknown_08A2075C

	THUMB_FUNC_END sub_80ABC00

	THUMB_FUNC_START sub_80ABC14
sub_80ABC14: @ 0x080ABC14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x120
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	cmp r5, #2
	bls _080ABC26
	b _080ABD48
_080ABC26:
	adds r0, r5, #0
	bl sub_80A5218
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	beq _080ABD04
	adds r0, r5, #0
	mov r1, sp
	bl sub_80A522C
	mov r0, sp
	movs r2, #0xe
	ldrsb r2, [r0, r2]
	ldrb r1, [r0, #0x14]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080ABC6C
	mov r0, sp
	adds r0, #0x4a
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #8
	bne _080ABC6C
	add r4, sp, #0x4c
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80A5274
	adds r0, r4, #0
	bl sub_80BD224
	adds r2, r0, #0
_080ABC6C:
	mov r0, sp
	movs r4, #0xe
	ldrsb r4, [r0, r4]
	movs r5, #0
	strb r2, [r0, #0xe]
	bl sub_8089768
	adds r1, r7, #0
	adds r1, #0x37
	adds r1, r1, r6
	strb r0, [r1]
	mov r0, sp
	strb r4, [r0, #0xe]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #0x48
	adds r0, r0, r1
	ldr r1, [sp]
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3a
	adds r4, r0, r6
	strb r5, [r4]
	adds r0, r6, #0
	bl sub_80A52BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ABCAE
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_080ABCAE:
	adds r0, r6, #0
	bl sub_80A5290
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ABCC2
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_080ABCC2:
	mov r0, sp
	ldrb r1, [r0, #0x14]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080ABCD6
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_080ABCD6:
	ldr r0, _080ABCF8  @ gUnknown_02000940
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r0]
	ldr r0, _080ABCFC  @ gUnknown_02000944
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #0x1b]
	strb r1, [r0]
	lsls r1, r6, #3
	ldr r0, _080ABD00  @ gUnknown_02000948
	adds r1, r1, r0
	add r0, sp, #0x40
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	b _080ABD7E
	.align 2, 0
_080ABCF8: .4byte gUnknown_02000940
_080ABCFC: .4byte gUnknown_02000944
_080ABD00: .4byte gUnknown_02000948
_080ABD04:
	adds r0, r7, #0
	adds r0, #0x37
	adds r0, r0, r6
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x3a
	adds r0, r0, r6
	strb r2, [r0]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #0x48
	adds r0, r0, r1
	str r2, [r0]
	ldr r0, _080ABD3C  @ gUnknown_02000940
	adds r0, r6, r0
	strb r2, [r0]
	ldr r0, _080ABD40  @ gUnknown_02000944
	adds r0, r6, r0
	strb r2, [r0]
	lsls r0, r6, #3
	ldr r1, _080ABD44  @ gUnknown_02000948
	adds r0, r0, r1
	movs r1, #0
	movs r2, #8
	bl memset
	b _080ABD7E
	.align 2, 0
_080ABD3C: .4byte gUnknown_02000940
_080ABD40: .4byte gUnknown_02000944
_080ABD44: .4byte gUnknown_02000948
_080ABD48:
	adds r4, r7, #0
	adds r4, #0x44
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080ABD7E
	movs r0, #3
	bl sub_80A5DA8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ABD7A
	movs r0, #3
	mov r1, sp
	bl sub_80A5DFC
	mov r0, sp
	ldrb r0, [r0, #0xc]
	adds r1, r7, #0
	adds r1, #0x3f
	strb r0, [r1]
	ldr r0, [sp]
	str r0, [r7, #0x54]
	b _080ABD7E
_080ABD7A:
	movs r0, #0xf0
	strh r0, [r4]
_080ABD7E:
	add sp, #0x120
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ABC14

	THUMB_FUNC_START sub_80ABD88
sub_80ABD88: @ 0x080ABD88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r6, #0
	movs r7, #0x40
_080ABD98:
	ldr r0, _080ABDE0  @ gUnknown_02000940
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	asrs r5, r0, #0x1f
	movs r0, #4
	ands r5, r0
	ldr r1, _080ABDE4  @ gUnknown_02000948
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080ABDEC
	ldr r0, _080ABDE8  @ gUnknown_02000944
	adds r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #1
	bne _080ABDCA
	movs r0, #0x10
	orrs r5, r0
_080ABDCA:
	cmp r1, #2
	bne _080ABDD6
	movs r0, #0x20
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080ABDD6:
	cmp r1, #3
	bne _080ABDFE
_080ABDDA:
	orrs r5, r7
	b _080ABDFE
	.align 2, 0
_080ABDE0: .4byte gUnknown_02000940
_080ABDE4: .4byte gUnknown_02000948
_080ABDE8: .4byte gUnknown_02000944
_080ABDEC:
	ldr r0, _080ABE38  @ gUnknown_02000944
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #3
	beq _080ABDDA
	movs r0, #0x20
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080ABDFE:
	cmp r6, r8
	beq _080ABE0A
	movs r0, #2
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080ABE0A:
	movs r1, #1
	adds r0, r5, #0
	orrs r0, r1
	lsls r4, r6, #1
	adds r1, r4, #0
	adds r1, #0x1a
	bl sub_80895B4
	adds r4, #0x1b
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80895B4
	adds r6, #1
	cmp r6, #2
	ble _080ABD98
	bl EnablePaletteSync
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ABE38: .4byte gUnknown_02000944

	THUMB_FUNC_END sub_80ABD88

	THUMB_FUNC_START sub_80ABE3C
sub_80ABE3C: @ 0x080ABE3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	str r1, [sp]
	asrs r5, r5, #1
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0x10
	ble _080ABE5E
	movs r0, #0xf
	ands r0, r5
	movs r1, #0x10
	subs r5, r1, r0
_080ABE5E:
	movs r2, #0
_080ABE60:
	ldr r1, _080ABE90  @ gUnknown_02000940
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r1, r2, #1
	str r1, [sp, #4]
	cmp r0, #0
	beq _080ABF22
	lsls r0, r2, #6
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080ABE94  @ gUnknown_02022ABA
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [sp]
	cmp r2, r0
	bne _080ABEA0
	ldr r1, _080ABE98  @ gUnknown_08A07AEA
	mov ip, r1
	ldr r6, _080ABE9C  @ gUnknown_08A07BEA
	b _080ABEA6
	.align 2, 0
_080ABE90: .4byte gUnknown_02000940
_080ABE94: .4byte gUnknown_02022ABA
_080ABE98: .4byte gUnknown_08A07AEA
_080ABE9C: .4byte gUnknown_08A07BEA
_080ABEA0:
	ldr r0, _080ABF3C  @ gUnknown_08A07B0A
	mov ip, r0
	ldr r6, _080ABF40  @ gUnknown_08A07C0A
_080ABEA6:
	adds r2, #1
	str r2, [sp, #4]
	movs r0, #0x10
	subs r7, r0, r5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sl, r1
	movs r0, #6
	mov r9, r0
_080ABEB8:
	mov r1, ip
	ldrh r4, [r1]
	movs r0, #0x1f
	ands r0, r4
	adds r2, r0, #0
	muls r2, r5, r2
	ldrh r3, [r6]
	movs r0, #0x1f
	ands r0, r3
	muls r0, r7, r0
	adds r2, r2, r0
	asrs r2, r2, #4
	movs r0, #0x1f
	ands r2, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r4
	adds r1, r0, #0
	muls r1, r5, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	muls r0, r7, r0
	adds r1, r1, r0
	asrs r1, r1, #4
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r1, r0
	adds r2, r2, r1
	mov r0, sl
	ands r0, r4
	adds r1, r0, #0
	muls r1, r5, r1
	mov r0, sl
	ands r0, r3
	muls r0, r7, r0
	adds r1, r1, r0
	asrs r1, r1, #4
	mov r0, sl
	ands r1, r0
	adds r2, r2, r1
	mov r1, r8
	strh r2, [r1]
	movs r0, #2
	add r8, r0
	add ip, r0
	adds r6, #2
	movs r1, #1
	negs r1, r1
	add r9, r1
	mov r0, r9
	cmp r0, #0
	bge _080ABEB8
_080ABF22:
	ldr r2, [sp, #4]
	cmp r2, #2
	ble _080ABE60
	bl EnablePaletteSync
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ABF3C: .4byte gUnknown_08A07B0A
_080ABF40: .4byte gUnknown_08A07C0A

	THUMB_FUNC_END sub_80ABE3C

	THUMB_FUNC_START sub_80ABF44
sub_80ABF44: @ 0x080ABF44
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0
	movs r2, #1
	cmp r2, r3
	bge _080ABF6A
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r4, [r0]
_080ABF5A:
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _080ABF64
	adds r1, #1
_080ABF64:
	lsls r2, r2, #1
	cmp r2, r3
	blt _080ABF5A
_080ABF6A:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80ABF44

	THUMB_FUNC_START sub_80ABF74
sub_80ABF74: @ 0x080ABF74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0x60
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080ABF94
	ldr r6, _080ABF90  @ 0x06014000
	movs r2, #0xe
	movs r4, #2
	b _080ABFA6
	.align 2, 0
_080ABF90: .4byte 0x06014000
_080ABF94:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080ABFA2
	ldr r6, _080ABFD4  @ 0x06014800
	movs r2, #0xe
	movs r4, #2
_080ABFA2:
	cmp r4, #0
	ble _080ABFC8
_080ABFA6:
	lsls r7, r2, #3
	ldr r5, _080ABFD8  @ 0x060121C0
	ldr r0, _080ABFDC  @ 0x001FFFFF
	mov r8, r0
_080ABFAE:
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	ands r2, r7
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bne _080ABFAE
_080ABFC8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ABFD4: .4byte 0x06014800
_080ABFD8: .4byte 0x060121C0
_080ABFDC: .4byte 0x001FFFFF

	THUMB_FUNC_END sub_80ABF74

	THUMB_FUNC_START sub_80ABFE0
sub_80ABFE0: @ 0x080ABFE0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x38
	movs r5, #4
_080ABFEA:
	adds r0, r4, #0
	bl Text_Clear
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bge _080ABFEA
	adds r4, r6, #0
	adds r4, #0x38
	ldr r1, _080AC020  @ gUnknown_08A20A08
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl GetStringFromIndex
_080AC00E:
	adds r1, r0, #0
_080AC010:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AC02C
	cmp r0, #1
	bne _080AC024
	adds r4, #8
	adds r1, #1
	b _080AC010
	.align 2, 0
_080AC020: .4byte gUnknown_08A20A08
_080AC024:
	adds r0, r4, #0
	bl Text_AppendChar
	b _080AC00E
_080AC02C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ABFE0

	THUMB_FUNC_START sub_80AC034
sub_80AC034: @ 0x080AC034
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _080AC070  @ gUnknown_02022E76
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0xa
	movs r3, #0
	bl TileMap_FillRect
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r5, #0x38
	ldr r0, _080AC074  @ 0xFFFFFE56
	adds r7, r4, r0
	movs r4, #4
_080AC052:
	adds r1, r6, r7
	adds r0, r5, #0
	bl Text_Draw
	adds r6, #0x80
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bge _080AC052
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC070: .4byte gUnknown_02022E76
_080AC074: .4byte 0xFFFFFE56

	THUMB_FUNC_END sub_80AC034

	THUMB_FUNC_START sub_80AC078
sub_80AC078: @ 0x080AC078
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x58]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AC078

	THUMB_FUNC_START sub_80AC084
sub_80AC084: @ 0x080AC084
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_8003D20
	bl LoadUiFrameGraphics
	bl Font_InitForUIDefault
	adds r4, r7, #0
	adds r4, #0x38
	movs r5, #4
_080AC09A:
	adds r0, r4, #0
	movs r1, #0xe
	bl Text_Init
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bge _080AC09A
	movs r6, #0
	ldr r0, _080AC178  @ gUnknown_08A25DCC
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	adds r2, r4, #0
	bl CopyToPaletteBuffer
	ldr r0, _080AC17C  @ gUnknown_08A268D8
	movs r1, #0xe0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080AC180  @ gUnknown_08A27F68
	movs r1, #0x90
	lsls r1, r1, #2
	adds r2, r4, #0
	bl CopyToPaletteBuffer
	ldr r0, _080AC184  @ gUnknown_08A295B4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080AC188  @ gUnknown_08A28A0C
	ldr r1, _080AC18C  @ 0x06010800
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AC190  @ gUnknown_08A29418
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CopyToPaletteBuffer
	bl EnablePaletteSync
	ldr r0, [r7, #0x14]
	ldr r0, [r0, #0x58]
	adds r0, #0x29
	strb r6, [r0]
	ldr r0, _080AC194  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r4, _080AC198  @ gBG1TilemapBuffer
	adds r0, r4, #0
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AC19C  @ gUnknown_08A29558
	ldr r5, _080AC1A0  @ gUnknown_02020188
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	movs r0, #0xd1
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r4, #0
	adds r1, r5, #0
	bl CallARM_FillTileRect
	adds r0, r7, #0
	bl sub_80ABFE0
	adds r0, r7, #0
	bl sub_80AC034
	movs r0, #3
	bl BG_EnableSyncByMask
	adds r0, r7, #0
	bl sub_80AC698
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x30
	strb r6, [r1]
	ldr r0, [r7, #0x34]
	adds r0, #0x2b
	strb r6, [r0]
	ldr r2, [r7, #0x34]
	ldr r3, _080AC1A4  @ gUnknown_08A209FC
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2, #0x2c]
	ldr r2, [r7, #0x34]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2, #0x2e]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC178: .4byte gUnknown_08A25DCC
_080AC17C: .4byte gUnknown_08A268D8
_080AC180: .4byte gUnknown_08A27F68
_080AC184: .4byte gUnknown_08A295B4
_080AC188: .4byte gUnknown_08A28A0C
_080AC18C: .4byte 0x06010800
_080AC190: .4byte gUnknown_08A29418
_080AC194: .4byte gBG0TilemapBuffer
_080AC198: .4byte gBG1TilemapBuffer
_080AC19C: .4byte gUnknown_08A29558
_080AC1A0: .4byte gUnknown_02020188
_080AC1A4: .4byte gUnknown_08A209FC

	THUMB_FUNC_END sub_80AC084

	THUMB_FUNC_START sub_80AC1A8
sub_80AC1A8: @ 0x080AC1A8
	push {lr}
	adds r2, r0, #0
	adds r2, #0x30
	movs r1, #0
	strb r1, [r2]
	str r1, [r0, #0x2c]
	bl sub_80AC084
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AC1A8

	THUMB_FUNC_START sub_80AC1BC
sub_80AC1BC: @ 0x080AC1BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	adds r4, r0, #1
	str r4, [r5, #0x2c]
	ldr r3, _080AC228  @ gLCDControlBuffer
	ldrb r0, [r3, #1]
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
	strb r0, [r3, #1]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	muls r0, r1, r0
	cmp r0, #0
	bge _080AC1F2
	adds r0, #0xff
_080AC1F2:
	asrs r0, r0, #8
	movs r1, #0x50
	subs r1, r1, r0
	adds r2, r3, #0
	adds r2, #0x2d
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x50
	subs r0, r0, r1
	adds r2, #4
	strb r0, [r2]
	subs r2, #5
	movs r0, #0xf0
	strb r0, [r2]
	adds r1, #0x50
	adds r0, r3, #0
	adds r0, #0x30
	strb r1, [r0]
	cmp r4, #0x10
	bne _080AC220
	adds r0, r5, #0
	bl Proc_Break
_080AC220:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC228: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AC1BC

	THUMB_FUNC_START sub_80AC22C
sub_80AC22C: @ 0x080AC22C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	adds r4, r0, #1
	str r4, [r5, #0x2c]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	muls r0, r1, r0
	cmp r0, #0
	bge _080AC248
	adds r0, #0xff
_080AC248:
	asrs r0, r0, #8
	movs r2, #0x50
	subs r2, r2, r0
	ldr r3, _080AC284  @ gLCDControlBuffer
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x31
	strb r2, [r0]
	subs r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	movs r1, #0x60
	negs r1, r1
	adds r0, r1, #0
	subs r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x30
	strb r0, [r1]
	cmp r4, #0x10
	bne _080AC27C
	adds r0, r5, #0
	bl Proc_Break
_080AC27C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC284: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AC22C

	THUMB_FUNC_START sub_80AC288
sub_80AC288: @ 0x080AC288
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _080AC2AC  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC2B8
	adds r1, r4, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #0
	bne _080AC2B0
	movs r0, #2
	b _080AC2B2
	.align 2, 0
_080AC2AC: .4byte gKeyStatusPtr
_080AC2B0:
	subs r0, #1
_080AC2B2:
	strb r0, [r1]
	movs r2, #1
	b _080AC2D8
_080AC2B8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AC2D4
	adds r1, r4, #0
	adds r1, #0x30
	ldrb r0, [r1]
	cmp r0, #2
	bne _080AC2CE
	strb r2, [r1]
	b _080AC2D2
_080AC2CE:
	adds r0, #1
	strb r0, [r1]
_080AC2D2:
	movs r2, #1
_080AC2D4:
	cmp r2, #0
	beq _080AC324
_080AC2D8:
	ldr r0, _080AC31C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AC2EA
	movs r0, #0x66
	bl m4aSongNumStart
_080AC2EA:
	ldr r0, [r4, #0x34]
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r1, [r2]
	adds r0, #0x2b
	strb r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r1, _080AC320  @ gUnknown_08A209FC
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_80AC680
	adds r0, r4, #0
	bl sub_80ABFE0
	adds r0, r4, #0
	bl sub_80AC034
	b _080AC3CC
	.align 2, 0
_080AC31C: .4byte gRAMChapterData
_080AC320: .4byte gUnknown_08A209FC
_080AC324:
	ldr r0, [r4, #0x34]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080AC3CC
	ldr r0, _080AC36C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080AC398
	str r2, [r4, #0x2c]
	ldr r0, _080AC370  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AC358
	movs r0, #0x6a
	bl m4aSongNumStart
_080AC358:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AC37E
	cmp r0, #1
	bgt _080AC374
	cmp r0, #0
	beq _080AC37A
	b _080AC390
	.align 2, 0
_080AC36C: .4byte gKeyStatusPtr
_080AC370: .4byte gRAMChapterData
_080AC374:
	cmp r0, #2
	beq _080AC388
	b _080AC390
_080AC37A:
	movs r0, #0
	b _080AC380
_080AC37E:
	movs r0, #1
_080AC380:
	movs r1, #0
	bl savemenu_SetDifficultyChoice
	b _080AC390
_080AC388:
	movs r0, #2
	movs r1, #0
	bl savemenu_SetDifficultyChoice
_080AC390:
	adds r0, r4, #0
	movs r1, #1
	bl Proc_Goto
_080AC398:
	ldr r0, _080AC3D4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AC3CC
	movs r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _080AC3D8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AC3BC
	movs r0, #0x6b
	bl m4aSongNumStart
_080AC3BC:
	movs r0, #3
	movs r1, #0
	bl savemenu_SetDifficultyChoice
	adds r0, r4, #0
	movs r1, #2
	bl Proc_Goto
_080AC3CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC3D4: .4byte gKeyStatusPtr
_080AC3D8: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80AC288

	THUMB_FUNC_START nullsub_64
nullsub_64: @ 0x080AC3DC
	bx lr

	THUMB_FUNC_END nullsub_64

	THUMB_FUNC_START NewNewGameDifficultySelect
NewNewGameDifficultySelect: @ 0x080AC3E0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AC3F0  @ gUnknown_08A20A10
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080AC3F0: .4byte gUnknown_08A20A10

	THUMB_FUNC_END NewNewGameDifficultySelect

	THUMB_FUNC_START sub_80AC3F4
sub_80AC3F4: @ 0x080AC3F4
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x2a
	movs r0, #0
	strb r0, [r1]
	strh r0, [r2, #0x2e]
	strh r0, [r2, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80AC3F4

	THUMB_FUNC_START sub_80AC418
sub_80AC418: @ 0x080AC418
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC452
	ldrh r0, [r6, #0x34]
	ldrh r2, [r6, #0x30]
	subs r0, r0, r2
	movs r3, #0
	strh r0, [r6, #0x38]
	ldrh r0, [r6, #0x36]
	ldrh r1, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r6, #0x3a]
	strh r2, [r6, #0x2c]
	strh r1, [r6, #0x2e]
	strh r3, [r6, #0x3c]
	ldrb r1, [r4]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_080AC452:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AC4B8
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080AC4A6
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	movs r1, #4
	movs r2, #0
	bl sub_800B84C
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #5
	movs r3, #0x38
	ldrsh r0, [r6, r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	bl DivArm
	ldrh r1, [r6, #0x30]
	adds r1, r1, r0
	strh r1, [r6, #0x2c]
	movs r1, #0x3a
	ldrsh r0, [r6, r1]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	bl DivArm
	ldrh r1, [r6, #0x32]
	adds r1, r1, r0
	strh r1, [r6, #0x2e]
	b _080AC4B8
_080AC4A6:
	ldrh r0, [r6, #0x34]
	strh r0, [r6, #0x2c]
	ldrh r0, [r6, #0x36]
	strh r0, [r6, #0x2e]
	ldrb r1, [r4]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
_080AC4B8:
	movs r3, #0x2c
	ldrsh r1, [r6, r3]
	ldr r3, _080AC4F0  @ gUnknown_08A20B14
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r2, #7
	ands r0, r2
	adds r0, r0, r3
	movs r3, #0x2e
	ldrsh r2, [r6, r3]
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r3, _080AC4F4  @ gUnknown_08A20A98
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	bl PutSpriteExt
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AC4F0: .4byte gUnknown_08A20B14
_080AC4F4: .4byte gUnknown_08A20A98

	THUMB_FUNC_END sub_80AC418

	THUMB_FUNC_START sub_80AC4F8
sub_80AC4F8: @ 0x080AC4F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r2, #0
	ldr r7, _080AC530  @ gPaletteBuffer
	ldr r0, _080AC534  @ gUnknown_08A28088
	mov r8, r0
	lsls r0, r3, #6
	ldr r1, _080AC538  @ 0x000002A2
	adds r0, r0, r1
	adds r6, r0, r7
	lsls r1, r3, #6
	ldr r0, _080AC53C  @ 0x000002C2
	adds r4, r7, r0
	ldr r0, _080AC540  @ gUnknown_08A2949A
	adds r5, r1, r0
_080AC522:
	cmp r2, r3
	bne _080AC544
	ldrh r0, [r5]
	strh r0, [r6]
	lsls r1, r2, #5
	b _080AC550
	.align 2, 0
_080AC530: .4byte gPaletteBuffer
_080AC534: .4byte gUnknown_08A28088
_080AC538: .4byte 0x000002A2
_080AC53C: .4byte 0x000002C2
_080AC540: .4byte gUnknown_08A2949A
_080AC544:
	lsls r0, r2, #6
	ldr r1, _080AC580  @ gUnknown_08A294BA
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	lsls r1, r3, #5
_080AC550:
	adds r4, #0x40
	adds r2, #1
	cmp r2, #2
	ble _080AC522
	movs r0, #0x3f
	mov r2, ip
	ands r0, r2
	lsrs r0, r0, #2
	ldr r2, _080AC584  @ 0x00000151
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	bl EnablePaletteSync
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC580: .4byte gUnknown_08A294BA
_080AC584: .4byte 0x00000151

	THUMB_FUNC_END sub_80AC4F8

	THUMB_FUNC_START sub_80AC588
sub_80AC588: @ 0x080AC588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _080AC600  @ gUnknown_08A20AA0
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #0x38
	movs r2, #4
	bl PutSpriteExt
	ldr r3, _080AC604  @ gUnknown_08A20AAE
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #4
	movs r1, #0x38
	movs r2, #4
	bl PutSpriteExt
	movs r5, #0
	movs r0, #0x2b
	adds r0, r0, r6
	mov sl, r0
	movs r1, #6
	mov r9, r1
	movs r2, #5
	mov r8, r2
	movs r7, #0xc0
	lsls r7, r7, #0xe
_080AC5D8:
	lsrs r4, r7, #0x10
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r5, r0
	bne _080AC60C
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	movs r0, #0xf
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #4
	movs r1, #8
	ldr r3, _080AC608  @ gUnknown_08A20AC2
	bl PutSpriteExt
	b _080AC624
	.align 2, 0
_080AC600: .4byte gUnknown_08A20AA0
_080AC604: .4byte gUnknown_08A20AAE
_080AC608: .4byte gUnknown_08A20AC2
_080AC60C:
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	movs r0, #0xf
	mov r1, r9
	ands r0, r1
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #4
	movs r1, #8
	ldr r3, _080AC678  @ gUnknown_08A20AC2
	bl PutSpriteExt
_080AC624:
	asrs r2, r4, #0x10
	ldr r1, _080AC67C  @ gUnknown_08A20B08
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #4
	movs r4, #0x80
	lsls r4, r4, #0xc
	asrs r1, r4, #0x10
	bl PutSpriteExt
	movs r0, #2
	add r9, r0
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r7, r7, r1
	adds r5, #1
	cmp r5, #2
	ble _080AC5D8
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	mov r2, sl
	ldrb r1, [r2]
	bl sub_80AC4F8
	adds r0, r6, #0
	bl sub_80AC418
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC678: .4byte gUnknown_08A20AC2
_080AC67C: .4byte gUnknown_08A20B08

	THUMB_FUNC_END sub_80AC588

	THUMB_FUNC_START sub_80AC680
sub_80AC680: @ 0x080AC680
	ldrh r3, [r0, #0x2c]
	strh r3, [r0, #0x30]
	ldrh r3, [r0, #0x2e]
	strh r3, [r0, #0x32]
	strh r1, [r0, #0x34]
	strh r2, [r0, #0x36]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AC680

	THUMB_FUNC_START sub_80AC698
sub_80AC698: @ 0x080AC698
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AC6A8  @ gUnknown_08A20B1C
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080AC6A8: .4byte gUnknown_08A20B1C

	THUMB_FUNC_END sub_80AC698

	THUMB_FUNC_START sub_80AC6AC
sub_80AC6AC: @ 0x080AC6AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	mov r9, r2
	mov sl, r3
	ldr r3, [sp, #0x40]
	ldr r0, _080AC780  @ 0xFFFFFC00
	adds r0, r0, r3
	mov r8, r0
	mov r1, r8
	muls r1, r0, r1
	lsls r5, r3, #1
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r5, r6
	muls r0, r1, r0
	asrs r1, r0, #0x1f
	adds r4, r3, #0
	muls r4, r3, r4
	movs r2, #0xc0
	lsls r2, r2, #4
	subs r2, r2, r5
	muls r4, r2, r4
	asrs r5, r4, #0x1f
	subs r6, r6, r3
	adds r2, r6, #0
	muls r2, r6, r2
	muls r2, r3, r2
	str r2, [sp, #0x18]
	asrs r2, r2, #0x1f
	str r2, [sp, #0x1c]
	mov r2, r8
	muls r2, r3, r2
	muls r2, r3, r2
	str r2, [sp, #8]
	asrs r2, r2, #0x1f
	str r2, [sp, #0xc]
	ldr r2, [sp, #4]
	asrs r3, r2, #0x1f
	bl __muldi3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r2, r9
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, r9
	ldr r6, [sp]
	subs r3, r3, r6
	mov r9, r3
	asrs r0, r3, #1
	adds r2, r0, #0
	mov r0, r9
	asrs r3, r0, #0x1f
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, sl
	ldr r6, [sp, #4]
	subs r3, r3, r6
	mov sl, r3
	asrs r0, r3, #1
	adds r2, r0, #0
	mov r0, sl
	asrs r3, r0, #0x1f
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #2
	lsrs r2, r0, #0x1e
	adds r0, r3, #0
	orrs r0, r2
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AC780: .4byte 0xFFFFFC00

	THUMB_FUNC_END sub_80AC6AC

	THUMB_FUNC_START sub_80AC784
sub_80AC784: @ 0x080AC784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	mov r9, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r2, [sp, #0x38]
	lsls r3, r2, #1
	adds r3, r3, r2
	lsls r0, r3, #1
	adds r4, r2, #0
	muls r4, r0, r4
	lsls r5, r3, #0xb
	subs r0, r4, r5
	asrs r1, r0, #0x1f
	subs r4, r5, r4
	str r4, [sp]
	asrs r4, r4, #0x1f
	str r4, [sp, #4]
	muls r3, r2, r3
	lsls r4, r2, #0xc
	subs r4, r3, r4
	movs r5, #0x80
	lsls r5, r5, #0xd
	adds r4, r4, r5
	asrs r5, r4, #0x1f
	lsls r2, r2, #0xb
	subs r2, r3, r2
	str r2, [sp, #8]
	asrs r2, r2, #0x1f
	str r2, [sp, #0xc]
	mov r2, r9
	asrs r3, r2, #0x1f
	bl __muldi3
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r2, r6, #0
	asrs r3, r6, #0x1f
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, sl
	subs r6, r6, r3
	asrs r0, r6, #1
	adds r2, r0, #0
	asrs r3, r6, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r3, r8
	mov r5, r9
	subs r3, r3, r5
	mov r8, r3
	asrs r0, r3, #1
	adds r2, r0, #0
	mov r7, r8
	asrs r3, r7, #0x1f
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldi3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r0, r2
	adcs r1, r3
	lsls r3, r1, #0xc
	lsrs r2, r0, #0x14
	adds r0, r3, #0
	orrs r0, r2
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AC784

	THUMB_FUNC_START sub_80AC844
sub_80AC844: @ 0x080AC844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	mov r9, r1
	movs r0, #3
	ands r0, r3
	bl BG_GetMapBuffer
	str r0, [sp]
	lsls r4, r4, #5
	adds r4, r4, r5
	lsls r4, r4, #1
	add sl, r4
	mov r2, r8
	cmp r2, #0
	bge _080AC886
	add r9, r8
	lsls r0, r2, #1
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	movs r2, #0
	mov r8, r2
_080AC886:
	cmp r7, #0
	bge _080AC89A
	ldr r0, [sp, #0x30]
	adds r0, r0, r7
	str r0, [sp, #0x30]
	lsls r0, r7, #6
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	movs r7, #0
_080AC89A:
	movs r1, #0
	cmp r7, #0x1f
	bgt _080AC8F4
	ldr r2, [sp, #0x30]
	cmp r1, r2
	bge _080AC8F4
_080AC8A6:
	movs r5, #0
	adds r4, r1, #1
	mov r0, r8
	cmp r0, #0x1f
	bgt _080AC8E6
	cmp r5, r9
	bge _080AC8E6
	adds r0, r7, r1
	movs r2, #0x1f
	mov ip, r2
	ands r0, r2
	lsls r6, r0, #5
	mov r2, r8
	lsls r0, r1, #6
	mov r1, sl
	adds r3, r0, r1
_080AC8C6:
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r1, [sp]
	adds r0, r0, r1
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	adds r3, #2
	adds r5, #1
	cmp r2, #0x1f
	bgt _080AC8E6
	cmp r5, r9
	blt _080AC8C6
_080AC8E6:
	adds r1, r4, #0
	adds r0, r7, r4
	cmp r0, #0x1f
	bgt _080AC8F4
	ldr r2, [sp, #0x30]
	cmp r4, r2
	blt _080AC8A6
_080AC8F4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AC844

	THUMB_FUNC_START sub_80AC904
sub_80AC904: @ 0x080AC904
	push {r4, r5, r6, lr}
	movs r2, #0
	adds r4, r0, #0
	adds r4, #0x3c
	movs r3, #0
	movs r6, #0xf0
	adds r1, r0, #0
	adds r1, #0x2c
	movs r5, #0xa0
_080AC916:
	adds r0, r4, r2
	strb r3, [r0]
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r6, [r1, #2]
	strb r5, [r1, #3]
	adds r1, #4
	adds r2, #1
	cmp r2, #3
	ble _080AC916
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AC904

	THUMB_FUNC_START sub_80AC930
sub_80AC930: @ 0x080AC930
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	adds r4, r6, #0
	adds r4, #0x2c
_080AC93C:
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r7
	ldrb r5, [r0]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080AC9AA
	lsls r0, r7, #1
	adds r1, r6, #0
	adds r1, #0x40
	adds r1, r1, r0
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r1, r6, #0
	adds r1, #0x48
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldrb r0, [r4]
	cmp r3, r0
	blt _080AC9AA
	ldrb r0, [r4, #2]
	cmp r3, r0
	bge _080AC9AA
	ldrb r0, [r4, #1]
	cmp r2, r0
	blt _080AC9AA
	ldrb r0, [r4, #3]
	cmp r2, r0
	bge _080AC9AA
	movs r0, #2
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080AC99C
	adds r1, r3, #0
	subs r1, #0xc
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	ldr r3, _080AC998  @ gUnknown_08A20B44
	bl PutSprite
	b _080AC9AA
	.align 2, 0
_080AC998: .4byte gUnknown_08A20B44
_080AC99C:
	adds r1, r3, #0
	subs r1, #0xc
	str r0, [sp]
	movs r0, #3
	ldr r3, _080AC9BC  @ gUnknown_08A20B3C
	bl PutSprite
_080AC9AA:
	adds r4, #4
	adds r7, #1
	cmp r7, #3
	ble _080AC93C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC9BC: .4byte gUnknown_08A20B3C

	THUMB_FUNC_END sub_80AC930

	THUMB_FUNC_START sub_80AC9C0
sub_80AC9C0: @ 0x080AC9C0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AC9D0  @ gUnknown_08A20B4C
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080AC9D0: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80AC9C0

	THUMB_FUNC_START sub_80AC9D4
sub_80AC9D4: @ 0x080AC9D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _080ACA38  @ gUnknown_08A20B4C
	bl Proc_Find
	adds r4, r0, #0
	cmp r4, #0
	beq _080ACA2E
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r5
	movs r3, #1
	movs r0, #1
	strb r0, [r1]
	lsls r2, r5, #1
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r0, r2
	strh r7, [r0]
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r0, r2
	mov r2, r8
	strh r2, [r0]
	adds r0, r6, #0
	orrs r0, r3
	strb r0, [r1]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _080ACA2E
	ldr r0, _080ACA3C  @ gUnknown_0859EDB0
	ldr r1, _080ACA40  @ 0x060100C0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080ACA44  @ gUnknown_0859EDEC
	ldr r1, _080ACA48  @ 0x060104C0
	bl CopyDataWithPossibleUncomp
_080ACA2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACA38: .4byte gUnknown_08A20B4C
_080ACA3C: .4byte gUnknown_0859EDB0
_080ACA40: .4byte 0x060100C0
_080ACA44: .4byte gUnknown_0859EDEC
_080ACA48: .4byte 0x060104C0

	THUMB_FUNC_END sub_80AC9D4

	THUMB_FUNC_START sub_80ACA4C
sub_80ACA4C: @ 0x080ACA4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _080ACA80  @ gUnknown_08A20B4C
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACA7A
	lsls r0, r4, #2
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x2c
	strb r5, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r7, [r0]
	adds r1, #0x2f
	ldr r0, [sp, #0x14]
	strb r0, [r1]
_080ACA7A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACA80: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80ACA4C

	THUMB_FUNC_START sub_80ACA84
sub_80ACA84: @ 0x080ACA84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ACAA0  @ gUnknown_08A20B4C
	bl Proc_Find
	cmp r0, #0
	beq _080ACA9A
	adds r0, #0x3c
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
_080ACA9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACAA0: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80ACA84

	THUMB_FUNC_START sub_80ACAA4
sub_80ACAA4: @ 0x080ACAA4
	push {lr}
	ldr r0, _080ACAC4  @ gUnknown_08A20B4C
	bl Proc_Find
	cmp r0, #0
	beq _080ACAC0
	adds r1, r0, #0
	adds r1, #0x3c
	movs r2, #0
	adds r0, #0x43
_080ACAB8:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080ACAB8
_080ACAC0:
	pop {r0}
	bx r0
	.align 2, 0
_080ACAC4: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80ACAA4

	THUMB_FUNC_START sub_80ACAC8
sub_80ACAC8: @ 0x080ACAC8
	push {lr}
	ldr r0, _080ACAE0  @ gUnknown_08A20B4C
	bl Proc_Find
	cmp r0, #0
	beq _080ACADA
	movs r1, #1
	bl Proc_Goto
_080ACADA:
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE0: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80ACAC8

	THUMB_FUNC_START sub_80ACAE4
sub_80ACAE4: @ 0x080ACAE4
	push {lr}
	ldr r0, _080ACAFC  @ gUnknown_08A20B4C
	bl Proc_Find
	cmp r0, #0
	beq _080ACAF6
	movs r1, #0
	bl Proc_Goto
_080ACAF6:
	pop {r0}
	bx r0
	.align 2, 0
_080ACAFC: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80ACAE4

	THUMB_FUNC_START sub_80ACB00
sub_80ACB00: @ 0x080ACB00
	push {lr}
	ldr r0, _080ACB10  @ gUnknown_08A20B4C
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080ACB10: .4byte gUnknown_08A20B4C

	THUMB_FUNC_END sub_80ACB00

	THUMB_FUNC_START sub_80ACB14
sub_80ACB14: @ 0x080ACB14
	movs r1, #0
	str r1, [r0, #0x2c]
	adds r2, r0, #0
	adds r2, #0x54
	strh r1, [r2]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x44]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x34]
	str r1, [r0, #0x50]
	str r1, [r0, #0x48]
	str r1, [r0, #0x40]
	str r1, [r0, #0x38]
	str r1, [r0, #0x30]
	bx lr

	THUMB_FUNC_END sub_80ACB14

	THUMB_FUNC_START sub_80ACB34
sub_80ACB34: @ 0x080ACB34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r7, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	mov r8, r0
	ldr r1, [r5, #0x38]
	mov r9, r1
	ldr r2, [r5, #0x40]
	mov sl, r2
	ldr r0, [r5, #0x44]
	adds r0, #1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x48]
	adds r0, #1
	str r0, [r5, #0x48]
	movs r6, #0
_080ACB5E:
	lsls r3, r6, #2
	adds r0, r5, #0
	adds r0, #0x4c
	adds r2, r0, r3
	ldr r0, [r2]
	adds r4, r5, #0
	adds r4, #0x44
	cmp r0, #0
	beq _080ACB7E
	adds r0, r4, r3
	ldr r1, [r0]
	adds r1, #3
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_080ACB7E:
	adds r1, r4, r3
	ldr r0, [r1]
	asrs r0, r0, #3
	cmp r0, #5
	ble _080ACB8C
	movs r0, #0
	str r0, [r1]
_080ACB8C:
	adds r6, #1
	cmp r6, #1
	ble _080ACB5E
	ldr r3, [r5, #0x2c]
	cmp r3, #0
	bne _080ACC20
	ldr r2, [r5, #0x4c]
	cmp r2, #0
	beq _080ACBAC
	asrs r2, r2, #3
	subs r1, r2, #4
	ldr r0, [r5, #0x34]
	adds r7, r0, r1
	cmp r2, #4
	bne _080ACBAC
	str r3, [r5, #0x4c]
_080ACBAC:
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _080ACBC4
	asrs r2, r2, #3
	subs r1, r2, #4
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	mov r9, r0
	cmp r2, #4
	bne _080ACBC4
	movs r0, #0
	str r0, [r5, #0x50]
_080ACBC4:
	ldr r0, [r5, #0x30]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACBEE
	ldr r1, _080ACCD4  @ 0x000001FF
	ands r1, r7
	movs r2, #0xff
	mov r0, r8
	ands r2, r0
	ldr r3, _080ACCD8  @ gUnknown_08A20B7C
	adds r4, r5, #0
	adds r4, #0x54
	ldr r0, [r5, #0x44]
	asrs r0, r0, #3
	ldrh r4, [r4]
	adds r0, r0, r4
	str r0, [sp]
	movs r0, #0xd
	bl PutSpriteExt
_080ACBEE:
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ACC20
	ldr r1, _080ACCD4  @ 0x000001FF
	mov r2, r9
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r2, #0xff
	mov r0, sl
	ands r2, r0
	ldr r3, _080ACCD8  @ gUnknown_08A20B7C
	adds r4, r5, #0
	adds r4, #0x54
	ldr r0, [r5, #0x48]
	asrs r0, r0, #3
	ldrh r4, [r4]
	adds r0, r0, r4
	str r0, [sp]
	movs r0, #0xd
	bl PutSpriteExt
_080ACC20:
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _080ACCC2
	ldr r2, [r5, #0x4c]
	cmp r2, #0
	beq _080ACC3E
	asrs r2, r2, #3
	subs r1, r2, #4
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	mov r8, r0
	cmp r2, #4
	bne _080ACC3E
	movs r0, #0
	str r0, [r5, #0x4c]
_080ACC3E:
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _080ACC56
	asrs r2, r2, #3
	subs r1, r2, #4
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	mov sl, r0
	cmp r2, #4
	bne _080ACC56
	movs r0, #0
	str r0, [r5, #0x50]
_080ACC56:
	ldr r0, [r5, #0x30]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACC88
	ldr r0, _080ACCD4  @ 0x000001FF
	ands r7, r0
	movs r0, #0xff
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r3, _080ACCDC  @ gUnknown_08A20B8A
	adds r1, r5, #0
	adds r1, #0x54
	ldr r0, [r5, #0x44]
	asrs r0, r0, #3
	lsls r0, r0, #1
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r7, #0
	mov r2, r8
	bl PutSpriteExt
_080ACC88:
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ACCC2
	ldr r0, _080ACCD4  @ 0x000001FF
	mov r2, r9
	ands r2, r0
	mov r9, r2
	movs r1, #0x80
	lsls r1, r1, #6
	add r1, r9
	movs r0, #0xff
	mov r2, sl
	ands r2, r0
	mov sl, r2
	ldr r3, _080ACCDC  @ gUnknown_08A20B8A
	adds r2, r5, #0
	adds r2, #0x54
	ldr r0, [r5, #0x48]
	asrs r0, r0, #3
	lsls r0, r0, #1
	ldrh r2, [r2]
	adds r0, r0, r2
	str r0, [sp]
	movs r0, #0xd
	mov r2, sl
	bl PutSpriteExt
_080ACCC2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACCD4: .4byte 0x000001FF
_080ACCD8: .4byte gUnknown_08A20B7C
_080ACCDC: .4byte gUnknown_08A20B8A

	THUMB_FUNC_END sub_80ACB34

	THUMB_FUNC_START sub_80ACCE0
sub_80ACCE0: @ 0x080ACCE0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080ACCF0  @ gUnknown_08A20B94
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080ACCF0: .4byte gUnknown_08A20B94

	THUMB_FUNC_END sub_80ACCE0

	THUMB_FUNC_START sub_80ACCF4
sub_80ACCF4: @ 0x080ACCF4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r0, _080ACD4C  @ gUnknown_08A20B94
	bl Proc_Find
	adds r5, r0, #0
	cmp r5, #0
	beq _080ACD44
	ldr r0, _080ACD50  @ gUnknown_08A1D79C
	adds r1, r7, #0
	adds r1, #0x10
	lsls r1, r1, #5
	movs r2, #0x20
	bl CopyToPaletteBuffer
	cmp r6, #0
	bne _080ACD24
	ldr r0, _080ACD54  @ gUnknown_08A1C7D8
	ldr r2, _080ACD58  @ 0x06010000
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
_080ACD24:
	cmp r6, #1
	bne _080ACD32
	ldr r0, _080ACD5C  @ gUnknown_08A1C704
	ldr r2, _080ACD58  @ 0x06010000
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
_080ACD32:
	asrs r1, r4, #5
	movs r2, #0xf
	ands r2, r7
	lsls r2, r2, #0xc
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x54
	strh r1, [r2]
	str r6, [r5, #0x2c]
_080ACD44:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080ACD4C: .4byte gUnknown_08A20B94
_080ACD50: .4byte gUnknown_08A1D79C
_080ACD54: .4byte gUnknown_08A1C7D8
_080ACD58: .4byte 0x06010000
_080ACD5C: .4byte gUnknown_08A1C704

	THUMB_FUNC_END sub_80ACCF4

	THUMB_FUNC_START sub_80ACD60
sub_80ACD60: @ 0x080ACD60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ACD78  @ gUnknown_08A20B94
	bl Proc_Find
	cmp r0, #0
	beq _080ACD70
	str r4, [r0, #0x30]
_080ACD70:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACD78: .4byte gUnknown_08A20B94

	THUMB_FUNC_END sub_80ACD60

	THUMB_FUNC_START sub_80ACD7C
sub_80ACD7C: @ 0x080ACD7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _080ACDA0  @ gUnknown_08A20B94
	bl Proc_Find
	cmp r0, #0
	beq _080ACD98
	str r4, [r0, #0x34]
	str r5, [r0, #0x3c]
	str r6, [r0, #0x38]
	str r7, [r0, #0x40]
_080ACD98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACDA0: .4byte gUnknown_08A20B94

	THUMB_FUNC_END sub_80ACD7C

	THUMB_FUNC_START sub_80ACDA4
sub_80ACDA4: @ 0x080ACDA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ACDD8  @ gUnknown_08A20B94
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACDD2
	cmp r4, #0
	bne _080ACDBC
	movs r0, #1
	str r0, [r1, #0x4c]
_080ACDBC:
	cmp r4, #1
	bne _080ACDC2
	str r4, [r1, #0x50]
_080ACDC2:
	cmp r4, #2
	bne _080ACDCA
	movs r0, #1
	str r0, [r1, #0x4c]
_080ACDCA:
	cmp r4, #3
	bne _080ACDD2
	movs r0, #1
	str r0, [r1, #0x50]
_080ACDD2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACDD8: .4byte gUnknown_08A20B94

	THUMB_FUNC_END sub_80ACDA4

	THUMB_FUNC_START sub_80ACDDC
sub_80ACDDC: @ 0x080ACDDC
	push {lr}
	ldr r0, _080ACDEC  @ gUnknown_08A20B94
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080ACDEC: .4byte gUnknown_08A20B94

	THUMB_FUNC_END sub_80ACDDC

	THUMB_FUNC_START sub_80ACDF0
sub_80ACDF0: @ 0x080ACDF0
	movs r1, #0
	str r1, [r0, #0x30]
	bx lr

	THUMB_FUNC_END sub_80ACDF0

	THUMB_FUNC_START sub_80ACDF8
sub_80ACDF8: @ 0x080ACDF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	blt _080ACE12
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	bl _call_via_r1
	adds r0, r4, #0
	bl Proc_Break
_080ACE12:
	ldr r0, [r4, #0x30]
	adds r0, #1
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ACDF8

	THUMB_FUNC_START sub_80ACE20
sub_80ACE20: @ 0x080ACE20
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, _080ACE38  @ gUnknown_08A20BB4
	bl Proc_Start
	str r4, [r0, #0x2c]
	str r5, [r0, #0x34]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACE38: .4byte gUnknown_08A20BB4

	THUMB_FUNC_END sub_80ACE20

	THUMB_FUNC_START sub_80ACE3C
sub_80ACE3C: @ 0x080ACE3C
	push {lr}
	movs r2, #0
	movs r1, #3
	adds r0, #0x4d
_080ACE44:
	strb r2, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge _080ACE44
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ACE3C

	THUMB_FUNC_START sub_80ACE54
sub_80ACE54: @ 0x080ACE54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	adds r1, #0x4e
	str r1, [sp, #0x14]
_080ACE6C:
	ldr r0, [sp, #4]
	adds r0, #0x4a
	ldr r2, [sp, #8]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	cmp r0, #0
	bne _080ACE80
	b _080AD188
_080ACE80:
	ldr r0, [sp, #4]
	adds r0, #0x3e
	ldr r3, [sp, #8]
	adds r3, r3, r0
	mov r9, r3
	movs r1, #0
	ldrsb r1, [r3, r1]
	str r0, [sp, #0x30]
	cmp r1, #1
	bgt _080ACE96
	b _080AD188
_080ACE96:
	ldr r0, [sp, #4]
	adds r0, #0x3a
	ldr r1, [sp, #8]
	adds r7, r0, r1
	movs r1, #0
	ldrsb r1, [r7, r1]
	str r0, [sp, #0x2c]
	cmp r1, #1
	bgt _080ACEAA
	b _080AD188
_080ACEAA:
	ldr r2, [sp, #8]
	lsls r2, r2, #1
	mov r8, r2
	ldr r3, [sp, #4]
	adds r3, #0x2a
	str r3, [sp, #0xc]
	adds r6, r3, #0
	add r6, r8
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #4]
	adds r3, #0x32
	str r3, [sp, #0x10]
	adds r5, r3, #0
	add r5, r8
	movs r0, #0
	ldrsh r2, [r5, r0]
	ldr r0, [sp, #0x14]
	ldrh r3, [r0]
	ldr r0, [sp, #4]
	adds r0, #0x42
	str r0, [sp, #0x18]
	adds r4, r0, #0
	add r4, r8
	ldrh r0, [r4]
	adds r3, r3, r0
	adds r3, #4
	str r3, [sp]
	movs r0, #0xd
	ldr r3, _080ACFD4  @ gObject_8x8
	bl PutSpriteExt
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r3, r9
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #1
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r5, r0]
	ldr r3, [sp, #0x14]
	ldrh r0, [r3]
	ldrh r3, [r4]
	adds r0, r0, r3
	adds r0, #4
	str r0, [sp]
	movs r0, #0xd
	ldr r3, _080ACFD4  @ gObject_8x8
	bl PutSpriteExt
	ldrh r1, [r6]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, #1
	lsls r0, r0, #3
	adds r2, r2, r0
	ldr r3, [sp, #0x14]
	ldrh r0, [r3]
	ldrh r3, [r4]
	adds r0, r0, r3
	adds r0, #4
	str r0, [sp]
	movs r0, #0xd
	ldr r3, _080ACFD4  @ gObject_8x8
	bl PutSpriteExt
	movs r0, #0
	ldrsh r1, [r6, r0]
	mov r2, r9
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, #1
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, #1
	lsls r0, r0, #3
	adds r2, r2, r0
	ldr r3, [sp, #0x14]
	ldrh r0, [r3]
	ldrh r3, [r4]
	adds r0, r0, r3
	adds r0, #4
	str r0, [sp]
	movs r0, #0xd
	ldr r3, _080ACFD4  @ gObject_8x8
	bl PutSpriteExt
	mov r1, r9
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r4, r0, #2
	movs r2, #0
	ldrsh r7, [r5, r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r5, r0, #0
	adds r5, #8
	mov sl, r8
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x28]
	ldr r2, [sp, #4]
	adds r2, #0x4e
	mov r8, r2
	ldr r6, [sp, #0x18]
	cmp r4, #3
	ble _080ACFFA
_080ACFAE:
	mov r3, r8
	ldrh r0, [r3]
	mov r2, sl
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080ACFD8  @ gObject_32x8
	bl PutSpriteExt
	adds r5, #0x20
	subs r4, #4
	cmp r4, #3
	bgt _080ACFAE
	b _080ACFFA
	.align 2, 0
_080ACFD4: .4byte gObject_8x8
_080ACFD8: .4byte gObject_32x8
_080ACFDC:
	mov r3, r8
	ldrh r0, [r3]
	mov r2, sl
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD080  @ gObject_16x8
	bl PutSpriteExt
	adds r5, #0x10
	subs r4, #2
_080ACFFA:
	cmp r4, #1
	bgt _080ACFDC
	cmp r4, #0
	ble _080AD024
_080AD002:
	mov r3, r8
	ldrh r0, [r3]
	mov r2, sl
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD084  @ gObject_8x8
	bl PutSpriteExt
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bgt _080AD002
_080AD024:
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #8]
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r4, r0, #2
	ldr r0, [sp, #0x28]
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #8]
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #1
	lsls r0, r0, #3
	adds r7, r1, r0
	ldr r0, [sp, #0x24]
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r5, r0, #0
	adds r5, #8
	cmp r4, #3
	ble _080AD0AA
_080AD05C:
	mov r1, r8
	ldrh r0, [r1]
	mov r2, sl
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD088  @ gObject_32x8
	bl PutSpriteExt
	adds r5, #0x20
	subs r4, #4
	cmp r4, #3
	bgt _080AD05C
	b _080AD0AA
	.align 2, 0
_080AD080: .4byte gObject_16x8
_080AD084: .4byte gObject_8x8
_080AD088: .4byte gObject_32x8
_080AD08C:
	mov r3, r8
	ldrh r0, [r3]
	mov r2, sl
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD134  @ gObject_16x8
	bl PutSpriteExt
	adds r5, #0x10
	subs r4, #2
_080AD0AA:
	cmp r4, #1
	bgt _080AD08C
	cmp r4, #0
	ble _080AD0D4
_080AD0B2:
	mov r3, r8
	ldrh r0, [r3]
	mov r2, sl
	adds r1, r6, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD138  @ gObject_8x8
	bl PutSpriteExt
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bgt _080AD0B2
_080AD0D4:
	ldr r3, [sp, #0x2c]
	ldr r1, [sp, #8]
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r0, #2
	ldr r0, [sp, #0x28]
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	adds r7, #8
	cmp r1, #0
	ble _080AD188
	add r6, sl
_080AD0F4:
	ldr r3, [sp, #0x30]
	ldr r2, [sp, #8]
	adds r0, r3, r2
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r0, [sp, #0x24]
	add r0, sl
	movs r3, #0
	ldrsh r5, [r0, r3]
	adds r0, r7, #0
	adds r0, #8
	str r0, [sp, #0x20]
	subs r1, #1
	mov r9, r1
	cmp r4, #3
	ble _080AD15A
_080AD114:
	mov r2, r8
	ldrh r1, [r2]
	ldrh r0, [r6]
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD13C  @ gObject_32x8
	bl PutSpriteExt
	adds r5, #0x20
	subs r4, #4
	cmp r4, #3
	bgt _080AD114
	b _080AD15A
	.align 2, 0
_080AD134: .4byte gObject_16x8
_080AD138: .4byte gObject_8x8
_080AD13C: .4byte gObject_32x8
_080AD140:
	mov r3, r8
	ldrh r1, [r3]
	ldrh r0, [r6]
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD1A4  @ gObject_16x8
	bl PutSpriteExt
	adds r5, #0x10
	subs r4, #2
_080AD15A:
	cmp r4, #1
	bgt _080AD140
	cmp r4, #0
	ble _080AD180
_080AD162:
	mov r0, r8
	ldrh r1, [r0]
	ldrh r0, [r6]
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0xd
	adds r1, r5, #0
	adds r2, r7, #0
	ldr r3, _080AD1A8  @ gObject_8x8
	bl PutSpriteExt
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bgt _080AD162
_080AD180:
	ldr r7, [sp, #0x20]
	mov r1, r9
	cmp r1, #0
	bgt _080AD0F4
_080AD188:
	ldr r1, [sp, #0x1c]
	str r1, [sp, #8]
	cmp r1, #3
	bgt _080AD192
	b _080ACE6C
_080AD192:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD1A4: .4byte gObject_16x8
_080AD1A8: .4byte gObject_8x8

	THUMB_FUNC_END sub_80ACE54

	THUMB_FUNC_START sub_80AD1AC
sub_80AD1AC: @ 0x080AD1AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AD1CC  @ gUnknown_08A20BD4
	adds r0, r4, #0
	bl Proc_Find
	bl Proc_End
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD1CC: .4byte gUnknown_08A20BD4

	THUMB_FUNC_END sub_80AD1AC

	THUMB_FUNC_START sub_80AD1D0
sub_80AD1D0: @ 0x080AD1D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AD1F8  @ gUnknown_08A20BD4
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD1F2
	lsls r0, r4, #0xf
	lsrs r0, r0, #0x14
	adds r1, #0x4e
	strh r0, [r1]
	ldr r0, _080AD1FC  @ gUnknown_08A2E950
	ldr r2, _080AD200  @ 0x06010000
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
_080AD1F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD1F8: .4byte gUnknown_08A20BD4
_080AD1FC: .4byte gUnknown_08A2E950
_080AD200: .4byte 0x06010000

	THUMB_FUNC_END sub_80AD1D0

	THUMB_FUNC_START sub_80AD204
sub_80AD204: @ 0x080AD204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _080AD268  @ gUnknown_08A20BD4
	bl Proc_Find
	adds r3, r0, #0
	cmp r3, #0
	beq _080AD25C
	adds r0, #0x4a
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
	lsls r2, r4, #1
	adds r0, r3, #0
	adds r0, #0x2a
	adds r0, r0, r2
	strh r5, [r0]
	adds r0, r3, #0
	adds r0, #0x32
	adds r0, r0, r2
	strh r6, [r0]
	adds r0, r3, #0
	adds r0, #0x3e
	adds r0, r0, r4
	strb r7, [r0]
	adds r0, r3, #0
	adds r0, #0x3a
	adds r0, r0, r4
	ldr r1, [sp, #0x18]
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r2
	mov r1, r8
	strh r1, [r0]
_080AD25C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD268: .4byte gUnknown_08A20BD4

	THUMB_FUNC_END sub_80AD204

	THUMB_FUNC_START sub_80AD26C
sub_80AD26C: @ 0x080AD26C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AD288  @ gUnknown_08A20BD4
	bl Proc_Find
	cmp r0, #0
	beq _080AD282
	adds r0, #0x4a
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
_080AD282:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD288: .4byte gUnknown_08A20BD4

	THUMB_FUNC_END sub_80AD26C

	THUMB_FUNC_START sub_80AD28C
sub_80AD28C: @ 0x080AD28C
	push {lr}
	ldr r0, _080AD2A4  @ gUnknown_08A20BD4
	bl Proc_Find
	cmp r0, #0
	beq _080AD29E
	movs r1, #1
	bl Proc_Goto
_080AD29E:
	pop {r0}
	bx r0
	.align 2, 0
_080AD2A4: .4byte gUnknown_08A20BD4

	THUMB_FUNC_END sub_80AD28C

	THUMB_FUNC_START sub_80AD2A8
sub_80AD2A8: @ 0x080AD2A8
	push {r4, lr}
	ldr r0, _080AD2D0  @ gUnknown_08A20BD4
	bl Proc_Find
	adds r4, r0, #0
	cmp r4, #0
	beq _080AD2C8
	movs r1, #0
	bl Proc_Goto
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	lsls r0, r0, #5
	bl sub_80AD1D0
_080AD2C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD2D0: .4byte gUnknown_08A20BD4

	THUMB_FUNC_END sub_80AD2A8

	THUMB_FUNC_START sub_80AD2D4
sub_80AD2D4: @ 0x080AD2D4
	push {lr}
	ldr r0, _080AD2E4  @ gUnknown_08A20BD4
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080AD2E4: .4byte gUnknown_08A20BD4

	THUMB_FUNC_END sub_80AD2D4

	THUMB_FUNC_START _CallDifferedLoop
_CallDifferedLoop: @ 0x080AD2E8
	push {lr}
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x2c]
	adds r0, r1, #0
	bl _call_via_r2
	pop {r0}
	bx r0

	THUMB_FUNC_END _CallDifferedLoop

	THUMB_FUNC_START Get6CDifferedLoop6C
Get6CDifferedLoop6C: @ 0x080AD2F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Find6CDifferedLoop
	cmp r0, #0
	bne _080AD310
	ldr r0, _080AD318  @ gUnknown_08A20C04
	adds r1, r5, #0
	bl Proc_Start
	str r4, [r0, #0x2c]
_080AD310:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD318: .4byte gUnknown_08A20C04

	THUMB_FUNC_END Get6CDifferedLoop6C

	THUMB_FUNC_START DeleteEach6CDifferedLoop
DeleteEach6CDifferedLoop: @ 0x080AD31C
	push {lr}
	b _080AD324
_080AD320:
	bl Proc_End
_080AD324:
	ldr r0, _080AD334  @ gUnknown_08A20C04
	bl Proc_Find
	cmp r0, #0
	bne _080AD320
	pop {r0}
	bx r0
	.align 2, 0
_080AD334: .4byte gUnknown_08A20C04

	THUMB_FUNC_END DeleteEach6CDifferedLoop

	THUMB_FUNC_START Find6CDifferedLoop
Find6CDifferedLoop: @ 0x080AD338
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	b _080AD34A
_080AD340:
	ldr r0, [r1, #0x2c]
	cmp r0, r4
	bne _080AD34A
	adds r0, r1, #0
	b _080AD358
_080AD34A:
	ldr r0, _080AD360  @ gUnknown_08A20C04
	bl Proc_FindAfter
	adds r1, r0, #0
	cmp r1, #0
	bne _080AD340
	movs r0, #0
_080AD358:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD360: .4byte gUnknown_08A20C04

	THUMB_FUNC_END Find6CDifferedLoop

	THUMB_FUNC_START sub_80AD364
sub_80AD364: @ 0x080AD364
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl GetGameClock
	ldr r1, _080AD424  @ gPaletteBuffer
	ldrh r2, [r5, #0x3a]
	lsls r2, r2, #5
	movs r3, #0x87
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, r2, r1
	ldr r1, _080AD428  @ gRAMChapterData
	adds r1, #0x41
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #4
	lsrs r0, r0, #2
	movs r4, #0xf
	ands r0, r4
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _080AD42C  @ gUnknown_08A1D448
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	bl EnablePaletteSync
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	adds r2, #8
	ldr r3, _080AD430  @ gObject_8x8
	ldrh r0, [r5, #0x3a]
	ands r4, r0
	lsls r4, r4, #0xc
	ldrh r0, [r5, #0x3c]
	adds r4, r4, r0
	ldrh r0, [r5, #0x36]
	adds r4, r4, r0
	str r4, [sp]
	movs r0, #4
	bl PutSpriteExt
	movs r4, #1
	ldrh r3, [r5, #0x38]
	cmp r4, r3
	bge _080AD3F2
_080AD3C4:
	lsls r0, r4, #3
	ldr r1, [r5, #0x2c]
	adds r1, r1, r0
	ldr r2, [r5, #0x30]
	adds r2, #8
	ldrh r3, [r5, #0x3a]
	movs r0, #0xf
	ands r0, r3
	lsls r0, r0, #0xc
	ldrh r3, [r5, #0x3c]
	adds r0, r0, r3
	ldrh r3, [r5, #0x36]
	adds r0, r0, r3
	adds r0, #1
	str r0, [sp]
	movs r0, #4
	ldr r3, _080AD430  @ gObject_8x8
	bl PutSpriteExt
	adds r4, #1
	ldrh r0, [r5, #0x38]
	cmp r4, r0
	blt _080AD3C4
_080AD3F2:
	ldrh r0, [r5, #0x38]
	lsls r0, r0, #3
	ldr r1, [r5, #0x2c]
	adds r1, r1, r0
	ldr r2, [r5, #0x30]
	adds r2, #8
	ldr r3, _080AD430  @ gObject_8x8
	ldrh r4, [r5, #0x3a]
	movs r0, #0xf
	ands r0, r4
	lsls r0, r0, #0xc
	ldrh r4, [r5, #0x3c]
	adds r0, r0, r4
	ldrh r4, [r5, #0x36]
	adds r0, r0, r4
	adds r0, #2
	str r0, [sp]
	movs r0, #4
	bl PutSpriteExt
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AD424: .4byte gPaletteBuffer
_080AD428: .4byte gRAMChapterData
_080AD42C: .4byte gUnknown_08A1D448
_080AD430: .4byte gObject_8x8

	THUMB_FUNC_END sub_80AD364

	THUMB_FUNC_START sub_80AD434
sub_80AD434: @ 0x080AD434
	adds r0, #0x35
	movs r1, #0
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AD434

	THUMB_FUNC_START sub_80AD43C
sub_80AD43C: @ 0x080AD43C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	bl DisplayUiHand
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AD45C
	adds r0, r4, #0
	bl sub_80AD364
_080AD45C:
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AD474
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	adds r1, #2
	bl sub_8015B88
_080AD474:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AD43C

	THUMB_FUNC_START sub_80AD47C
sub_80AD47C: @ 0x080AD47C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AD49C  @ gUnknown_08A20C1C
	adds r0, r4, #0
	bl Proc_Find
	bl Proc_End
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD49C: .4byte gUnknown_08A20C1C

	THUMB_FUNC_END sub_80AD47C

	THUMB_FUNC_START sub_80AD4A0
sub_80AD4A0: @ 0x080AD4A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080AD4D8  @ gUnknown_08A20C1C
	bl Proc_Find
	adds r2, r0, #0
	cmp r2, #0
	beq _080AD4D0
	adds r1, r2, #0
	adds r1, #0x34
	movs r0, #0
	strb r0, [r1]
	lsls r0, r5, #0xf
	lsrs r0, r0, #0x14
	strh r0, [r2, #0x36]
	movs r0, #0xf
	ands r4, r0
	strh r4, [r2, #0x3a]
	ldr r0, _080AD4DC  @ gUnknown_08A1D4E8
	ldr r2, _080AD4E0  @ 0x06010000
	adds r1, r5, r2
	bl CopyDataWithPossibleUncomp
_080AD4D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AD4D8: .4byte gUnknown_08A20C1C
_080AD4DC: .4byte gUnknown_08A1D4E8
_080AD4E0: .4byte 0x06010000

	THUMB_FUNC_END sub_80AD4A0

	THUMB_FUNC_START sub_80AD4E4
sub_80AD4E4: @ 0x080AD4E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AD4FC  @ gUnknown_08A20C1C
	bl Proc_Find
	cmp r0, #0
	beq _080AD4F4
	str r4, [r0, #0x2c]
_080AD4F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD4FC: .4byte gUnknown_08A20C1C

	THUMB_FUNC_END sub_80AD4E4

	THUMB_FUNC_START sub_80AD500
sub_80AD500: @ 0x080AD500
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AD518  @ gUnknown_08A20C1C
	bl Proc_Find
	cmp r0, #0
	beq _080AD510
	str r4, [r0, #0x30]
_080AD510:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD518: .4byte gUnknown_08A20C1C

	THUMB_FUNC_END sub_80AD500

	THUMB_FUNC_START sub_80AD51C
sub_80AD51C: @ 0x080AD51C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldr r0, _080AD544  @ gUnknown_08A20C1C
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD55C
	str r5, [r1, #0x2c]
	str r6, [r1, #0x30]
	cmp r4, #0
	bne _080AD548
	adds r0, #0x35
	strb r4, [r0]
	b _080AD554
	.align 2, 0
_080AD544: .4byte gUnknown_08A20C1C
_080AD548:
	adds r2, r1, #0
	adds r2, #0x35
	movs r0, #1
	strb r0, [r2]
	strh r4, [r1, #0x38]
	strh r7, [r1, #0x3c]
_080AD554:
	adds r0, r1, #0
	movs r1, #1
	bl Proc_Goto
_080AD55C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AD51C

	THUMB_FUNC_START sub_80AD564
sub_80AD564: @ 0x080AD564
	push {lr}
	ldr r0, _080AD57C  @ gUnknown_08A20C1C
	bl Proc_Find
	cmp r0, #0
	beq _080AD576
	movs r1, #0
	bl Proc_Goto
_080AD576:
	pop {r0}
	bx r0
	.align 2, 0
_080AD57C: .4byte gUnknown_08A20C1C

	THUMB_FUNC_END sub_80AD564

	THUMB_FUNC_START sub_80AD580
sub_80AD580: @ 0x080AD580
	push {lr}
	ldr r0, _080AD590  @ gUnknown_08A20C1C
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080AD590: .4byte gUnknown_08A20C1C

	THUMB_FUNC_END sub_80AD580

	THUMB_FUNC_START sub_80AD594
sub_80AD594: @ 0x080AD594
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080AD5B0  @ gUnknown_08A20C1C
	bl Proc_Find
	cmp r0, #0
	beq _080AD5A8
	adds r0, #0x34
	strb r4, [r0]
_080AD5A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AD5B0: .4byte gUnknown_08A20C1C

	THUMB_FUNC_END sub_80AD594

	THUMB_FUNC_START sub_80AD5B4
sub_80AD5B4: @ 0x080AD5B4
	ldr r2, _080AD5D4  @ gLCDControlBuffer
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
_080AD5D4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AD5B4

	THUMB_FUNC_START EnableAllGfx
EnableAllGfx: @ 0x080AD5D8
	ldr r2, _080AD5F4  @ gLCDControlBuffer
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
_080AD5F4: .4byte gLCDControlBuffer

	THUMB_FUNC_END EnableAllGfx

	THUMB_FUNC_START sub_80AD5F8
sub_80AD5F8: @ 0x080AD5F8
	push {lr}
	movs r2, #0
	movs r1, #3
	adds r0, #0x50
_080AD600:
	strb r2, [r0]
	subs r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _080AD600
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AD5F8

	THUMB_FUNC_START sub_80AD610
sub_80AD610: @ 0x080AD610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	movs r1, #0
_080AD620:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	ldr r2, [sp, #4]
	adds r5, r2, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r0, #0
	bne _080AD63A
	b _080AD934
_080AD63A:
	ldr r1, [r2, #0x60]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r0, [r2, #0x5c]
	adds r0, r0, r1
	ldrh r3, [r5, #8]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r5, #1]
	ldrh r2, [r5, #2]
	ldr r1, _080AD8B8  @ 0x000001FF
	ands r1, r2
	ldrh r3, [r5, #4]
	movs r2, #0xff
	ands r2, r3
	mov r3, r8
	str r3, [sp]
	ldr r3, _080AD8BC  @ gObject_8x8
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #6]
	subs r2, #1
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r3, _080AD8B8  @ 0x000001FF
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	ldrh r3, [r5, #4]
	movs r2, #0xff
	ands r2, r3
	mov r3, r8
	str r3, [sp]
	ldr r3, _080AD8BC  @ gObject_8x8
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #6]
	subs r2, #1
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r3, _080AD8B8  @ 0x000001FF
	ands r1, r3
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #7]
	subs r3, #1
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0xff
	ands r2, r3
	mov r3, r8
	str r3, [sp]
	ldr r3, _080AD8BC  @ gObject_8x8
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	ldrh r2, [r5, #2]
	ldr r1, _080AD8B8  @ 0x000001FF
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #7]
	subs r3, #1
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0xff
	ands r2, r3
	mov r3, r8
	str r3, [sp]
	ldr r3, _080AD8BC  @ gObject_8x8
	bl PutSpriteExt
	movs r7, #1
	ldrb r0, [r5, #6]
	subs r0, #4
	cmp r7, r0
	bge _080AD750
	ldr r0, _080AD8B8  @ 0x000001FF
	mov sl, r0
	ldr r1, _080AD8C0  @ gObject_32x8
	mov r9, r1
	mov r6, r8
	adds r6, #1
_080AD700:
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r4, r7, #3
	adds r1, r1, r4
	mov r3, sl
	ands r1, r3
	ldrh r3, [r5, #4]
	movs r2, #0xff
	ands r2, r3
	str r6, [sp]
	mov r3, r9
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	adds r1, r1, r4
	mov r3, sl
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #7]
	subs r3, #1
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0xff
	ands r2, r3
	str r6, [sp]
	mov r3, r9
	bl PutSpriteExt
	adds r7, #4
	ldrb r0, [r5, #6]
	subs r0, #4
	cmp r7, r0
	blt _080AD700
_080AD750:
	ldrb r0, [r5, #6]
	subs r0, #2
	cmp r7, r0
	bge _080AD7B4
	ldr r0, _080AD8B8  @ 0x000001FF
	mov sl, r0
	ldr r1, _080AD8C4  @ gObject_16x8
	mov r9, r1
	mov r6, r8
	adds r6, #1
_080AD764:
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r4, r7, #3
	adds r1, r1, r4
	mov r3, sl
	ands r1, r3
	ldrh r3, [r5, #4]
	movs r2, #0xff
	ands r2, r3
	str r6, [sp]
	mov r3, r9
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	adds r1, r1, r4
	mov r3, sl
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #7]
	subs r3, #1
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0xff
	ands r2, r3
	str r6, [sp]
	mov r3, r9
	bl PutSpriteExt
	adds r7, #2
	ldrb r0, [r5, #6]
	subs r0, #2
	cmp r7, r0
	blt _080AD764
_080AD7B4:
	ldrb r0, [r5, #6]
	subs r0, #1
	cmp r7, r0
	bge _080AD818
	ldr r0, _080AD8B8  @ 0x000001FF
	mov sl, r0
	ldr r1, _080AD8BC  @ gObject_8x8
	mov r9, r1
	mov r6, r8
	adds r6, #1
_080AD7C8:
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r4, r7, #3
	adds r1, r1, r4
	mov r3, sl
	ands r1, r3
	ldrh r3, [r5, #4]
	movs r2, #0xff
	ands r2, r3
	str r6, [sp]
	mov r3, r9
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	adds r1, r1, r4
	mov r3, sl
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	ldrb r3, [r5, #7]
	subs r3, #1
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r3, #0xff
	ands r2, r3
	str r6, [sp]
	mov r3, r9
	bl PutSpriteExt
	adds r7, #1
	ldrb r0, [r5, #6]
	subs r0, #1
	cmp r7, r0
	blt _080AD7C8
_080AD818:
	movs r7, #1
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r7, r0
	blt _080AD824
	b _080AD934
_080AD824:
	ldr r0, _080AD8B8  @ 0x000001FF
	mov sl, r0
	movs r1, #0xff
	mov r9, r1
	mov r2, r8
	adds r2, #9
	str r2, [sp, #8]
_080AD832:
	ldrb r0, [r5, #1]
	ldrh r2, [r5, #2]
	mov r1, sl
	ands r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	lsls r4, r7, #3
	adds r2, r2, r4
	mov r3, r9
	ands r2, r3
	ldr r3, [sp, #8]
	str r3, [sp]
	ldr r3, _080AD8BC  @ gObject_8x8
	bl PutSpriteExt
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #6]
	subs r2, #1
	lsls r2, r2, #3
	adds r1, r1, r2
	mov r3, sl
	ands r1, r3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	movs r3, #4
	ldrsh r2, [r5, r3]
	adds r2, r2, r4
	mov r3, r9
	ands r2, r3
	ldr r3, [sp, #8]
	str r3, [sp]
	ldr r3, _080AD8BC  @ gObject_8x8
	bl PutSpriteExt
	movs r6, #1
	ldrb r0, [r5, #6]
	subs r0, #4
	adds r7, #1
	cmp r6, r0
	bge _080AD8EE
_080AD888:
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r2, r6, #3
	adds r1, r1, r2
	mov r3, sl
	ands r1, r3
	movs r3, #4
	ldrsh r2, [r5, r3]
	adds r2, r2, r4
	mov r3, r9
	ands r2, r3
	mov r3, r8
	adds r3, #5
	str r3, [sp]
	ldr r3, _080AD8C0  @ gObject_32x8
	bl PutSpriteExt
	adds r6, #4
	ldrb r0, [r5, #6]
	subs r0, #4
	cmp r6, r0
	blt _080AD888
	b _080AD8EE
	.align 2, 0
_080AD8B8: .4byte 0x000001FF
_080AD8BC: .4byte gObject_8x8
_080AD8C0: .4byte gObject_32x8
_080AD8C4: .4byte gObject_16x8
_080AD8C8:
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r2, r6, #3
	adds r1, r1, r2
	mov r3, sl
	ands r1, r3
	movs r3, #4
	ldrsh r2, [r5, r3]
	adds r2, r2, r4
	mov r3, r9
	ands r2, r3
	mov r3, r8
	adds r3, #5
	str r3, [sp]
	ldr r3, _080AD8F8  @ gObject_16x8
	bl PutSpriteExt
	adds r6, #2
_080AD8EE:
	ldrb r0, [r5, #6]
	subs r0, #2
	cmp r6, r0
	blt _080AD8C8
	b _080AD922
	.align 2, 0
_080AD8F8: .4byte gObject_16x8
_080AD8FC:
	ldrb r0, [r5, #1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r2, r6, #3
	adds r1, r1, r2
	mov r3, sl
	ands r1, r3
	movs r3, #4
	ldrsh r2, [r5, r3]
	adds r2, r2, r4
	mov r3, r9
	ands r2, r3
	mov r3, r8
	adds r3, #5
	str r3, [sp]
	ldr r3, _080AD94C  @ gObject_8x8
	bl PutSpriteExt
	adds r6, #1
_080AD922:
	ldrb r0, [r5, #6]
	subs r0, #1
	cmp r6, r0
	blt _080AD8FC
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r7, r0
	bge _080AD934
	b _080AD832
_080AD934:
	ldr r1, [sp, #0xc]
	cmp r1, #3
	bgt _080AD93C
	b _080AD620
_080AD93C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD94C: .4byte gObject_8x8

	THUMB_FUNC_END sub_80AD610

	THUMB_FUNC_START sub_80AD950
sub_80AD950: @ 0x080AD950
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	ldr r0, _080AD988  @ gUnknown_08A20C4C
	bl Proc_Start
	adds r5, r0, #0
	ldr r0, _080AD98C  @ gUnknown_085B92C4
	ldr r2, _080AD990  @ 0x06010000
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AD994  @ gUnknown_020228C8
	adds r1, r6, #0
	adds r1, #0x10
	lsls r1, r1, #5
	movs r2, #0x20
	bl CopyToPaletteBuffer
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x14
	str r4, [r5, #0x5c]
	str r6, [r5, #0x60]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AD988: .4byte gUnknown_08A20C4C
_080AD98C: .4byte gUnknown_085B92C4
_080AD990: .4byte 0x06010000
_080AD994: .4byte gUnknown_020228C8

	THUMB_FUNC_END sub_80AD950

	THUMB_FUNC_START sub_80AD998
sub_80AD998: @ 0x080AD998
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080AD9E4  @ gUnknown_08A20C4C
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD9D8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r1, r0
	movs r1, #1
	strb r1, [r0]
	strb r6, [r0, #1]
	strh r7, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	ldr r1, [sp, #0x18]
	strb r1, [r0, #6]
	ldr r1, [sp, #0x1c]
	strb r1, [r0, #7]
	strh r5, [r0, #8]
_080AD9D8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD9E4: .4byte gUnknown_08A20C4C

	THUMB_FUNC_END sub_80AD998

	THUMB_FUNC_START sub_80AD9E8
sub_80AD9E8: @ 0x080AD9E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ADA0C  @ gUnknown_08A20C4C
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080ADA06
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
_080ADA06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADA0C: .4byte gUnknown_08A20C4C

	THUMB_FUNC_END sub_80AD9E8

	THUMB_FUNC_START sub_80ADA10
sub_80ADA10: @ 0x080ADA10
	push {lr}
	ldr r0, _080ADA20  @ gUnknown_08A20C4C
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080ADA20: .4byte gUnknown_08A20C4C

	THUMB_FUNC_END sub_80ADA10

	THUMB_FUNC_START sub_80ADA24
sub_80ADA24: @ 0x080ADA24
	push {lr}
	movs r2, #0
	adds r0, #0x2c
	movs r1, #3
_080ADA2C:
	strb r2, [r0]
	strb r2, [r0, #6]
	adds r0, #8
	subs r1, #1
	cmp r1, #0
	bge _080ADA2C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ADA24

	THUMB_FUNC_START sub_80ADA3C
sub_80ADA3C: @ 0x080ADA3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	add r1, sp, #4
	ldr r0, _080ADB24  @ gUnknown_08205E18
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #0x14
	adds r1, r2, #0
	ldr r0, _080ADB28  @ gUnknown_08205E28
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r4, sl
	adds r4, #0x2d
	str r4, [sp, #0x28]
	mov r5, sl
	adds r5, #0x2c
	movs r7, #3
	str r7, [sp, #0x24]
_080ADA72:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _080ADB58
	movs r0, #2
	ldrsh r6, [r5, r0]
	movs r0, #6
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _080ADB2C
	ldrb r4, [r5, #1]
	adds r0, r4, #0
	movs r1, #1
	ands r0, r1
	mov r7, sl
	adds r7, #0x50
	movs r2, #0x4e
	add r2, sl
	mov r8, r2
	movs r3, #0x4c
	add r3, sl
	mov r9, r3
	cmp r0, #0
	beq _080ADACA
	ldrb r0, [r7]
	adds r1, r6, #0
	adds r1, #0x60
	movs r3, #4
	ldrsh r2, [r5, r3]
	mov ip, r2
	mov r2, r8
	movs r3, #0
	ldrsh r2, [r2, r3]
	add r2, ip
	lsls r3, r4, #2
	add r3, sp
	adds r3, #0x14
	ldr r3, [r3]
	mov r4, r9
	ldrh r4, [r4]
	str r4, [sp]
	bl PutSpriteExt
	adds r6, #0x20
_080ADACA:
	ldrb r0, [r7]
	movs r1, #4
	ldrsh r2, [r5, r1]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r2, r2, r1
	ldr r3, [sp, #0x28]
	ldrb r1, [r3]
	lsls r1, r1, #2
	add r1, sp
	adds r1, #4
	ldr r3, [r1]
	mov r4, r9
	ldrh r1, [r4]
	str r1, [sp]
	adds r1, r6, #0
	bl PutSpriteExt
	ldr r0, [sp, #0x28]
	ldrb r3, [r0]
	adds r0, r3, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080ADB58
	adds r6, #0x60
	ldrb r0, [r7]
	movs r4, #4
	ldrsh r2, [r5, r4]
	mov r7, r8
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r2, r2, r1
	lsls r1, r3, #2
	add r1, sp
	adds r1, #0x14
	ldr r3, [r1]
	mov r7, r9
	ldrh r1, [r7]
	str r1, [sp]
	adds r1, r6, #0
	bl PutSpriteExt
	b _080ADB58
	.align 2, 0
_080ADB24: .4byte gUnknown_08205E18
_080ADB28: .4byte gUnknown_08205E28
_080ADB2C:
	mov r0, sl
	adds r0, #0x50
	ldrb r0, [r0]
	movs r1, #4
	ldrsh r2, [r5, r1]
	mov r1, sl
	adds r1, #0x4e
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, r2, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #2
	add r1, sp
	adds r1, #4
	ldr r3, [r1]
	mov r1, sl
	adds r1, #0x4c
	ldrh r1, [r1]
	str r1, [sp]
	adds r1, r6, #0
	bl PutSpriteExt
_080ADB58:
	ldr r4, [sp, #0x28]
	adds r4, #8
	str r4, [sp, #0x28]
	adds r5, #8
	ldr r7, [sp, #0x24]
	subs r7, #1
	str r7, [sp, #0x24]
	cmp r7, #0
	blt _080ADB6C
	b _080ADA72
_080ADB6C:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ADA3C

	THUMB_FUNC_START sub_80ADB7C
sub_80ADB7C: @ 0x080ADB7C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r4, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x20]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl sub_80ADC90
	ldr r0, _080ADBEC  @ gUnknown_08A20D6C
	adds r1, r7, #0
	bl Proc_Start
	adds r7, r0, #0
	ldr r0, _080ADBF0  @ gUnknown_08A1B0D8
	ldr r2, _080ADBF4  @ 0x06010000
	adds r1, r4, r2
	bl CopyDataWithPossibleUncomp
	ldr r0, _080ADBF8  @ gUnknown_08A1B154
	mov r1, r8
	adds r1, #0x10
	lsls r1, r1, #5
	movs r2, #0x20
	bl CopyToPaletteBuffer
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x14
	movs r0, #0xf
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0xc
	adds r4, r4, r0
	adds r5, r5, r4
	adds r0, r7, #0
	adds r0, #0x4c
	strh r5, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	mov r2, r9
	strb r2, [r0]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADBEC: .4byte gUnknown_08A20D6C
_080ADBF0: .4byte gUnknown_08A1B0D8
_080ADBF4: .4byte 0x06010000
_080ADBF8: .4byte gUnknown_08A1B154

	THUMB_FUNC_END sub_80ADB7C

	THUMB_FUNC_START sub_80ADBFC
sub_80ADBFC: @ 0x080ADBFC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, _080ADC3C  @ gUnknown_08A20D6C
	bl Proc_Find
	lsls r4, r4, #3
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x2c
	movs r1, #1
	strb r1, [r2]
	ldr r2, _080ADC40  @ 0x000001FF
	adds r1, r2, #0
	ands r5, r1
	strh r5, [r0, #0x2e]
	movs r1, #0xff
	ands r6, r1
	strh r6, [r0, #0x30]
	adds r0, #0x2d
	mov r1, r8
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ADC3C: .4byte gUnknown_08A20D6C
_080ADC40: .4byte 0x000001FF

	THUMB_FUNC_END sub_80ADBFC

	THUMB_FUNC_START sub_80ADC44
sub_80ADC44: @ 0x080ADC44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ADC64  @ gUnknown_08A20D6C
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080ADC5E
	lsls r0, r4, #3
	adds r0, r1, r0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
_080ADC5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADC64: .4byte gUnknown_08A20D6C

	THUMB_FUNC_END sub_80ADC44

	THUMB_FUNC_START sub_80ADC68
sub_80ADC68: @ 0x080ADC68
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080ADC8C  @ gUnknown_08A20D6C
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080ADC84
	lsls r0, r4, #3
	adds r0, r1, r0
	adds r0, #0x32
	strb r5, [r0]
_080ADC84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ADC8C: .4byte gUnknown_08A20D6C

	THUMB_FUNC_END sub_80ADC68

	THUMB_FUNC_START sub_80ADC90
sub_80ADC90: @ 0x080ADC90
	push {lr}
	ldr r0, _080ADCA0  @ gUnknown_08A20D6C
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080ADCA0: .4byte gUnknown_08A20D6C

	THUMB_FUNC_END sub_80ADC90

	THUMB_FUNC_START sub_80ADCA4
sub_80ADCA4: @ 0x080ADCA4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	bl SetFont
	adds r2, r4, #0
	adds r2, #0x5a
	adds r1, r4, #0
	adds r1, #0x5c
	ldrh r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080ADCC2
	movs r0, #0
	strh r0, [r2]
_080ADCC2:
	ldrh r0, [r2]
	adds r7, r2, #0
	cmp r0, #0
	bne _080ADD10
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x5e
	b _080ADCFC
_080ADCD2:
	ldrb r0, [r1]
	cmp r0, #1
	bne _080ADCE8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x54]
	adds r0, #1
	b _080ADCF8
_080ADCE8:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x44
	adds r0, r4, r0
	bl Text_AppendChar
_080ADCF8:
	str r0, [r4, #0x54]
	adds r6, #1
_080ADCFC:
	ldrh r0, [r5]
	cmp r6, r0
	bge _080ADD10
	ldr r1, [r4, #0x54]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080ADCD2
	adds r0, r4, #0
	bl Proc_Break
_080ADD10:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	movs r0, #0
	bl SetFont
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ADCA4

	THUMB_FUNC_START sub_80ADD24
sub_80ADD24: @ 0x080ADD24
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r9, r1
	mov r8, r2
	adds r5, r3, #0
	ldr r4, _080ADDC8  @ gUnknown_08A20D8C
	adds r0, r4, #0
	bl Proc_Find
	adds r6, r0, #0
	cmp r6, #0
	bne _080ADD4C
	adds r0, r4, #0
	ldr r1, [sp, #0x24]
	bl Proc_StartBlocking
	adds r6, r0, #0
_080ADD4C:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r2, _080ADDCC  @ 0x06010000
	adds r1, r7, r2
	mov r2, r9
	bl InitSomeOtherGraphicsRelatedStruct
	mov r0, r8
	str r0, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [sp, #0x20]
	strh r0, [r1]
	mov r7, r9
	adds r7, #0x10
	cmp r5, #0
	ble _080ADD9E
	adds r4, r6, #0
	adds r4, #0x44
_080ADD88:
	adds r0, r4, #0
	bl Text_Init3
	adds r0, r4, #0
	movs r1, #0
	bl Text_80046B4
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne _080ADD88
_080ADD9E:
	ldr r0, _080ADDD0  @ gUnknown_0859EF00
	lsls r1, r7, #5
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #0
	bl SetFontGlyphSet
	movs r0, #0
	bl SetFont
	adds r0, r6, #0
	movs r1, #0
	bl Proc_Goto
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADDC8: .4byte gUnknown_08A20D8C
_080ADDCC: .4byte 0x06010000
_080ADDD0: .4byte gUnknown_0859EF00

	THUMB_FUNC_END sub_80ADD24

	THUMB_FUNC_START sub_80ADDD4
sub_80ADDD4: @ 0x080ADDD4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _080ADDE2
_080ADDDC:
	adds r0, r4, #0
	bl Proc_End
_080ADDE2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_FindAfterWithParent
	adds r4, r0, #0
	cmp r4, #0
	bne _080ADDDC
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80ADDD4

	THUMB_FUNC_START sub_80ADDF8
sub_80ADDF8: @ 0x080ADDF8
	bx lr

	THUMB_FUNC_END sub_80ADDF8

	THUMB_FUNC_START sub_80ADDFC
sub_80ADDFC: @ 0x080ADDFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r6, r5, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	bgt _080ADE2A
	movs r2, #4
_080ADE2A:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _080ADE34
	movs r6, #4
_080ADE34:
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	str r0, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	mov r5, sp
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl __divsi3
	strh r0, [r5, #0xc]
	mov r5, sp
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl __divsi3
	strh r0, [r5, #0xe]
	mov r1, sp
	lsls r0, r7, #4
	strh r0, [r1, #0x10]
	ldr r1, _080ADE8C  @ gUnknown_030030D8
	mov r0, r8
	cmp r0, #2
	bne _080ADE78
	subs r1, #0x10
_080ADE78:
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADE8C: .4byte gUnknown_030030D8

	THUMB_FUNC_END sub_80ADDFC

	THUMB_FUNC_START sub_80ADE90
sub_80ADE90: @ 0x080ADE90
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0
	cmp r0, #2
	bne _080ADEA6
	ldr r3, _080ADEDC  @ gUnknown_030030C8
_080ADEA6:
	movs r4, #2
	ldrsh r0, [r3, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #2]
	movs r4, #6
	ldrsh r0, [r3, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r2, #4
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADEDC: .4byte gUnknown_030030C8

	THUMB_FUNC_END sub_80ADE90

	THUMB_FUNC_START sub_80ADEE0
sub_80ADEE0: @ 0x080ADEE0
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	movs r4, #0
	cmp r0, #2
	bne _080ADF00
	ldr r4, _080ADF44  @ gUnknown_030030C8
_080ADF00:
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	negs r3, r3
	adds r1, r0, #0
	muls r1, r3, r1
	movs r7, #2
	ldrsh r0, [r4, r7]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	negs r2, r2
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	movs r3, #6
	ldrsh r0, [r4, r3]
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0xc]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADF44: .4byte gUnknown_030030C8

	THUMB_FUNC_END sub_80ADEE0

	THUMB_FUNC_START sub_80ADF48
sub_80ADF48: @ 0x080ADF48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r1
	adds r1, r2, #0
	ldr r2, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	bgt _080ADF66
	adds r2, r0, #0
_080ADF66:
	cmp r6, r0
	bgt _080ADF6C
	adds r6, r0, #0
_080ADF6C:
	str r1, [sp]
	str r3, [sp, #4]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	mov r5, sp
	movs r4, #0x80
	lsls r4, r4, #0x11
	adds r0, r4, #0
	adds r1, r2, #0
	bl __divsi3
	strh r0, [r5, #0xc]
	mov r5, sp
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	strh r0, [r5, #0xe]
	mov r1, sp
	mov r2, r8
	asrs r0, r2, #4
	strh r0, [r1, #0x10]
	ldr r1, _080ADFB8  @ gUnknown_030030D8
	cmp r7, #2
	bne _080ADFA4
	subs r1, #0x10
_080ADFA4:
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADFB8: .4byte gUnknown_030030D8

	THUMB_FUNC_END sub_80ADF48

	THUMB_FUNC_START sub_80ADFBC
sub_80ADFBC: @ 0x080ADFBC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	cmp r0, #2
	bne _080ADFCA
	ldr r3, _080ADFF8  @ gUnknown_030030C8
_080ADFCA:
	movs r4, #2
	ldrsh r0, [r3, r4]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #2]
	movs r4, #6
	ldrsh r0, [r3, r4]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	muls r0, r2, r0
	asrs r0, r0, #0x10
	strh r0, [r3]
	movs r4, #4
	ldrsh r0, [r3, r4]
	muls r0, r2, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADFF8: .4byte gUnknown_030030C8

	THUMB_FUNC_END sub_80ADFBC

	THUMB_FUNC_START sub_80ADFFC
sub_80ADFFC: @ 0x080ADFFC
	push {r4, r5, r6, lr}
	adds r5, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0
	cmp r0, #2
	bne _080AE00C
	ldr r4, _080AE040  @ gUnknown_030030C8
_080AE00C:
	movs r3, #0
	ldrsh r0, [r4, r3]
	negs r3, r1
	muls r0, r3, r0
	movs r6, #2
	ldrsh r1, [r4, r6]
	negs r2, r2
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r0, r0, r5
	str r0, [r4, #8]
	movs r1, #4
	ldrsh r0, [r4, r1]
	muls r0, r3, r0
	movs r3, #6
	ldrsh r1, [r4, r3]
	muls r1, r2, r1
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE040: .4byte gUnknown_030030C8

	THUMB_FUNC_END sub_80ADFFC

	THUMB_FUNC_START sub_80AE044
sub_80AE044: @ 0x080AE044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r1, #0
	mov ip, r2
	mov r9, r3
	ldr r2, [sp, #0x20]
	ldr r4, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	ldrh r1, [r7]
	lsrs r1, r1, #1
	mov r8, r1
	movs r1, #0x78
	mov sl, r1
	adds r6, r7, #4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xd
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r5, r1, r0
	cmp r4, #0
	beq _080AE0DC
	cmp r3, #0
	beq _080AE0DC
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _080AE086
	ldrh r4, [r7]
	ldrh r3, [r7, #2]
_080AE086:
	mov r1, ip
	asrs r1, r1, #1
	mov ip, r1
	asrs r2, r2, #1
	asrs r4, r4, #1
	lsls r4, r4, #1
	ldr r0, [sp, #0x24]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r1, r2, #1
	adds r6, r0, r1
	mov r2, sl
	mov r0, r9
	muls r0, r2, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	mov r2, ip
	lsls r1, r2, #1
	adds r5, r0, r1
	cmp r3, #0
	ble _080AE0DC
	asrs r7, r4, #1
	adds r4, r3, #0
	ldr r0, _080AE0EC  @ 0x001FFFFF
	mov r9, r0
_080AE0BE:
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r9
	ands r2, r7
	bl CpuSet
	mov r1, r8
	lsls r0, r1, #1
	adds r6, r6, r0
	mov r2, sl
	lsls r0, r2, #1
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bne _080AE0BE
_080AE0DC:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE0EC: .4byte 0x001FFFFF

	THUMB_FUNC_END sub_80AE044

	THUMB_FUNC_START sub_80AE0F0
sub_80AE0F0: @ 0x080AE0F0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	movs r1, #0x78
	mov r8, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xd
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r5, r1, r0
	cmp r3, #0
	beq _080AE15A
	cmp r6, #0
	beq _080AE15A
	asrs r4, r4, #1
	asrs r3, r3, #1
	lsls r3, r3, #1
	mov r0, r8
	muls r0, r2, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r1, r4, #1
	adds r5, r0, r1
	cmp r6, #0
	ble _080AE15A
	adds r4, r6, #0
	lsls r0, r3, #0xa
	lsrs r6, r0, #0xb
	movs r7, #0x80
	lsls r7, r7, #0x11
_080AE13E:
	mov r0, sp
	mov r1, r9
	strh r1, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	orrs r2, r7
	bl CpuSet
	mov r1, r8
	lsls r0, r1, #1
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bne _080AE13E
_080AE15A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AE0F0

	THUMB_FUNC_START sub_80AE168
sub_80AE168: @ 0x080AE168
	push {r4, lr}
	movs r3, #0x1f
	ands r1, r3
	ands r2, r3
	ldr r4, _080AE188  @ gPaletteBuffer
	lsls r2, r2, #0xa
	lsls r1, r1, #5
	adds r2, r2, r1
	ands r3, r0
	adds r2, r2, r3
	strh r2, [r4]
	bl EnablePaletteSync
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE188: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80AE168

	THUMB_FUNC_START FadeInOut_Init
FadeInOut_Init: @ 0x080AE18C
	push {r4, lr}
	adds r4, r0, #0
	bl ArchiveCurrentPalettes
	movs r0, #0
	str r0, [r4, #0x2c]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END FadeInOut_Init

	THUMB_FUNC_START FadeIn_Loop
FadeIn_Loop: @ 0x080AE1A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	adds r1, r0, r1
	str r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AE1C4
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #2
	subs r2, r0, r1
	b _080AE1C6
_080AE1C4:
	lsls r2, r1, #1
_080AE1C6:
	ldr r3, [r4, #0x34]
	adds r0, r2, #0
	adds r1, r2, #0
	bl WriteFadedPaletteFromArchive
	ldr r2, _080AE1FC  @ gLCDControlBuffer
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
	ldr r0, [r4, #0x2c]
	cmp r0, #0x80
	bne _080AE1F6
	adds r0, r4, #0
	bl Proc_Break
_080AE1F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE1FC: .4byte gLCDControlBuffer

	THUMB_FUNC_END FadeIn_Loop

	THUMB_FUNC_START FadeOut_Loop
FadeOut_Loop: @ 0x080AE200
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	adds r1, r0, r1
	str r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AE224
	lsls r0, r1, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, r1
	b _080AE22C
_080AE224:
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	subs r2, r0, r1
_080AE22C:
	ldr r3, [r4, #0x34]
	adds r0, r2, #0
	adds r1, r2, #0
	bl WriteFadedPaletteFromArchive
	ldr r0, [r4, #0x2c]
	cmp r0, #0x80
	bne _080AE242
	adds r0, r4, #0
	bl Proc_Break
_080AE242:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END FadeOut_Loop

	THUMB_FUNC_START FadeInOut_DisableGfx
FadeInOut_DisableGfx: @ 0x080AE248
	push {lr}
	ldr r1, [r0, #0x34]
	ldr r0, _080AE270  @ 0x0000FFFF
	cmp r1, r0
	bne _080AE278
	ldr r2, _080AE274  @ gLCDControlBuffer
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
	b _080AE294
	.align 2, 0
_080AE270: .4byte 0x0000FFFF
_080AE274: .4byte gLCDControlBuffer
_080AE278:
	ldr r2, _080AE29C  @ gLCDControlBuffer
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
_080AE294:
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_080AE29C: .4byte gLCDControlBuffer

	THUMB_FUNC_END FadeInOut_DisableGfx

	THUMB_FUNC_START FadeInExists
FadeInExists: @ 0x080AE2A0
	push {lr}
	ldr r0, _080AE2B4  @ gUnknown_08A20DA4
	bl Proc_Find
	cmp r0, #0
	beq _080AE2AE
	movs r0, #1
_080AE2AE:
	pop {r1}
	bx r1
	.align 2, 0
_080AE2B4: .4byte gUnknown_08A20DA4

	THUMB_FUNC_END FadeInExists

	THUMB_FUNC_START FadeOutExists
FadeOutExists: @ 0x080AE2B8
	push {lr}
	ldr r0, _080AE2CC  @ gUnknown_08A20DCC
	bl Proc_Find
	cmp r0, #0
	beq _080AE2C6
	movs r0, #1
_080AE2C6:
	pop {r1}
	bx r1
	.align 2, 0
_080AE2CC: .4byte gUnknown_08A20DCC

	THUMB_FUNC_END FadeOutExists

	THUMB_FUNC_START NewFadeIn
NewFadeIn: @ 0x080AE2D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE2F0  @ gUnknown_08A20DA4
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #1
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE2F0: .4byte gUnknown_08A20DA4

	THUMB_FUNC_END NewFadeIn

	THUMB_FUNC_START NewFadeOut
NewFadeOut: @ 0x080AE2F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE314  @ gUnknown_08A20DCC
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #1
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE314: .4byte gUnknown_08A20DCC

	THUMB_FUNC_END NewFadeOut

	THUMB_FUNC_START sub_80AE318
sub_80AE318: @ 0x080AE318
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE338  @ gUnknown_08A20DA4
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #1
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE338: .4byte gUnknown_08A20DA4

	THUMB_FUNC_END sub_80AE318

	THUMB_FUNC_START sub_80AE33C
sub_80AE33C: @ 0x080AE33C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE35C  @ gUnknown_08A20DCC
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #1
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE35C: .4byte gUnknown_08A20DCC

	THUMB_FUNC_END sub_80AE33C

	THUMB_FUNC_START sub_80AE360
sub_80AE360: @ 0x080AE360
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE380  @ gUnknown_08A20DA4
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	str r4, [r0, #0x30]
	ldr r1, _080AE384  @ 0x0000FFFF
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE380: .4byte gUnknown_08A20DA4
_080AE384: .4byte 0x0000FFFF

	THUMB_FUNC_END sub_80AE360

	THUMB_FUNC_START sub_80AE388
sub_80AE388: @ 0x080AE388
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE3A8  @ gUnknown_08A20DCC
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	str r4, [r0, #0x30]
	ldr r1, _080AE3AC  @ 0x0000FFFF
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3A8: .4byte gUnknown_08A20DCC
_080AE3AC: .4byte 0x0000FFFF

	THUMB_FUNC_END sub_80AE388

	THUMB_FUNC_START sub_80AE3B0
sub_80AE3B0: @ 0x080AE3B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE3D0  @ gUnknown_08A20DA4
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #1
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #2
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3D0: .4byte gUnknown_08A20DA4

	THUMB_FUNC_END sub_80AE3B0

	THUMB_FUNC_START sub_80AE3D4
sub_80AE3D4: @ 0x080AE3D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE3F4  @ gUnknown_08A20DCC
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #1
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #2
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3F4: .4byte gUnknown_08A20DCC

	THUMB_FUNC_END sub_80AE3D4

	THUMB_FUNC_START sub_80AE3F8
sub_80AE3F8: @ 0x080AE3F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE418  @ gUnknown_08A20DA4
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #1
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #2
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE418: .4byte gUnknown_08A20DA4

	THUMB_FUNC_END sub_80AE3F8

	THUMB_FUNC_START sub_80AE41C
sub_80AE41C: @ 0x080AE41C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE43C  @ gUnknown_08A20DCC
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #1
	strb r1, [r2]
	str r4, [r0, #0x30]
	subs r1, #2
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE43C: .4byte gUnknown_08A20DCC

	THUMB_FUNC_END sub_80AE41C

	THUMB_FUNC_START sub_80AE440
sub_80AE440: @ 0x080AE440
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE460  @ gUnknown_08A20DA4
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #1
	strb r1, [r2]
	str r4, [r0, #0x30]
	ldr r1, _080AE464  @ 0x0000FFFF
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE460: .4byte gUnknown_08A20DA4
_080AE464: .4byte 0x0000FFFF

	THUMB_FUNC_END sub_80AE440

	THUMB_FUNC_START sub_80AE468
sub_80AE468: @ 0x080AE468
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AE488  @ gUnknown_08A20DCC
	movs r1, #4
	bl Proc_Start
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #1
	strb r1, [r2]
	str r4, [r0, #0x30]
	ldr r1, _080AE48C  @ 0x0000FFFF
	str r1, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE488: .4byte gUnknown_08A20DCC
_080AE48C: .4byte 0x0000FFFF

	THUMB_FUNC_END sub_80AE468

	THUMB_FUNC_START sub_80AE490
sub_80AE490: @ 0x080AE490
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080AE4AC  @ gPaletteBuffer
	ldr r2, _080AE4B0  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	bl EnablePaletteSync
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE4AC: .4byte gPaletteBuffer
_080AE4B0: .4byte 0x01000100

	THUMB_FUNC_END sub_80AE490

	THUMB_FUNC_START sub_80AE4B4
sub_80AE4B4: @ 0x080AE4B4
	push {lr}
	ldr r0, _080AE4D0  @ gUnknown_08A20DA4
	bl Proc_Find
	bl Proc_End
	ldr r0, _080AE4D4  @ gUnknown_08A20DCC
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080AE4D0: .4byte gUnknown_08A20DA4
_080AE4D4: .4byte gUnknown_08A20DCC

	THUMB_FUNC_END sub_80AE4B4

	THUMB_FUNC_START sub_80AE4D8
sub_80AE4D8: @ 0x080AE4D8
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2, #0x2c]
	adds r1, r2, #0
	adds r1, #0x34
	strb r0, [r1]
	str r0, [r2, #0x3c]
	str r0, [r2, #0x44]
	str r0, [r2, #0x40]
	str r0, [r2, #0x48]
	adds r1, #3
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	str r0, [r2, #0x4c]
	str r0, [r2, #0x50]
	str r0, [r2, #0x58]
	adds r1, #1
	strb r0, [r1]
	str r0, [r2, #0x54]
	movs r1, #0
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x32]
	adds r3, r2, #0
	adds r3, #0x3a
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x36
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80AE4D8

	THUMB_FUNC_START sub_80AE518
sub_80AE518: @ 0x080AE518
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r6, [r5, #0x2c]
	ldr r0, [r5, #0x58]
	cmp r0, #0
	beq _080AE54C
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r5, #0x58]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AE542
	b _080AE70E
_080AE542:
	b _080AE54E
_080AE544:
	adds r0, r5, #0
	bl Proc_Break
	b _080AE706
_080AE54C:
	str r0, [r5, #0x58]
_080AE54E:
	movs r0, #0x37
	adds r0, r0, r5
	mov r9, r0
_080AE554:
	ldrb r0, [r6]
	cmp r0, #4
	bne _080AE55C
	adds r6, #0xc
_080AE55C:
	ldrb r0, [r6]
	cmp r0, #5
	bne _080AE5AE
	adds r0, r5, #0
	adds r0, #0x3a
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _080AE5A6
	subs r0, #4
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0
	bne _080AE580
	ldrb r0, [r6, #0xa]
	b _080AE586
_080AE580:
	cmp r1, #0
	ble _080AE588
	subs r0, r3, #1
_080AE586:
	strb r0, [r2]
_080AE588:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _080AE5AC
	adds r1, r6, #0
	subs r1, #0xc
	ldrb r0, [r1]
	cmp r0, #4
	beq _080AE5AE
_080AE59A:
	adds r6, r1, #0
	subs r1, #0xc
	ldrb r0, [r1]
	cmp r0, #4
	bne _080AE59A
	b _080AE5AE
_080AE5A6:
	adds r0, r5, #0
	adds r0, #0x36
	strb r1, [r0]
_080AE5AC:
	adds r6, #0xc
_080AE5AE:
	ldrb r0, [r6]
	cmp r0, #8
	bne _080AE5D2
	ldr r0, [r5, #0x58]
	cmp r0, #0
	beq _080AE5D0
	ldr r0, [r5, #0x54]
	adds r0, #1
	str r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r5, #0x58]
	adds r0, r5, #0
	bl _call_via_r1
_080AE5D0:
	adds r6, #0xc
_080AE5D2:
	ldrb r0, [r6]
	cmp r0, #6
	bne _080AE5DA
	b _080AE706
_080AE5DA:
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080AE544
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _080AE6EA
	ldrb r0, [r6]
	cmp r0, #1
	bgt _080AE60A
	cmp r0, #0
	blt _080AE60A
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _080AE60A
	mov r2, r9
	ldrb r1, [r2]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2]
_080AE60A:
	ldrb r0, [r6]
	cmp r0, #1
	beq _080AE64A
	cmp r0, #1
	bgt _080AE61A
	cmp r0, #0
	beq _080AE624
	b _080AE6EA
_080AE61A:
	cmp r0, #2
	beq _080AE674
	cmp r0, #3
	beq _080AE6D8
	b _080AE6EA
_080AE624:
	ldr r0, [r6, #4]
	ldr r2, [r5, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r2, r1
	ldr r1, [r5, #0x3c]
	adds r1, r1, r2
	ldr r2, [r5, #0x44]
	adds r1, r1, r2
	mov r2, r9
	ldrb r3, [r2]
	ldr r2, [r5, #0x48]
	muls r2, r3, r2
	adds r1, r1, r2
	ldrh r2, [r6, #8]
	lsrs r2, r2, #2
	bl CpuFastSet
	b _080AE66A
_080AE64A:
	ldr r0, [r6, #4]
	ldr r2, [r5, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r2, r1
	ldr r1, [r5, #0x3c]
	adds r1, r1, r2
	ldr r2, [r5, #0x44]
	adds r1, r1, r2
	mov r2, r9
	ldrb r3, [r2]
	ldr r2, [r5, #0x48]
	muls r2, r3, r2
	adds r1, r1, r2
	bl CopyDataWithPossibleUncomp
_080AE66A:
	ldrh r1, [r6, #8]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _080AE6EA
_080AE674:
	ldr r1, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #8
	adds r4, r5, #0
	adds r4, #0x37
	adds r7, r5, #0
	adds r7, #0x34
	cmp r1, r0
	bne _080AE69A
	ldrb r0, [r7]
	mov r1, r9
	ldrb r2, [r1]
	lsls r2, r2, #0xf
	ldr r1, [r5, #0x3c]
	adds r1, r1, r2
	ldr r2, _080AE6D4  @ 0x0000FFFF
	ands r1, r2
	bl SetBackgroundTileDataOffset
_080AE69A:
	ldrb r0, [r7]
	bl BG_GetMapBuffer
	ldr r1, [r6, #4]
	adds r2, r5, #0
	adds r2, #0x35
	ldrb r2, [r2]
	lsls r2, r2, #0xc
	ldrb r4, [r4]
	ldr r3, [r5, #0x48]
	muls r4, r3, r4
	ldr r3, [r5, #0x40]
	adds r3, r3, r4
	lsls r3, r3, #0x11
	lsrs r3, r3, #0x16
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl CallARM_FillTileRect
	movs r0, #0
	str r0, [r5, #0x44]
	movs r0, #1
	ldrb r7, [r7]
	lsls r0, r7
	bl BG_EnableSyncByMask
	b _080AE6EA
	.align 2, 0
_080AE6D4: .4byte 0x0000FFFF
_080AE6D8:
	ldr r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldrh r2, [r6, #8]
	lsls r2, r2, #5
	bl CopyToPaletteBuffer
_080AE6EA:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r6, #0xa]
	cmp r0, r2
	bls _080AE706
	adds r6, #0xc
	mov r0, r8
	strb r1, [r0]
	b _080AE554
_080AE706:
	str r6, [r5, #0x2c]
	ldr r0, [r5, #0x50]
	adds r0, #1
	str r0, [r5, #0x50]
_080AE70E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AE518

	THUMB_FUNC_START sub_80AE71C
sub_80AE71C: @ 0x080AE71C
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080AE74A
	adds r4, r1, #0
	adds r4, #0x34
	ldrb r0, [r4]
	ldr r1, [r1, #0x3c]
	bl SetBackgroundTileDataOffset
	ldrb r0, [r4]
	bl BG_GetMapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #1
	ldrb r4, [r4]
	lsls r0, r4
	bl BG_EnableSyncByMask
_080AE74A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AE71C

	THUMB_FUNC_START sub_80AE750
sub_80AE750: @ 0x080AE750
	push {lr}
	ldr r0, _080AE760  @ gUnknown_08A20DFC
	bl Proc_Find
	cmp r0, #0
	bne _080AE764
	movs r0, #0
	b _080AE766
	.align 2, 0
_080AE760: .4byte gUnknown_08A20DFC
_080AE764:
	movs r0, #1
_080AE766:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AE750

	THUMB_FUNC_START sub_80AE76C
sub_80AE76C: @ 0x080AE76C
	push {lr}
	ldr r0, _080AE78C  @ gUnknown_08A20DFC
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080AE788
	ldr r2, [r1, #0x2c]
	ldrb r0, [r2]
	cmp r0, #6
	bne _080AE788
	adds r0, r2, #0
	adds r0, #0xc
	str r0, [r1, #0x2c]
_080AE788:
	pop {r0}
	bx r0
	.align 2, 0
_080AE78C: .4byte gUnknown_08A20DFC

	THUMB_FUNC_END sub_80AE76C

	THUMB_FUNC_START sub_80AE790
sub_80AE790: @ 0x080AE790
	push {lr}
	ldr r0, _080AE7A0  @ gUnknown_08A20DFC
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080AE7A0: .4byte gUnknown_08A20DFC

	THUMB_FUNC_END sub_80AE790

	THUMB_FUNC_START sub_80AE7A4
sub_80AE7A4: @ 0x080AE7A4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080AE7C0  @ gUnknown_08A20DFC
	bl Proc_Find
	cmp r0, #0
	beq _080AE7B8
	adds r0, #0x3a
	strb r4, [r0]
_080AE7B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE7C0: .4byte gUnknown_08A20DFC

	THUMB_FUNC_END sub_80AE7A4

	THUMB_FUNC_START sub_80AE7C4
sub_80AE7C4: @ 0x080AE7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov r8, r1
	mov r9, r2
	mov sl, r3
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	ldr r1, [sp, #0x30]
	cmp r1, #0
	bne _080AE7EC
	ldr r0, _080AE7E8  @ gUnknown_08A20DFC
	movs r1, #3
	b _080AE7EE
	.align 2, 0
_080AE7E8: .4byte gUnknown_08A20DFC
_080AE7EC:
	ldr r0, _080AE848  @ gUnknown_08A20DFC
_080AE7EE:
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x34
	mov r1, r8
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x35
	ldr r0, [sp, #0x28]
	strb r0, [r1]
	cmp r7, #0
	bge _080AE80E
	movs r7, #0x80
	lsls r7, r7, #7
_080AE80E:
	cmp r6, #0
	bge _080AE814
	movs r6, #0
_080AE814:
	mov r0, r8
	bl GetBackgroundTileDataOffset
	str r0, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r7, [r4, #0x48]
	mov r2, r9
	strh r2, [r4, #0x30]
	mov r6, sl
	strh r6, [r4, #0x32]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x58]
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r2, r9
	negs r1, r2
	movs r3, #0xff
	ands r1, r3
	mov r6, sl
	negs r2, r6
	ands r2, r3
	bl BG_SetPosition
	b _080AE856
	.align 2, 0
_080AE848: .4byte gUnknown_08A20DFC
_080AE84C:
	ldrb r0, [r5, #0xa]
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	adds r5, #0xc
_080AE856:
	ldrb r0, [r5]
	cmp r0, #9
	bls _080AE84C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AE7C4

	THUMB_FUNC_START sub_80AE86C
sub_80AE86C: @ 0x080AE86C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r1, #0
	ldr r1, [r0, #0x30]
	lsls r1, r1, #5
	ldr r2, _080AE92C  @ gPaletteBuffer
	adds r1, r1, r2
	mov r8, r1
	ldr r1, [r0, #0x3c]
	mov ip, r1
	ldr r7, [r0, #0x40]
	movs r1, #0
	ldr r0, [r0, #0x34]
	cmp r1, r0
	bge _080AE918
	str r0, [sp, #4]
	movs r0, #0x80
	subs r5, r0, r6
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
_080AE89E:
	adds r1, #1
	str r1, [sp]
	movs r1, #0xf
	mov r9, r1
_080AE8A6:
	mov r0, ip
	ldrh r4, [r0]
	movs r0, #0x1f
	ands r0, r4
	adds r2, r0, #0
	muls r2, r5, r2
	ldrh r3, [r7]
	movs r0, #0x1f
	ands r0, r3
	muls r0, r6, r0
	adds r2, r2, r0
	asrs r2, r2, #7
	movs r1, #0x1f
	ands r2, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r4
	adds r1, r0, #0
	muls r1, r5, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	muls r0, r6, r0
	adds r1, r1, r0
	asrs r1, r1, #7
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r1, r0
	adds r2, r2, r1
	mov r0, sl
	ands r0, r4
	adds r1, r0, #0
	muls r1, r5, r1
	mov r0, sl
	ands r0, r3
	muls r0, r6, r0
	adds r1, r1, r0
	asrs r1, r1, #7
	mov r0, sl
	ands r1, r0
	adds r2, r2, r1
	mov r1, r8
	strh r2, [r1]
	movs r0, #2
	add r8, r0
	add ip, r0
	adds r7, #2
	movs r1, #1
	negs r1, r1
	add r9, r1
	mov r0, r9
	cmp r0, #0
	bge _080AE8A6
	ldr r1, [sp]
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _080AE89E
_080AE918:
	bl EnablePaletteSync
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE92C: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80AE86C

	THUMB_FUNC_START sub_80AE930
sub_80AE930: @ 0x080AE930
	movs r1, #0
	str r1, [r0, #0x38]
	bx lr

	THUMB_FUNC_END sub_80AE930

	THUMB_FUNC_START sub_80AE938
sub_80AE938: @ 0x080AE938
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	ldr r1, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080AE950
	movs r0, #0
	str r0, [r2, #0x38]
_080AE950:
	ldr r0, [r2, #0x38]
	subs r1, r1, r0
	cmp r0, #0x7f
	bgt _080AE95A
	adds r1, r0, #0
_080AE95A:
	adds r0, r2, #0
	bl sub_80AE86C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AE938

	THUMB_FUNC_START sub_80AE964
sub_80AE964: @ 0x080AE964
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov r9, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, _080AE998  @ gUnknown_08A20E24
	bl Proc_Start
	str r4, [r0, #0x2c]
	str r5, [r0, #0x30]
	str r6, [r0, #0x34]
	mov r1, r8
	str r1, [r0, #0x3c]
	mov r1, r9
	str r1, [r0, #0x40]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE998: .4byte gUnknown_08A20E24

	THUMB_FUNC_END sub_80AE964

	THUMB_FUNC_START sub_80AE99C
sub_80AE99C: @ 0x080AE99C
	push {lr}
	ldr r0, _080AE9AC  @ gUnknown_08A20E24
	bl Proc_Find
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_080AE9AC: .4byte gUnknown_08A20E24

	THUMB_FUNC_END sub_80AE99C

	THUMB_FUNC_START sub_80AE9B0
sub_80AE9B0: @ 0x080AE9B0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	cmp r5, #0
	beq _080AE9E0
	ldr r1, _080AEA1C  @ 0x000003FF
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _080AEA20  @ 0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl CopyDataWithPossibleUncomp
_080AE9E0:
	cmp r6, #0
	beq _080AE9F4
	adds r1, r4, #0
	adds r1, #0x10
	lsls r1, r1, #5
	ldr r2, [sp, #0x30]
	lsls r2, r2, #5
	adds r0, r6, #0
	bl CopyToPaletteBuffer
_080AE9F4:
	movs r0, #0xf
	ands r4, r0
	lsls r3, r4, #0xc
	adds r3, r3, r7
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	mov r0, r8
	mov r1, r9
	ldr r2, [sp, #0x24]
	bl APProc_Create
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AEA1C: .4byte 0x000003FF
_080AEA20: .4byte 0x06010000

	THUMB_FUNC_END sub_80AE9B0

	THUMB_FUNC_START sub_80AEA24
sub_80AEA24: @ 0x080AEA24
	push {lr}
	adds r1, r0, #0
	cmp r1, #1
	beq _080AEA4C
	cmp r1, #1
	bgt _080AEA36
	cmp r1, #0
	beq _080AEA40
	b _080AEA68
_080AEA36:
	cmp r1, #2
	beq _080AEA58
	cmp r1, #3
	beq _080AEA64
	b _080AEA68
_080AEA40:
	ldr r0, _080AEA48  @ gLCDControlBuffer
	ldrh r0, [r0, #0x1c]
	b _080AEA68
	.align 2, 0
_080AEA48: .4byte gLCDControlBuffer
_080AEA4C:
	ldr r0, _080AEA54  @ gLCDControlBuffer
	ldrh r0, [r0, #0x20]
	b _080AEA68
	.align 2, 0
_080AEA54: .4byte gLCDControlBuffer
_080AEA58:
	ldr r0, _080AEA60  @ gLCDControlBuffer
	ldrh r0, [r0, #0x24]
	b _080AEA68
	.align 2, 0
_080AEA60: .4byte gLCDControlBuffer
_080AEA64:
	ldr r0, _080AEA6C  @ gLCDControlBuffer
	ldrh r0, [r0, #0x28]
_080AEA68:
	pop {r1}
	bx r1
	.align 2, 0
_080AEA6C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AEA24

	THUMB_FUNC_START sub_80AEA70
sub_80AEA70: @ 0x080AEA70
	push {lr}
	adds r1, r0, #0
	cmp r1, #1
	beq _080AEA98
	cmp r1, #1
	bgt _080AEA82
	cmp r1, #0
	beq _080AEA8C
	b _080AEAB4
_080AEA82:
	cmp r1, #2
	beq _080AEAA4
	cmp r1, #3
	beq _080AEAB0
	b _080AEAB4
_080AEA8C:
	ldr r0, _080AEA94  @ gLCDControlBuffer
	ldrh r0, [r0, #0x1e]
	b _080AEAB4
	.align 2, 0
_080AEA94: .4byte gLCDControlBuffer
_080AEA98:
	ldr r0, _080AEAA0  @ gLCDControlBuffer
	ldrh r0, [r0, #0x22]
	b _080AEAB4
	.align 2, 0
_080AEAA0: .4byte gLCDControlBuffer
_080AEAA4:
	ldr r0, _080AEAAC  @ gLCDControlBuffer
	ldrh r0, [r0, #0x26]
	b _080AEAB4
	.align 2, 0
_080AEAAC: .4byte gLCDControlBuffer
_080AEAB0:
	ldr r0, _080AEAB8  @ gLCDControlBuffer
	ldrh r0, [r0, #0x2a]
_080AEAB4:
	pop {r1}
	bx r1
	.align 2, 0
_080AEAB8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80AEA70

	THUMB_FUNC_START sub_80AEABC
sub_80AEABC: @ 0x080AEABC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl strcpy
	adds r0, r5, #0
	bl strlen
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEABC

	THUMB_FUNC_START sub_80AEADC
sub_80AEADC: @ 0x080AEADC
	strb r0, [r1]
	adds r1, #1
	movs r0, #0
	strb r0, [r1]
	adds r0, r1, #0
	bx lr

	THUMB_FUNC_END sub_80AEADC

	THUMB_FUNC_START sub_80AEAE8
sub_80AEAE8: @ 0x080AEAE8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r5]
	mov r1, sp
	bl GetCharTextWidth
	adds r4, r0, #0
	ldr r1, [r5]
	subs r4, r4, r1
	ldr r0, [r6]
	adds r2, r4, #0
	bl memcpy
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	ldr r0, [r6]
	adds r0, r0, r4
	str r0, [r6]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEAE8

	THUMB_FUNC_START sub_80AEB1C
sub_80AEB1C: @ 0x080AEB1C
	push {lr}
	movs r0, #0
	bl SetPrimaryHBlankHandler
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AEB1C

	THUMB_FUNC_START sub_80AEB28
sub_80AEB28: @ 0x080AEB28
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0
	str r0, [sp]
	movs r2, #0
	bl sub_80029E8
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AEB28

	THUMB_FUNC_START sub_80AEB44
sub_80AEB44: @ 0x080AEB44
	push {lr}
	sub sp, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	adds r1, r2, #0
	movs r3, #0x20
	bl sub_80029E8
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AEB44

	THUMB_FUNC_START sub_80AEB60
sub_80AEB60: @ 0x080AEB60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AEB88  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AEB76
	movs r0, #0x70
	bl m4aSongNumStart
_080AEB76:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x58]
	bl StartHelpBox_Unk
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEB88: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80AEB60

	THUMB_FUNC_START sub_80AEB8C
sub_80AEB8C: @ 0x080AEB8C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080AEBC0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	ldr r0, _080AEBC4  @ 0x0000030B
	ands r0, r1
	cmp r0, #0
	beq _080AEBBA
	adds r0, r2, #0
	bl Proc_Break
	ldr r0, _080AEBC8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AEBB6
	movs r0, #0x71
	bl m4aSongNumStart
_080AEBB6:
	bl CloseHelpBox
_080AEBBA:
	pop {r0}
	bx r0
	.align 2, 0
_080AEBC0: .4byte gKeyStatusPtr
_080AEBC4: .4byte 0x0000030B
_080AEBC8: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80AEB8C

	THUMB_FUNC_START sub_80AEBCC
sub_80AEBCC: @ 0x080AEBCC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r0, _080AEBE8  @ gUnknown_08A20E44
	bl Proc_StartBlocking
	str r4, [r0, #0x2c]
	str r5, [r0, #0x30]
	str r6, [r0, #0x58]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AEBE8: .4byte gUnknown_08A20E44

	THUMB_FUNC_END sub_80AEBCC

	THUMB_FUNC_START sub_80AEBEC
sub_80AEBEC: @ 0x080AEBEC
	push {r4, lr}
	movs r4, #0
_080AEBF0:
	adds r4, #1
	movs r1, #0xa
	bl __divsi3
	cmp r0, #0
	bne _080AEBF0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEBEC

	THUMB_FUNC_START sub_80AEC04
sub_80AEC04: @ 0x080AEC04
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, [sp, #0x14]
	ldr r0, [sp, #0x18]
	subs r7, r2, r6
	subs r2, r0, r5
	adds r1, r7, #0
	muls r1, r2, r1
	subs r3, r3, r5
	subs r4, r4, r6
	adds r0, r3, #0
	muls r0, r4, r0
	subs r1, r1, r0
	cmp r1, #0
	blt _080AEC4C
	ldr r0, [sp, #0x20]
	subs r5, r0, r5
	adds r1, r4, #0
	muls r1, r5, r1
	ldr r0, [sp, #0x1c]
	subs r4, r0, r6
	adds r0, r2, #0
	muls r0, r4, r0
	subs r1, r1, r0
	cmp r1, #0
	blt _080AEC4C
	adds r0, r4, #0
	muls r0, r3, r0
	adds r1, r5, #0
	muls r1, r7, r1
	subs r0, r0, r1
	cmp r0, #0
	blt _080AEC4C
	movs r0, #1
	b _080AEC4E
_080AEC4C:
	movs r0, #0
_080AEC4E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEC04

	THUMB_FUNC_START sub_80AEC54
sub_80AEC54: @ 0x080AEC54
	push {lr}
	sub sp, #0x64
	mov r0, sp
	bl LoadAndVerifySecureHeaderSW
	movs r0, #0
	add sp, #0x64
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEC54

	THUMB_FUNC_START sub_80AEC68
sub_80AEC68: @ 0x080AEC68
	push {lr}
	sub sp, #0x64
	mov r0, sp
	bl LoadAndVerifySecureHeaderSW
	movs r0, #0
	add sp, #0x64
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEC68

	THUMB_FUNC_START sub_80AEC7C
sub_80AEC7C: @ 0x080AEC7C
	push {lr}
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0x64
	beq _080AEC8A
	movs r0, #0
	b _080AEC8C
_080AEC8A:
	movs r0, #1
_080AEC8C:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEC7C

	THUMB_FUNC_START sub_80AEC90
sub_80AEC90: @ 0x080AEC90
	movs r0, #0
	bx lr

	THUMB_FUNC_END sub_80AEC90

	THUMB_FUNC_START sub_80AEC94
sub_80AEC94: @ 0x080AEC94
	push {lr}
	movs r2, #0
	ldr r1, _080AECA8  @ gUnknown_08A20E74
_080AEC9A:
	ldr r0, [r1]
	cmp r0, #0
	blt _080AECAC
	adds r1, #0x10
	adds r2, #1
	b _080AEC9A
	.align 2, 0
_080AECA8: .4byte gUnknown_08A20E74
_080AECAC:
	adds r0, r2, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AEC94

	THUMB_FUNC_START sub_80AECB4
sub_80AECB4: @ 0x080AECB4
	push {r4, r5, lr}
	movs r3, #0
	movs r4, #0
	ldr r0, _080AECD0  @ gUnknown_08A20E74
	adds r5, r0, #0
	adds r5, #8
	adds r2, r0, #0
_080AECC2:
	lsls r1, r3, #4
	ldr r0, [r2]
	cmp r0, #0
	bge _080AECD4
	adds r0, r4, #0
	b _080AECE4
	.align 2, 0
_080AECD0: .4byte gUnknown_08A20E74
_080AECD4:
	adds r0, r1, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _080AECDE
	adds r4, #1
_080AECDE:
	adds r2, #0x10
	adds r3, #1
	b _080AECC2
_080AECE4:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AECB4

	THUMB_FUNC_START sub_80AECEC
sub_80AECEC: @ 0x080AECEC
	push {lr}
	asrs r3, r1, #5
	lsls r3, r3, #2
	adds r3, r3, r0
	movs r2, #0x1f
	ands r2, r1
	ldr r0, [r3, #0x40]
	lsrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AED08
	movs r0, #0
	b _080AED0A
_080AED08:
	movs r0, #1
_080AED0A:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AECEC

	THUMB_FUNC_START sub_80AED10
sub_80AED10: @ 0x080AED10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r2, #0
	movs r4, #0
	ldr r3, _080AED2C  @ gUnknown_08A20E74
	adds r5, r3, #0
_080AED1C:
	lsls r1, r2, #4
	adds r0, r1, r5
	ldr r0, [r0]
	cmp r0, #0
	bge _080AED30
	adds r0, r4, #0
	b _080AED5E
	.align 2, 0
_080AED2C: .4byte gUnknown_08A20E74
_080AED30:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080AED56
	asrs r1, r2, #5
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r0, #0x1f
	ands r0, r2
	ldr r1, [r1, #0x40]
	lsrs r1, r0
	movs r0, #1
	ands r1, r0
	adds r0, r2, #1
	cmp r1, #0
	beq _080AED5A
	b _080AED58
_080AED56:
	adds r0, r2, #1
_080AED58:
	adds r4, r0, #0
_080AED5A:
	adds r2, r0, #0
	b _080AED1C
_080AED5E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AED10

	THUMB_FUNC_START sub_80AED64
sub_80AED64: @ 0x080AED64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	bl sub_80AEC94
	movs r1, #0x36
	adds r1, r1, r7
	mov r8, r1
	movs r1, #0
	mov r2, r8
	strb r0, [r2]
	add r0, sp, #0x24
	movs r4, #0
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x40
	ldr r2, _080AEEB8  @ 0x01000008
	bl CpuSet
	adds r5, r7, #0
	adds r5, #0x33
	strb r4, [r5]
	mov r0, sp
	bl sub_80A3E4C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AEE9A
	movs r6, #0
	ldr r1, _080AEEBC  @ gUnknown_08A20E74
	ldr r0, [r1]
	mov r9, r8
	mov r8, r5
	movs r3, #0x34
	adds r3, r3, r7
	mov sl, r3
	cmp r0, #0
	blt _080AEE0C
	movs r4, #0
	movs r0, #8
	adds r0, r0, r1
	mov ip, r0
_080AEDC0:
	mov r2, ip
	ldr r0, [r2]
	cmp r0, #0
	bne _080AEDFA
	adds r0, r4, r1
	ldr r1, [r0]
	asrs r0, r1, #5
	lsls r0, r0, #2
	add r0, sp
	movs r3, #0x1f
	ands r1, r3
	ldr r0, [r0]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEDFA
	asrs r2, r6, #5
	lsls r2, r2, #2
	adds r2, r2, r7
	adds r0, r6, #0
	ands r0, r3
	lsls r1, r0
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080AEDFA:
	adds r4, #0x10
	movs r3, #0x10
	add ip, r3
	adds r6, #1
	ldr r1, _080AEEBC  @ gUnknown_08A20E74
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _080AEDC0
_080AEE0C:
	bl sub_80AECB4
	adds r2, r0, #0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x64
	muls r0, r1, r0
	mov r3, r9
	ldrb r1, [r3]
	subs r1, r1, r2
	bl __divsi3
	mov r1, sl
	strb r0, [r1]
	movs r6, #0
	ldr r1, _080AEEBC  @ gUnknown_08A20E74
	ldr r0, [r1]
	cmp r0, #0
	blt _080AEE9A
	movs r5, #0
_080AEE34:
	adds r0, r1, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r2, [r0]
	cmp r2, #0
	beq _080AEE8C
	adds r0, r5, r1
	ldr r1, [r0]
	asrs r0, r1, #5
	lsls r0, r0, #2
	add r0, sp
	movs r3, #0x1f
	ands r1, r3
	ldr r0, [r0]
	lsrs r0, r1
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _080AEE6A
	adds r0, r7, #0
	str r3, [sp, #0x28]
	bl _call_via_r2
	lsls r0, r0, #0x18
	ldr r3, [sp, #0x28]
	cmp r0, #0
	beq _080AEE8C
_080AEE6A:
	asrs r2, r6, #5
	lsls r2, r2, #2
	adds r2, r2, r7
	adds r0, r6, #0
	ands r0, r3
	adds r1, r4, #0
	lsls r1, r0
	ldr r0, [r2, #0x40]
	orrs r0, r1
	str r0, [r2, #0x40]
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x2e
	strb r4, [r0]
_080AEE8C:
	adds r5, #0x10
	adds r6, #1
	ldr r1, _080AEEBC  @ gUnknown_08A20E74
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _080AEE34
_080AEE9A:
	adds r0, r7, #0
	bl sub_80AED10
	adds r1, r7, #0
	adds r1, #0x36
	strb r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AEEB8: .4byte 0x01000008
_080AEEBC: .4byte gUnknown_08A20E74

	THUMB_FUNC_END sub_80AED64

	THUMB_FUNC_START sub_80AEEC0
sub_80AEEC0: @ 0x080AEEC0
	bx lr

	THUMB_FUNC_END sub_80AEEC0

	THUMB_FUNC_START sub_80AEEC4
sub_80AEEC4: @ 0x080AEEC4
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	movs r3, #0x78
	bl sub_80029E8
	adds r4, #0x3f
	movs r0, #1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AEEC4

	THUMB_FUNC_START sub_80AEEE8
sub_80AEEE8: @ 0x080AEEE8
	push {r4, lr}
	ldr r4, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r1, [r0]
	ldr r0, _080AEF20  @ gUnknown_08A212E0
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r4, #0
	movs r2, #0
	bl sub_80AF7F4
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_80B0018
	adds r4, #0x3f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEF20: .4byte gUnknown_08A212E0

	THUMB_FUNC_END sub_80AEEE8

	THUMB_FUNC_START sub_80AEF24
sub_80AEF24: @ 0x080AEF24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AEF5C  @ gUnknown_08A212E4
	adds r1, r4, #0
	bl Proc_Start
	adds r4, #0x31
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r2, [r4]
	ldr r0, _080AEF60  @ gUnknown_08A212E0
	ldr r0, [r0]
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _080AEF50
	cmp r2, #0x80
	bne _080AEF54
_080AEF50:
	movs r0, #0
	strb r0, [r4]
_080AEF54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEF5C: .4byte gUnknown_08A212E4
_080AEF60: .4byte gUnknown_08A212E0

	THUMB_FUNC_END sub_80AEF24

	THUMB_FUNC_START sub_80AEF64
sub_80AEF64: @ 0x080AEF64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	movs r6, #0
	ldr r2, _080AF0AC  @ gUnknown_08A212E0
	movs r0, #1
	negs r0, r0
	adds r1, r0, #0
_080AEF7C:
	ldr r0, [r2]
	adds r0, r0, r6
	strb r1, [r0]
	adds r6, #1
	cmp r6, #0x7f
	ble _080AEF7C
	bl GetGameClock
	adds r3, r0, #0
	movs r0, #0x7f
	ands r3, r0
	adds r2, r3, #0
	movs r6, #0
	mov r7, r9
	adds r7, #0x31
	mov r1, r9
	adds r1, #0x35
	str r1, [sp, #4]
	mov r5, r9
	adds r5, #0x30
	str r5, [sp]
_080AEFA6:
	asrs r0, r2, #5
	lsls r0, r0, #2
	add r0, r9
	movs r1, #0x1f
	ands r1, r2
	ldr r0, [r0, #0x40]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEFC6
	ldr r0, _080AF0AC  @ gUnknown_08A212E0
	ldr r0, [r0]
	adds r0, r0, r6
	strb r2, [r0]
	adds r6, #1
_080AEFC6:
	adds r1, r2, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _080AEFD2
	adds r0, r2, #0
	adds r0, #0x80
_080AEFD2:
	asrs r2, r0, #7
	lsls r0, r2, #7
	subs r2, r1, r0
	cmp r2, r3
	bne _080AEFA6
	mov r8, r6
	bl GetGameClock
	adds r4, r0, #0
	adds r4, #0x7b
	ldr r0, _080AF0AC  @ gUnknown_08A212E0
	mov sl, r0
	movs r6, #0xff
_080AEFEC:
	movs r1, #0xd
	adds r2, r4, #0
	muls r2, r1, r2
	adds r1, r2, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _080AF000
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r2, r3
_080AF000:
	asrs r4, r0, #0xf
	lsls r0, r4, #0xf
	subs r4, r1, r0
	asrs r0, r4, #8
	mov r1, r8
	bl __modsi3
	adds r5, r0, #0
	movs r0, #0xd
	adds r2, r4, #0
	muls r2, r0, r2
	adds r1, r2, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _080AF024
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r2, r3
_080AF024:
	asrs r4, r0, #0xf
	lsls r0, r4, #0xf
	subs r4, r1, r0
	asrs r0, r4, #8
	mov r1, r8
	bl __modsi3
	adds r3, r0, #0
	cmp r5, r3
	beq _080AF068
	mov r1, sl
	ldr r0, [r1]
	adds r1, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	adds r2, r0, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r1, [r2]
	subs r0, r0, r1
	strb r0, [r2]
	mov r2, sl
	ldr r1, [r2]
	adds r2, r1, r5
	adds r1, r1, r3
	ldrb r0, [r2]
	ldrb r1, [r1]
	subs r0, r0, r1
	strb r0, [r2]
_080AF068:
	subs r6, #1
	cmp r6, #0
	bge _080AEFEC
	movs r0, #0
	strb r0, [r7]
	ldr r3, [sp, #4]
	ldrb r2, [r3]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	add r0, r9
	movs r1, #0x1f
	ands r1, r2
	ldr r0, [r0, #0x40]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF0C4
	ldr r0, _080AF0AC  @ gUnknown_08A212E0
	ldr r1, [r0]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r2, #0
	cmp r0, r5
	beq _080AF0C4
	adds r3, r7, #0
	movs r4, #0
	ldr r2, [sp, #4]
_080AF0A0:
	ldrb r0, [r3]
	cmp r0, #0x80
	bne _080AF0B0
	strb r4, [r7]
	b _080AF0C4
	.align 2, 0
_080AF0AC: .4byte gUnknown_08A212E0
_080AF0B0:
	adds r0, #1
	strb r0, [r7]
	ldrb r0, [r7]
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r5, [r2]
	cmp r0, r5
	bne _080AF0A0
_080AF0C4:
	movs r0, #1
	ldr r1, [sp]
	strb r0, [r1]
	mov r0, r9
	bl sub_80AEF24
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AEF64

	THUMB_FUNC_START sub_80AF0E0
sub_80AF0E0: @ 0x080AF0E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x32
	ldrb r0, [r0]
	adds r2, r0, #1
	movs r0, #0x7f
	ands r2, r0
_080AF0EE:
	lsrs r0, r2, #5
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0x1f
	ands r1, r2
	ldr r0, [r0, #0x40]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF12A
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_80AF7F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF126
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_80B0018
	movs r0, #1
	b _080AF138
_080AF126:
	movs r0, #0
	b _080AF138
_080AF12A:
	adds r1, r2, #1
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	lsrs r2, r0, #0x18
	b _080AF0EE
_080AF138:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AF0E0

	THUMB_FUNC_START sub_80AF140
sub_80AF140: @ 0x080AF140
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x32
	ldrb r0, [r0]
	subs r2, r0, #1
	movs r0, #0x7f
	ands r2, r0
_080AF14E:
	lsrs r0, r2, #5
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0x1f
	ands r1, r2
	ldr r0, [r0, #0x40]
	lsrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AF18A
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_80AF7F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF186
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_80B0018
	movs r0, #1
	b _080AF198
_080AF186:
	movs r0, #0
	b _080AF198
_080AF18A:
	subs r1, r2, #1
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	lsrs r2, r0, #0x18
	b _080AF14E
_080AF198:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AF140

	THUMB_FUNC_START sub_80AF1A0
sub_80AF1A0: @ 0x080AF1A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _080AF1D4  @ gUnknown_0201F19C
	lsls r1, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r2, r0, r6
	movs r3, #0x2f
_080AF1B4:
	ldrb r0, [r2, #1]
	strb r0, [r2]
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _080AF1B4
	adds r0, r1, r4
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AF1D4: .4byte gUnknown_0201F19C

	THUMB_FUNC_END sub_80AF1A0

	THUMB_FUNC_START sub_80AF1D8
sub_80AF1D8: @ 0x080AF1D8
	push {r4, r5, lr}
	movs r1, #0
	ldr r5, _080AF210  @ gUnknown_08A2C838
	ldr r3, _080AF214  @ gUnknown_0201F19C
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0x31
_080AF1E6:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x30
	ble _080AF1E6
	ldr r1, _080AF218  @ 0x06010800
	adds r0, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AF21C  @ gUnknown_08A2C8A8
	movs r1, #0xe8
	lsls r1, r1, #2
	movs r2, #0x60
	bl CopyToPaletteBuffer
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AF210: .4byte gUnknown_08A2C838
_080AF214: .4byte gUnknown_0201F19C
_080AF218: .4byte 0x06010800
_080AF21C: .4byte gUnknown_08A2C8A8

	THUMB_FUNC_END sub_80AF1D8

	THUMB_FUNC_START sub_80AF220
sub_80AF220: @ 0x080AF220
	movs r1, #0
	str r1, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80AF220

	THUMB_FUNC_START nullsub_65
nullsub_65: @ 0x080AF228
	bx lr

	THUMB_FUNC_END nullsub_65

	THUMB_FUNC_START sub_80AF22C
sub_80AF22C: @ 0x080AF22C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0
	movs r5, #0
	movs r0, #0xff
	mov r8, r0
	mov ip, r0
	movs r6, #0
	ldr r1, _080AF32C  @ gUnknown_08A212DC
	mov r9, r1
	movs r2, #0xd4
	lsls r2, r2, #2
	mov sl, r2
_080AF250:
	mov r0, r9
	ldr r2, [r0]
	lsls r3, r6, #1
	adds r2, r3, r2
	str r2, [sp]
	ldr r2, _080AF330  @ gUnknown_08A21304
	ldr r1, [r2]
	ldr r0, [r4, #0x2c]
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r0, r0, r2
	add r1, sl
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	ldr r1, [sp]
	strb r0, [r1]
	mov r0, r9
	ldr r2, [r0]
	adds r2, r3, r2
	ldr r1, _080AF330  @ gUnknown_08A21304
	ldr r0, [r1]
	add r0, sl
	ldr r1, [r4, #0x2c]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	movs r1, #0xf0
	subs r1, r1, r0
	strb r1, [r2, #1]
	mov r2, r9
	ldr r0, [r2]
	adds r3, r3, r0
	ldrb r0, [r3]
	cmp r0, r5
	bcs _080AF2A2
	adds r0, r5, #0
_080AF2A2:
	adds r5, r0, #0
	ldrb r0, [r3]
	cmp r0, ip
	bls _080AF2AC
	mov r0, ip
_080AF2AC:
	mov ip, r0
	ldrb r3, [r3, #1]
	adds r0, r3, #0
	cmp r3, r7
	bcs _080AF2B8
	adds r3, r7, #0
_080AF2B8:
	adds r7, r3, #0
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r8
	bls _080AF2C6
	mov r1, r8
_080AF2C6:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [r4, #0x2c]
	adds r1, r0, #1
	str r1, [r4, #0x2c]
	ldr r0, _080AF334  @ 0x0000062F
	cmp r1, r0
	ble _080AF2E0
	movs r2, #0xc6
	lsls r2, r2, #3
	subs r0, r1, r2
	str r0, [r4, #0x2c]
_080AF2E0:
	adds r6, #1
	cmp r6, #0xdf
	ble _080AF250
	mov r1, ip
	subs r0, r5, r1
	cmp r0, #0x3f
	ble _080AF2F0
	movs r0, #0x3f
_080AF2F0:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r2, r8
	subs r0, r7, r2
	cmp r0, #0x3f
	ble _080AF2FE
	movs r0, #0x3f
_080AF2FE:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r0, r5, #1
	adds r0, r0, r5
	asrs r1, r0, #2
	movs r0, #0
	bl sub_80AF1A0
	lsls r0, r7, #1
	adds r0, r0, r7
	asrs r1, r0, #2
	movs r0, #1
	bl sub_80AF1A0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF32C: .4byte gUnknown_08A212DC
_080AF330: .4byte gUnknown_08A21304
_080AF334: .4byte 0x0000062F

	THUMB_FUNC_END sub_80AF22C

	THUMB_FUNC_START sub_80AF338
sub_80AF338: @ 0x080AF338
	push {lr}
	ldrh r1, [r0, #0x2a]
	adds r0, #0x36
	ldrb r0, [r0]
	adds r2, r0, #3
	asrs r2, r2, #2
	movs r0, #8
	movs r3, #5
	bl sub_80976CC
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AF338

	THUMB_FUNC_START sub_80AF350
sub_80AF350: @ 0x080AF350
	push {lr}
	adds r2, r0, #0
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #5
	adds r0, #0x60
	lsrs r1, r1, #2
	lsls r1, r1, #4
	ldrh r2, [r2, #0x2a]
	subs r2, #0x40
	subs r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #4
	movs r2, #2
	bl sub_80AD51C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AF350

	THUMB_FUNC_START sub_80AF378
sub_80AF378: @ 0x080AF378
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x35
	ldrb r0, [r0]
	lsrs r0, r0, #2
	lsls r0, r0, #4
	ldrh r1, [r2, #0x2a]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AF38E
	adds r0, #0xf
_080AF38E:
	asrs r4, r0, #4
	cmp r1, #0
	beq _080AF39E
	cmp r4, #0
	bgt _080AF39E
	movs r0, #1
	negs r0, r0
	b _080AF3C2
_080AF39E:
	ldrh r0, [r2, #0x2a]
	lsrs r0, r0, #4
	adds r3, r0, #5
	adds r0, r2, #0
	adds r0, #0x36
	ldrb r1, [r0]
	subs r0, r1, #1
	cmp r0, #0
	bge _080AF3B2
	adds r0, r1, #2
_080AF3B2:
	asrs r0, r0, #2
	cmp r3, r0
	bgt _080AF3C0
	cmp r4, #3
	ble _080AF3C0
	movs r0, #1
	b _080AF3C2
_080AF3C0:
	movs r0, #0
_080AF3C2:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AF378

	THUMB_FUNC_START sub_80AF3C8
sub_80AF3C8: @ 0x080AF3C8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x2a]
	lsrs r0, r0, #4
	subs r0, #1
	lsls r7, r0, #2
	ldr r0, _080AF3E4  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	adds r4, r7, #0
	adds r0, r4, #0
	b _080AF4A8
	.align 2, 0
_080AF3E4: .4byte gBG2TilemapBuffer
_080AF3E8:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80AECEC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF3FA
	movs r5, #0
	b _080AF440
_080AF3FA:
	ldr r0, _080AF438  @ gUnknown_08A20E74
	lsls r1, r4, #4
	adds r0, #8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080AF440
	adds r2, r4, #0
	cmp r4, #0
	bge _080AF410
	adds r2, r4, #3
_080AF410:
	asrs r2, r2, #2
	lsls r0, r2, #1
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	adds r0, #0xc
	lsls r2, r2, #2
	subs r2, r4, r2
	lsls r2, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _080AF43C  @ gBG2TilemapBuffer
	adds r0, r0, r1
	movs r1, #1
	movs r2, #0x14
	movs r3, #0x14
	bl sub_8004D5C
	b _080AF4A4
	.align 2, 0
_080AF438: .4byte gUnknown_08A20E74
_080AF43C: .4byte gBG2TilemapBuffer
_080AF440:
	cmp r4, #0x62
	ble _080AF478
	adds r2, r4, #0
	cmp r4, #0
	bge _080AF44C
	adds r2, r4, #3
_080AF44C:
	asrs r2, r2, #2
	lsls r0, r2, #1
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	adds r0, #0xd
	lsls r2, r2, #2
	subs r2, r4, r2
	lsls r2, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _080AF474  @ gBG2TilemapBuffer
	adds r0, r0, r1
	adds r2, r4, #1
	adds r1, r5, #0
	bl sub_8004B88
	b _080AF4A4
	.align 2, 0
_080AF474: .4byte gBG2TilemapBuffer
_080AF478:
	adds r2, r4, #0
	cmp r4, #0
	bge _080AF480
	adds r2, r4, #3
_080AF480:
	asrs r2, r2, #2
	lsls r0, r2, #1
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	adds r0, #0xd
	lsls r2, r2, #2
	subs r2, r4, r2
	lsls r2, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _080AF4CC  @ gBG2TilemapBuffer
	adds r0, r0, r1
	adds r2, r4, #1
	adds r1, r5, #0
	bl sub_8004D7C
_080AF4A4:
	adds r4, #1
	adds r0, r7, #0
_080AF4A8:
	adds r0, #0x1c
	cmp r4, r0
	bge _080AF4BE
	movs r5, #1
	cmp r4, #0
	blt _080AF4A4
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r4, r0
	blt _080AF3E8
_080AF4BE:
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF4CC: .4byte gBG2TilemapBuffer

	THUMB_FUNC_END sub_80AF3C8

	THUMB_FUNC_START sub_80AF4D0
sub_80AF4D0: @ 0x080AF4D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _080AF50C  @ gUnknown_0201F160
	adds r0, r6, #0
	adds r1, r5, #0
	bl Text_Draw
	adds r3, r5, #0
	adds r3, #0x10
	adds r4, #0x34
	ldrb r0, [r4]
	movs r1, #2
	cmp r0, #0x64
	bne _080AF4F0
	movs r1, #4
_080AF4F0:
	ldrb r2, [r4]
	adds r0, r3, #0
	bl sub_8004B88
	adds r0, r6, #0
	adds r0, #0x30
	adds r1, r5, #0
	adds r1, #0x12
	bl Text_Draw
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AF50C: .4byte gUnknown_0201F160

	THUMB_FUNC_END sub_80AF4D0

	THUMB_FUNC_START sub_80AF510
sub_80AF510: @ 0x080AF510
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	cmp r0, #0
	beq _080AF51E
	adds r0, #1
	strh r0, [r1, #0x2c]
_080AF51E:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AF510

	THUMB_FUNC_START sub_80AF524
sub_80AF524: @ 0x080AF524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	bl SetupBackgrounds
	bl sub_8003D20
	bl Font_InitForUIDefault
	bl LoadObjUIGfx
	bl LoadUiFrameGraphics
	bl Font_LoadForUI
	ldr r7, _080AF7A4  @ gLCDControlBuffer
	ldrb r2, [r7, #1]
	movs r0, #1
	orrs r2, r0
	movs r1, #2
	mov sl, r1
	mov r3, sl
	orrs r2, r3
	movs r0, #4
	orrs r2, r0
	movs r1, #8
	orrs r2, r1
	movs r3, #0x10
	orrs r2, r3
	ldrb r3, [r7, #0xc]
	subs r1, #0xc
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r7, #0xc]
	ldrb r3, [r7, #0x10]
	adds r0, r1, #0
	ands r0, r3
	mov r3, sl
	orrs r0, r3
	strb r0, [r7, #0x10]
	ldrb r0, [r7, #0x14]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r7, #0x14]
	ldrb r0, [r7, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r7, #0x18]
	movs r0, #0x21
	negs r0, r0
	ands r2, r0
	movs r1, #0x41
	negs r1, r1
	ands r2, r1
	movs r3, #0x7f
	ands r2, r3
	strb r2, [r7, #1]
	movs r0, #0
	bl RegisterBlankTile
	ldr r0, _080AF7A8  @ gBG0TilemapBuffer
	mov r8, r0
	movs r1, #0
	bl BG_Fill
	ldr r6, _080AF7AC  @ gBG1TilemapBuffer
	adds r0, r6, #0
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AF7B0  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AF7B4  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0xf
	bl BG_EnableSyncByMask
	adds r0, r4, #0
	adds r0, #0x35
	movs r1, #0
	mov r9, r1
	mov r2, r9
	strb r2, [r0]
	adds r0, #2
	strb r2, [r0]
	mov r3, r9
	strh r3, [r4, #0x2a]
	adds r0, #4
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0xf
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x32
	movs r0, #0xff
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2e
	strb r1, [r0]
	strh r3, [r4, #0x2c]
	adds r0, #0x11
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_80AED64
	bl sub_80AFF30
	adds r0, r4, #0
	bl sub_80AF878
	adds r0, r4, #0
	bl sub_80AD47C
	movs r0, #0xa0
	lsls r0, r0, #2
	movs r1, #2
	bl sub_80AD4A0
	adds r0, r4, #0
	bl sub_80AF350
	adds r0, r4, #0
	bl sub_80AF3C8
	movs r5, #0x80
	lsls r5, r5, #5
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xd8
	movs r2, #0x48
	adds r3, r5, #0
	bl sub_8097748
	adds r0, r4, #0
	bl sub_80AF338
	ldr r0, _080AF7B8  @ gUnknown_08A2C908
	ldr r1, _080AF7BC  @ 0x06004000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AF7C0  @ gUnknown_08A01EE4
	movs r1, #0x80
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080AF7C4  @ gUnknown_08A01F04
	movs r1, #0xa0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r1, #0xe1
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, _080AF7C8  @ gUnknown_08A2C4C8
	adds r2, r5, #0
	bl CallARM_FillTileRect
	movs r2, #0xab
	lsls r2, r2, #1
	adds r6, r6, r2
	ldr r1, _080AF7CC  @ gUnknown_08A2C5A8
	adds r0, r6, #0
	adds r2, r5, #0
	bl CallARM_FillTileRect
	movs r3, #0xcf
	lsls r3, r3, #1
	add r8, r3
	mov r0, r8
	adds r1, r4, #0
	bl sub_80AF4D0
	ldr r0, _080AF7D0  @ gUnknown_08A2D32C
	ldr r1, _080AF7D4  @ 0x06016000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AF7D8  @ gUnknown_08A2E1B8
	movs r1, #0xe0
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r1, _080AF7DC  @ 0x0000FFFC
	movs r0, #2
	movs r2, #0
	bl BG_SetPosition
	ldrb r0, [r7, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r7, #1]
	adds r1, r7, #0
	adds r1, #0x34
	ldrb r0, [r1]
	movs r3, #1
	orrs r0, r3
	mov r2, sl
	orrs r0, r2
	movs r3, #4
	orrs r0, r3
	movs r2, #8
	orrs r0, r2
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r1]
	subs r1, #7
	movs r0, #4
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x42
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x90
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x36
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	mov r3, sl
	orrs r0, r3
	subs r1, #6
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r2]
	ldr r0, _080AF7E0  @ gUnknown_08A2CABC
	ldr r1, _080AF7E4  @ 0x06012000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080AF7E8  @ gUnknown_08A2D2CC
	movs r1, #0x98
	lsls r1, r1, #2
	movs r2, #0x60
	bl CopyToPaletteBuffer
	adds r0, r4, #0
	bl sub_80B0444
	movs r0, #1
	movs r1, #0xf
	movs r2, #3
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	mov r0, r9
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	mov r1, r9
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe
	bl sub_8086BB8
	adds r0, r4, #0
	bl NewGreenTextColorManager
	bl sub_80AF1D8
	ldr r0, _080AF7EC  @ sub_80AF510
	adds r1, r4, #0
	bl Get6CDifferedLoop6C
	ldr r0, _080AF7F0  @ gUnknown_08A21308
	adds r1, r4, #0
	bl Proc_Start
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AF7A4: .4byte gLCDControlBuffer
_080AF7A8: .4byte gBG0TilemapBuffer
_080AF7AC: .4byte gBG1TilemapBuffer
_080AF7B0: .4byte gBG2TilemapBuffer
_080AF7B4: .4byte gBG3TilemapBuffer
_080AF7B8: .4byte gUnknown_08A2C908
_080AF7BC: .4byte 0x06004000
_080AF7C0: .4byte gUnknown_08A01EE4
_080AF7C4: .4byte gUnknown_08A01F04
_080AF7C8: .4byte gUnknown_08A2C4C8
_080AF7CC: .4byte gUnknown_08A2C5A8
_080AF7D0: .4byte gUnknown_08A2D32C
_080AF7D4: .4byte 0x06016000
_080AF7D8: .4byte gUnknown_08A2E1B8
_080AF7DC: .4byte 0x0000FFFC
_080AF7E0: .4byte gUnknown_08A2CABC
_080AF7E4: .4byte 0x06012000
_080AF7E8: .4byte gUnknown_08A2D2CC
_080AF7EC: .4byte sub_80AF510
_080AF7F0: .4byte gUnknown_08A21308

	THUMB_FUNC_END sub_80AF524

	THUMB_FUNC_START sub_80AF7F4
sub_80AF7F4: @ 0x080AF7F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_8002A6C
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bne _080AF834
	adds r0, r4, #0
	adds r0, #0x32
	strb r5, [r0]
	movs r0, #1
	strh r0, [r4, #0x2c]
	ldr r1, _080AF830  @ gUnknown_08A20E74
	lsls r0, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	str r3, [sp]
	adds r1, r2, #0
	adds r3, r6, #0
	bl sub_80029E8
	movs r0, #1
	b _080AF836
	.align 2, 0
_080AF830: .4byte gUnknown_08A20E74
_080AF834:
	movs r0, #0
_080AF836:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80AF7F4

	THUMB_FUNC_START sub_80AF840
sub_80AF840: @ 0x080AF840
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_8002A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080AF870
	movs r4, #0
	strh r0, [r5, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #1
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	movs r3, #0x18
	bl sub_80029E8
	adds r0, r5, #0
	adds r0, #0x2f
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
_080AF870:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AF840

	THUMB_FUNC_START sub_80AF878
sub_80AF878: @ 0x080AF878
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x35
	ldrb r1, [r4]
	bl sub_80AECEC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF892
	ldrb r0, [r4]
	bl sub_80B0018
	b _080AF89A
_080AF892:
	movs r0, #1
	negs r0, r0
	bl sub_80B0018
_080AF89A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AF878

	THUMB_FUNC_START sub_80AF8A0
sub_80AF8A0: @ 0x080AF8A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080AF994
	ldr r0, _080AF97C  @ gKeyStatusPtr
	ldr r2, [r0]
	ldrh r3, [r2, #6]
	adds r5, r4, #0
	adds r5, #0x38
	movs r0, #4
	strb r0, [r5]
	ldrh r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF8D2
	ldrh r3, [r2, #4]
	movs r0, #8
	strb r0, [r5]
_080AF8D2:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080AF8DE
	movs r6, #4
	negs r6, r6
_080AF8DE:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080AF8E8
	movs r6, #4
_080AF8E8:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080AF902
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080AF902
	movs r6, #1
	negs r6, r6
_080AF902:
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _080AF91A
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #2
	bhi _080AF91A
	movs r6, #1
_080AF91A:
	cmp r6, #0
	beq _080AF986
	adds r2, r4, #0
	adds r2, #0x35
	ldrb r0, [r2]
	adds r0, r0, r6
	cmp r0, #0
	bge _080AF92C
	b _080AFA5C
_080AF92C:
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r1, [r1]
	cmp r0, r1
	blt _080AF938
	b _080AFA5C
_080AF938:
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_80AF878
	adds r0, r4, #0
	bl sub_80AF378
	adds r5, r4, #0
	adds r5, #0x37
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _080AF980
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080AF964
	adds r0, r4, #0
	movs r1, #0xa
	bl Proc_Goto
_080AF964:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _080AF974
	adds r0, r4, #0
	movs r1, #0xb
	bl Proc_Goto
_080AF974:
	adds r0, r4, #0
	bl sub_80AF3C8
	b _080AF986
	.align 2, 0
_080AF97C: .4byte gKeyStatusPtr
_080AF980:
	adds r0, r4, #0
	bl sub_80AF350
_080AF986:
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AF9D4
_080AF994:
	adds r5, r4, #0
	adds r5, #0x37
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	ldrh r0, [r4, #0x2a]
	adds r2, r2, r0
	strh r2, [r4, #0x2a]
	ldr r1, _080AF9D0  @ 0x0000FFFC
	movs r0, #0xff
	ands r2, r0
	movs r0, #2
	bl BG_SetPosition
	ldrh r0, [r4, #0x2a]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080AF9C6
	movs r0, #0
	strb r0, [r5]
_080AF9C6:
	adds r0, r4, #0
	bl sub_80AF338
	b _080AFA5C
	.align 2, 0
_080AF9D0: .4byte 0x0000FFFC
_080AF9D4:
	ldr r0, _080AF9EC  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AF9F0
	adds r0, r4, #0
	bl sub_80AF840
	b _080AFA5C
	.align 2, 0
_080AF9EC: .4byte gKeyStatusPtr
_080AF9F0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AFA30
	adds r5, r4, #0
	adds r5, #0x35
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_80AECEC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AFA16
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_80AF7F4
	b _080AFA5C
_080AFA16:
	ldr r0, _080AFA2C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080AFA5C
	movs r0, #0x6c
	bl m4aSongNumStart
	b _080AFA5C
	.align 2, 0
_080AFA2C: .4byte gRAMChapterData
_080AFA30:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFA4C
	bl sub_8002A6C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AFA5C
	adds r0, r4, #0
	movs r1, #2
	bl Proc_Goto
	b _080AFA5C
_080AFA4C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFA5C
	adds r0, r4, #0
	movs r1, #3
	bl Proc_Goto
_080AFA5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AF8A0

	THUMB_FUNC_START sub_80AFA64
sub_80AFA64: @ 0x080AFA64
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_8002A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080AFA8A
	str r0, [sp]
	movs r0, #0x43
	movs r1, #0
	movs r2, #0xc0
	movs r3, #0x18
	bl sub_80029E8
	adds r0, r4, #0
	bl Proc_Break
_080AFA8A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFA64

	THUMB_FUNC_START sub_80AFA94
sub_80AFA94: @ 0x080AFA94
	push {r4, lr}
	adds r4, r0, #0
	bl EndBG3Slider
	adds r0, r4, #0
	bl sub_80ADDD4
	ldr r0, _080AFAB0  @ gUnknown_08A21308
	bl Proc_EndEach
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AFAB0: .4byte gUnknown_08A21308

	THUMB_FUNC_END sub_80AFA94

	THUMB_FUNC_START sub_80AFAB4
sub_80AFAB4: @ 0x080AFAB4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3b
	ldrb r0, [r5]
	negs r0, r0
	movs r1, #3
	bl __divsi3
	adds r1, r4, #0
	adds r1, #0x3c
	movs r2, #0
	mov r8, r2
	strb r0, [r1]
	ldrb r0, [r5]
	negs r0, r0
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	adds r6, r4, #0
	adds r6, #0x3d
	strb r0, [r6]
	ldrb r0, [r5]
	adds r5, #3
	strb r0, [r5]
	ldr r0, _080AFBA8  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AFBAC  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AFBB0  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r4, _080AFBB4  @ gUnknown_08A212D4
	ldr r0, [r4]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #1
	str r1, [sp]
	movs r1, #7
	str r1, [sp, #4]
	movs r6, #0xa
	str r6, [sp, #8]
	movs r1, #0xb
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl sub_80AC844
	ldr r0, [r4]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r1, #0xb
	str r1, [sp]
	movs r1, #5
	str r1, [sp, #4]
	movs r1, #0x12
	str r1, [sp, #8]
	movs r1, #0xe
	str r1, [sp, #0xc]
	movs r1, #0xa
	movs r2, #5
	movs r3, #1
	bl sub_80AC844
	ldr r4, _080AFBB8  @ gUnknown_08A212D8
	ldr r0, [r4]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r1, #0xc
	str r1, [sp]
	mov r1, r8
	str r1, [sp, #4]
	movs r1, #0x10
	str r1, [sp, #8]
	movs r1, #0x20
	str r1, [sp, #0xc]
	movs r1, #0xc
	movs r2, #0
	movs r3, #2
	bl sub_80AC844
	ldr r0, [r4]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r1, #0xf
	str r1, [sp]
	movs r1, #6
	str r1, [sp, #4]
	str r6, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80AC844
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	adds r0, #0xd8
	movs r1, #0x48
	bl sub_80976AC
	movs r0, #7
	bl BG_EnableSyncByMask
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFBA8: .4byte gBG0TilemapBuffer
_080AFBAC: .4byte gBG1TilemapBuffer
_080AFBB0: .4byte gBG2TilemapBuffer
_080AFBB4: .4byte gUnknown_08A212D4
_080AFBB8: .4byte gUnknown_08A212D8

	THUMB_FUNC_END sub_80AFAB4

	THUMB_FUNC_START sub_80AFBBC
sub_80AFBBC: @ 0x080AFBBC
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r0, #0x3b
	movs r1, #0
	mov r9, r1
	mov r2, r9
	strb r2, [r0]
	ldr r6, _080AFC3C  @ gUnknown_08A212D4
	ldr r0, [r6]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080AFC40  @ gUnknown_08A2C4C8
	movs r2, #0x80
	lsls r2, r2, #5
	mov r8, r2
	bl CallARM_FillTileRect
	ldr r0, [r6]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080AFC44  @ gUnknown_08A2C5A8
	mov r2, r8
	bl CallARM_FillTileRect
	ldr r0, _080AFC48  @ gBG2TilemapBuffer
	ldr r4, _080AFC4C  @ gUnknown_08A212D8
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
	ldr r0, [r4]
	adds r1, r5, #0
	bl sub_80AF4D0
	ldr r0, _080AFC50  @ gUnknown_0202396C
	ldr r1, _080AFC54  @ gUnknown_08A2C92C
	movs r2, #0x90
	lsls r2, r2, #5
	bl CallARM_FillTileRect
	ldr r0, [r6]
	ldr r2, _080AFC58  @ 0x00000642
	adds r0, r0, r2
	ldr r1, _080AFC5C  @ gUnknown_08A2C7A4
	mov r2, r8
	bl CallARM_FillTileRect
	bl sub_80AD564
	adds r5, #0x3a
	mov r0, r9
	strb r0, [r5]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFC3C: .4byte gUnknown_08A212D4
_080AFC40: .4byte gUnknown_08A2C4C8
_080AFC44: .4byte gUnknown_08A2C5A8
_080AFC48: .4byte gBG2TilemapBuffer
_080AFC4C: .4byte gUnknown_08A212D8
_080AFC50: .4byte gUnknown_0202396C
_080AFC54: .4byte gUnknown_08A2C92C
_080AFC58: .4byte 0x00000642
_080AFC5C: .4byte gUnknown_08A2C7A4

	THUMB_FUNC_END sub_80AFBBC

	THUMB_FUNC_START sub_80AFC60
sub_80AFC60: @ 0x080AFC60
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	muls r0, r1, r0
	asrs r0, r0, #6
	adds r4, r5, #0
	adds r4, #0x3b
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_80AFAB4
	ldrb r0, [r4]
	cmp r0, #0x18
	bne _080AFC92
	adds r0, r5, #0
	bl Proc_Break
_080AFC92:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFC60

	THUMB_FUNC_START sub_80AFC98
sub_80AFC98: @ 0x080AFC98
	push {lr}
	adds r2, r0, #0
	ldr r0, _080AFCBC  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	bne _080AFCE0
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AFCC0
	adds r0, r2, #0
	bl sub_80AF0E0
	b _080AFCE0
	.align 2, 0
_080AFCBC: .4byte gKeyStatusPtr
_080AFCC0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AFCD0
	adds r0, r2, #0
	bl sub_80AF140
	b _080AFCE0
_080AFCD0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFCE0
	adds r0, r2, #0
	movs r1, #3
	bl Proc_Goto
_080AFCE0:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFC98

	THUMB_FUNC_START sub_80AFCE4
sub_80AFCE4: @ 0x080AFCE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80AF878
	adds r4, #0x3a
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFCE4

	THUMB_FUNC_START sub_80AFCF8
sub_80AFCF8: @ 0x080AFCF8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	movs r1, #8
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	muls r0, r1, r0
	cmp r0, #0
	bge _080AFD1A
	adds r0, #0x3f
_080AFD1A:
	asrs r0, r0, #6
	adds r4, r5, #0
	adds r4, #0x3b
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_80AFAB4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AFD40
	adds r0, r5, #0
	bl sub_80AF350
	adds r0, r5, #0
	bl sub_80AF338
	adds r0, r5, #0
	bl Proc_Break
_080AFD40:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFCF8

	THUMB_FUNC_START sub_80AFD48
sub_80AFD48: @ 0x080AFD48
	push {lr}
	adds r2, r0, #0
	adds r2, #0x3a
	movs r1, #0
	strb r1, [r2]
	strh r1, [r0, #0x2c]
	bl sub_80AEF64
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFD48

	THUMB_FUNC_START sub_80AFD5C
sub_80AFD5C: @ 0x080AFD5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	mov r7, r8
	adds r7, #0x3a
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	ldrb r0, [r7]
	movs r1, #8
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	muls r1, r0, r1
	cmp r1, #0
	bge _080AFD84
	adds r1, #0x3f
_080AFD84:
	asrs r1, r1, #6
	movs r0, #0x18
	subs r0, r0, r1
	mov r6, r8
	adds r6, #0x3b
	strb r0, [r6]
	ldrb r0, [r6]
	movs r5, #3
	movs r1, #3
	bl __udivsi3
	movs r1, #0x14
	subs r1, r1, r0
	mov r4, r8
	adds r4, #0x3c
	strb r1, [r4]
	ldr r0, _080AFDEC  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AFDF0  @ gUnknown_08A212D4
	ldr r0, [r0]
	str r5, [sp]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #4
	str r1, [sp, #4]
	movs r1, #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	movs r1, #1
	movs r2, #0x19
	movs r3, #1
	bl sub_80AC844
	movs r0, #2
	bl BG_EnableSyncByMask
	ldrb r0, [r6]
	cmp r0, #0x18
	bne _080AFDE0
	movs r0, #0
	strb r0, [r7]
	mov r0, r8
	bl Proc_Break
_080AFDE0:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFDEC: .4byte gBG1TilemapBuffer
_080AFDF0: .4byte gUnknown_08A212D4

	THUMB_FUNC_END sub_80AFD5C

	THUMB_FUNC_START sub_80AFDF4
sub_80AFDF4: @ 0x080AFDF4
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AFE88
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080AFE34
	ldrh r2, [r3, #0x2c]
	ldr r1, _080AFE30  @ gUnknown_08A20E74
	adds r0, r3, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blt _080AFE34
	adds r0, r3, #0
	bl sub_80AEF24
	b _080AFE88
	.align 2, 0
_080AFE30: .4byte gUnknown_08A20E74
_080AFE34:
	ldr r0, _080AFE4C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AFE50
	adds r0, r3, #0
	bl sub_80AF0E0
	b _080AFE88
	.align 2, 0
_080AFE4C: .4byte gKeyStatusPtr
_080AFE50:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AFE60
	adds r0, r3, #0
	bl sub_80AF140
	b _080AFE88
_080AFE60:
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080AFE70
	adds r0, r3, #0
	bl Proc_Break
	b _080AFE88
_080AFE70:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AFE88
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080AFE88
	adds r0, r3, #0
	movs r1, #3
	bl Proc_Goto
_080AFE88:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80AFDF4

	THUMB_FUNC_START sub_80AFE8C
sub_80AFE8C: @ 0x080AFE8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r1, r7, #0
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	movs r1, #8
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	muls r0, r1, r0
	cmp r0, #0
	bge _080AFEB0
	adds r0, #0x3f
_080AFEB0:
	asrs r0, r0, #6
	adds r6, r7, #0
	adds r6, #0x3b
	strb r0, [r6]
	ldrb r0, [r6]
	movs r5, #3
	movs r1, #3
	bl __udivsi3
	movs r1, #0x14
	subs r1, r1, r0
	adds r4, r7, #0
	adds r4, #0x3c
	strb r1, [r4]
	ldr r0, _080AFF14  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080AFF18  @ gUnknown_08A212D4
	ldr r0, [r0]
	str r5, [sp]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #4
	str r1, [sp, #4]
	movs r1, #0x18
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	movs r1, #1
	movs r2, #0x19
	movs r3, #1
	bl sub_80AC844
	movs r0, #2
	bl BG_EnableSyncByMask
	ldrb r1, [r6]
	cmp r1, #0
	bne _080AFF0A
	adds r0, r7, #0
	adds r0, #0x30
	strb r1, [r0]
	adds r0, r7, #0
	bl Proc_Break
_080AFF0A:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFF14: .4byte gBG1TilemapBuffer
_080AFF18: .4byte gUnknown_08A212D4

	THUMB_FUNC_END sub_80AFE8C

	THUMB_FUNC_START sub_80AFF1C
sub_80AFF1C: @ 0x080AFF1C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AFF2C  @ gUnknown_08A21338
	bl Proc_StartBlocking
	pop {r1}
	bx r1
	.align 2, 0
_080AFF2C: .4byte gUnknown_08A21338

	THUMB_FUNC_END sub_80AFF1C

	THUMB_FUNC_START sub_80AFF30
sub_80AFF30: @ 0x080AFF30
	push {r4, r5, r6, lr}
	ldr r6, _080AFFF8  @ 0x06014000
	ldr r4, _080AFFFC  @ gUnknown_0201F148
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #5
	bl InitSomeOtherGraphicsRelatedStruct
	ldr r0, _080B0000  @ gUnknown_0859EF00
	movs r5, #0xd0
	lsls r5, r5, #2
	adds r1, r5, #0
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r0, _080B0004  @ gPaletteBuffer
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
	bl EnablePaletteSync
	adds r0, r4, #0
	bl SetFont
	adds r0, r4, #0
	adds r0, #0x20
	bl Text_Init3
	adds r0, r4, #0
	adds r0, #0x28
	bl Text_Init3
	adds r4, #0x30
	movs r5, #2
_080AFF74:
	adds r0, r4, #0
	bl Text_Init3
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bge _080AFF74
	movs r0, #0
	bl SetFont
	ldr r5, _080AFFFC  @ gUnknown_0201F148
	ldr r0, _080B0008  @ 0x0001FFFF
	ands r0, r6
	lsrs r0, r0, #5
	ldr r2, _080B000C  @ 0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r0, #0
	bl SetFont
	movs r0, #0
	bl SetFontGlyphSet
	adds r4, r5, #0
	adds r4, #0x18
	adds r0, r4, #0
	movs r1, #5
	bl Text_Init
	adds r0, r4, #0
	bl Text_Clear
	ldr r0, _080B0010  @ 0x000005AA
	bl GetStringFromIndex
	adds r3, r0, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl Text_InsertString
	adds r4, #0x30
	adds r0, r4, #0
	movs r1, #2
	bl Text_Init
	adds r0, r4, #0
	bl Text_Clear
	ldr r0, _080B0014  @ 0x000005AE
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_AppendString
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFFF8: .4byte 0x06014000
_080AFFFC: .4byte gUnknown_0201F148
_080B0000: .4byte gUnknown_0859EF00
_080B0004: .4byte gPaletteBuffer
_080B0008: .4byte 0x0001FFFF
_080B000C: .4byte 0x000003FF
_080B0010: .4byte 0x000005AA
_080B0014: .4byte 0x000005AE

	THUMB_FUNC_END sub_80AFF30

	THUMB_FUNC_START sub_80B0018
sub_80B0018: @ 0x080B0018
	push {r4, r5, lr}
	adds r1, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080B002A
	movs r0, #0xfa
	lsls r0, r0, #3
	b _080B0034
_080B002A:
	ldr r0, _080B0080  @ gUnknown_08A20E74
	lsls r1, r1, #4
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r1]
_080B0034:
	bl GetStringFromIndex
	adds r5, r0, #0
	ldr r4, _080B0084  @ gUnknown_0201F148
	adds r0, r4, #0
	bl SetFont
	movs r0, #1
	bl SetFontGlyphSet
	adds r4, #0x20
	adds r0, r4, #0
	movs r1, #0
	bl Text_80046B4
	movs r0, #0xb0
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_SetXCursor
	adds r0, r4, #0
	movs r1, #0
	bl Text_SetColorId
	adds r0, r4, #0
	adds r1, r5, #0
	bl Text_AppendString
	movs r0, #0
	bl SetFont
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0080: .4byte gUnknown_08A20E74
_080B0084: .4byte gUnknown_0201F148

	THUMB_FUNC_END sub_80B0018

	THUMB_FUNC_START sub_80B0088
sub_80B0088: @ 0x080B0088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0x20
	bls _080B015C
	movs r0, #0xff
	mov r1, sl
	ands r1, r0
	mov sl, r1
	ldr r4, _080B016C  @ gSinLookup
	movs r2, #0x80
	adds r2, r2, r4
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
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
	adds r1, r7, #0
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
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	movs r4, #0
	ldr r6, _080B0170  @ gUnknown_0201F198
	movs r5, #0x24
_080B0112:
	lsls r0, r4, #2
	ldrh r1, [r6]
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [sp]
	movs r0, #4
	adds r1, r5, #0
	movs r2, #0x84
	lsls r2, r2, #1
	add r2, sl
	ldr r3, _080B0174  @ gObject_32x16
	bl PutSpriteExt
	adds r5, #0x20
	adds r4, #1
	cmp r4, #4
	ble _080B0112
	movs r6, #0xcb
	lsls r6, r6, #8
	movs r5, #0x18
	movs r4, #2
_080B0140:
	str r6, [sp]
	movs r0, #4
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #1
	add r2, sl
	ldr r3, _080B0178  @ gObject_64x32
	bl PutSpriteExt
	adds r6, #8
	adds r5, #0x40
	subs r4, #1
	cmp r4, #0
	bge _080B0140
_080B015C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B016C: .4byte gSinLookup
_080B0170: .4byte gUnknown_0201F198
_080B0174: .4byte gObject_32x16
_080B0178: .4byte gObject_64x32

	THUMB_FUNC_END sub_80B0088

	THUMB_FUNC_START sub_80B017C
sub_80B017C: @ 0x080B017C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r9, r0
	mov r8, r1
	adds r4, r2, #0
	movs r6, #0
	movs r7, #0xd
	cmp r3, #0
	beq _080B01EA
	movs r0, #0xff
	ands r1, r0
	mov r8, r1
	cmp r4, #7
	ble _080B01CC
	mov r5, r9
_080B01A0:
	subs r4, #8
	ldr r1, _080B01F8  @ 0x000001FF
	ands r1, r5
	lsls r0, r7, #0xc
	ldr r2, _080B01FC  @ 0x00000847
	adds r0, r0, r2
	str r0, [sp]
	movs r0, #0
	mov r2, r8
	ldr r3, _080B0200  @ gObject_8x8
	bl PutSpriteExt
	adds r5, #8
	adds r6, #1
	cmp r6, #2
	ble _080B01C2
	movs r7, #0xe
_080B01C2:
	cmp r6, #4
	ble _080B01C8
	movs r7, #0xf
_080B01C8:
	cmp r4, #7
	bgt _080B01A0
_080B01CC:
	lsls r1, r6, #3
	add r1, r9
	ldr r0, _080B01F8  @ 0x000001FF
	ands r1, r0
	ldr r3, _080B0200  @ gObject_8x8
	lsls r0, r7, #0xc
	adds r0, r4, r0
	movs r2, #0x84
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [sp]
	movs r0, #0
	mov r2, r8
	bl PutSpriteExt
_080B01EA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B01F8: .4byte 0x000001FF
_080B01FC: .4byte 0x00000847
_080B0200: .4byte gObject_8x8

	THUMB_FUNC_END sub_80B017C

	THUMB_FUNC_START sub_80B0204
sub_80B0204: @ 0x080B0204
	push {r4, r5, r6, r7, lr}
	ldr r7, [r0, #0x14]
	ldr r0, _080B023C  @ gUnknown_0201F19C
	movs r6, #0x40
	adds r5, r0, #0
	adds r5, #0x30
	movs r4, #1
_080B0212:
	ldrb r3, [r5]
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #0xf
	adds r1, r6, #0
	adds r2, r3, #0
	bl sub_80B017C
	adds r6, #8
	adds r5, #0x31
	subs r4, #1
	cmp r4, #0
	bge _080B0212
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B023C: .4byte gUnknown_0201F19C

	THUMB_FUNC_END sub_80B0204

	THUMB_FUNC_START sub_80B0240
sub_80B0240: @ 0x080B0240
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r0, r2, #0
	movs r1, #0x3c
	bl __divsi3
	adds r5, r0, #0
	movs r1, #0x3c
	bl __divsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x3c
	bl __modsi3
	mov r8, r0
	ldr r3, _080B02C8  @ gUnknown_08A214A6
	movs r5, #0x80
	lsls r5, r5, #7
	str r5, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl PutSpriteExt
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, _080B02CC  @ gUnknown_08A21508
	mov r9, r0
	lsls r4, r4, #2
	add r4, r9
	ldr r3, [r4]
	str r5, [sp]
	movs r0, #0
	adds r2, r7, #0
	bl PutSpriteExt
	adds r1, r6, #0
	adds r1, #0x30
	ldr r3, _080B02D0  @ gUnknown_08A214AE
	str r5, [sp]
	movs r0, #0
	adds r2, r7, #0
	bl PutSpriteExt
	mov r0, r8
	cmp r0, #9
	ble _080B02D4
	adds r4, r6, #0
	adds r4, #0x38
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #2
	add r0, r9
	ldr r3, [r0]
	str r5, [sp]
	movs r0, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl PutSpriteExt
	b _080B02E6
	.align 2, 0
_080B02C8: .4byte gUnknown_08A214A6
_080B02CC: .4byte gUnknown_08A21508
_080B02D0: .4byte gUnknown_08A214AE
_080B02D4:
	adds r1, r6, #0
	adds r1, #0x38
	mov r0, r9
	ldr r3, [r0]
	str r5, [sp]
	movs r0, #0
	adds r2, r7, #0
	bl PutSpriteExt
_080B02E6:
	adds r5, r6, #0
	adds r5, #0x40
	ldr r4, _080B0318  @ gUnknown_08A21508
	mov r0, r8
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl PutSpriteExt
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0318: .4byte gUnknown_08A21508

	THUMB_FUNC_END sub_80B0240

	THUMB_FUNC_START sub_80B031C
sub_80B031C: @ 0x080B031C
	movs r1, #0
	str r1, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_80B031C

	THUMB_FUNC_START sub_80B0324
sub_80B0324: @ 0x080B0324
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r6, [r7, #0x14]
	adds r4, r6, #0
	adds r4, #0x3c
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	adds r0, #6
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_80B0088
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B03CA
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r5, r0, #3
	adds r5, #0x24
	movs r4, #0xff
	ands r5, r4
	movs r2, #0xc
	subs r2, r2, r0
	lsls r2, r2, #3
	adds r2, #4
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r2, r0
	ldr r3, _080B0424  @ gUnknown_08A2146A
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #0
	movs r1, #4
	bl PutSpriteExt
	adds r2, r5, #1
	ands r2, r4
	ldr r3, _080B0428  @ gUnknown_08A2148A
	movs r4, #0x80
	lsls r4, r4, #7
	str r4, [sp]
	movs r0, #0
	movs r1, #0x7c
	bl PutSpriteExt
	ldrh r1, [r6, #0x2c]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _080B042C  @ gUnknown_08A20E74
	adds r1, r6, #0
	adds r1, #0x32
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #4
	adds r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x78
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x7c
	ldr r3, _080B0430  @ gUnknown_08A2149E
	str r4, [sp]
	movs r0, #0
	adds r2, r5, #0
	bl PutSpriteExt
	ldrh r2, [r6, #0x2c]
	movs r0, #0x30
	adds r1, r5, #0
	bl sub_80B0240
_080B03CA:
	adds r6, #0x3d
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #3
	adds r1, #0x11
	ldr r5, _080B0434  @ 0x000001FF
	ands r1, r5
	ldr r3, _080B0438  @ gUnknown_08A21440
	movs r4, #0xc0
	lsls r4, r4, #6
	str r4, [sp]
	movs r0, #0xb
	movs r2, #0x58
	bl PutSprite
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #3
	adds r1, #0x11
	ands r1, r5
	ldr r3, _080B043C  @ gUnknown_08A2144E
	str r4, [sp]
	movs r0, #0xb
	movs r2, #0x68
	bl PutSprite
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #3
	adds r1, #0x11
	ands r1, r5
	ldr r3, _080B0440  @ gUnknown_08A2145C
	str r4, [sp]
	movs r0, #0xb
	movs r2, #0x78
	bl PutSprite
	adds r0, r7, #0
	bl sub_80B0204
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0424: .4byte gUnknown_08A2146A
_080B0428: .4byte gUnknown_08A2148A
_080B042C: .4byte gUnknown_08A20E74
_080B0430: .4byte gUnknown_08A2149E
_080B0434: .4byte 0x000001FF
_080B0438: .4byte gUnknown_08A21440
_080B043C: .4byte gUnknown_08A2144E
_080B0440: .4byte gUnknown_08A2145C

	THUMB_FUNC_END sub_80B0324

	THUMB_FUNC_START sub_80B0444
sub_80B0444: @ 0x080B0444
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B0454  @ gUnknown_08A21530
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080B0454: .4byte gUnknown_08A21530

	THUMB_FUNC_END sub_80B0444

	THUMB_FUNC_START sub_80B0458
sub_80B0458: @ 0x080B0458
	push {r4, lr}
	ldr r0, _080B0490  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xa0
	bls _080B046A
	movs r2, #0
_080B046A:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080B04AE
	cmp r2, #0x63
	bhi _080B049C
	ldr r1, _080B0494  @ 0x04000050
	movs r0, #0xc1
	strh r0, [r1]
	ldr r4, _080B0498  @ 0x04000054
	movs r0, #0x64
	subs r0, r0, r2
	lsls r0, r0, #4
	movs r1, #0x64
	bl __divsi3
	strh r0, [r4]
	b _080B04AE
	.align 2, 0
_080B0490: .4byte 0x04000006
_080B0494: .4byte 0x04000050
_080B0498: .4byte 0x04000054
_080B049C:
	ldr r1, _080B04B4  @ 0x04000050
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _080B04B8  @ 0x0000100A
	adds r0, r2, #0
	strh r0, [r1]
_080B04AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B04B4: .4byte 0x04000050
_080B04B8: .4byte 0x0000100A

	THUMB_FUNC_END sub_80B0458

	THUMB_FUNC_START sub_80B04BC
sub_80B04BC: @ 0x080B04BC
	push {lr}
	movs r1, #4
	str r1, [r0, #0x58]
	ldr r0, _080B04F0  @ gUnknown_08A21550
	bl SetupBackgrounds
	ldr r2, _080B04F4  @ gLCDControlBuffer
	ldrb r1, [r2]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #0x15]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x15]
	pop {r0}
	bx r0
	.align 2, 0
_080B04F0: .4byte gUnknown_08A21550
_080B04F4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B04BC

	THUMB_FUNC_START sub_80B04F8
sub_80B04F8: @ 0x080B04F8
	push {lr}
	ldr r0, _080B058C  @ gUnknown_08B1754C
	movs r1, #0
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r0, _080B0590  @ gUnknown_08A295B4
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B0594  @ gUnknown_08B12DB4
	ldr r1, _080B0598  @ 0x06001000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B059C  @ gBG0TilemapBuffer
	ldr r1, _080B05A0  @ gUnknown_08A295D4
	movs r2, #0x80
	bl CallARM_FillTileRect
	movs r0, #1
	bl BG_EnableSyncByMask
	ldr r0, _080B05A4  @ gUnknown_08A2C11C
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	bl CopyToPaletteBuffer
	ldr r0, _080B05A8  @ gUnknown_08A29A88
	ldr r1, _080B05AC  @ 0x06010800
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B05B0  @ gUnknown_08A2B1E4
	ldr r1, _080B05B4  @ 0x06014000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B05B8  @ sub_80B0458
	bl SetPrimaryHBlankHandler
	ldr r2, _080B05BC  @ gLCDControlBuffer
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
	ldrb r0, [r2, #0xc]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldrb r3, [r2, #0x10]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0x10]
	ldrb r3, [r2, #0x14]
	adds r0, r1, #0
	ands r0, r3
	movs r3, #2
	orrs r0, r3
	strb r0, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x18]
	pop {r0}
	bx r0
	.align 2, 0
_080B058C: .4byte gUnknown_08B1754C
_080B0590: .4byte gUnknown_08A295B4
_080B0594: .4byte gUnknown_08B12DB4
_080B0598: .4byte 0x06001000
_080B059C: .4byte gBG0TilemapBuffer
_080B05A0: .4byte gUnknown_08A295D4
_080B05A4: .4byte gUnknown_08A2C11C
_080B05A8: .4byte gUnknown_08A29A88
_080B05AC: .4byte 0x06010800
_080B05B0: .4byte gUnknown_08A2B1E4
_080B05B4: .4byte 0x06014000
_080B05B8: .4byte sub_80B0458
_080B05BC: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B04F8

	THUMB_FUNC_START nullsub_66
nullsub_66: @ 0x080B05C0
	bx lr

	THUMB_FUNC_END nullsub_66

	THUMB_FUNC_START sub_80B05C4
sub_80B05C4: @ 0x080B05C4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	blt _080B05FC
	ldr r3, _080B0604  @ gUnknown_08A2051C
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #0x38
	movs r2, #8
	bl PutSpriteExt
	ldr r1, _080B0608  @ gUnknown_08A2099C
	ldr r0, [r4, #0x58]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #4
	movs r1, #0x40
	movs r2, #0x10
	bl PutSpriteExt
_080B05FC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0604: .4byte gUnknown_08A2051C
_080B0608: .4byte gUnknown_08A2099C

	THUMB_FUNC_END sub_80B05C4

	THUMB_FUNC_START sub_80B060C
sub_80B060C: @ 0x080B060C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B061C  @ gUnknown_08A21568
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_080B061C: .4byte gUnknown_08A21568

	THUMB_FUNC_END sub_80B060C

	THUMB_FUNC_START sub_80B0620
sub_80B0620: @ 0x080B0620
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B0634  @ gUnknown_08A21568
	bl Proc_Find
	str r4, [r0, #0x58]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0634: .4byte gUnknown_08A21568

	THUMB_FUNC_END sub_80B0620

	THUMB_FUNC_START sub_80B0638
sub_80B0638: @ 0x080B0638
	push {lr}
	sub sp, #4
	ldr r0, _080B066C  @ gUnknown_08A209F0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #4
	movs r1, #0x18
	movs r2, #8
	bl PutSpriteExt
	ldr r0, _080B0670  @ gUnknown_08A209E4
	ldr r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #4
	movs r1, #0x18
	movs r2, #0x10
	bl PutSpriteExt
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B066C: .4byte gUnknown_08A209F0
_080B0670: .4byte gUnknown_08A209E4

	THUMB_FUNC_END sub_80B0638

	THUMB_FUNC_START sub_80B0674
sub_80B0674: @ 0x080B0674
	push {r4, lr}
	ldr r2, _080B06B4  @ gRAMChapterData
	ldrb r1, [r2, #0x14]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	asrs r4, r0, #0x1f
	movs r0, #4
	ands r4, r0
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080B06B8
	ldrb r1, [r2, #0x1b]
	cmp r1, #1
	bne _080B06A2
	movs r0, #0x10
	orrs r4, r0
_080B06A2:
	cmp r1, #2
	bne _080B06AA
	movs r0, #0x20
	orrs r4, r0
_080B06AA:
	cmp r1, #3
	bne _080B06C2
_080B06AE:
	orrs r4, r3
	b _080B06C2
	.align 2, 0
_080B06B4: .4byte gRAMChapterData
_080B06B8:
	ldrb r0, [r2, #0x1b]
	cmp r0, #3
	beq _080B06AE
	movs r0, #0x20
	orrs r4, r0
_080B06C2:
	movs r0, #1
	orrs r0, r4
	movs r1, #0x18
	bl sub_80895B4
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_80895B4
	bl EnablePaletteSync
	movs r0, #0xac
	lsls r0, r0, #4
	bl sub_8089678
	movs r4, #0xb4
	lsls r4, r4, #4
	ldr r0, _080B06F8  @ gRAMChapterData
	bl sub_8089768
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_8089624
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B06F8: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B0674

	THUMB_FUNC_START sub_80B06FC
sub_80B06FC: @ 0x080B06FC
	push {r4, r5, lr}
	ldr r0, _080B074C  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xa0
	bls _080B070E
	movs r5, #0
_080B070E:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _080B0746
	cmp r5, #0x63
	bhi _080B0730
	ldr r1, _080B0750  @ 0x04000050
	movs r0, #0xc8
	strh r0, [r1]
	ldr r4, _080B0754  @ 0x04000054
	movs r0, #0x64
	subs r0, r0, r5
	lsls r0, r0, #4
	movs r1, #0x64
	bl __divsi3
	strh r0, [r4]
_080B0730:
	cmp r5, #0
	bne _080B073C
	ldr r0, _080B0758  @ 0x04000012
	ldr r1, _080B075C  @ gLCDControlBuffer
	ldrh r1, [r1, #0x1e]
	strh r1, [r0]
_080B073C:
	cmp r5, #0x78
	bne _080B0746
	ldr r1, _080B0758  @ 0x04000012
	movs r0, #4
	strh r0, [r1]
_080B0746:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B074C: .4byte 0x04000006
_080B0750: .4byte 0x04000050
_080B0754: .4byte 0x04000054
_080B0758: .4byte 0x04000012
_080B075C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B06FC

	THUMB_FUNC_START sub_80B0760
sub_80B0760: @ 0x080B0760
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0
	mov r9, r0
	mov r0, sp
	mov r1, r9
	strh r1, [r0]
	ldr r0, _080B07D0  @ gUnknown_08A21598
	ldr r1, [r0]
	ldr r2, _080B07D4  @ 0x01000040
	mov r0, sp
	bl CpuSet
	mov r0, sp
	adds r0, #2
	mov r3, r9
	strh r3, [r0]
	ldr r4, _080B07D8  @ gUnknown_08A21590
	ldr r1, [r4]
	ldr r2, _080B07DC  @ 0x010000A2
	bl CpuSet
	ldr r0, [r4]
	bl sub_80A38F4
	cmp r0, #0
	beq _080B086E
	ldr r0, [r4]
	ldr r1, _080B07E0  @ gUnknown_08A21594
	ldr r1, [r1]
	movs r2, #0x51
	bl CpuFastSet
	movs r0, #0
	mov r8, r0
	movs r7, #0
_080B07AE:
	ldr r2, _080B07D8  @ gUnknown_08A21590
	ldr r0, [r2]
	adds r3, r0, r7
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080B0852
	ldrb r1, [r3, #1]
	cmp r1, #1
	beq _080B07EA
	cmp r1, #1
	bgt _080B07E4
	cmp r1, #0
	beq _080B07F6
	b _080B0834
	.align 2, 0
_080B07D0: .4byte gUnknown_08A21598
_080B07D4: .4byte 0x01000040
_080B07D8: .4byte gUnknown_08A21590
_080B07DC: .4byte 0x010000A2
_080B07E0: .4byte gUnknown_08A21594
_080B07E4:
	cmp r1, #2
	beq _080B07F6
	b _080B0834
_080B07EA:
	ldr r0, _080B0820  @ gRAMChapterData
	adds r0, #0x2b
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080B0852
_080B07F6:
	ldr r5, _080B0824  @ gUnknown_08A21598
	ldr r0, [r5]
	mov r1, r9
	lsls r4, r1, #2
	adds r0, r4, r0
	movs r6, #0
	mov r3, r8
	strb r3, [r0]
	bl sub_80A4D28
	movs r2, #1
	adds r1, r2, #0
	mov r3, r8
	lsls r1, r3
	ands r1, r0
	cmp r1, #0
	beq _080B0828
	ldr r0, [r5]
	adds r0, r4, r0
	strb r6, [r0, #1]
	b _080B082E
	.align 2, 0
_080B0820: .4byte gRAMChapterData
_080B0824: .4byte gUnknown_08A21598
_080B0828:
	ldr r0, [r5]
	adds r0, r4, r0
	strb r2, [r0, #1]
_080B082E:
	movs r0, #1
	add r9, r0
	ldr r2, _080B0878  @ gUnknown_08A21590
_080B0834:
	ldr r0, [r2]
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _080B0852
	ldr r0, _080B087C  @ gUnknown_08A21594
	ldr r1, [r0]
	adds r1, r1, r7
	ldrb r2, [r1]
	movs r0, #0xfc
	ands r0, r2
	adds r0, #2
	strb r0, [r1]
_080B0852:
	adds r7, #0x14
	movs r1, #1
	add r8, r1
	mov r3, r8
	cmp r3, #0xf
	ble _080B07AE
	ldr r0, _080B0880  @ gUnknown_08A2159C
	ldr r0, [r0]
	mov r1, r9
	str r1, [r0]
	ldr r0, _080B087C  @ gUnknown_08A21594
	ldr r0, [r0]
	bl sub_80A3950
_080B086E:
	mov r3, r9
	cmp r3, #0
	beq _080B0884
	movs r0, #1
	b _080B0886
	.align 2, 0
_080B0878: .4byte gUnknown_08A21590
_080B087C: .4byte gUnknown_08A21594
_080B0880: .4byte gUnknown_08A2159C
_080B0884:
	movs r0, #0
_080B0886:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B0760

	THUMB_FUNC_START sub_80B0894
sub_80B0894: @ 0x080B0894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, _080B0938  @ gUnknown_08A215A0
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r6, r1, r0
	lsls r0, r5, #1
	str r0, [sp, #8]
	movs r0, #0x1f
	ldr r1, [sp, #8]
	ands r1, r0
	str r1, [sp, #8]
	ldr r0, _080B093C  @ gUnknown_08A21598
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldrb r2, [r0, #1]
	str r2, [sp, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r3, _080B0940  @ gUnknown_08A21590
	ldr r1, [r3]
	lsls r0, r0, #2
	ldr r2, [sp, #0x10]
	adds r0, r0, r2
	lsls r7, r0, #2
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	mov r8, r1
	movs r3, #0
	mov r9, r3
	ldr r0, [sp, #8]
	lsls r4, r0, #6
	ldr r1, _080B0944  @ gBG2TilemapBuffer
	adds r1, r1, r4
	mov sl, r1
	mov r0, sl
	movs r1, #0x14
	movs r2, #1
	bl TileMap_FillRect
	adds r0, r6, #0
	bl Text_Clear
	cmp r5, #0x1f
	ble _080B0906
	b _080B0A08
_080B0906:
	ldr r2, _080B0940  @ gUnknown_08A21590
	ldr r0, [r2]
	adds r1, r0, r7
	ldrb r0, [r1]
	movs r2, #3
	ands r2, r0
	cmp r2, #0
	beq _080B0A08
	cmp r2, #1
	bne _080B091E
	movs r3, #4
	mov r9, r3
_080B091E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _080B0928
	movs r2, #1
	mov r9, r2
_080B0928:
	ldrb r0, [r1, #1]
	cmp r0, #0
	blt _080B09CA
	cmp r0, #1
	ble _080B0948
	cmp r0, #2
	beq _080B099C
	b _080B09CA
	.align 2, 0
_080B0938: .4byte gUnknown_08A215A0
_080B093C: .4byte gUnknown_08A21598
_080B0940: .4byte gUnknown_08A21590
_080B0944: .4byte gBG2TilemapBuffer
_080B0948:
	mov r0, r8
	bl GetItemName
	ldr r1, _080B0998  @ gBG2TilemapBuffer
	adds r1, #4
	adds r1, r4, r1
	movs r2, #0
	str r2, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r2, r9
	movs r3, #0
	bl DrawTextInline
	ldr r0, _080B0998  @ gBG2TilemapBuffer
	adds r0, #0x14
	adds r5, r4, r0
	mov r4, r9
	cmp r4, #0
	bne _080B0972
	movs r4, #2
_080B0972:
	mov r0, r8
	bl GetItemMaxUses
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl DrawDecNumber
	mov r0, r8
	bl GetItemIconId
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #7
	mov r0, sl
	bl DrawIcon
	b _080B09CA
	.align 2, 0
_080B0998: .4byte gBG2TilemapBuffer
_080B099C:
	mov r0, r8
	bl GetItemName
	ldr r1, _080B0A18  @ gBG2TilemapBuffer
	adds r1, #4
	adds r1, r4, r1
	movs r2, #0
	str r2, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r2, r9
	movs r3, #0
	bl DrawTextInline
	mov r0, r8
	bl GetItemIconId
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #7
	mov r0, sl
	bl DrawIcon
_080B09CA:
	adds r6, #8
	adds r0, r6, #0
	bl Text_Clear
	ldr r3, [sp, #8]
	lsls r1, r3, #6
	ldr r0, _080B0A1C  @ gUnknown_02023CC0
	adds r5, r1, r0
	mov r2, r9
	cmp r2, #0
	bne _080B09E2
	movs r2, #3
_080B09E2:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080B0A20  @ gUnknown_08A21590
	ldr r3, [sp, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #3
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl DrawTextInline
	movs r0, #4
	bl BG_EnableSyncByMask
_080B0A08:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0A18: .4byte gBG2TilemapBuffer
_080B0A1C: .4byte gUnknown_02023CC0
_080B0A20: .4byte gUnknown_08A21590

	THUMB_FUNC_END sub_80B0894

	THUMB_FUNC_START sub_80B0A24
sub_80B0A24: @ 0x080B0A24
	push {r4, r5, lr}
	ldr r1, _080B0A4C  @ gUnknown_08A21598
	lsls r0, r0, #2
	ldr r4, [r1]
	adds r4, r4, r0
	movs r5, #0
	ldrsb r5, [r4, r5]
	bl sub_80A4D28
	adds r1, r0, #0
	movs r0, #1
	lsls r0, r5
	orrs r0, r1
	bl Set0203EDB4
	movs r0, #0
	strb r0, [r4, #1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0A4C: .4byte gUnknown_08A21598

	THUMB_FUNC_END sub_80B0A24

	THUMB_FUNC_START sub_80B0A50
sub_80B0A50: @ 0x080B0A50
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	bl SMS_ClearUsageTable
	movs r4, #1
_080B0A5C:
	adds r0, r4, #0
	bl GetUnit
	adds r2, r0, #0
	cmp r2, #0
	beq _080B0A98
	ldr r3, [r2]
	cmp r3, #0
	beq _080B0A98
	ldr r0, [r2, #0xc]
	ldr r1, _080B0AB4  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _080B0A98
	ldrb r0, [r3, #4]
	cmp r0, #1
	beq _080B0A82
	cmp r0, #0xf
	bne _080B0A98
_080B0A82:
	ldr r0, _080B0AB8  @ gUnknown_08A215A4
	ldr r1, [r0]
	lsls r0, r5, #3
	adds r0, r0, r1
	str r2, [r0, #4]
	adds r5, #1
	adds r0, r2, #0
	bl GetUnitSMSId
	bl SMS_RegisterUsage
_080B0A98:
	adds r4, #1
	cmp r4, #0x3f
	ble _080B0A5C
	adds r1, r5, #1
	adds r0, r6, #0
	adds r0, #0x2b
	strb r1, [r0]
	bl SetupMapSpritesPalettes
	bl SMS_FlushIndirect
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0AB4: .4byte 0x00010004
_080B0AB8: .4byte gUnknown_08A215A4

	THUMB_FUNC_END sub_80B0A50

	THUMB_FUNC_START sub_80B0ABC
sub_80B0ABC: @ 0x080B0ABC
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	movs r1, #6
	movs r2, #0x18
	movs r3, #0xc
	bl DrawUiFrame2
	movs r0, #3
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B0ABC

	THUMB_FUNC_START sub_80B0ADC
sub_80B0ADC: @ 0x080B0ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	bl SetupBackgrounds
	ldr r0, _080B0D04  @ gUnknown_08B1754C
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x40
	bl CopyToPaletteBuffer
	ldr r0, _080B0D08  @ gUnknown_08A295B4
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B0D0C  @ gUnknown_08B12DB4
	ldr r1, _080B0D10  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B0D14  @ gBG3TilemapBuffer
	ldr r1, _080B0D18  @ gUnknown_08A295D4
	movs r2, #0xc0
	lsls r2, r2, #8
	bl CallARM_FillTileRect
	movs r0, #8
	bl BG_EnableSyncByMask
	bl LoadUiFrameGraphics
	bl Font_InitForUIDefault
	bl ResetIconGraphics_
	movs r0, #4
	bl LoadIconPalettes
	bl LoadObjUIGfx
	bl sub_80B0674
	bl sub_80B0ABC
	ldr r0, _080B0D1C  @ gLCDControlBuffer
	mov ip, r0
	ldrb r1, [r0, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r7, ip
	adds r7, #0x35
	ldrb r0, [r7]
	movs r4, #1
	orrs r0, r4
	movs r5, #2
	orrs r0, r5
	movs r1, #4
	orrs r0, r1
	movs r3, #8
	orrs r0, r3
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r7]
	adds r7, #1
	ldrb r0, [r7]
	orrs r0, r4
	orrs r0, r5
	movs r1, #5
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	orrs r0, r2
	strb r0, [r7]
	mov r1, ip
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x38
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x88
	strb r0, [r1]
	mov r0, ip
	ldrb r2, [r0, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	mov r2, ip
	strb r0, [r2, #0xc]
	ldrb r2, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r5
	mov r2, ip
	strb r0, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	ands r1, r0
	strb r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
	bl sub_80B0760
	movs r5, #0
	ldr r0, _080B0D20  @ gUnknown_08A2159C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r5, r0
	bge _080B0C0C
	ldr r7, _080B0D24  @ gUnknown_08A215A0
_080B0BDE:
	lsls r0, r5, #4
	ldr r4, [r7]
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #7
	bl Text_Init
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0xa
	bl Text_Init
	adds r0, r5, #0
	bl sub_80B0894
	adds r5, #1
	cmp r5, #5
	bgt _080B0C0C
	ldr r0, _080B0D20  @ gUnknown_08A2159C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r5, r0
	blt _080B0BDE
_080B0C0C:
	adds r0, r6, #0
	adds r0, #0x29
	str r0, [sp]
	movs r1, #0x2e
	adds r1, r1, r6
	mov sl, r1
	movs r2, #0x2a
	adds r2, r2, r6
	mov r8, r2
	movs r0, #0x2b
	adds r0, r0, r6
	mov r9, r0
	ldr r7, _080B0D24  @ gUnknown_08A215A0
	movs r4, #0x60
	movs r5, #1
_080B0C2A:
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #6
	bl Text_Init
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bge _080B0C2A
	movs r5, #2
	ldr r0, _080B0D24  @ gUnknown_08A215A0
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #0xf
	bl Text_Init
	ldr r0, _080B0D28  @ sub_80B0638
	adds r1, r6, #0
	bl Get6CDifferedLoop6C
	movs r0, #2
	bl BG_EnableSyncByMask
	ldr r0, _080B0D2C  @ sub_80B06FC
	bl SetPrimaryHBlankHandler
	movs r0, #0
	ldr r1, [sp]
	strb r0, [r1]
	movs r1, #0
	strh r0, [r6, #0x2c]
	mov r2, sl
	strb r1, [r2]
	mov r2, r8
	strb r1, [r2]
	mov r1, r9
	strb r5, [r1]
	str r0, [r6, #0x34]
	ldr r1, _080B0D30  @ 0x0000FFD8
	ldrh r2, [r6, #0x2c]
	subs r2, #0x38
	movs r0, #0xff
	ands r2, r0
	movs r0, #2
	bl BG_SetPosition
	adds r0, r6, #0
	bl sub_80AD47C
	movs r0, #0xc0
	lsls r0, r0, #3
	movs r1, #1
	bl sub_80AD4A0
	ldr r2, [sp]
	ldrb r1, [r2]
	lsls r1, r1, #4
	movs r2, #0x2c
	ldrsh r0, [r6, r2]
	subs r0, #0x38
	subs r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x28
	movs r2, #0x13
	bl sub_80AD51C
	adds r0, r6, #0
	bl NewGreenTextColorManager
	adds r0, r6, #0
	bl Make6CMenuScroll
	movs r0, #0xc8
	movs r1, #0x40
	bl sub_80976AC
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #2
	bl sub_8097700
	ldrh r1, [r6, #0x2c]
	ldr r0, _080B0D20  @ gUnknown_08A2159C
	ldr r0, [r0]
	ldrh r2, [r0]
	movs r0, #8
	movs r3, #5
	bl sub_80976CC
	adds r0, r6, #0
	bl sub_80AC9C0
	adds r0, r6, #0
	bl sub_80B0A50
	ldr r0, _080B0D34  @ 0x06013800
	movs r1, #5
	bl LoadDialogueBoxGfx
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0D04: .4byte gUnknown_08B1754C
_080B0D08: .4byte gUnknown_08A295B4
_080B0D0C: .4byte gUnknown_08B12DB4
_080B0D10: .4byte 0x06008000
_080B0D14: .4byte gBG3TilemapBuffer
_080B0D18: .4byte gUnknown_08A295D4
_080B0D1C: .4byte gLCDControlBuffer
_080B0D20: .4byte gUnknown_08A2159C
_080B0D24: .4byte gUnknown_08A215A0
_080B0D28: .4byte sub_80B0638
_080B0D2C: .4byte sub_80B06FC
_080B0D30: .4byte 0x0000FFD8
_080B0D34: .4byte 0x06013800

	THUMB_FUNC_END sub_80B0ADC

	THUMB_FUNC_START sub_80B0D38
sub_80B0D38: @ 0x080B0D38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r4, [r6]
	movs r0, #0x2e
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B0D58
	b _080B0F36
_080B0D58:
	ldr r0, _080B0D94  @ gKeyStatusPtr
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0E48
	ldr r0, _080B0D98  @ gUnknown_08A21598
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	movs r4, #0
	ldrsb r4, [r0, r4]
	bl sub_80A4D28
	adds r1, r7, #0
	lsls r1, r4
	ands r1, r0
	cmp r1, #0
	beq _080B0DA0
	movs r1, #1
	negs r1, r1
	ldr r2, _080B0D9C  @ 0x0000088F
	adds r0, r1, #0
	adds r3, r5, #0
	bl sub_80AEBCC
	b _080B0F82
	.align 2, 0
_080B0D94: .4byte gKeyStatusPtr
_080B0D98: .4byte gUnknown_08A21598
_080B0D9C: .4byte 0x0000088F
_080B0DA0:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B0E2C
	ldr r7, _080B0DC8  @ gUnknown_08A21590
	ldr r1, [r7]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r4, r0, #2
	adds r1, r1, r4
	ldrb r0, [r1, #1]
	cmp r0, #0
	bge _080B0DBE
	b _080B0F82
_080B0DBE:
	cmp r0, #1
	ble _080B0DCC
	cmp r0, #2
	beq _080B0DF0
	b _080B0F82
	.align 2, 0
_080B0DC8: .4byte gUnknown_08A21590
_080B0DCC:
	adds r0, r5, #0
	movs r1, #1
	bl Proc_Goto
	ldr r0, _080B0DEC  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080B0DE2
	b _080B0F82
_080B0DE2:
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080B0F82
	.align 2, 0
_080B0DEC: .4byte gRAMChapterData
_080B0DF0:
	ldrb r0, [r1, #2]
	cmp r0, #0x9f
	bne _080B0DFC
	ldr r0, _080B0E24  @ 0x00000BB8
	bl sub_8024E20
_080B0DFC:
	ldr r0, [r7]
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	cmp r0, #0xa0
	bne _080B0E0C
	ldr r0, _080B0E28  @ 0x00001388
	bl sub_8024E20
_080B0E0C:
	ldrb r0, [r6]
	bl sub_80B0A24
	ldrb r0, [r6]
	bl sub_80B0894
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
	b _080B0F82
	.align 2, 0
_080B0E24: .4byte 0x00000BB8
_080B0E28: .4byte 0x00001388
_080B0E2C:
	ldr r0, _080B0E44  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080B0E3A
	b _080B0F82
_080B0E3A:
	movs r0, #0x6c
	bl m4aSongNumStart
	b _080B0F82
	.align 2, 0
_080B0E44: .4byte gRAMChapterData
_080B0E48:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0E70
	adds r0, r5, #0
	bl Proc_Break
	ldr r0, _080B0E6C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080B0E64
	b _080B0F82
_080B0E64:
	movs r0, #0x6b
	bl m4aSongNumStart
	b _080B0F82
	.align 2, 0
_080B0E6C: .4byte gRAMChapterData
_080B0E70:
	ldrh r1, [r2, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0E7C
	subs r4, #1
_080B0E7C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B0E86
	adds r4, #1
_080B0E86:
	ldrb r0, [r6]
	cmp r0, r4
	beq _080B0F28
	cmp r4, #0
	blt _080B0F82
	ldr r0, _080B0ED0  @ gUnknown_08A2159C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r4, r0
	bge _080B0F82
	ldr r0, _080B0ED4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B0EAC
	movs r0, #0x66
	bl m4aSongNumStart
_080B0EAC:
	strb r4, [r6]
	ldrb r2, [r6]
	lsls r1, r2, #4
	movs r3, #0x2c
	ldrsh r0, [r5, r3]
	cmp r1, r0
	bne _080B0ED8
	cmp r2, #0
	beq _080B0ED8
	movs r0, #0xff
	mov r4, r8
	strb r0, [r4]
	ldrb r0, [r6]
	subs r0, #1
	bl sub_80B0894
	b _080B0F28
	.align 2, 0
_080B0ED0: .4byte gUnknown_08A2159C
_080B0ED4: .4byte gRAMChapterData
_080B0ED8:
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r3, [r0]
	lsls r1, r3, #4
	movs r4, #0x2c
	ldrsh r2, [r5, r4]
	subs r1, r1, r2
	adds r2, r0, #0
	cmp r1, #0x40
	bne _080B0F10
	ldr r0, _080B0F0C  @ gUnknown_08A2159C
	ldr r0, [r0]
	ldr r0, [r0]
	subs r0, #1
	cmp r3, r0
	bge _080B0F10
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	bl sub_80B0894
	b _080B0F28
	.align 2, 0
_080B0F0C: .4byte gUnknown_08A2159C
_080B0F10:
	ldrb r1, [r2]
	lsls r1, r1, #4
	movs r2, #0x2c
	ldrsh r0, [r5, r2]
	subs r0, #0x38
	subs r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x28
	movs r2, #0x13
	bl sub_80AD51C
_080B0F28:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B0F82
_080B0F36:
	adds r2, r5, #0
	adds r2, #0x2e
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080B0F48
	ldrh r0, [r5, #0x2c]
	subs r0, #4
	strh r0, [r5, #0x2c]
_080B0F48:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080B0F56
	ldrh r0, [r5, #0x2c]
	adds r0, #4
	strh r0, [r5, #0x2c]
_080B0F56:
	ldrh r1, [r5, #0x2c]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080B0F62
	strb r1, [r2]
_080B0F62:
	ldr r1, _080B0F8C  @ 0x0000FFD8
	ldrh r2, [r5, #0x2c]
	subs r2, #0x38
	movs r0, #0xff
	ands r2, r0
	movs r0, #2
	bl BG_SetPosition
	ldrh r1, [r5, #0x2c]
	ldr r0, _080B0F90  @ gUnknown_08A2159C
	ldr r0, [r0]
	ldrh r2, [r0]
	movs r0, #8
	movs r3, #5
	bl sub_80976CC
_080B0F82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0F8C: .4byte 0x0000FFD8
_080B0F90: .4byte gUnknown_08A2159C

	THUMB_FUNC_END sub_80B0D38

	THUMB_FUNC_START sub_80B0F94
sub_80B0F94: @ 0x080B0F94
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	subs r0, #1
	cmp r5, r0
	bge _080B0FFC
	movs r4, #0x30
_080B0FA8:
	ldr r0, _080B0FD4  @ gUnknown_08A215A4
	ldr r1, [r0]
	lsls r0, r5, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B0FD8
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x60
	adds r2, r4, #0
	movs r3, #0xc4
	lsls r3, r3, #8
	bl sub_8027C48
	b _080B0FEC
	.align 2, 0
_080B0FD4: .4byte gUnknown_08A215A4
_080B0FD8:
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x60
	adds r2, r4, #0
	movs r3, #0xf4
	lsls r3, r3, #8
	bl sub_8027C48
_080B0FEC:
	adds r4, #0x10
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	subs r0, #1
	cmp r5, r0
	blt _080B0FA8
_080B0FFC:
	bl SMS_FlushDirect
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B0F94

	THUMB_FUNC_START sub_80B1008
sub_80B1008: @ 0x080B1008
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _080B101A
	bl Proc_End
	movs r0, #0
	str r0, [r4, #0x34]
_080B101A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B1008

	THUMB_FUNC_START sub_80B1020
sub_80B1020: @ 0x080B1020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, _080B1138  @ gUnknown_08A215A0
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0x60
	ldr r0, [sp, #4]
	adds r0, #0x2b
	ldrb r0, [r0]
	mov sl, r0
	lsls r4, r0, #1
	adds r3, r4, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0xb
	movs r1, #5
	movs r2, #0xe
	bl DrawUiFrame2
	ldr r3, _080B113C  @ gLCDControlBuffer
	ldrb r0, [r3, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3, #1]
	adds r2, r3, #0
	adds r2, #0x34
	ldrb r0, [r2]
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
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #0x58
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x28
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xc8
	strb r0, [r1]
	adds r4, #7
	lsls r4, r4, #3
	adds r0, r3, #0
	adds r0, #0x30
	strb r4, [r0]
	ldr r0, [sp, #4]
	adds r0, #0x29
	ldrb r2, [r0]
	lsls r2, r2, #4
	ldr r1, [sp, #4]
	movs r3, #0x2c
	ldrsh r0, [r1, r3]
	subs r0, #0x38
	subs r2, r2, r0
	movs r0, #0
	movs r1, #0x28
	movs r3, #1
	bl sub_80AC9D4
	ldr r0, [sp, #4]
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, #0x30
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x5c
	movs r2, #0xc
	bl sub_80AD51C
	movs r0, #0
	mov r9, r0
	cmp r9, sl
	bge _080B11C0
	ldr r0, _080B1140  @ gUnknown_02022CC4
	movs r1, #0xc9
	lsls r1, r1, #1
	adds r1, r0, r1
	str r1, [sp, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0xc]
	movs r0, #0
	mov r8, r0
_080B10EE:
	movs r7, #0
	ldr r1, _080B1144  @ gUnknown_08A215A4
	ldr r0, [r1]
	add r0, r8
	ldr r4, [r0, #4]
	adds r0, r6, #0
	bl Text_Clear
	adds r0, r6, #0
	movs r1, #0
	bl Text_SetXCursor
	mov r0, sl
	subs r0, #1
	cmp r9, r0
	bne _080B1148
	bl GetConvoyItemCount
	adds r5, r0, #0
	cmp r5, #0x64
	bne _080B111A
	movs r7, #1
_080B111A:
	adds r0, r6, #0
	movs r1, #0
	adds r2, r7, #0
	bl Text_SetParameters
	movs r0, #0xc2
	lsls r0, r0, #2
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r6, #0
	bl Text_AppendString
	b _080B1170
	.align 2, 0
_080B1138: .4byte gUnknown_08A215A0
_080B113C: .4byte gLCDControlBuffer
_080B1140: .4byte gUnknown_02022CC4
_080B1144: .4byte gUnknown_08A215A4
_080B1148:
	adds r0, r4, #0
	bl GetUnitItemCount
	adds r5, r0, #0
	cmp r5, #5
	bne _080B1156
	movs r7, #1
_080B1156:
	adds r0, r6, #0
	movs r1, #0
	adds r2, r7, #0
	bl Text_SetParameters
	ldr r0, [r4]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r6, #0
	bl Text_AppendString
_080B1170:
	cmp r7, #0
	bne _080B1184
	ldr r3, _080B1180  @ gUnknown_08A215A4
	ldr r0, [r3]
	add r0, r8
	movs r1, #1
	b _080B118C
	.align 2, 0
_080B1180: .4byte gUnknown_08A215A4
_080B1184:
	ldr r1, _080B11DC  @ gUnknown_08A215A4
	ldr r0, [r1]
	add r0, r8
	movs r1, #0
_080B118C:
	strb r1, [r0]
	adds r0, r6, #0
	ldr r1, [sp, #0xc]
	bl Text_Draw
	movs r1, #1
	cmp r7, #0
	bne _080B119E
	movs r1, #2
_080B119E:
	ldr r0, [sp, #8]
	adds r2, r5, #0
	bl sub_8004B88
	adds r6, #8
	ldr r3, [sp, #8]
	adds r3, #0x80
	str r3, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r0, #0x80
	str r0, [sp, #0xc]
	movs r1, #8
	add r8, r1
	movs r3, #1
	add r9, r3
	cmp r9, sl
	blt _080B10EE
_080B11C0:
	ldr r0, _080B11E0  @ sub_80B0F94
	ldr r1, [sp, #4]
	bl Get6CDifferedLoop6C
	ldr r1, [sp, #4]
	str r0, [r1, #0x34]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B11DC: .4byte gUnknown_08A215A4
_080B11E0: .4byte sub_80B0F94

	THUMB_FUNC_END sub_80B1020

	THUMB_FUNC_START sub_80B11E4
sub_80B11E4: @ 0x080B11E4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0x2a
	adds r0, r0, r4
	mov r8, r0
	ldrb r3, [r0]
	ldr r1, _080B122C  @ gUnknown_08A215A4
	mov r9, r1
	ldr r0, [r1]
	lsls r3, r3, #3
	adds r3, r3, r0
	ldr r0, _080B1230  @ gUnknown_08A21598
	adds r6, r4, #0
	adds r6, #0x29
	ldrb r5, [r6]
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _080B1234  @ gUnknown_08A21590
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r7, [r1, #2]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _080B1238
	movs r0, #0
	b _080B127A
	.align 2, 0
_080B122C: .4byte gUnknown_08A215A4
_080B1230: .4byte gUnknown_08A21598
_080B1234: .4byte gUnknown_08A21590
_080B1238:
	adds r0, r5, #0
	bl sub_80B0A24
	ldrb r0, [r6]
	bl sub_80B0894
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	subs r0, #1
	cmp r2, r0
	bne _080B1260
	adds r0, r7, #0
	bl MakeNewItem
	bl AddItemToConvoy
	b _080B1278
_080B1260:
	mov r0, r9
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r4, [r0, #4]
	adds r0, r7, #0
	bl MakeNewItem
	adds r1, r0, #0
	adds r0, r4, #0
	bl UnitAddItem
_080B1278:
	movs r0, #1
_080B127A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B11E4

	THUMB_FUNC_START sub_80B1288
sub_80B1288: @ 0x080B1288
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x2a
	ldrb r4, [r6]
	ldr r0, _080B12B8  @ gKeyStatusPtr
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B12CE
	adds r0, r5, #0
	bl sub_80B11E4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B12BC
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
	b _080B1344
	.align 2, 0
_080B12B8: .4byte gKeyStatusPtr
_080B12BC:
	movs r1, #1
	negs r1, r1
	movs r2, #0x89
	lsls r2, r2, #4
	adds r0, r1, #0
	adds r3, r5, #0
	bl sub_80AEBCC
	b _080B1344
_080B12CE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B12F4
	adds r0, r5, #0
	bl Proc_Break
	ldr r0, _080B12F0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B1344
	movs r0, #0x6b
	bl m4aSongNumStart
	b _080B1344
	.align 2, 0
_080B12F0: .4byte gRAMChapterData
_080B12F4:
	ldrh r1, [r2, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1300
	subs r4, #1
_080B1300:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B130A
	adds r4, #1
_080B130A:
	ldrb r0, [r6]
	cmp r4, r0
	beq _080B1344
	cmp r4, #0
	blt _080B1344
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	bge _080B1344
	ldr r0, _080B134C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B1330
	movs r0, #0x66
	bl m4aSongNumStart
_080B1330:
	strb r4, [r6]
	ldrb r1, [r6]
	lsls r1, r1, #4
	adds r1, #0x30
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x5c
	movs r2, #0xc
	bl sub_80AD51C
_080B1344:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B134C: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B1288

	THUMB_FUNC_START sub_80B1350
sub_80B1350: @ 0x080B1350
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80B1008
	ldr r2, _080B13B0  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, _080B13B4  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B13B8  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	bl sub_80B0ABC
	movs r0, #3
	bl BG_EnableSyncByMask
	movs r0, #0
	bl sub_80ACA84
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #4
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	subs r0, #0x38
	subs r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x28
	movs r2, #0x13
	bl sub_80AD51C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B13B0: .4byte gLCDControlBuffer
_080B13B4: .4byte gBG1TilemapBuffer
_080B13B8: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_80B1350

	THUMB_FUNC_START sub_80B13BC
sub_80B13BC: @ 0x080B13BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x29
	ldrb r0, [r6]
	ldr r1, _080B14FC  @ gUnknown_08A21598
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _080B1500  @ gUnknown_08A21590
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	str r0, [sp, #0x30]
	adds r1, r1, r0
	ldrb r1, [r1, #2]
	str r1, [sp, #0x2c]
	ldr r0, _080B1504  @ gUnknown_08A215A0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x70
	ldr r2, _080B1508  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	ldr r1, _080B150C  @ gBG0TilemapBuffer
	mov sl, r1
	mov r0, sl
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B1510  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	bl sub_80B0ABC
	movs r0, #3
	bl BG_EnableSyncByMask
	adds r0, r4, #0
	bl sub_80B1008
	bl sub_80A4DA0
	bl SaveGame
	movs r0, #0
	str r0, [r4, #0x30]
	bl sub_80ACA84
	ldrb r1, [r6]
	lsls r1, r1, #4
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	subs r0, #0x38
	subs r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0x28
	movs r2, #0x13
	bl sub_80AD51C
	adds r0, r5, #0
	bl Text_Clear
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl Text_SetParameters
	adds r0, r5, #0
	movs r1, #0
	bl Text_SetXCursor
	ldr r0, [sp, #0x2c]
	bl GetItemName
	adds r7, r0, #0
	ldr r0, _080B1514  @ 0x00000883
	add r1, sp, #0xc
	bl GetStringFromIndexInBuffer
	adds r6, r0, #0
	adds r0, r7, #0
	bl GetStringTextWidth
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetStringTextWidth
	adds r4, r4, r0
	adds r0, r4, #7
	cmp r0, #0
	bge _080B1498
	adds r0, #7
_080B1498:
	asrs r0, r0, #3
	adds r0, #4
	mov r9, r0
	lsrs r0, r0, #0x1f
	add r0, r9
	asrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	mov r8, r1
	adds r0, r5, #0
	adds r1, r7, #0
	bl Text_AppendString
	adds r0, r5, #0
	adds r1, r6, #0
	bl Text_AppendString
	mov r0, r8
	lsls r4, r0, #1
	ldr r1, _080B1518  @ 0x00000286
	add r1, sl
	adds r1, r4, r1
	adds r0, r5, #0
	bl Text_Draw
	ldr r0, _080B151C  @ 0x00000282
	add r0, sl
	adds r4, r4, r0
	ldr r0, [sp, #0x2c]
	bl GetItemIconId
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, #0
	bl DrawIcon
	ldr r1, _080B1500  @ gUnknown_08A21590
	ldr r0, [r1]
	ldr r2, [sp, #0x30]
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #0
	blt _080B154A
	cmp r0, #1
	ble _080B1520
	cmp r0, #2
	beq _080B1538
	b _080B154A
	.align 2, 0
_080B14FC: .4byte gUnknown_08A21598
_080B1500: .4byte gUnknown_08A21590
_080B1504: .4byte gUnknown_08A215A0
_080B1508: .4byte gLCDControlBuffer
_080B150C: .4byte gBG0TilemapBuffer
_080B1510: .4byte gBG1TilemapBuffer
_080B1514: .4byte 0x00000883
_080B1518: .4byte 0x00000286
_080B151C: .4byte 0x00000282
_080B1520:
	ldr r0, _080B1534  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B154A
	movs r0, #0x5a
	bl m4aSongNumStart
	b _080B154A
	.align 2, 0
_080B1534: .4byte gRAMChapterData
_080B1538:
	ldr r0, _080B15D8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B154A
	movs r0, #0xb9
	bl m4aSongNumStart
_080B154A:
	ldr r0, _080B15DC  @ gBG1TilemapBuffer
	movs r1, #3
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	mov r1, r8
	movs r2, #0xa
	mov r3, r9
	bl DrawUiFrame
	ldr r0, _080B15E0  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r2, ip
	adds r2, #0x34
	ldrb r0, [r2]
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
	strb r0, [r2]
	mov r2, r8
	lsls r0, r2, #3
	mov r1, ip
	adds r1, #0x2d
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x50
	strb r0, [r1]
	mov r0, r8
	add r0, r9
	lsls r0, r0, #3
	subs r1, #5
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x68
	strb r0, [r1]
	movs r0, #3
	bl BG_EnableSyncByMask
	ldr r2, _080B15E4  @ 0x0000FFFC
	movs r0, #0
	movs r1, #0
	bl BG_SetPosition
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B15D8: .4byte gRAMChapterData
_080B15DC: .4byte gBG1TilemapBuffer
_080B15E0: .4byte gLCDControlBuffer
_080B15E4: .4byte 0x0000FFFC

	THUMB_FUNC_END sub_80B13BC

	THUMB_FUNC_START sub_80B15E8
sub_80B15E8: @ 0x080B15E8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	adds r0, #1
	str r0, [r2, #0x30]
	cmp r0, #0x1e
	ble _080B1610
	ldr r0, _080B160C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080B1610
	adds r0, r2, #0
	bl Proc_Break
	b _080B161C
	.align 2, 0
_080B160C: .4byte gKeyStatusPtr
_080B1610:
	ldr r0, [r2, #0x30]
	cmp r0, #0x78
	ble _080B161C
	adds r0, r2, #0
	bl Proc_Break
_080B161C:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B15E8

	THUMB_FUNC_START sub_80B1620
sub_80B1620: @ 0x080B1620
	push {lr}
	ldr r0, _080B1660  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B1664  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	bl sub_80B0ABC
	movs r0, #3
	bl BG_EnableSyncByMask
	ldr r2, _080B1668  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	pop {r0}
	bx r0
	.align 2, 0
_080B1660: .4byte gBG0TilemapBuffer
_080B1664: .4byte gBG1TilemapBuffer
_080B1668: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B1620

	THUMB_FUNC_START sub_80B166C
sub_80B166C: @ 0x080B166C
	push {r4, lr}
	adds r4, r0, #0
	bl EndGreenTextColorManager
	adds r0, r4, #0
	bl sub_80ADDD4
	movs r0, #0
	bl SetPrimaryHBlankHandler
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B166C

	THUMB_FUNC_START sub_80B1688
sub_80B1688: @ 0x080B1688
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B1698  @ gUnknown_08A215A8
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080B1698: .4byte gUnknown_08A215A8

	THUMB_FUNC_END sub_80B1688

	THUMB_FUNC_START sub_80B169C
sub_80B169C: @ 0x080B169C
	push {lr}
	ldr r0, _080B16BC  @ gUnknown_08A2E974
	ldr r0, [r0]
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	ldr r0, _080B16C0  @ gRAMChapterData
	ldrb r1, [r0, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B16C4
	adds r0, r2, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080B16C6
	.align 2, 0
_080B16BC: .4byte gUnknown_08A2E974
_080B16C0: .4byte gRAMChapterData
_080B16C4:
	adds r0, r2, #0
_080B16C6:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B169C

	THUMB_FUNC_START sub_80B16CC
sub_80B16CC: @ 0x080B16CC
	ldr r0, _080B16D8  @ gUnknown_08A2E974
	ldr r0, [r0]
	ldrh r0, [r0, #0x2a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080B16D8: .4byte gUnknown_08A2E974

	THUMB_FUNC_END sub_80B16CC

	THUMB_FUNC_START sub_80B16DC
sub_80B16DC: @ 0x080B16DC
	push {lr}
	ldr r1, _080B16F8  @ gUnknown_08A2E978
	ldr r0, _080B16FC  @ gUnknown_08A2E974
	ldr r0, [r0]
	movs r2, #0x2a
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80B1DE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_080B16F8: .4byte gUnknown_08A2E978
_080B16FC: .4byte gUnknown_08A2E974

	THUMB_FUNC_END sub_80B16DC

	THUMB_FUNC_START sub_80B1700
sub_80B1700: @ 0x080B1700
	push {r4, r5, lr}
	lsls r2, r0, #1
	adds r2, r2, r1
	movs r4, #0x1f
	ands r2, r4
	lsls r2, r2, #5
	ldr r3, _080B176C  @ gUnknown_08A2E99C
	ldr r1, _080B1770  @ gUnknown_08A2E978
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x24
	ldrb r1, [r0]
	adds r3, r1, #0
	ands r3, r4
	lsls r0, r1, #1
	ldr r1, _080B1774  @ 0x0000FFC0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r3, r0
	ldr r4, _080B1778  @ gBG1TilemapBuffer
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r1, [r0]
	adds r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldr r5, _080B177C  @ 0x00004001
	adds r1, r3, r5
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x22
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r5, #0x1f
	adds r1, r3, r5
	strh r1, [r0]
	adds r2, #0x23
	lsls r2, r2, #1
	adds r2, r2, r4
	ldr r0, _080B1780  @ 0x00004021
	adds r3, r3, r0
	strh r3, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B176C: .4byte gUnknown_08A2E99C
_080B1770: .4byte gUnknown_08A2E978
_080B1774: .4byte 0x0000FFC0
_080B1778: .4byte gBG1TilemapBuffer
_080B177C: .4byte 0x00004001
_080B1780: .4byte 0x00004021

	THUMB_FUNC_END sub_80B1700

	THUMB_FUNC_START sub_80B1784
sub_80B1784: @ 0x080B1784
	push {r4, r5, lr}
	sub sp, #8
	ldr r4, _080B17D4  @ gUnknown_08A2E974
	ldr r0, [r4]
	adds r0, #0xa8
	bl Text_Clear
	ldr r5, _080B17D8  @ gUnknown_08A2E99C
	bl sub_80B16DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r2, _080B17DC  @ gUnknown_08A2E978
	ldr r1, [r4]
	movs r3, #0x2a
	ldrsh r1, [r1, r3]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r1, #0x2c
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #4]
	bl GetStringFromIndex
	adds r3, r0, #0
	ldr r0, [r4]
	adds r0, #0xa8
	ldr r1, _080B17E0  @ gUnknown_02023130
	movs r2, #0x16
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl DrawTextInline
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B17D4: .4byte gUnknown_08A2E974
_080B17D8: .4byte gUnknown_08A2E99C
_080B17DC: .4byte gUnknown_08A2E978
_080B17E0: .4byte gUnknown_02023130

	THUMB_FUNC_END sub_80B1784

	THUMB_FUNC_START sub_80B17E4
sub_80B17E4: @ 0x080B17E4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _080B1840  @ gUnknown_08A2E974
	mov r8, r0
	lsls r4, r4, #3
	adds r4, #0x38
	ldr r0, [r0]
	adds r0, r0, r4
	bl Text_Clear
	ldr r2, _080B1844  @ gUnknown_08A2E99C
	ldr r0, _080B1848  @ gUnknown_08A2E978
	adds r5, r5, r0
	ldrb r1, [r5]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	lsls r6, r6, #6
	ldr r1, _080B184C  @ gUnknown_020234B0
	adds r6, r6, r1
	movs r1, #9
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl DrawTextInline
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1840: .4byte gUnknown_08A2E974
_080B1844: .4byte gUnknown_08A2E99C
_080B1848: .4byte gUnknown_08A2E978
_080B184C: .4byte gUnknown_020234B0

	THUMB_FUNC_END sub_80B17E4

	THUMB_FUNC_START sub_80B1850
sub_80B1850: @ 0x080B1850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp]
	str r2, [sp, #4]
	ldr r1, _080B1910  @ gUnknown_08A2E978
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r9, r0
	ldr r1, _080B1914  @ gUnknown_08A2E99C
	movs r0, #0x2c
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r1
	ldrb r0, [r4, #8]
	lsrs r0, r0, #3
	str r0, [sp, #8]
	ldr r1, _080B1918  @ gUnknown_08A2E974
	ldr r2, [sp]
	lsls r0, r2, #3
	adds r5, r0, #0
	adds r5, #0x70
	ldr r0, [r1]
	adds r0, r0, r5
	bl Text_Clear
	movs r0, #0
	mov r8, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080B18E0
	mov sl, r5
_080B1898:
	ldr r0, _080B1918  @ gUnknown_08A2E974
	ldr r0, [r0]
	mov r1, sl
	adds r7, r0, r1
	ldrb r0, [r4, #8]
	adds r6, r0, #0
	subs r6, #0x70
	mov r2, r9
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	bl sub_80B1DE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #1
	cmp r8, r0
	bne _080B18BC
	movs r5, #2
_080B18BC:
	ldrh r0, [r4, #6]
	bl GetStringFromIndex
	adds r3, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl Text_InsertString
	adds r4, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bgt _080B18E0
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _080B1898
_080B18E0:
	ldr r0, _080B1918  @ gUnknown_08A2E974
	ldr r2, [sp]
	lsls r1, r2, #3
	adds r1, #0x70
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, [sp, #4]
	lsls r1, r2, #5
	ldr r2, [sp, #8]
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r2, _080B191C  @ gBG1TilemapBuffer
	adds r1, r1, r2
	bl Text_Draw
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1910: .4byte gUnknown_08A2E978
_080B1914: .4byte gUnknown_08A2E99C
_080B1918: .4byte gUnknown_08A2E974
_080B191C: .4byte gBG1TilemapBuffer

	THUMB_FUNC_END sub_80B1850

	THUMB_FUNC_START sub_80B1920
sub_80B1920: @ 0x080B1920
	push {lr}
	movs r0, #1
	movs r1, #0x12
	bl LoadIconPalette
	movs r0, #0x80
	movs r1, #3
	bl sub_80B53BC
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B1920

	THUMB_FUNC_START sub_80B1938
sub_80B1938: @ 0x080B1938
	push {r4, r5, r6, r7, lr}
	ldr r1, _080B19F0  @ gUnknown_08A2E978
	ldr r6, _080B19F4  @ gUnknown_08A2E974
	ldr r0, [r6]
	movs r2, #0x2a
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	ldrb r5, [r0]
	bl GetGameClock
	movs r1, #0xf
	ands r0, r1
	movs r1, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _080B19F8  @ gUnknown_08A2E986
	movs r3, #0x83
	lsls r3, r3, #6
	movs r0, #0x12
	movs r1, #8
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r6]
	movs r1, #0x2a
	ldrsh r4, [r0, r1]
	movs r2, #0x2c
	ldrsh r0, [r0, r2]
	subs r4, r4, r0
	lsls r4, r4, #4
	adds r4, #0x28
	movs r0, #0x10
	adds r1, r4, #0
	bl DisplayFrozenUiHand
	adds r0, r5, #0
	bl sub_80B1DE8
	ldr r2, _080B19FC  @ gUnknown_08A2E99C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	movs r1, #0x2c
	muls r1, r5, r1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	subs r0, #2
	adds r1, r4, #0
	bl DisplayUiHand
	ldr r0, [r6]
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B19B2
	bl sub_8095970
	cmp r0, #0
	beq _080B19DA
_080B19B2:
	bl sub_80B16CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B19DA
	bl sub_80B16DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080B19DA
	ldr r2, _080B1A00  @ gObject_16x16
	ldr r3, _080B1A04  @ 0x000020CC
	cmp r7, #0
	beq _080B19D2
	adds r3, #2
_080B19D2:
	movs r0, #0xc0
	movs r1, #0x28
	bl CallARM_PushToSecondaryOAM
_080B19DA:
	ldr r0, _080B19F4  @ gUnknown_08A2E974
	ldr r0, [r0]
	ldrh r1, [r0, #0x2e]
	ldrh r2, [r0, #0x34]
	movs r0, #0xa
	movs r3, #6
	bl sub_80976CC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B19F0: .4byte gUnknown_08A2E978
_080B19F4: .4byte gUnknown_08A2E974
_080B19F8: .4byte gUnknown_08A2E986
_080B19FC: .4byte gUnknown_08A2E99C
_080B1A00: .4byte gObject_16x16
_080B1A04: .4byte 0x000020CC

	THUMB_FUNC_END sub_80B1938

	THUMB_FUNC_START sub_80B1A08
sub_80B1A08: @ 0x080B1A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r9, r0
	ldr r1, _080B1C54  @ gUnknown_08205E50
	add r0, sp, #4
	movs r2, #0x18
	bl memcpy
	movs r0, #0
	mov sl, r0
	add r0, sp, #4
	bl SetupBackgrounds
	ldr r2, _080B1C58  @ gUnknown_08A2E974
	ldr r1, [r2]
	mov r0, sl
	strh r0, [r1, #0x32]
	movs r0, #0xd
	strh r0, [r1, #0x34]
	mov r2, sl
	strh r2, [r1, #0x2a]
	strh r2, [r1, #0x2c]
	strh r2, [r1, #0x2e]
	mov r0, r9
	strh r2, [r0, #0x30]
	adds r0, #0x36
	movs r2, #0
	strb r2, [r0]
	adds r1, #0x37
	ldrb r2, [r1]
	movs r0, #2
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _080B1C58  @ gUnknown_08A2E974
	ldr r1, [r0]
	adds r1, #0x37
	ldrb r2, [r1]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	bl Font_InitForUIDefault
	bl sub_80156BC
	bl LoadUiFrameGraphics
	ldr r7, _080B1C5C  @ gLCDControlBuffer
	ldrb r0, [r7, #1]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	orrs r0, r2
	movs r1, #2
	orrs r0, r1
	movs r6, #4
	orrs r0, r6
	movs r5, #8
	orrs r0, r5
	movs r4, #0x10
	orrs r0, r4
	strb r0, [r7, #1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r2, _080B1C58  @ gUnknown_08A2E974
	ldr r0, [r2]
	ldrh r2, [r0, #0x2e]
	movs r0, #1
	movs r1, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldrb r0, [r7, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7, #1]
	adds r0, r7, #0
	adds r0, #0x2d
	movs r1, #0
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x31
	movs r0, #0x28
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x88
	strb r0, [r1]
	adds r1, #4
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	movs r2, #2
	orrs r0, r2
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	strb r0, [r1]
	adds r1, #2
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	movs r2, #3
	negs r2, r2
	ands r0, r2
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #0xe
	movs r2, #4
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	mov r0, sl
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	mov r1, sl
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	ldr r0, _080B1C60  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B1C64  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r5, _080B1C68  @ gBG2TilemapBuffer
	adds r0, r5, #0
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B1C6C  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r4, _080B1C70  @ gUnknown_08A07A98
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B1C74  @ gUnknown_08A0733C
	ldr r1, _080B1C78  @ 0x06011800
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B1C7C  @ gUnknown_08A0754C
	ldr r1, _080B1C80  @ 0x06004000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B1C84  @ gUnknown_08A079B4
	ldr r4, _080B1C88  @ gUnknown_02020208
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r4, #0
	bl CallARM_FillTileRect
	bl sub_8003D20
	ldr r2, _080B1C58  @ gUnknown_08A2E974
	ldr r0, [r2]
	adds r0, #0xa8
	movs r1, #0x16
	bl Text_Init
	bl sub_80B1784
	movs r3, #0xe4
	lsls r3, r3, #7
	movs r0, #1
	str r0, [sp]
	mov r0, r9
	movs r1, #0xe0
	movs r2, #0x2f
	bl sub_8097748
	ldr r1, _080B1C58  @ gUnknown_08A2E974
	ldr r0, [r1]
	adds r0, #0x68
	movs r1, #9
	bl Text_Init
	ldr r2, _080B1C58  @ gUnknown_08A2E974
	ldr r0, [r2]
	adds r0, #0xa0
	movs r1, #0xe
	bl Text_Init
	ldr r7, _080B1C58  @ gUnknown_08A2E974
	movs r6, #0x70
	movs r5, #0x38
	movs r4, #5
_080B1BE4:
	mov r0, sl
	movs r1, #5
	bl sub_80B1700
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #9
	bl Text_Init
	ldr r0, [r7]
	adds r0, r0, r6
	movs r1, #0xe
	bl Text_Init
	mov r0, sl
	mov r1, sl
	adds r2, r4, #0
	bl sub_80B17E4
	mov r0, sl
	mov r1, sl
	adds r2, r4, #0
	bl sub_80B1850
	adds r6, #8
	adds r5, #8
	adds r4, #2
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #5
	ble _080B1BE4
	movs r0, #0
	str r0, [sp]
	mov r0, r9
	movs r1, #0
	movs r2, #0x12
	movs r3, #2
	bl sub_8086CE8
	ldr r0, _080B1C8C  @ gUnknown_08A2ECA8
	mov r1, r9
	bl Proc_Start
	movs r0, #0xf
	bl BG_EnableSyncByMask
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1C54: .4byte gUnknown_08205E50
_080B1C58: .4byte gUnknown_08A2E974
_080B1C5C: .4byte gLCDControlBuffer
_080B1C60: .4byte gBG0TilemapBuffer
_080B1C64: .4byte gBG1TilemapBuffer
_080B1C68: .4byte gBG2TilemapBuffer
_080B1C6C: .4byte gBG3TilemapBuffer
_080B1C70: .4byte gUnknown_08A07A98
_080B1C74: .4byte gUnknown_08A0733C
_080B1C78: .4byte 0x06011800
_080B1C7C: .4byte gUnknown_08A0754C
_080B1C80: .4byte 0x06004000
_080B1C84: .4byte gUnknown_08A079B4
_080B1C88: .4byte gUnknown_02020208
_080B1C8C: .4byte gUnknown_08A2ECA8

	THUMB_FUNC_END sub_80B1A08

	THUMB_FUNC_START sub_80B1C90
sub_80B1C90: @ 0x080B1C90
	push {lr}
	bl sub_80B1D14
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1CA4
	movs r0, #1
	negs r0, r0
	bl UnpackUiFrameBuffered
_080B1CA4:
	movs r0, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B1C90

	THUMB_FUNC_START sub_80B1CAC
sub_80B1CAC: @ 0x080B1CAC
	push {r4, lr}
	bl sub_80B1D14
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1D0A
	ldr r1, _080B1CD8  @ gUnknown_08A2E978
	ldr r4, _080B1CDC  @ gUnknown_08A2E974
	ldr r0, [r4]
	movs r2, #0x2a
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80B1DE8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1CE0
	bl sub_8002AC8
	b _080B1D0A
	.align 2, 0
_080B1CD8: .4byte gUnknown_08A2E978
_080B1CDC: .4byte gUnknown_08A2E974
_080B1CE0:
	ldr r0, [r4]
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B1CF8
	movs r0, #0x34
	movs r1, #0
	bl Sound_PlaySong80024D4
	b _080B1D0A
_080B1CF8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B1D06
	bl sub_80B9FC0
	b _080B1D0A
_080B1D06:
	bl sub_80160D0
_080B1D0A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B1CAC

	THUMB_FUNC_START sub_80B1D14
sub_80B1D14: @ 0x080B1D14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #0
	ldr r0, _080B1D64  @ gUnknown_08A2E974
	ldr r0, [r0]
	movs r1, #0x2a
	ldrsh r5, [r0, r1]
	ldr r0, _080B1D68  @ gUnknown_08A2E978
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r6, r4, #0
	bl sub_80B16DC
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _080B1D6C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080B1DCE
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080B1D70
	cmp r3, #0
	beq _080B1D96
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80B1F64
	movs r7, #1
	b _080B1D9A
	.align 2, 0
_080B1D64: .4byte gUnknown_08A2E974
_080B1D68: .4byte gUnknown_08A2E978
_080B1D6C: .4byte gKeyStatusPtr
_080B1D70:
	ldr r2, _080B1DDC  @ gUnknown_08A2E99C
	adds r4, r3, #1
	lsls r0, r4, #3
	movs r1, #0x2c
	muls r1, r6, r1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _080B1D96
	cmp r3, #2
	bhi _080B1D96
	lsls r0, r4, #0x18
	lsrs r3, r0, #0x18
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_80B1F64
	movs r7, #1
_080B1D96:
	cmp r7, #0
	beq _080B1DCE
_080B1D9A:
	ldr r0, _080B1DE0  @ gUnknown_08A2EC88
	mov r1, r8
	bl Proc_Start
	adds r0, r5, #0
	movs r1, #7
	bl __modsi3
	adds r1, r0, #0
	lsls r2, r5, #1
	adds r2, #5
	adds r0, r5, #0
	bl sub_80B1850
	movs r0, #3
	bl BG_EnableSyncByMask
	ldr r0, _080B1DE4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B1DCE
	movs r0, #0x67
	bl m4aSongNumStart
_080B1DCE:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B1DDC: .4byte gUnknown_08A2E99C
_080B1DE0: .4byte gUnknown_08A2EC88
_080B1DE4: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B1D14

	THUMB_FUNC_START sub_80B1DE8
sub_80B1DE8: @ 0x080B1DE8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	cmp r0, #0x10
	bls _080B1DF6
	b _080B1F5A
_080B1DF6:
	lsls r0, r0, #2
	ldr r1, _080B1E00  @ _080B1E04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B1E00: .4byte _080B1E04
_080B1E04: @ jump table
	.4byte _080B1E48 @ case 0
	.4byte _080B1E7E @ case 1
	.4byte _080B1E8C @ case 2
	.4byte _080B1E98 @ case 3
	.4byte _080B1EA8 @ case 4
	.4byte _080B1EB8 @ case 5
	.4byte _080B1EC4 @ case 6
	.4byte _080B1ED4 @ case 7
	.4byte _080B1EE4 @ case 8
	.4byte _080B1F5A @ case 9
	.4byte _080B1EF4 @ case 10
	.4byte _080B1F04 @ case 11
	.4byte _080B1F14 @ case 12
	.4byte _080B1F20 @ case 13
	.4byte _080B1F30 @ case 14
	.4byte _080B1F40 @ case 15
	.4byte _080B1F50 @ case 16
_080B1E48:
	ldr r0, _080B1E60  @ gRAMChapterData
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080B1E76
	cmp r0, #1
	bgt _080B1E64
	cmp r0, #0
	beq _080B1E6E
	b _080B1E7E
	.align 2, 0
_080B1E60: .4byte gRAMChapterData
_080B1E64:
	cmp r0, #2
	beq _080B1E7A
	cmp r0, #3
	beq _080B1E72
	b _080B1E7E
_080B1E6E:
	movs r0, #0
	b _080B1F5C
_080B1E72:
	movs r0, #1
	b _080B1F5C
_080B1E76:
	movs r0, #2
	b _080B1F5C
_080B1E7A:
	movs r0, #3
	b _080B1F5C
_080B1E7E:
	ldr r0, _080B1E88  @ gRAMChapterData
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	b _080B1F58
	.align 2, 0
_080B1E88: .4byte gRAMChapterData
_080B1E8C:
	ldr r0, _080B1E94  @ gRAMChapterData
	adds r0, #0x40
	b _080B1EE8
	.align 2, 0
_080B1E94: .4byte gRAMChapterData
_080B1E98:
	ldr r0, _080B1EA4  @ gRAMChapterData
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	b _080B1F58
	.align 2, 0
_080B1EA4: .4byte gRAMChapterData
_080B1EA8:
	ldr r0, _080B1EB4  @ gRAMChapterData
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1e
	b _080B1F5A
	.align 2, 0
_080B1EB4: .4byte gRAMChapterData
_080B1EB8:
	ldr r0, _080B1EC0  @ gRAMChapterData
	adds r0, #0x40
	b _080B1F08
	.align 2, 0
_080B1EC0: .4byte gRAMChapterData
_080B1EC4:
	ldr r0, _080B1ED0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	b _080B1F58
	.align 2, 0
_080B1ED0: .4byte gRAMChapterData
_080B1ED4:
	ldr r0, _080B1EE0  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	b _080B1F58
	.align 2, 0
_080B1EE0: .4byte gRAMChapterData
_080B1EE4:
	ldr r0, _080B1EF0  @ gRAMChapterData
	adds r0, #0x41
_080B1EE8:
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1e
	b _080B1F5A
	.align 2, 0
_080B1EF0: .4byte gRAMChapterData
_080B1EF4:
	ldr r0, _080B1F00  @ gRAMChapterData
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r2, r0, #0x1e
	b _080B1F5A
	.align 2, 0
_080B1F00: .4byte gRAMChapterData
_080B1F04:
	ldr r0, _080B1F10  @ gRAMChapterData
	adds r0, #0x41
_080B1F08:
	ldrb r0, [r0]
	lsrs r2, r0, #7
	b _080B1F5A
	.align 2, 0
_080B1F10: .4byte gRAMChapterData
_080B1F14:
	ldr r0, _080B1F1C  @ gRAMChapterData
	adds r0, #0x41
	b _080B1F54
	.align 2, 0
_080B1F1C: .4byte gRAMChapterData
_080B1F20:
	ldr r0, _080B1F2C  @ gRAMChapterData
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	b _080B1F58
	.align 2, 0
_080B1F2C: .4byte gRAMChapterData
_080B1F30:
	ldr r0, _080B1F3C  @ gRAMChapterData
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	b _080B1F58
	.align 2, 0
_080B1F3C: .4byte gRAMChapterData
_080B1F40:
	ldr r0, _080B1F4C  @ gRAMChapterData
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	b _080B1F58
	.align 2, 0
_080B1F4C: .4byte gRAMChapterData
_080B1F50:
	ldr r0, _080B1F60  @ gRAMChapterData
	adds r0, #0x42
_080B1F54:
	ldrb r0, [r0]
	lsls r0, r0, #0x19
_080B1F58:
	lsrs r2, r0, #0x1f
_080B1F5A:
	adds r0, r2, #0
_080B1F5C:
	pop {r1}
	bx r1
	.align 2, 0
_080B1F60: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B1DE8

	THUMB_FUNC_START sub_80B1F64
sub_80B1F64: @ 0x080B1F64
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r0, #0x10
	bls _080B1F74
	b _080B2180
_080B1F74:
	lsls r0, r0, #2
	ldr r1, _080B1F80  @ _080B1F84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B1F80: .4byte _080B1F84
_080B1F84: @ jump table
	.4byte _080B1FC8 @ case 0
	.4byte _080B2030 @ case 1
	.4byte _080B2048 @ case 2
	.4byte _080B2060 @ case 3
	.4byte _080B2078 @ case 4
	.4byte _080B2090 @ case 5
	.4byte _080B209C @ case 6
	.4byte _080B20B4 @ case 7
	.4byte _080B20CC @ case 8
	.4byte _080B2180 @ case 9
	.4byte _080B20E4 @ case 10
	.4byte _080B20FC @ case 11
	.4byte _080B2114 @ case 12
	.4byte _080B2120 @ case 13
	.4byte _080B2138 @ case 14
	.4byte _080B2150 @ case 15
	.4byte _080B2168 @ case 16
_080B1FC8:
	cmp r3, #1
	beq _080B1FF4
	cmp r3, #1
	bgt _080B1FD6
	cmp r3, #0
	beq _080B1FE0
	b _080B2030
_080B1FD6:
	cmp r3, #2
	beq _080B2008
	cmp r3, #3
	beq _080B201C
	b _080B2030
_080B1FE0:
	ldr r0, _080B1FF0  @ gRAMChapterData
	adds r0, #0x42
	ldrb r2, [r0]
	movs r1, #7
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	b _080B2180
	.align 2, 0
_080B1FF0: .4byte gRAMChapterData
_080B1FF4:
	ldr r0, _080B2004  @ gRAMChapterData
	adds r0, #0x42
	ldrb r1, [r0]
	movs r2, #6
	orrs r1, r2
	strb r1, [r0]
	b _080B2180
	.align 2, 0
_080B2004: .4byte gRAMChapterData
_080B2008:
	ldr r2, _080B2018  @ gRAMChapterData
	adds r2, #0x42
	ldrb r1, [r2]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #2
	b _080B217C
	.align 2, 0
_080B2018: .4byte gRAMChapterData
_080B201C:
	ldr r2, _080B202C  @ gRAMChapterData
	adds r2, #0x42
	ldrb r1, [r2]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #4
	b _080B217C
	.align 2, 0
_080B202C: .4byte gRAMChapterData
_080B2030:
	ldr r2, _080B2044  @ gRAMChapterData
	adds r2, #0x40
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #1
	ldrb r3, [r2]
	movs r0, #3
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B2044: .4byte gRAMChapterData
_080B2048:
	ldr r2, _080B205C  @ gRAMChapterData
	adds r2, #0x40
	movs r0, #3
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2]
	movs r0, #0xd
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B205C: .4byte gRAMChapterData
_080B2060:
	ldr r2, _080B2074  @ gRAMChapterData
	adds r2, #0x40
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2]
	movs r0, #0x11
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B2074: .4byte gRAMChapterData
_080B2078:
	ldr r2, _080B208C  @ gRAMChapterData
	adds r2, #0x40
	movs r0, #3
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #5
	ldrb r3, [r2]
	movs r0, #0x61
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B208C: .4byte gRAMChapterData
_080B2090:
	ldr r1, _080B2098  @ gRAMChapterData
	adds r1, #0x40
	b _080B2100
	.align 2, 0
_080B2098: .4byte gRAMChapterData
_080B209C:
	ldr r2, _080B20B0  @ gRAMChapterData
	adds r2, #0x41
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B20B0: .4byte gRAMChapterData
_080B20B4:
	ldr r2, _080B20C8  @ gRAMChapterData
	adds r2, #0x41
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #1
	ldrb r3, [r2]
	movs r0, #3
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B20C8: .4byte gRAMChapterData
_080B20CC:
	ldr r2, _080B20E0  @ gRAMChapterData
	adds r2, #0x41
	movs r0, #3
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2]
	movs r0, #0xd
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B20E0: .4byte gRAMChapterData
_080B20E4:
	ldr r2, _080B20F8  @ gRAMChapterData
	adds r2, #0x42
	movs r0, #3
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #3
	ldrb r3, [r2]
	movs r0, #0x19
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B20F8: .4byte gRAMChapterData
_080B20FC:
	ldr r1, _080B2110  @ gRAMChapterData
	adds r1, #0x41
_080B2100:
	lsls r3, r3, #7
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	b _080B2180
	.align 2, 0
_080B2110: .4byte gRAMChapterData
_080B2114:
	ldr r2, _080B211C  @ gRAMChapterData
	adds r2, #0x41
	b _080B216C
	.align 2, 0
_080B211C: .4byte gRAMChapterData
_080B2120:
	ldr r2, _080B2134  @ gRAMChapterData
	adds r2, #0x40
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B2134: .4byte gRAMChapterData
_080B2138:
	ldr r2, _080B214C  @ gRAMChapterData
	adds r2, #0x42
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B214C: .4byte gRAMChapterData
_080B2150:
	ldr r2, _080B2164  @ gRAMChapterData
	adds r2, #0x42
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #5
	ldrb r3, [r2]
	movs r0, #0x21
	negs r0, r0
	b _080B217A
	.align 2, 0
_080B2164: .4byte gRAMChapterData
_080B2168:
	ldr r2, _080B2184  @ gRAMChapterData
	adds r2, #0x42
_080B216C:
	movs r0, #1
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r3, [r2]
	movs r0, #0x41
	negs r0, r0
_080B217A:
	ands r0, r3
_080B217C:
	orrs r0, r1
	strb r0, [r2]
_080B2180:
	pop {r0}
	bx r0
	.align 2, 0
_080B2184: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B1F64

	THUMB_FUNC_START sub_80B2188
sub_80B2188: @ 0x080B2188
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r6, #1
	adds r5, r0, #5
	movs r0, #0x1f
	ands r5, r0
	lsls r0, r5, #5
	ldr r2, _080B2204  @ gBG1TilemapBuffer
	movs r4, #0
	adds r1, r0, #0
	adds r1, #0x22
	adds r0, #2
	movs r3, #0x1a
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r1, r1, #1
	adds r1, r1, r2
_080B21AC:
	strh r4, [r0]
	strh r4, [r1]
	adds r1, #2
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _080B21AC
	adds r0, r6, #0
	movs r1, #7
	bl __modsi3
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #5
	bl sub_80B1700
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80B17E4
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80B1850
	ldr r1, _080B2208  @ gBG0TilemapBuffer
	movs r2, #0
	adds r0, r7, #0
	adds r0, #0x62
	movs r3, #0x1a
	lsls r0, r0, #1
	adds r0, r0, r1
_080B21EE:
	strh r2, [r0]
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _080B21EE
	movs r0, #3
	bl BG_EnableSyncByMask
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2204: .4byte gBG1TilemapBuffer
_080B2208: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_80B2188

	THUMB_FUNC_START sub_80B220C
sub_80B220C: @ 0x080B220C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #6
	bls _080B221C
	b _080B244C
_080B221C:
	lsls r0, r0, #2
	ldr r1, _080B2228  @ _080B222C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B2228: .4byte _080B222C
_080B222C: @ jump table
	.4byte _080B2248 @ case 0
	.4byte _080B2410 @ case 1
	.4byte _080B2410 @ case 2
	.4byte _080B2410 @ case 3
	.4byte _080B242C @ case 4
	.4byte _080B242C @ case 5
	.4byte _080B242C @ case 6
_080B2248:
	ldr r0, _080B226C  @ gKeyStatusPtr
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2274
	ldr r0, _080B2270  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B22D4
	movs r0, #0x6b
	bl m4aSongNumStart
	b _080B22D4
	.align 2, 0
_080B226C: .4byte gKeyStatusPtr
_080B2270: .4byte gRAMChapterData
_080B2274:
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B22E8
	ldr r5, _080B22DC  @ gUnknown_08A2E974
	ldr r0, [r5]
	adds r0, #0x37
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2298
	bl sub_8095970
	cmp r0, #0
	bne _080B2298
	b _080B244C
_080B2298:
	ldr r1, _080B22E0  @ gUnknown_08A2E978
	ldr r0, [r5]
	movs r2, #0x2a
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B22AA
	b _080B244C
_080B22AA:
	movs r0, #0
	bl sub_80B1DE8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _080B22BA
	b _080B244C
_080B22BA:
	ldr r0, _080B22E4  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B22CC
	movs r0, #0x6a
	bl m4aSongNumStart
_080B22CC:
	adds r1, r4, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
_080B22D4:
	adds r0, r4, #0
	bl Proc_Break
	b _080B244C
	.align 2, 0
_080B22DC: .4byte gUnknown_08A2E974
_080B22E0: .4byte gUnknown_08A2E978
_080B22E4: .4byte gRAMChapterData
_080B22E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080B23CC
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2348
	ldr r5, _080B2344  @ gUnknown_08A2E974
	ldr r2, [r5]
	ldrh r1, [r2, #0x2a]
	movs r7, #0x2a
	ldrsh r0, [r2, r7]
	cmp r0, #0
	beq _080B2398
	subs r0, r1, #1
	strh r0, [r2, #0x2a]
	movs r1, #0x2a
	ldrsh r0, [r2, r1]
	movs r3, #0x2c
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bgt _080B2340
	ldrh r1, [r2, #0x2c]
	movs r7, #0x2c
	ldrsh r0, [r2, r7]
	cmp r0, #0
	beq _080B2340
	subs r0, r1, #1
	strh r0, [r2, #0x2c]
	movs r0, #0x2a
	ldrsh r1, [r2, r0]
	subs r1, #1
	adds r0, r4, #0
	movs r2, #0
	bl sub_80B2188
	ldr r1, [r5]
	ldrh r0, [r1, #0x2e]
	subs r0, #4
	strh r0, [r1, #0x2e]
	strh r6, [r4, #0x30]
_080B2340:
	movs r3, #1
	b _080B239C
	.align 2, 0
_080B2344: .4byte gUnknown_08A2E974
_080B2348:
	ldr r5, _080B23C0  @ gUnknown_08A2E974
	ldr r2, [r5]
	movs r6, #0x2a
	ldrsh r1, [r2, r6]
	movs r7, #0x34
	ldrsh r0, [r2, r7]
	subs r0, #1
	cmp r1, r0
	bge _080B2398
	ldrh r0, [r2, #0x2a]
	adds r0, #1
	strh r0, [r2, #0x2a]
	movs r0, #0x2a
	ldrsh r1, [r2, r0]
	movs r3, #0x2c
	ldrsh r0, [r2, r3]
	subs r0, r1, r0
	cmp r0, #4
	ble _080B2396
	movs r6, #0x34
	ldrsh r0, [r2, r6]
	subs r0, #1
	cmp r1, r0
	bge _080B2396
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	adds r1, #1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_80B2188
	ldr r1, [r5]
	ldrh r0, [r1, #0x2e]
	adds r0, #4
	strh r0, [r1, #0x2e]
	movs r0, #4
	strh r0, [r4, #0x30]
_080B2396:
	movs r3, #1
_080B2398:
	cmp r3, #0
	beq _080B23CC
_080B239C:
	ldr r0, _080B23C4  @ gUnknown_08A2EC88
	adds r1, r4, #0
	bl Proc_Start
	movs r0, #3
	bl BG_EnableSyncByMask
	ldr r0, _080B23C8  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B244C
	movs r0, #0x66
	bl m4aSongNumStart
	b _080B244C
	.align 2, 0
_080B23C0: .4byte gUnknown_08A2E974
_080B23C4: .4byte gUnknown_08A2EC88
_080B23C8: .4byte gRAMChapterData
_080B23CC:
	ldr r0, _080B2400  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080B244C
	ldr r2, _080B2404  @ gUnknown_08A2E99C
	ldr r1, _080B2408  @ gUnknown_08A2E978
	ldr r0, _080B240C  @ gUnknown_08A2E974
	ldr r0, [r0]
	movs r3, #0x2a
	ldrsh r0, [r0, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r2, #0x28
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _080B244C
	adds r0, r4, #0
	bl _call_via_r1
	b _080B244C
	.align 2, 0
_080B2400: .4byte gKeyStatusPtr
_080B2404: .4byte gUnknown_08A2E99C
_080B2408: .4byte gUnknown_08A2E978
_080B240C: .4byte gUnknown_08A2E974
_080B2410:
	ldr r0, _080B2428  @ gUnknown_08A2E974
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	subs r0, #4
	strh r0, [r1, #0x2e]
	ldrh r1, [r4, #0x30]
	movs r6, #0x30
	ldrsh r0, [r4, r6]
	cmp r0, #3
	bne _080B2448
	movs r0, #0
	b _080B244A
	.align 2, 0
_080B2428: .4byte gUnknown_08A2E974
_080B242C:
	ldr r0, _080B2444  @ gUnknown_08A2E974
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	adds r0, #4
	strh r0, [r1, #0x2e]
	ldrh r1, [r4, #0x30]
	movs r7, #0x30
	ldrsh r0, [r4, r7]
	cmp r0, #6
	bne _080B2448
	movs r0, #0
	b _080B244A
	.align 2, 0
_080B2444: .4byte gUnknown_08A2E974
_080B2448:
	adds r0, r1, #1
_080B244A:
	strh r0, [r4, #0x30]
_080B244C:
	ldr r0, _080B2460  @ gUnknown_08A2E974
	ldr r0, [r0]
	ldrh r2, [r0, #0x2e]
	movs r0, #1
	movs r1, #0
	bl BG_SetPosition
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2460: .4byte gUnknown_08A2E974

	THUMB_FUNC_END sub_80B220C

	THUMB_FUNC_START sub_80B2464
sub_80B2464: @ 0x080B2464
	push {r4, lr}
	adds r4, r0, #0
	bl Delete6CMenuScroll
	bl EndBG3Slider
	ldr r0, _080B248C  @ gUnknown_08A2ECA8
	bl Proc_EndEach
	ldr r0, _080B2490  @ gUnknown_08A2EC88
	bl Proc_EndEach
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B2494
	movs r0, #1
	b _080B24A4
	.align 2, 0
_080B248C: .4byte gUnknown_08A2ECA8
_080B2490: .4byte gUnknown_08A2EC88
_080B2494:
	adds r0, r4, #0
	bl sub_8092134
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
	movs r0, #0
_080B24A4:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B2464

	THUMB_FUNC_START sub_80B24AC
sub_80B24AC: @ 0x080B24AC
	ldr r0, _080B24BC  @ gUnknown_08A2E974
	ldr r1, [r0]
	adds r1, #0x37
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_080B24BC: .4byte gUnknown_08A2E974

	THUMB_FUNC_END sub_80B24AC

	THUMB_FUNC_START sub_80B24C0
sub_80B24C0: @ 0x080B24C0
	push {lr}
	ldr r0, _080B24D8  @ gUnknown_08A2E974
	ldr r1, [r0]
	adds r1, #0x37
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	bl SMS_ClearUsageTable
	pop {r0}
	bx r0
	.align 2, 0
_080B24D8: .4byte gUnknown_08A2E974

	THUMB_FUNC_END sub_80B24C0

	THUMB_FUNC_START sub_80B24DC
sub_80B24DC: @ 0x080B24DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	adds r0, r3, r0
	cmp r3, r0
	bge _080B2508
	ldr r2, _080B2510  @ gUnknown_02014EF4
	ldr r1, _080B2514  @ gPaletteBuffer
	lsls r0, r3, #1
	adds r4, r0, r1
	adds r2, r0, r2
_080B24F4:
	ldrh r0, [r4]
	strh r0, [r2]
	adds r4, #2
	adds r2, #2
	adds r3, #1
	ldr r0, [r5, #0x5c]
	ldr r1, [r5, #0x60]
	adds r0, r0, r1
	cmp r3, r0
	blt _080B24F4
_080B2508:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B2510: .4byte gUnknown_02014EF4
_080B2514: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80B24DC

	THUMB_FUNC_START nullsub_67
nullsub_67: @ 0x080B2518
	bx lr

	THUMB_FUNC_END nullsub_67

	THUMB_FUNC_START sub_80B251C
sub_80B251C: @ 0x080B251C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r0, #0x4e
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	mov r0, r8
	ldr r7, [r0, #0x5c]
	ldr r0, [r0, #0x60]
	adds r0, r7, r0
	cmp r7, r0
	bge _080B25D0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sl, r1
_080B254C:
	lsls r2, r7, #1
	mov ip, r2
	ldr r0, _080B2600  @ gUnknown_02014EF4
	add r0, ip
	ldrh r6, [r0]
	mov r1, sl
	ands r1, r6
	mov r0, r8
	ldr r4, [r0, #0x58]
	adds r0, r4, #0
	mov r2, sl
	ands r0, r2
	subs r0, r1, r0
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080B2572
	adds r0, #0xff
_080B2572:
	asrs r0, r0, #8
	adds r2, r0, r4
	mov r0, sl
	ands r2, r0
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r1, r5, #0
	ands r1, r6
	adds r0, r4, #0
	ands r0, r5
	subs r0, r1, r0
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080B2594
	adds r0, #0xff
_080B2594:
	asrs r0, r0, #8
	adds r3, r0, r4
	ands r3, r5
	movs r5, #0x1f
	adds r1, r5, #0
	ands r1, r6
	adds r0, r4, #0
	ands r0, r5
	subs r0, r1, r0
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080B25B2
	adds r0, #0xff
_080B25B2:
	asrs r0, r0, #8
	adds r0, r0, r4
	ands r0, r5
	ldr r1, _080B2604  @ gPaletteBuffer
	add r1, ip
	orrs r2, r3
	orrs r2, r0
	strh r2, [r1]
	adds r7, #1
	mov r2, r8
	ldr r0, [r2, #0x5c]
	ldr r1, [r2, #0x60]
	adds r0, r0, r1
	cmp r7, r0
	blt _080B254C
_080B25D0:
	bl EnablePaletteSync
	mov r1, r8
	adds r1, #0x4e
	mov r0, r8
	adds r0, #0x64
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r0, r9
	cmp r0, #0
	bne _080B25F0
	mov r0, r8
	bl Proc_Break
_080B25F0:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2600: .4byte gUnknown_02014EF4
_080B2604: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80B251C

	THUMB_FUNC_START sub_80B2608
sub_80B2608: @ 0x080B2608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r0, #0x4e
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0
	beq _080B26C0
	mov r4, r8
	ldr r6, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	adds r0, r6, r0
	cmp r6, r0
	bge _080B26C0
	movs r5, #0xf8
	lsls r5, r5, #7
	mov sl, r5
_080B263C:
	mov r0, r8
	ldr r5, [r0, #0x58]
	adds r2, r5, #0
	mov r1, sl
	ands r2, r1
	lsls r4, r6, #1
	mov ip, r4
	ldr r3, _080B2724  @ gUnknown_02014EF4
	add r3, ip
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	subs r0, r2, r0
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080B2662
	adds r0, #0xff
_080B2662:
	asrs r0, r0, #8
	ldrh r4, [r3]
	adds r2, r0, r4
	mov r0, sl
	ands r2, r0
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r1, r5, #0
	ands r1, r7
	adds r0, r4, #0
	ands r0, r7
	subs r0, r1, r0
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _080B2686
	adds r0, #0xff
_080B2686:
	asrs r0, r0, #8
	adds r3, r0, r4
	ands r3, r7
	movs r1, #0x1f
	ands r5, r1
	adds r0, r4, #0
	ands r0, r1
	subs r0, r5, r0
	mov r5, r9
	muls r5, r0, r5
	adds r0, r5, #0
	cmp r0, #0
	bge _080B26A2
	adds r0, #0xff
_080B26A2:
	asrs r0, r0, #8
	adds r0, r0, r4
	ands r0, r1
	ldr r1, _080B2728  @ gPaletteBuffer
	add r1, ip
	orrs r2, r3
	orrs r2, r0
	strh r2, [r1]
	adds r6, #1
	mov r1, r8
	ldr r0, [r1, #0x5c]
	ldr r1, [r1, #0x60]
	adds r0, r0, r1
	cmp r6, r0
	blt _080B263C
_080B26C0:
	bl EnablePaletteSync
	mov r1, r8
	adds r1, #0x4e
	mov r0, r8
	adds r0, #0x64
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	mov r4, r9
	cmp r4, #0
	bne _080B2714
	mov r5, r8
	ldr r6, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	adds r0, r6, r0
	cmp r6, r0
	bge _080B270E
	ldr r0, _080B2728  @ gPaletteBuffer
	ldr r2, _080B2724  @ gUnknown_02014EF4
	lsls r1, r6, #1
	adds r3, r1, r0
	adds r2, r1, r2
_080B26F0:
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #2
	adds r6, #1
	mov r1, r8
	ldr r0, [r1, #0x5c]
	ldr r1, [r1, #0x60]
	adds r0, r0, r1
	cmp r6, r0
	blt _080B26F0
_080B270E:
	mov r0, r8
	bl Proc_Break
_080B2714:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2724: .4byte gUnknown_02014EF4
_080B2728: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80B2608

	THUMB_FUNC_START sub_80B272C
sub_80B272C: @ 0x080B272C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r1, r3, #0
	ldr r0, _080B2758  @ gUnknown_08A2EE90
	bl Proc_StartBlocking
	adds r1, r0, #0
	adds r0, #0x64
	movs r2, #0
	strh r5, [r0]
	str r4, [r1, #0x58]
	subs r0, #0x16
	strh r2, [r0]
	cmp r6, #1
	beq _080B2768
	cmp r6, #1
	bgt _080B275C
	cmp r6, #0
	beq _080B2762
	b _080B2778
	.align 2, 0
_080B2758: .4byte gUnknown_08A2EE90
_080B275C:
	cmp r6, #2
	beq _080B2770
	b _080B2778
_080B2762:
	movs r0, #0x80
	str r0, [r1, #0x5c]
	b _080B2776
_080B2768:
	str r2, [r1, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #2
	b _080B2776
_080B2770:
	str r2, [r1, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #3
_080B2776:
	str r0, [r1, #0x60]
_080B2778:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B272C

	THUMB_FUNC_START sub_80B2780
sub_80B2780: @ 0x080B2780
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r1, r3, #0
	ldr r0, _080B27B0  @ gUnknown_08A2EEC0
	bl Proc_StartBlocking
	mov ip, r0
	adds r0, #0x64
	movs r1, #0
	strh r5, [r0]
	mov r0, ip
	str r4, [r0, #0x58]
	adds r0, #0x4e
	strh r1, [r0]
	cmp r6, #1
	beq _080B27C2
	cmp r6, #1
	bgt _080B27B4
	cmp r6, #0
	beq _080B27BA
	b _080B27DA
	.align 2, 0
_080B27B0: .4byte gUnknown_08A2EEC0
_080B27B4:
	cmp r6, #2
	beq _080B27CE
	b _080B27DA
_080B27BA:
	movs r0, #0x80
	mov r1, ip
	str r0, [r1, #0x5c]
	b _080B27D8
_080B27C2:
	mov r6, ip
	str r1, [r6, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x60]
	b _080B27DA
_080B27CE:
	mov r0, ip
	str r1, [r0, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, ip
_080B27D8:
	str r0, [r1, #0x60]
_080B27DA:
	mov r6, ip
	ldr r4, [r6, #0x5c]
	ldr r0, [r6, #0x60]
	adds r0, r4, r0
	cmp r4, r0
	bge _080B280A
	ldr r2, _080B2810  @ gUnknown_02014EF4
	ldr r1, _080B2814  @ gPaletteBuffer
	movs r5, #0
	lsls r0, r4, #1
	adds r3, r0, r1
	adds r2, r0, r2
_080B27F2:
	ldrh r0, [r3]
	strh r0, [r2]
	strh r5, [r3]
	adds r3, #2
	adds r2, #2
	adds r4, #1
	mov r1, ip
	ldr r0, [r1, #0x5c]
	ldr r1, [r1, #0x60]
	adds r0, r0, r1
	cmp r4, r0
	blt _080B27F2
_080B280A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2810: .4byte gUnknown_02014EF4
_080B2814: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80B2780

	THUMB_FUNC_START sub_80B2818
sub_80B2818: @ 0x080B2818
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _080B289C  @ gLCDControlBuffer
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	movs r0, #0
	bl SetupBackgrounds
	bl NewEfxAnimeDrvProc
	bl sub_806E8F0
	movs r5, #0
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
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
	adds r0, r6, #0
	adds r0, #0x34
	strb r5, [r0]
	adds r1, r6, #0
	adds r1, #0x2c
	movs r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x32
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B289C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B2818

	THUMB_FUNC_START sub_80B28A0
sub_80B28A0: @ 0x080B28A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B28F8  @ gUnknown_08A20DA4
	bl Proc_Find
	bl Proc_End
	ldr r0, _080B28FC  @ gUnknown_08A20DCC
	bl Proc_Find
	bl Proc_End
	adds r0, r4, #0
	bl sub_80ADDD4
	movs r0, #1
	bl Sound_FadeOutBGM
	ldr r2, _080B2900  @ gLCDControlBuffer
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
	bl SetNextGameActionId
	adds r0, r4, #0
	movs r1, #5
	bl Proc_Goto
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B28F8: .4byte gUnknown_08A20DA4
_080B28FC: .4byte gUnknown_08A20DCC
_080B2900: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B28A0

	THUMB_FUNC_START sub_80B2904
sub_80B2904: @ 0x080B2904
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x2c
	ldrb r0, [r6]
	cmp r0, #2
	beq _080B2922
	cmp r0, #2
	bgt _080B291C
	cmp r0, #1
	beq _080B296A
	b _080B297E
_080B291C:
	cmp r0, #3
	beq _080B295C
	b _080B297E
_080B2922:
	adds r0, r4, #0
	adds r0, #0x33
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x34
	ldrb r1, [r5]
	bl sub_80B40EC
	str r0, [r4, #0x4c]
	cmp r0, #0
	bne _080B2948
	movs r0, #1
	bl SetNextGameActionId
	adds r0, r4, #0
	movs r1, #4
	bl Proc_Goto
	b _080B297E
_080B2948:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r0, #1
	strb r0, [r6]
	ldr r1, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_80B2F3C
	b _080B297E
_080B295C:
	ldr r1, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_80B3EDC
	movs r0, #1
	strb r0, [r6]
	b _080B297E
_080B296A:
	ldr r0, _080B2984  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B297E
	adds r0, r4, #0
	bl sub_80B28A0
_080B297E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2984: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_80B2904

	THUMB_FUNC_START sub_80B2988
sub_80B2988: @ 0x080B2988
	push {lr}
	ldr r0, _080B29AC  @ gUnknown_08A2EEF0
	bl Proc_Find
	adds r1, r0, #0
	cmp r1, #0
	beq _080B29B0
	adds r0, #0x33
	ldrb r0, [r0]
	adds r1, #0x34
	ldrb r1, [r1]
	bl sub_80B40EC
	cmp r0, #0
	bne _080B29B0
	movs r0, #1
	b _080B29B2
	.align 2, 0
_080B29AC: .4byte gUnknown_08A2EEF0
_080B29B0:
	movs r0, #0
_080B29B2:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B2988

	THUMB_FUNC_START sub_80B29B8
sub_80B29B8: @ 0x080B29B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B29D0  @ gUnknown_08A2EEF0
	bl Proc_Find
	cmp r0, #0
	beq _080B29CA
	adds r0, #0x2c
	strb r4, [r0]
_080B29CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B29D0: .4byte gUnknown_08A2EEF0

	THUMB_FUNC_END sub_80B29B8

	THUMB_FUNC_START sub_80B29D4
sub_80B29D4: @ 0x080B29D4
	push {lr}
	movs r0, #3
	bl Sound_FadeOutBGM
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B29D4

	THUMB_FUNC_START sub_80B29E0
sub_80B29E0: @ 0x080B29E0
	push {lr}
	bl sub_80ADDD4
	bl sub_805A9E0
	movs r0, #0
	bl sub_8009A84
	bl sub_806E920
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B29E0

	THUMB_FUNC_START Make6C_opinfo
Make6C_opinfo: @ 0x080B29F8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080B2A10  @ gUnknown_08A2EEF0
	bl Proc_StartBlocking
	adds r0, #0x33
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A10: .4byte gUnknown_08A2EEF0

	THUMB_FUNC_END Make6C_opinfo

	THUMB_FUNC_START sub_80B2A14
sub_80B2A14: @ 0x080B2A14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r1
	str r2, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	movs r4, #1
	ldr r2, _080B2A6C  @ gPaletteBuffer
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _080B2A70  @ 0x0000021E
	adds r5, r2, r1
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	mov r3, r9
	lsls r1, r3, #5
	lsls r0, r0, #1
	adds r0, r0, r2
	adds r3, r0, #2
	ldr r0, _080B2A74  @ 0x00000222
	adds r1, r1, r0
	adds r1, r1, r2
_080B2A60:
	ldr r2, [sp, #0xc]
	adds r0, r4, r2
	cmp r0, #0xf
	ble _080B2A78
	ldrh r0, [r5]
	b _080B2A7A
	.align 2, 0
_080B2A6C: .4byte gPaletteBuffer
_080B2A70: .4byte 0x0000021E
_080B2A74: .4byte 0x00000222
_080B2A78:
	ldrh r0, [r3]
_080B2A7A:
	strh r0, [r1]
	mov r7, r9
	adds r7, #1
	adds r1, #2
	adds r3, #2
	adds r4, #1
	cmp r4, #0xf
	ble _080B2A60
	bl EnablePaletteSync
	ldr r3, [sp, #8]
	cmp r3, #8
	bls _080B2B74
	mov r0, sl
	cmp r0, #7
	bhi _080B2A9E
	movs r1, #8
	mov sl, r1
_080B2A9E:
	ldr r4, _080B2B34  @ gSinLookup
	ldr r2, _080B2B38  @ gCosLookup
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	ldr r1, [sp, #8]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r3, _080B2B38  @ gCosLookup
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #4
	ldr r1, [sp, #8]
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _080B2B44
	ldr r0, _080B2B3C  @ 0x000001FF
	mov r3, r8
	ands r3, r0
	mov r8, r3
	mov r2, r9
	lsls r1, r2, #9
	add r1, r8
	ldr r3, [sp, #4]
	ands r3, r0
	str r3, [sp, #4]
	ldr r3, _080B2B40  @ gUnknown_08A2EF48
	lsls r0, r2, #1
	movs r2, #0xf
	ands r7, r2
	lsls r2, r7, #0xc
	adds r0, r0, r2
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [sp]
	movs r0, #4
	ldr r2, [sp, #4]
	bl PutSpriteExt
	b _080B2B74
	.align 2, 0
_080B2B34: .4byte gSinLookup
_080B2B38: .4byte gCosLookup
_080B2B3C: .4byte 0x000001FF
_080B2B40: .4byte gUnknown_08A2EF48
_080B2B44:
	ldr r0, _080B2B84  @ 0x000001FF
	mov r3, r8
	ands r3, r0
	mov r8, r3
	mov r2, r9
	lsls r1, r2, #9
	add r1, r8
	ldr r3, [sp, #4]
	ands r3, r0
	str r3, [sp, #4]
	ldr r3, _080B2B88  @ gUnknown_08A2EF48
	lsls r0, r2, #1
	movs r2, #0xf
	ands r7, r2
	lsls r2, r7, #0xc
	adds r0, r0, r2
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [sp]
	movs r0, #4
	ldr r2, [sp, #4]
	bl PutSpriteExt
_080B2B74:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2B84: .4byte 0x000001FF
_080B2B88: .4byte gUnknown_08A2EF48

	THUMB_FUNC_END sub_80B2A14

	THUMB_FUNC_START sub_80B2B8C
sub_80B2B8C: @ 0x080B2B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r1, _080B2D8C  @ gUnknown_08205E94
	add r0, sp, #4
	movs r2, #0x18
	bl memcpy
	add r0, sp, #4
	bl SetupBackgrounds
	ldr r3, _080B2D90  @ gLCDControlBuffer
	ldrb r1, [r3]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
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
	ldrb r0, [r3, #1]
	movs r1, #2
	negs r1, r1
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	movs r0, #4
	orrs r1, r0
	movs r0, #9
	negs r0, r0
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
	movs r4, #0
	str r4, [sp]
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
	strh r4, [r7, #0x2a]
	ldr r0, _080B2D94  @ gUnknown_03001D50
	str r0, [r7, #0x34]
	movs r2, #0
	movs r1, #0x13
	adds r0, #0x4c
_080B2C48:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080B2C48
	movs r0, #0
	str r0, [r7, #0x38]
	ldr r0, _080B2D98  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B2D9C  @ gUnknown_08A37300
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, [r7, #0x40]
	ldrb r0, [r0, #5]
	movs r1, #0
	bl sub_80B369C
	adds r4, r0, #0
	movs r6, #0
	bl strlen
	adds r1, r7, #0
	adds r1, #0x2e
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r4, r0]
	mov sl, r1
	cmp r0, #0
	beq _080B2CD2
	ldr r0, _080B2DA0  @ gUnknown_08A2F2C0
	mov r8, r0
	movs r1, #0xb0
	lsls r1, r1, #1
	add r1, r8
	mov r9, r1
	ldr r5, _080B2DA4  @ gUnknown_02020188
_080B2C9A:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _080B2CAC
	mov r1, r9
	ldr r0, [r1]
_080B2CAC:
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B2DA8  @ 0x06010000
	adds r1, r6, r0
	adds r0, r5, #0
	movs r2, #2
	movs r3, #4
	bl CopyTileGfxForObj
	adds r4, #1
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080B2C9A
_080B2CD2:
	ldr r4, _080B2DAC  @ gUnknown_08A30780
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B2DB0  @ gUnknown_08A301B0
	ldr r1, _080B2DB4  @ 0x06016000
	bl CopyDataWithPossibleUncomp
	mov r1, sl
	ldrb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	subs r0, #8
	strh r0, [r7, #0x2c]
	adds r0, r7, #0
	movs r1, #0
	bl sub_80B305C
	ldr r1, [r7, #0x34]
	str r0, [r1]
	ldr r0, _080B2DB8  @ gUnknown_08A360E8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B2DBC  @ gUnknown_08A36284
	ldr r4, _080B2DA4  @ gUnknown_02020188
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B2DC0  @ gUnknown_02022E68
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r0, _080B2DC4  @ gUnknown_08A35A3C
	ldr r1, _080B2DC8  @ 0x06000800
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B2DCC  @ gUnknown_08A35FD0
	adds r1, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B2DD0  @ gBG1TilemapBuffer
	ldr r2, _080B2DD4  @ 0x00005040
	adds r1, r4, #0
	bl CallARM_FillTileRect
	ldr r0, _080B2DD8  @ gUnknown_08A360C8
	movs r1, #0xa0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080B2DDC  @ gUnknown_08B17B64
	ldr r1, _080B2DE0  @ 0x06008000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B2DE4  @ gBG2TilemapBuffer
	ldr r1, _080B2DE8  @ gUnknown_08B18D68
	movs r2, #0
	movs r3, #5
	bl sub_800154C
	ldr r0, _080B2DEC  @ gUnknown_08B18ED4
	movs r1, #0
	movs r2, #0x60
	bl CopyToPaletteBuffer
	movs r0, #4
	bl BG_EnableSyncByMask
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2D8C: .4byte gUnknown_08205E94
_080B2D90: .4byte gLCDControlBuffer
_080B2D94: .4byte gUnknown_03001D50
_080B2D98: .4byte gBG0TilemapBuffer
_080B2D9C: .4byte gUnknown_08A37300
_080B2DA0: .4byte gUnknown_08A2F2C0
_080B2DA4: .4byte gUnknown_02020188
_080B2DA8: .4byte 0x06010000
_080B2DAC: .4byte gUnknown_08A30780
_080B2DB0: .4byte gUnknown_08A301B0
_080B2DB4: .4byte 0x06016000
_080B2DB8: .4byte gUnknown_08A360E8
_080B2DBC: .4byte gUnknown_08A36284
_080B2DC0: .4byte gUnknown_02022E68
_080B2DC4: .4byte gUnknown_08A35A3C
_080B2DC8: .4byte 0x06000800
_080B2DCC: .4byte gUnknown_08A35FD0
_080B2DD0: .4byte gBG1TilemapBuffer
_080B2DD4: .4byte 0x00005040
_080B2DD8: .4byte gUnknown_08A360C8
_080B2DDC: .4byte gUnknown_08B17B64
_080B2DE0: .4byte 0x06008000
_080B2DE4: .4byte gBG2TilemapBuffer
_080B2DE8: .4byte gUnknown_08B18D68
_080B2DEC: .4byte gUnknown_08B18ED4

	THUMB_FUNC_END sub_80B2B8C

	THUMB_FUNC_START sub_80B2DF0
sub_80B2DF0: @ 0x080B2DF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	asrs r0, r0, #1
	movs r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #1
	bl sub_8001F48
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bne _080B2E28
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
_080B2E28:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2DF0

	THUMB_FUNC_START sub_80B2E30
sub_80B2E30: @ 0x080B2E30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x3c
	bne _080B2E4E
	ldr r0, [r4, #0x40]
	ldrb r1, [r0, #5]
	adds r0, r4, #0
	bl sub_80B325C
	str r0, [r4, #0x38]
	ldr r0, _080B2E60  @ gUnknown_08A2F038
	adds r1, r4, #0
	bl Proc_Start
_080B2E4E:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x5f
	bls _080B2E64
	adds r0, r4, #0
	bl Proc_Break
	movs r0, #0
	b _080B2E9E
	.align 2, 0
_080B2E60: .4byte gUnknown_08A2F038
_080B2E64:
	cmp r0, #0xf
	bls _080B2E9A
	ldrh r0, [r4, #0x2a]
	adds r1, r0, #0
	subs r1, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B2E9A
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r5, r0, #1
	adds r1, r5, #1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r1, r0
	bge _080B2E9A
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_80B305C
	ldr r2, [r4, #0x34]
	lsls r1, r5, #2
	adds r1, r1, r2
	str r0, [r1, #4]
_080B2E9A:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
_080B2E9E:
	strh r0, [r4, #0x2a]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2E30

	THUMB_FUNC_START sub_80B2EA8
sub_80B2EA8: @ 0x080B2EA8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x14
	bne _080B2EBA
	ldr r0, [r4, #0x38]
	movs r1, #4
	bl Proc_Goto
_080B2EBA:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0x4f
	bls _080B2ECA
	adds r0, r4, #0
	bl Proc_Break
	movs r0, #0
	b _080B2F00
_080B2ECA:
	ldrh r5, [r4, #0x2a]
	adds r0, r5, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B2EFC
	adds r0, r5, #0
	movs r1, #3
	bl __udivsi3
	adds r2, r4, #0
	adds r2, #0x2e
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r2, [r2]
	cmp r1, r2
	bcs _080B2EFC
	ldr r0, [r4, #0x34]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl Proc_Break
_080B2EFC:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
_080B2F00:
	strh r0, [r4, #0x2a]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2EA8

	THUMB_FUNC_START sub_80B2F08
sub_80B2F08: @ 0x080B2F08
	ldr r2, _080B2F28  @ gLCDControlBuffer
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
	bx lr
	.align 2, 0
_080B2F28: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B2F08

	THUMB_FUNC_START sub_80B2F2C
sub_80B2F2C: @ 0x080B2F2C
	push {lr}
	bl sub_80ADDD4
	movs r0, #3
	bl sub_80B29B8
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2F2C

	THUMB_FUNC_START sub_80B2F3C
sub_80B2F3C: @ 0x080B2F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080B2F54  @ gUnknown_08A2EF50
	adds r1, r4, #0
	bl Proc_Start
	str r4, [r0, #0x3c]
	str r5, [r0, #0x40]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B2F54: .4byte gUnknown_08A2EF50

	THUMB_FUNC_END sub_80B2F3C

	THUMB_FUNC_START sub_80B2F58
sub_80B2F58: @ 0x080B2F58
	movs r1, #0
	strh r1, [r0, #0x2a]
	ldr r3, [r0, #0x14]
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldrh r3, [r3, #0x2c]
	adds r1, r1, r3
	strh r1, [r0, #0x2e]
	bx lr

	THUMB_FUNC_END sub_80B2F58

	THUMB_FUNC_START sub_80B2F74
sub_80B2F74: @ 0x080B2F74
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r3, [r4, #0x2a]
	adds r1, r3, #0
	asrs r1, r1, #4
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r2, r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	str r6, [sp]
	ldrh r0, [r4, #0x2a]
	asrs r0, r0, #4
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0x18
	bl sub_80B2A14
	ldrh r0, [r4, #0x2a]
	adds r0, #0x10
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _080B2FC8
	movs r0, #0
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	bl Proc_Break
_080B2FC8:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2F74

	THUMB_FUNC_START sub_80B2FD0
sub_80B2FD0: @ 0x080B2FD0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r2, #0x18
	bl sub_80B2A14
	strh r5, [r4, #0x2a]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2FD0

	THUMB_FUNC_START sub_80B2FF8
sub_80B2FF8: @ 0x080B2FF8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r0, r5
	subs r0, r5, r0
	adds r7, r4, #0
	adds r7, #0x2c
	ldrb r2, [r7]
	movs r6, #0x2e
	ldrsh r3, [r4, r6]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #0x2a]
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #0x18
	adds r3, r6, #0
	bl sub_80B2A14
	ldrh r0, [r4, #0x2a]
	cmp r0, r5
	bne _080B304C
	ldr r1, [r4, #0x14]
	ldrb r0, [r7]
	ldr r1, [r1, #0x34]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	adds r0, r4, #0
	bl Proc_Break
_080B304C:
	ldrh r0, [r4, #0x2a]
	adds r0, #8
	strh r0, [r4, #0x2a]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B2FF8

	THUMB_FUNC_START sub_80B305C
sub_80B305C: @ 0x080B305C
	push {r4, lr}
	adds r2, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080B3078  @ gUnknown_08A2EFC0
	adds r1, r2, #0
	bl Proc_Start
	adds r1, r0, #0
	adds r1, #0x2c
	strb r4, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B3078: .4byte gUnknown_08A2EFC0

	THUMB_FUNC_END sub_80B305C

	THUMB_FUNC_START sub_80B307C
sub_80B307C: @ 0x080B307C
	push {lr}
	bl EnablePaletteSync
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B307C

	THUMB_FUNC_START sub_80B3088
sub_80B3088: @ 0x080B3088
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3, #0x2a]
	ldr r0, _080B30F8  @ gPaletteBuffer
	movs r2, #0
	adds r1, r0, #0
	adds r1, #0x80
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r0, r0, r4
	movs r4, #0xf
_080B30A0:
	strh r2, [r0]
	strh r2, [r1]
	adds r1, #2
	adds r0, #2
	subs r4, #1
	cmp r4, #0
	bge _080B30A0
	adds r0, r3, #0
	adds r0, #0x2e
	movs r1, #0
	strb r1, [r0]
	adds r2, r3, #0
	adds r2, #0x2d
	strb r1, [r2]
	movs r4, #0
	adds r7, r3, #0
	adds r7, #0x2c
	adds r6, r0, #0
	adds r5, r2, #0
_080B30C6:
	ldrb r0, [r7]
	bl GetClassData
	adds r0, #0x2c
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B30E6
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r6]
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080B30E6:
	adds r4, #1
	cmp r4, #7
	ble _080B30C6
	bl EnablePaletteSync
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B30F8: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_80B3088

	THUMB_FUNC_START sub_80B30FC
sub_80B30FC: @ 0x080B30FC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	movs r4, #0
	ldr r7, _080B31A4  @ gPaletteBuffer
	adds r5, r7, #0
	adds r5, #0x80
	lsls r2, r0, #0x10
	movs r0, #0xf8
	lsls r0, r0, #2
	adds r3, r7, r0
_080B3128:
	mov r1, ip
	adds r0, r1, r4
	movs r1, #0xf
	cmp r0, #0xf
	bgt _080B3134
	lsrs r1, r2, #0x10
_080B3134:
	movs r6, #0xf0
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	strh r1, [r3]
	ldrh r0, [r0]
	strh r0, [r5]
	adds r5, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r3, #2
	adds r4, #1
	cmp r4, #0xf
	ble _080B3128
	bl EnablePaletteSync
	movs r0, #8
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r4, #0
	ldr r6, _080B31A8  @ gUnknown_08A2F1D0
	adds r5, r0, #0
	subs r5, #8
_080B316A:
	mov r0, r9
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B318C
	ldr r1, _080B31AC  @ 0x000001FF
	ands r1, r5
	ldr r3, [r6]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #4
	movs r2, #0x50
	bl PutSpriteExt
	adds r5, #0x20
_080B318C:
	adds r6, #4
	adds r4, #1
	cmp r4, #7
	ble _080B316A
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B31A4: .4byte gPaletteBuffer
_080B31A8: .4byte gUnknown_08A2F1D0
_080B31AC: .4byte 0x000001FF

	THUMB_FUNC_END sub_80B30FC

	THUMB_FUNC_START sub_80B31B0
sub_80B31B0: @ 0x080B31B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x20
	bls _080B31CC
	movs r5, #0
	adds r0, r4, #0
	bl Proc_Break
	b _080B31D6
_080B31CC:
	lsrs r1, r1, #0x11
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B31D6:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_80B30FC
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B31B0

	THUMB_FUNC_START sub_80B31EC
sub_80B31EC: @ 0x080B31EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	movs r0, #0
	bl sub_80B30FC
	movs r0, #0
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B31EC

	THUMB_FUNC_START sub_80B3208
sub_80B3208: @ 0x080B3208
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0x2a]
	adds r0, #1
	strh r0, [r3, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x11
	cmp r0, #0x10
	bls _080B3244
	ldr r2, _080B3240  @ gLCDControlBuffer
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
	adds r0, r3, #0
	bl Proc_Break
	b _080B3258
	.align 2, 0
_080B3240: .4byte gLCDControlBuffer
_080B3244:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r3, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0x2e
	ldrb r2, [r2]
	bl sub_80B30FC
_080B3258:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B3208

	THUMB_FUNC_START sub_80B325C
sub_80B325C: @ 0x080B325C
	push {r4, lr}
	adds r2, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080B3278  @ gUnknown_08A2EFF8
	adds r1, r2, #0
	bl Proc_Start
	adds r1, r0, #0
	adds r1, #0x2c
	strb r4, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B3278: .4byte gUnknown_08A2EFF8

	THUMB_FUNC_END sub_80B325C

	THUMB_FUNC_START sub_80B327C
sub_80B327C: @ 0x080B327C
	adds r1, r0, #0
	adds r1, #0x4c
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x4e
	strh r2, [r0]
	ldr r2, _080B32A8  @ gLCDControlBuffer
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
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_080B32A8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B327C

	THUMB_FUNC_START sub_80B32AC
sub_80B32AC: @ 0x080B32AC
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
	bgt _080B32E6
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
	b _080B330A
_080B32E6:
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
_080B330A:
	bl Interpolate
	mov sl, r0
	cmp r7, #0x31
	ble _080B3318
	movs r0, #0x64
	subs r7, r0, r7
_080B3318:
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
	ble _080B33D0
	mov r0, r9
	bl Proc_Break
	ldr r2, _080B33E0  @ gLCDControlBuffer
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
_080B33D0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B33E0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B32AC

	THUMB_FUNC_START sub_80B33E4
sub_80B33E4: @ 0x080B33E4
	adds r2, r0, #0
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	adds r0, #0x18
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80B33E4

	THUMB_FUNC_START sub_80B33FC
sub_80B33FC: @ 0x080B33FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r3
	adds r4, #0x4c
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r5, #0x46
	str r5, [sp]
	movs r0, #5
	movs r1, #0x78
	bl Interpolate
	adds r7, r0, #0
	movs r0, #0
	ldrsh r3, [r4, r0]
	str r5, [sp]
	movs r0, #5
	movs r1, #0x50
	mov r2, r8
	bl Interpolate
	mov sl, r0
	adds r1, r7, #0
	subs r1, #8
	ldr r4, _080B3490  @ 0x000001FF
	ands r1, r4
	lsls r6, r6, #9
	orrs r1, r6
	mov r2, sl
	subs r2, #8
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	orrs r2, r0
	ldr r0, _080B3494  @ gUnknown_08A2F1F0
	mov r9, r0
	movs r5, #0xf0
	lsls r5, r5, #8
	str r5, [sp]
	movs r0, #4
	mov r3, r9
	bl PutSpriteExt
	movs r1, #0xe8
	subs r1, r1, r7
	ands r1, r4
	orrs r1, r6
	movs r2, #0x98
	mov r0, sl
	subs r2, r2, r0
	ands r2, r4
	mov r0, r8
	orrs r2, r0
	str r5, [sp]
	movs r0, #4
	mov r3, r9
	bl PutSpriteExt
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3490: .4byte 0x000001FF
_080B3494: .4byte gUnknown_08A2F1F0

	THUMB_FUNC_END sub_80B33FC

	THUMB_FUNC_START sub_80B3498
sub_80B3498: @ 0x080B3498
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r0, #0x64
	add r0, sl
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x46
	bgt _080B3534
	movs r1, #0x90
	lsls r1, r1, #1
	mov r2, r9
	movs r0, #0
	ldrsh r3, [r2, r0]
	movs r0, #0x46
	str r0, [sp]
	movs r0, #4
	movs r2, #0x10
	bl Interpolate
	adds r7, r0, #0
	ldr r4, _080B3698  @ gSinLookup
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x15
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r1, r9
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080B3534:
	mov r0, sl
	movs r1, #0x15
	movs r2, #0xd7
	movs r3, #0x11
	bl sub_80B33FC
	movs r2, #0x66
	add r2, sl
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x46
	bgt _080B35CA
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r0, #0
	movs r0, #0x46
	str r0, [sp]
	movs r0, #0
	movs r2, #0x10
	bl Interpolate
	adds r7, r0, #0
	ldr r4, _080B3698  @ gSinLookup
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x16
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r1, r9
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080B35CA:
	mov r0, sl
	movs r1, #0x16
	movs r2, #0xc0
	movs r3, #0x20
	bl sub_80B33FC
	movs r2, #0x68
	add r2, sl
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x46
	bgt _080B3660
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r0, #0
	movs r0, #0x46
	str r0, [sp]
	movs r0, #1
	movs r2, #0x10
	bl Interpolate
	adds r7, r0, #0
	ldr r4, _080B3698  @ gSinLookup
	movs r1, #0x80
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x17
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r1, r9
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080B3660:
	mov r0, sl
	movs r1, #0x17
	movs r2, #0xa9
	movs r3, #0x2f
	bl sub_80B33FC
	mov r0, sl
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x46
	ble _080B3686
	mov r0, sl
	bl Proc_Break
_080B3686:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3698: .4byte gSinLookup

	THUMB_FUNC_END sub_80B3498

	THUMB_FUNC_START sub_80B369C
sub_80B369C: @ 0x080B369C
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl GetClassData
	cmp r4, #0
	bne _080B36B6
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r4, r0, #0
	b _080B36BE
_080B36B6:
	ldrh r0, [r0]
	adds r1, r4, #0
	bl GetStringFromIndexInBuffer
_080B36BE:
	ldr r1, _080B36D8  @ gUnknown_08205ED0
	adds r0, r4, #0
	bl strstr
	cmp r0, #0
	beq _080B36D0
	ldr r1, _080B36DC  @ gUnknown_08205ED4
	bl sprintf
_080B36D0:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B36D8: .4byte gUnknown_08205ED0
_080B36DC: .4byte gUnknown_08205ED4

	THUMB_FUNC_END sub_80B369C

	THUMB_FUNC_START sub_80B36E0
sub_80B36E0: @ 0x080B36E0
	push {lr}
	ldr r0, _080B3708  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x6d
	bhi _080B3718
	ldr r3, _080B370C  @ 0x04000008
	ldrh r2, [r3]
	ldr r1, _080B3710  @ 0x0000FFFC
	adds r0, r1, #0
	ands r0, r2
	adds r0, #2
	strh r0, [r3]
	ldr r2, _080B3714  @ 0x0400000C
	ldrh r0, [r2]
	ands r1, r0
	adds r1, #2
	b _080B372E
	.align 2, 0
_080B3708: .4byte 0x04000006
_080B370C: .4byte 0x04000008
_080B3710: .4byte 0x0000FFFC
_080B3714: .4byte 0x0400000C
_080B3718:
	ldr r3, _080B3734  @ 0x04000008
	ldrh r2, [r3]
	ldr r1, _080B3738  @ 0x0000FFFC
	adds r0, r1, #0
	ands r0, r2
	adds r0, #1
	strh r0, [r3]
	ldr r2, _080B373C  @ 0x0400000C
	ldrh r0, [r2]
	ands r1, r0
	adds r1, #1
_080B372E:
	strh r1, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080B3734: .4byte 0x04000008
_080B3738: .4byte 0x0000FFFC
_080B373C: .4byte 0x0400000C

	THUMB_FUNC_END sub_80B36E0

	THUMB_FUNC_START sub_80B3740
sub_80B3740: @ 0x080B3740
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
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
	ldr r0, _080B37F8  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r6, #0x20
	orrs r0, r6
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x2d
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r1, #0x2c
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	movs r2, #0x34
	add r2, ip
	mov r8, r2
	ldrb r1, [r2]
	movs r2, #1
	orrs r1, r2
	movs r0, #2
	orrs r1, r0
	movs r5, #4
	orrs r1, r5
	movs r4, #8
	orrs r1, r4
	movs r3, #0x10
	orrs r1, r3
	mov r7, ip
	adds r7, #0x36
	ldrb r0, [r7]
	orrs r0, r2
	movs r2, #3
	negs r2, r2
	ands r0, r2
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	orrs r1, r6
	mov r2, r8
	strb r1, [r2]
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r7]
	mov r1, ip
	adds r1, #0x3d
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B37F8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80B3740

	THUMB_FUNC_START sub_80B37FC
sub_80B37FC: @ 0x080B37FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r9, r0
	movs r0, #0
	str r0, [sp, #0x34]
	add r1, sp, #4
	ldr r0, _080B3830  @ gUnknown_08205EDC
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r1, r9
	ldr r0, [r1, #0x34]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x38]
	movs r7, #4
	b _080B3836
	.align 2, 0
_080B3830: .4byte gUnknown_08205EDC
_080B3834:
	adds r7, #1
_080B3836:
	cmp r7, #7
	bgt _080B3852
	mov r2, r9
	ldr r0, [r2, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	adds r0, #0x2c
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B3834
	movs r3, #1
	str r3, [sp, #0x34]
_080B3852:
	movs r0, #0
	bl SetupBackgrounds
	movs r0, #0
	mov r4, r9
	strh r0, [r4, #0x2a]
	strh r0, [r4, #0x2c]
	mov r1, r9
	adds r1, #0x46
	movs r0, #0xfa
	strb r0, [r1]
	ldr r6, _080B3A28  @ gBG0TilemapBuffer
	adds r0, r6, #0
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B3A2C  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B3A30  @ gBG2TilemapBuffer
	mov r8, r0
	movs r1, #0
	bl BG_Fill
	ldr r4, _080B3A34  @ gLCDControlBuffer
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
	ldrb r1, [r4]
	movs r0, #8
	negs r0, r0
	ands r0, r1
	strb r0, [r4]
	bl SetDefaultColorEffects
	bl sub_8003D20
	bl Font_InitForUIDefault
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	movs r3, #2
	orrs r0, r3
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	orrs r1, r3
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
	ldr r4, _080B3A38  @ gUnknown_08A30E2C
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B3A3C  @ gUnknown_08A3593C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0xe0
	bl CopyToPaletteBuffer
	ldr r0, _080B3A40  @ gBG3TilemapBuffer
	ldr r1, _080B3A44  @ gUnknown_08A35488
	movs r2, #0xe0
	lsls r2, r2, #7
	bl CallARM_FillTileRect
	ldr r4, _080B3A48  @ gUnknown_08A30800
	movs r0, #2
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	adds r1, r1, r5
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B3A4C  @ gUiFramePaletteA
	movs r1, #0xc0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r1, _080B3A50  @ gUnknown_08A30978
	movs r2, #0xc0
	lsls r2, r2, #7
	mov r0, r8
	bl CallARM_FillTileRect
	movs r0, #0xf
	bl BG_EnableSyncByMask
	adds r0, r6, #0
	movs r1, #0
	bl BG_Fill
	mov r1, r9
	ldr r0, [r1, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	ldrb r0, [r0, #0xb]
	mov r4, r9
	adds r4, #0x40
	strb r0, [r4]
	mov r2, r9
	ldr r0, [r2, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	ldrb r0, [r0, #0xc]
	mov r1, r9
	adds r1, #0x41
	strb r0, [r1]
	mov r3, r9
	ldr r0, [r3, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	ldrb r0, [r0, #0xd]
	mov r1, r9
	adds r1, #0x42
	strb r0, [r1]
	mov r1, r9
	ldr r0, [r1, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	ldrb r0, [r0, #0xe]
	mov r1, r9
	adds r1, #0x43
	strb r0, [r1]
	mov r2, r9
	ldr r0, [r2, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	ldrb r1, [r0, #0xf]
	mov r0, r9
	adds r0, #0x44
	strb r1, [r0]
	mov r3, r9
	ldr r0, [r3, #0x34]
	ldrb r0, [r0, #5]
	bl GetClassData
	ldrb r0, [r0, #0x10]
	mov r1, r9
	adds r1, #0x45
	strb r0, [r1]
	movs r7, #0
	str r4, [sp, #0x38]
	movs r4, #0x4a
	adds r4, r4, r6
	mov sl, r4
	adds r6, #0x42
	mov r8, r6
	movs r6, #0
	movs r4, #0
_080B39EC:
	ldr r0, _080B3A54  @ gUnknown_0201FB28
	adds r5, r4, r0
	adds r0, r5, #0
	movs r1, #3
	bl Text_Init
	adds r0, r5, #0
	bl Text_Clear
	adds r0, r5, #0
	movs r1, #3
	bl Text_SetColorId
	adds r0, r5, #0
	movs r1, #0
	bl Text_SetXCursor
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _080B3A58
	add r0, sp, #0x1c
	adds r0, r0, r6
	ldr r0, [r0]
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r5, #0
	bl Text_AppendString
	b _080B3A6C
	.align 2, 0
_080B3A28: .4byte gBG0TilemapBuffer
_080B3A2C: .4byte gBG1TilemapBuffer
_080B3A30: .4byte gBG2TilemapBuffer
_080B3A34: .4byte gLCDControlBuffer
_080B3A38: .4byte gUnknown_08A30E2C
_080B3A3C: .4byte gUnknown_08A3593C
_080B3A40: .4byte gBG3TilemapBuffer
_080B3A44: .4byte gUnknown_08A35488
_080B3A48: .4byte gUnknown_08A30800
_080B3A4C: .4byte gUiFramePaletteA
_080B3A50: .4byte gUnknown_08A30978
_080B3A54: .4byte gUnknown_0201FB28
_080B3A58:
	mov r0, sp
	adds r0, r0, r6
	adds r0, #4
	ldr r0, [r0]
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r5, #0
	bl Text_AppendString
_080B3A6C:
	ldr r0, _080B3BD0  @ gUnknown_0201FB28
	adds r0, r4, r0
	mov r1, r8
	bl Text_Draw
	ldr r1, [sp, #0x38]
	adds r0, r1, r7
	ldrb r2, [r0]
	mov r0, sl
	movs r1, #0
	bl sub_8004B88
	movs r2, #0x80
	add sl, r2
	add r8, r2
	adds r6, #4
	adds r4, #8
	adds r7, #1
	cmp r7, #5
	ble _080B39EC
	movs r5, #0
	mov r0, r9
	bl sub_80B40D0
	mov r3, r9
	str r0, [r3, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #2
	movs r2, #0
	bl sub_800680C
	bl sub_8006978
	bl sub_8008250
	bl sub_8006A7C
	mov r4, r9
	ldr r0, [r4, #0x34]
	ldr r2, [r0]
	movs r0, #2
	movs r1, #0xf
	bl sub_8006A30
	movs r0, #0
	bl sub_8006B10
	movs r0, #1
	bl sub_8006AA8
	movs r0, #2
	bl sub_8006AA8
	movs r0, #4
	bl sub_8006AA8
	movs r0, #8
	bl sub_8006AA8
	movs r0, #0x40
	bl sub_8006AA8
	movs r0, #4
	bl sub_8006AF0
	ldr r0, _080B3BD4  @ gUnknown_02000000
	ldr r3, [r4, #0x34]
	movs r1, #4
	ldrsb r1, [r3, r1]
	strh r1, [r0, #8]
	movs r1, #0x82
	lsls r1, r1, #1
	strh r1, [r0, #2]
	movs r1, #0x58
	strh r1, [r0, #4]
	ldrb r1, [r3, #7]
	strh r1, [r0, #6]
	movs r1, #6
	strh r1, [r0, #0xa]
	ldrb r1, [r3, #6]
	strb r1, [r0, #1]
	movs r4, #1
	strh r4, [r0, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	movs r1, #2
	strh r1, [r0, #0x10]
	ldr r1, _080B3BD8  @ gUnknown_02000038
	str r1, [r0, #0x1c]
	ldr r1, _080B3BDC  @ gUnknown_02002038
	str r1, [r0, #0x24]
	ldr r1, _080B3BE0  @ gUnknown_02007838
	str r1, [r0, #0x20]
	ldr r1, _080B3BE4  @ gUnknown_020078D8
	str r1, [r0, #0x28]
	ldr r1, _080B3BE8  @ gUnknown_0200A2D8
	str r1, [r0, #0x30]
	ldrb r2, [r3, #8]
	strh r2, [r1]
	ldrb r2, [r3, #9]
	strh r2, [r1, #2]
	ldrb r2, [r3, #0xa]
	strh r2, [r1, #4]
	ldrb r2, [r3, #0xb]
	strh r2, [r1, #6]
	ldrb r2, [r3, #0xc]
	strh r2, [r1, #8]
	movs r2, #0xa0
	lsls r2, r2, #2
	strh r2, [r1, #0xe]
	movs r3, #0xf
	strh r3, [r1, #0x10]
	subs r2, #0x80
	strh r2, [r1, #0xa]
	strh r3, [r1, #0xc]
	strh r4, [r1, #0x12]
	ldr r2, _080B3BEC  @ gBG1TilemapBuffer
	str r2, [r1, #0x14]
	ldr r2, _080B3BF0  @ gUnknown_0200A300
	str r2, [r1, #0x18]
	ldr r2, _080B3BF4  @ gUnknown_0200C300
	str r2, [r1, #0x1c]
	ldr r2, _080B3BF8  @ gUnknown_0200CB00
	str r2, [r1, #0x20]
	ldr r2, _080B3BFC  @ sub_80B3740
	str r2, [r1, #0x24]
	bl sub_805AA00
	ldr r4, _080B3C00  @ gUnknown_0201DB00
	mov r0, r9
	ldr r1, [r0, #0x34]
	ldrb r0, [r1, #0xd]
	strh r0, [r4]
	movs r0, #0xa
	strh r0, [r4, #2]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #4]
	ldrb r0, [r1, #0xe]
	strh r0, [r4, #6]
	movs r0, #0xb
	strh r0, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	strh r5, [r4, #0xc]
	ldr r0, _080B3C04  @ 0x0000FFFF
	strh r0, [r4, #0xe]
	ldr r0, _080B3C08  @ 0x06010000
	str r0, [r4, #0x1c]
	ldr r0, _080B3C0C  @ gUnknown_0201DB28
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_805AA68
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0x68
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xd0
	movs r2, #0x68
	bl sub_805AE40
	ldr r0, _080B3C10  @ sub_80B36E0
	bl SetPrimaryHBlankHandler
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3BD0: .4byte gUnknown_0201FB28
_080B3BD4: .4byte gUnknown_02000000
_080B3BD8: .4byte gUnknown_02000038
_080B3BDC: .4byte gUnknown_02002038
_080B3BE0: .4byte gUnknown_02007838
_080B3BE4: .4byte gUnknown_020078D8
_080B3BE8: .4byte gUnknown_0200A2D8
_080B3BEC: .4byte gBG1TilemapBuffer
_080B3BF0: .4byte gUnknown_0200A300
_080B3BF4: .4byte gUnknown_0200C300
_080B3BF8: .4byte gUnknown_0200CB00
_080B3BFC: .4byte sub_80B3740
_080B3C00: .4byte gUnknown_0201DB00
_080B3C04: .4byte 0x0000FFFF
_080B3C08: .4byte 0x06010000
_080B3C0C: .4byte gUnknown_0201DB28
_080B3C10: .4byte sub_80B36E0

	THUMB_FUNC_END sub_80B37FC

	THUMB_FUNC_START sub_80B3C14
sub_80B3C14: @ 0x080B3C14
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2c]
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bne _080B3C44
	bl sub_80B2988
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3C3C
	movs r0, #0x3c
	bl Sound_FadeOutBGM
	adds r0, r4, #0
	movs r1, #7
	bl Proc_Goto
	b _080B3C44
_080B3C3C:
	adds r0, r4, #0
	movs r1, #4
	bl Proc_Goto
_080B3C44:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B3C14

	THUMB_FUNC_START sub_80B3C50
sub_80B3C50: @ 0x080B3C50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x46
	adds r0, r0, r7
	mov r9, r0
	ldrh r1, [r7, #0x2a]
	movs r0, #0x50
	subs r0, r0, r1
	movs r1, #0xe
	bl __divsi3
	mvns r0, r0
	mov r1, r9
	ldrb r1, [r1]
	adds r0, r0, r1
	mov r2, r9
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb3
	bhi _080B3C88
	movs r0, #0xb4
	strb r0, [r2]
_080B3C88:
	ldr r0, _080B3D38  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	orrs r0, r2
	movs r1, #2
	mov sl, r1
	mov r2, sl
	orrs r0, r2
	movs r5, #4
	orrs r0, r5
	movs r4, #8
	orrs r0, r4
	movs r3, #0x10
	orrs r0, r3
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x2d
	movs r2, #0
	strb r2, [r0]
	ldrh r6, [r7, #0x2a]
	adds r1, r6, #0
	movs r0, #0x50
	subs r0, r0, r1
	mov r2, ip
	adds r2, #0x31
	strb r0, [r2]
	subs r2, #5
	movs r0, #0xf0
	strb r0, [r2]
	adds r1, #0x50
	mov r0, ip
	adds r0, #0x30
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x34
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	mov r2, sl
	orrs r0, r2
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x36
	ldrb r1, [r2]
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
	strb r0, [r2]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bne _080B3D40
	movs r0, #0xb4
	mov r1, r9
	strb r0, [r1]
	movs r2, #0
	strh r2, [r7, #0x2a]
	adds r0, r7, #0
	bl Proc_Break
	ldr r0, _080B3D3C  @ sub_80B3C14
	adds r1, r7, #0
	bl Get6CDifferedLoop6C
	b _080B3D44
	.align 2, 0
_080B3D38: .4byte gLCDControlBuffer
_080B3D3C: .4byte sub_80B3C14
_080B3D40:
	adds r0, r6, #4
	strh r0, [r7, #0x2a]
_080B3D44:
	ldr r0, _080B3D7C  @ gUnknown_02000000
	adds r4, r7, #0
	adds r4, #0x46
	ldrb r1, [r4]
	movs r2, #0x58
	bl sub_805A940
	ldr r0, _080B3D80  @ gUnknown_0201DB00
	ldrb r3, [r4]
	adds r1, r3, #0
	subs r1, #0x30
	adds r3, #0x30
	movs r2, #0x68
	str r2, [sp]
	bl sub_805AE40
	ldr r0, [r7, #0x3c]
	movs r1, #0x64
	bl sub_80B40E4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3D7C: .4byte gUnknown_02000000
_080B3D80: .4byte gUnknown_0201DB00

	THUMB_FUNC_END sub_80B3C50

	THUMB_FUNC_START sub_80B3D84
sub_80B3D84: @ 0x080B3D84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	ldrb r0, [r0]
	cmp r0, #8
	bhi _080B3E0A
	lsls r0, r0, #2
	ldr r1, _080B3D9C  @ _080B3DA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B3D9C: .4byte _080B3DA0
_080B3DA0: @ jump table
	.4byte _080B3DC4 @ case 0
	.4byte _080B3DCE @ case 1
	.4byte _080B3DD8 @ case 2
	.4byte _080B3DE4 @ case 3
	.4byte _080B3DF0 @ case 4
	.4byte _080B3E0A @ case 5
	.4byte _080B3E00 @ case 6
	.4byte _080B3DE4 @ case 7
	.4byte _080B3E0A @ case 8
_080B3DC4:
	adds r0, r4, #0
	movs r1, #0xa
	bl Proc_Goto
	b _080B3E0A
_080B3DCE:
	ldr r0, _080B3DD4  @ gUnknown_02000000
	movs r1, #0
	b _080B3DF4
	.align 2, 0
_080B3DD4: .4byte gUnknown_02000000
_080B3DD8:
	ldr r0, _080B3DE0  @ gUnknown_02000000
	movs r1, #1
	b _080B3DF4
	.align 2, 0
_080B3DE0: .4byte gUnknown_02000000
_080B3DE4:
	ldr r0, _080B3DEC  @ gUnknown_02000000
	bl sub_805A990
	b _080B3E0A
	.align 2, 0
_080B3DEC: .4byte gUnknown_02000000
_080B3DF0:
	ldr r0, _080B3DFC  @ gUnknown_02000000
	movs r1, #2
_080B3DF4:
	strh r1, [r0, #0xa]
	bl sub_805A7B4
	b _080B3E0A
	.align 2, 0
_080B3DFC: .4byte gUnknown_02000000
_080B3E00:
	ldr r0, _080B3E14  @ gUnknown_02000000
	movs r1, #4
	strh r1, [r0, #0xa]
	bl sub_805A7B4
_080B3E0A:
	movs r0, #0
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3E14: .4byte gUnknown_02000000

	THUMB_FUNC_END sub_80B3D84

	THUMB_FUNC_START sub_80B3E18
sub_80B3E18: @ 0x080B3E18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #7
	bhi _080B3E90
	lsls r0, r0, #2
	ldr r1, _080B3E30  @ _080B3E34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B3E30: .4byte _080B3E34
_080B3E34: @ jump table
	.4byte _080B3E54 @ case 0
	.4byte _080B3E54 @ case 1
	.4byte _080B3E54 @ case 2
	.4byte _080B3E54 @ case 3
	.4byte _080B3E5A @ case 4
	.4byte _080B3E54 @ case 5
	.4byte _080B3E54 @ case 6
	.4byte _080B3E78 @ case 7
_080B3E54:
	ldr r0, [r4, #0x38]
	adds r0, #2
	b _080B3E6E
_080B3E5A:
	ldrh r0, [r4, #0x2a]
	adds r0, #1
	strh r0, [r4, #0x2a]
	ldr r1, [r4, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r1, #1]
	cmp r0, r2
	bcc _080B3E90
	adds r0, r1, #2
_080B3E6E:
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl Proc_Break
	b _080B3E90
_080B3E78:
	ldr r0, _080B3E98  @ gUnknown_02000000
	bl sub_805A96C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3E90
	ldr r0, [r4, #0x38]
	adds r0, #2
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl Proc_Break
_080B3E90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3E98: .4byte gUnknown_02000000

	THUMB_FUNC_END sub_80B3E18

	THUMB_FUNC_START sub_80B3E9C
sub_80B3E9C: @ 0x080B3E9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl SetPrimaryHBlankHandler
	bl sub_8006A7C
	bl sub_806E920
	ldr r0, _080B3ED4  @ gUnknown_0201DB00
	bl sub_805AE14
	bl sub_806E904
	ldr r0, _080B3ED8  @ gUnknown_02000000
	bl sub_805AA28
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _080B3EC8
	bl Proc_End
_080B3EC8:
	movs r0, #2
	bl sub_80B29B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3ED4: .4byte gUnknown_0201DB00
_080B3ED8: .4byte gUnknown_02000000

	THUMB_FUNC_END sub_80B3E9C

	THUMB_FUNC_START sub_80B3EDC
sub_80B3EDC: @ 0x080B3EDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080B3EF8  @ gUnknown_08A2F088
	adds r1, r4, #0
	bl Proc_Start
	str r4, [r0, #0x30]
	str r5, [r0, #0x34]
	movs r1, #0
	str r1, [r0, #0x3c]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B3EF8: .4byte gUnknown_08A2F088

	THUMB_FUNC_END sub_80B3EDC

	THUMB_FUNC_START sub_80B3EFC
sub_80B3EFC: @ 0x080B3EFC
	push {r4, r5, lr}
	sub sp, #0x20
	adds r2, r0, #0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x30]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0x2a]
	adds r4, r2, #0
	adds r4, #0x34
	strb r1, [r4]
	adds r1, r2, #0
	adds r1, #0x35
	movs r0, #0x64
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	ldr r0, [r0, #0x34]
	ldrb r0, [r0, #5]
	mov r1, sp
	bl sub_80B369C
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B3F66
	adds r5, r4, #0
	mov r4, sp
_080B3F36:
	ldrb r0, [r4]
	bl sub_80B4108
	adds r1, r0, #0
	cmp r1, #0
	beq _080B3F4E
	ldrb r0, [r1, #5]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	ldrb r1, [r5]
	adds r0, r0, r1
	b _080B3F52
_080B3F4E:
	ldrb r0, [r5]
	adds r0, #4
_080B3F52:
	strb r0, [r5]
	adds r4, #1
	mov r0, sp
	adds r0, #0xd
	cmp r4, r0
	bgt _080B3F66
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080B3F36
_080B3F66:
	ldr r0, _080B3F84  @ gUnknown_08A36338
	ldr r1, _080B3F88  @ 0x06010000
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B3F8C  @ gUnknown_08A372C0
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x40
	bl CopyToPaletteBuffer
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3F84: .4byte gUnknown_08A36338
_080B3F88: .4byte 0x06010000
_080B3F8C: .4byte gUnknown_08A372C0

	THUMB_FUNC_END sub_80B3EFC

	THUMB_FUNC_START sub_80B3F90
sub_80B3F90: @ 0x080B3F90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	movs r0, #0
	mov r9, r0
_080B3FA2:
	mov r1, sl
	ldr r0, [r1, #0x30]
	adds r0, #0x40
	add r0, r9
	ldrb r5, [r0]
	cmp r5, #0x1d
	bls _080B3FB2
	movs r5, #0x1e
_080B3FB2:
	movs r7, #0
	lsrs r0, r5, #2
	mov r2, r9
	adds r2, #1
	str r2, [sp, #0x2c]
	mov r3, sl
	adds r3, #0x34
	str r3, [sp, #0x24]
	mov r1, sl
	adds r1, #0x35
	str r1, [sp, #0x28]
	cmp r7, r0
	bge _080B3FF6
	mov r8, r0
	movs r4, #0x30
	mov r2, r9
	lsls r6, r2, #4
	mov r7, r8
_080B3FD6:
	ldr r0, _080B4098  @ gUnknown_08A2F180
	ldr r3, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #0xd
	adds r1, r4, #0
	adds r2, r6, #0
	adds r2, #0x10
	bl PutSpriteExt
	adds r4, #8
	subs r7, #1
	cmp r7, #0
	bne _080B3FD6
	mov r7, r8
_080B3FF6:
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080B401E
	lsls r1, r7, #3
	adds r1, #0x30
	mov r3, r9
	lsls r2, r3, #4
	adds r2, #0x10
	subs r0, #1
	lsls r0, r0, #2
	ldr r3, _080B4098  @ gUnknown_08A2F180
	adds r0, r0, r3
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #0xd
	bl PutSpriteExt
_080B401E:
	ldr r0, [sp, #0x2c]
	mov r9, r0
	cmp r0, #5
	ble _080B3FA2
	ldr r2, [sp, #0x24]
	ldrb r1, [r2]
	movs r0, #0x78
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r3, [sp, #0x28]
	ldrb r3, [r3]
	adds r7, r0, r3
	mov r1, sl
	ldr r0, [r1, #0x30]
	ldr r0, [r0, #0x34]
	ldrb r0, [r0, #5]
	add r1, sp, #4
	bl sub_80B369C
	movs r2, #0
	mov r9, r2
	add r0, sp, #4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B40B2
	add r5, sp, #4
_080B405A:
	ldrb r0, [r5]
	bl sub_80B4108
	adds r4, r0, #0
	cmp r4, #0
	beq _080B409C
	ldr r3, [r4]
	cmp r3, #0
	beq _080B409E
	movs r1, #4
	ldrsb r1, [r4, r1]
	subs r1, r7, r1
	subs r1, #2
	movs r0, #6
	ldrsb r0, [r4, r0]
	movs r2, #5
	subs r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #4
	bl PutSpriteExt
	movs r0, #5
	ldrsb r0, [r4, r0]
	movs r1, #4
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r7, r7, r0
	b _080B409E
	.align 2, 0
_080B4098: .4byte gUnknown_08A2F180
_080B409C:
	adds r7, #4
_080B409E:
	adds r5, #1
	movs r3, #1
	add r9, r3
	mov r0, r9
	cmp r0, #0xd
	bgt _080B40B2
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080B405A
_080B40B2:
	mov r1, sl
	ldrh r0, [r1, #0x2a]
	cmp r0, #0xfe
	bhi _080B40BE
	adds r0, #1
	strh r0, [r1, #0x2a]
_080B40BE:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B3F90

	THUMB_FUNC_START sub_80B40D0
sub_80B40D0: @ 0x080B40D0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B40E0  @ gUnknown_08A2F138
	bl Proc_Start
	pop {r1}
	bx r1
	.align 2, 0
_080B40E0: .4byte gUnknown_08A2F138

	THUMB_FUNC_END sub_80B40D0

	THUMB_FUNC_START sub_80B40E4
sub_80B40E4: @ 0x080B40E4
	adds r0, #0x35
	strb r1, [r0]
	bx lr

	THUMB_FUNC_END sub_80B40E4

	THUMB_FUNC_START sub_80B40EC
sub_80B40EC: @ 0x080B40EC
	ldr r3, _080B4100  @ gUnknown_08A2FBE0
	ldr r2, _080B4104  @ gUnknown_08A2FBD4
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080B4100: .4byte gUnknown_08A2FBE0
_080B4104: .4byte gUnknown_08A2FBD4

	THUMB_FUNC_END sub_80B40EC

	THUMB_FUNC_START sub_80B4108
sub_80B4108: @ 0x080B4108
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	adds r0, r1, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _080B4128
	lsls r0, r1, #3
	ldr r1, _080B4124  @ gUnknown_08A2FDD0
	adds r0, r0, r1
	b _080B414A
	.align 2, 0
_080B4124: .4byte gUnknown_08A2FDD0
_080B4128:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _080B4140
	lsls r0, r1, #3
	ldr r1, _080B413C  @ gUnknown_08A2FE00
	adds r0, r0, r1
	b _080B414A
	.align 2, 0
_080B413C: .4byte gUnknown_08A2FE00
_080B4140:
	cmp r2, #0x2e
	beq _080B4148
	movs r0, #0
	b _080B414A
_080B4148:
	ldr r0, _080B4150  @ gUnknown_08A301A8
_080B414A:
	pop {r1}
	bx r1
	.align 2, 0
_080B4150: .4byte gUnknown_08A301A8

	THUMB_FUNC_END sub_80B4108

	THUMB_FUNC_START Shop6C_GetPortraitIndex
Shop6C_GetPortraitIndex: @ 0x080B4154
	ldr r1, _080B4164  @ gUnknown_08A3918C
	adds r0, #0x61
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080B4164: .4byte gUnknown_08A3918C

	THUMB_FUNC_END Shop6C_GetPortraitIndex

	THUMB_FUNC_START sub_80B4168
sub_80B4168: @ 0x080B4168
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080B41BC  @ gUnknown_08A39180
	adds r0, r5, #0
	adds r0, #0x61
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r4, r0
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
	.align 2, 0
_080B41BC: .4byte gUnknown_08A39180

	THUMB_FUNC_END sub_80B4168

	THUMB_FUNC_START sub_80B41C0
sub_80B41C0: @ 0x080B41C0
	push {lr}
	adds r3, r1, #0
	movs r1, #0
	movs r2, #0
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B41C0

	THUMB_FUNC_START sub_80B41D0
sub_80B41D0: @ 0x080B41D0
	push {lr}
	movs r2, #0
	movs r3, #0
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B41D0

	THUMB_FUNC_START MakeShopArmory
MakeShopArmory: @ 0x080B41E0
	push {lr}
	adds r3, r2, #0
	movs r2, #0
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END MakeShopArmory

	THUMB_FUNC_START sub_80B41F0
sub_80B41F0: @ 0x080B41F0
	push {lr}
	movs r2, #1
	movs r3, #0
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B41F0

	THUMB_FUNC_START MakeShopVendor
MakeShopVendor: @ 0x080B4200
	push {lr}
	adds r3, r2, #0
	movs r2, #1
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END MakeShopVendor

	THUMB_FUNC_START sub_80B4210
sub_80B4210: @ 0x080B4210
	push {lr}
	movs r2, #2
	movs r3, #0
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4210

	THUMB_FUNC_START sub_80B4220
sub_80B4220: @ 0x080B4220
	push {lr}
	adds r3, r2, #0
	movs r2, #2
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4220

	THUMB_FUNC_START sub_80B4230
sub_80B4230: @ 0x080B4230
	push {lr}
	movs r2, #0
	movs r3, #0
	bl MakeShop
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4230

	THUMB_FUNC_START MakeShop
MakeShop: @ 0x080B4240
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r6, r1, #0
	adds r4, r3, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl EndPlayerPhaseSideWindows
	cmp r4, #0
	beq _080B4268
	ldr r0, _080B4264  @ gUnknown_08A39210
	adds r1, r4, #0
	bl Proc_StartBlocking
	b _080B4270
	.align 2, 0
_080B4264: .4byte gUnknown_08A39210
_080B4268:
	ldr r0, _080B42AC  @ gUnknown_08A39210
	movs r1, #3
	bl Proc_Start
_080B4270:
	adds r7, r0, #0
	adds r0, r7, #0
	adds r0, #0x61
	strb r5, [r0]
	mov r0, r8
	str r0, [r7, #0x2c]
	ldr r5, _080B42B0  @ gUnknown_08A39170
	cmp r6, #0
	beq _080B4284
	adds r5, r6, #0
_080B4284:
	adds r4, r7, #0
	adds r4, #0x30
	movs r6, #0x14
_080B428A:
	ldrh r0, [r5]
	adds r5, #2
	bl MakeNewItem
	strh r0, [r4]
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _080B428A
	adds r0, r7, #0
	bl sub_80B42B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B42AC: .4byte gUnknown_08A39210
_080B42B0: .4byte gUnknown_08A39170

	THUMB_FUNC_END MakeShop

	THUMB_FUNC_START sub_80B42B4
sub_80B42B4: @ 0x080B42B4
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _080B42CE
	adds r1, r4, #0
	adds r1, #0x30
_080B42C4:
	adds r1, #2
	adds r2, #1
	ldrh r0, [r1]
	cmp r0, #0
	bne _080B42C4
_080B42CE:
	adds r0, r4, #0
	adds r0, #0x5a
	strb r2, [r0]
	ldr r0, [r4, #0x2c]
	bl GetUnitItemCount
	adds r1, r4, #0
	adds r1, #0x5b
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B42B4

	THUMB_FUNC_START sub_80B42E8
sub_80B42E8: @ 0x080B42E8
	push {lr}
	ldr r0, _080B4304  @ gUnknown_08A39210
	bl Proc_Find
	adds r1, r0, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B4300
	adds r0, r1, #0
	bl sub_80B4F04
_080B4300:
	pop {r0}
	bx r0
	.align 2, 0
_080B4304: .4byte gUnknown_08A39210

	THUMB_FUNC_END sub_80B42E8

	THUMB_FUNC_START sub_80B4308
sub_80B4308: @ 0x080B4308
	push {lr}
	ldr r0, _080B4324  @ gUnknown_08A39210
	bl Proc_Find
	adds r1, r0, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #1
	beq _080B4320
	adds r0, r1, #0
	bl sub_80B505C
_080B4320:
	pop {r0}
	bx r0
	.align 2, 0
_080B4324: .4byte gUnknown_08A39210

	THUMB_FUNC_END sub_80B4308

	THUMB_FUNC_START sub_80B4328
sub_80B4328: @ 0x080B4328
	bx lr

	THUMB_FUNC_END sub_80B4328

	THUMB_FUNC_START sub_80B432C
sub_80B432C: @ 0x080B432C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _080B4340
	adds r0, r1, #0
	movs r1, #0xd
	bl Proc_Goto
	b _080B4346
_080B4340:
	ldr r0, _080B434C  @ 0x0000089A
	bl sub_80B4168
_080B4346:
	pop {r0}
	bx r0
	.align 2, 0
_080B434C: .4byte 0x0000089A

	THUMB_FUNC_END sub_80B432C

	THUMB_FUNC_START sub_80B4350
sub_80B4350: @ 0x080B4350
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8008A00
	cmp r0, #1
	beq _080B436E
	cmp r0, #1
	ble _080B4364
	cmp r0, #2
	beq _080B4378
_080B4364:
	adds r0, r4, #0
	movs r1, #0xc
	bl Proc_Goto
	b _080B43A0
_080B436E:
	adds r0, r4, #0
	movs r1, #1
	bl Proc_Goto
	b _080B43A0
_080B4378:
	ldr r0, [r4, #0x2c]
	bl GetUnitItemCount
	cmp r0, #0
	bne _080B4398
	ldr r0, _080B4394  @ 0x000008AC
	adds r1, r4, #0
	bl sub_80B4168
	adds r0, r4, #0
	movs r1, #7
	bl Proc_Goto
	b _080B43A0
	.align 2, 0
_080B4394: .4byte 0x000008AC
_080B4398:
	adds r0, r4, #0
	movs r1, #4
	bl Proc_Goto
_080B43A0:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4350

	THUMB_FUNC_START sub_80B43A8
sub_80B43A8: @ 0x080B43A8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B43B8  @ 0x000008A3
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B43B8: .4byte 0x000008A3

	THUMB_FUNC_END sub_80B43A8

	THUMB_FUNC_START sub_80B43BC
sub_80B43BC: @ 0x080B43BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #6
	bl DivRem
	adds r4, r0, #0
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	movs r0, #4
	bl BG_EnableSyncByMask
	lsls r4, r4, #3
	ldr r0, _080B4410  @ gUnknown_0203EF68
	adds r4, r4, r0
	adds r0, r4, #0
	bl Text_Clear
	lsls r5, r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r0, r5
	ldrh r1, [r0]
	cmp r1, #0
	beq _080B4408
	ldr r2, [r6, #0x2c]
	movs r3, #0x1f
	ands r3, r5
	lsls r3, r3, #6
	ldr r0, _080B4414  @ gUnknown_02023CB6
	adds r3, r3, r0
	adds r0, r4, #0
	bl sub_80B5164
_080B4408:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B4410: .4byte gUnknown_0203EF68
_080B4414: .4byte gUnknown_02023CB6

	THUMB_FUNC_END sub_80B43BC

	THUMB_FUNC_START sub_80B4418
sub_80B4418: @ 0x080B4418
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #6
	bl DivRem
	adds r4, r0, #0
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	movs r0, #4
	bl BG_EnableSyncByMask
	lsls r4, r4, #3
	ldr r0, _080B446C  @ gUnknown_0203EF68
	adds r4, r4, r0
	adds r0, r4, #0
	bl Text_Clear
	lsls r5, r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r0, r5
	ldrh r1, [r0]
	cmp r1, #0
	beq _080B4464
	ldr r2, [r6, #0x2c]
	movs r3, #0x1f
	ands r3, r5
	lsls r3, r3, #6
	ldr r0, _080B4470  @ gUnknown_02023CB6
	adds r3, r3, r0
	adds r0, r4, #0
	bl sub_80B51C0
_080B4464:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B446C: .4byte gUnknown_0203EF68
_080B4470: .4byte gUnknown_02023CB6

	THUMB_FUNC_END sub_80B4418

	THUMB_FUNC_START sub_80B4474
sub_80B4474: @ 0x080B4474
	push {lr}
	sub sp, #0xc
	mov ip, r0
	adds r0, #0x5e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x5a
	ldrb r1, [r1]
	mov r2, ip
	adds r2, #0x5f
	ldrb r3, [r2]
	movs r2, #0x48
	str r2, [sp]
	ldr r2, _080B44A4  @ sub_80B43BC
	str r2, [sp, #4]
	mov r2, ip
	str r2, [sp, #8]
	movs r2, #5
	bl sub_80B55AC
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_080B44A4: .4byte sub_80B43BC

	THUMB_FUNC_END sub_80B4474

	THUMB_FUNC_START sub_80B44A8
sub_80B44A8: @ 0x080B44A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_80B5604
	bl sub_80B5698
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	adds r6, r5, #0
	adds r6, #0x5c
	ldrb r4, [r6]
	bl sub_80B568C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	eors r0, r4
	negs r1, r0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	bl sub_80B568C
	strb r0, [r6]
	bl sub_80B56A8
	adds r4, r5, #0
	adds r4, #0x5d
	strb r0, [r4]
	ldrb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x5e
	strb r0, [r1]
	ldrb r0, [r4]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, r1, #4
	ldrb r0, [r4]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	movs r0, #0x38
	bl DisplayUiHand
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B4532
	cmp r7, #0
	beq _080B4532
	ldrb r2, [r6]
	lsls r1, r2, #4
	ldrb r0, [r4]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	lsls r2, r2, #1
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0x38
	bl StartItemHelpBox
_080B4532:
	bl sub_80B5384
	bl sub_80B56CC
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bne _080B4626
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B4568
	ldr r0, _080B4564  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4626
	strb r3, [r2]
	bl CloseHelpBox
	b _080B4626
	.align 2, 0
_080B4564: .4byte gKeyStatusPtr
_080B4568:
	ldr r6, _080B45A0  @ gKeyStatusPtr
	ldr r0, [r6]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B45A4
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	lsls r1, r2, #4
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	lsls r2, r2, #1
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0x38
	bl StartItemHelpBox
	b _080B4626
	.align 2, 0
_080B45A0: .4byte gKeyStatusPtr
_080B45A4:
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r2, [r1]
	lsls r2, r2, #1
	subs r1, #0x2c
	adds r1, r1, r2
	ldrh r1, [r1]
	bl sub_80B5220
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4604
	bl GetPartyGoldAmount
	cmp r4, r0
	ble _080B45E8
	ldr r0, _080B45E4  @ 0x000008B2
	adds r1, r5, #0
	bl sub_80B4168
	adds r0, r5, #0
	movs r1, #1
	bl Proc_Goto
	b _080B4626
	.align 2, 0
_080B45E4: .4byte 0x000008B2
_080B45E8:
	adds r0, r4, #0
	bl sub_8008A18
	ldr r0, _080B4600  @ 0x000008B5
	adds r1, r5, #0
	bl sub_80B4168
	adds r0, r5, #0
	bl Proc_Break
	b _080B4626
	.align 2, 0
_080B4600: .4byte 0x000008B5
_080B4604:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4626
	ldr r0, _080B462C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B461E
	movs r0, #0x6b
	bl m4aSongNumStart
_080B461E:
	adds r0, r5, #0
	movs r1, #7
	bl Proc_Goto
_080B4626:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B462C: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B44A8

	THUMB_FUNC_START sub_80B4630
sub_80B4630: @ 0x080B4630
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8008A00
	cmp r0, #1
	beq _080B4644
	adds r0, r4, #0
	movs r1, #1
	bl Proc_Goto
_080B4644:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4630

	THUMB_FUNC_START sub_80B464C
sub_80B464C: @ 0x080B464C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #4
	bls _080B4688
	bl HasConvoyAccess
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B4670
	ldr r0, _080B466C  @ 0x000008BE
	adds r1, r4, #0
	bl sub_80B4168
	b _080B46AA
	.align 2, 0
_080B466C: .4byte 0x000008BE
_080B4670:
	ldr r0, _080B4684  @ 0x000008C1
	adds r1, r4, #0
	bl sub_80B4168
	adds r0, r4, #0
	movs r1, #0xb
	bl Proc_Goto
	b _080B46AA
	.align 2, 0
_080B4684: .4byte 0x000008C1
_080B4688:
	ldr r0, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x5c
	ldrb r2, [r1]
	lsls r2, r2, #1
	subs r1, #0x2c
	adds r1, r1, r2
	ldrh r1, [r1]
	bl UnitAddItem
	adds r0, r4, #0
	bl sub_80B5440
	adds r0, r4, #0
	movs r1, #3
	bl Proc_Goto
_080B46AA:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B464C

	THUMB_FUNC_START sub_80B46B0
sub_80B46B0: @ 0x080B46B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8008A00
	cmp r0, #1
	beq _080B46C4
	adds r0, r4, #0
	movs r1, #0xb
	bl Proc_Goto
_080B46C4:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B46B0

	THUMB_FUNC_START sub_80B46CC
sub_80B46CC: @ 0x080B46CC
	push {r4, lr}
	adds r4, r0, #0
	bl HasConvoyAccess
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B46E8
	ldr r0, _080B46E4  @ 0x000008C7
	adds r1, r4, #0
	bl sub_80B4168
	b _080B46F0
	.align 2, 0
_080B46E4: .4byte 0x000008C7
_080B46E8:
	ldr r0, _080B46F8  @ 0x000008CA
	adds r1, r4, #0
	bl sub_80B4168
_080B46F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B46F8: .4byte 0x000008CA

	THUMB_FUNC_END sub_80B46CC

	THUMB_FUNC_START sub_80B46FC
sub_80B46FC: @ 0x080B46FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	lsls r1, r1, #1
	subs r0, #0x2c
	adds r0, r0, r1
	ldrh r0, [r0]
	bl AddItemToConvoy
	adds r0, r4, #0
	bl sub_80B5440
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B46FC

	THUMB_FUNC_START sub_80B471C
sub_80B471C: @ 0x080B471C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B472C  @ 0x000008C4
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B472C: .4byte 0x000008C4

	THUMB_FUNC_END sub_80B471C

	THUMB_FUNC_START sub_80B4730
sub_80B4730: @ 0x080B4730
	push {r4, lr}
	adds r4, r0, #0
	bl GetConvoyItemCount
	cmp r0, #0x63
	bgt _080B4744
	adds r0, r4, #0
	movs r1, #0xa
	bl Proc_Goto
_080B4744:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4730

	THUMB_FUNC_START sub_80B474C
sub_80B474C: @ 0x080B474C
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B475C  @ 0x000008CD
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B475C: .4byte 0x000008CD

	THUMB_FUNC_END sub_80B474C

	THUMB_FUNC_START sub_80B4760
sub_80B4760: @ 0x080B4760
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B4770  @ 0x000008A6
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B4770: .4byte 0x000008A6

	THUMB_FUNC_END sub_80B4760

	THUMB_FUNC_START sub_80B4774
sub_80B4774: @ 0x080B4774
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B4784  @ 0x000008A9
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B4784: .4byte 0x000008A9

	THUMB_FUNC_END sub_80B4774

	THUMB_FUNC_START sub_80B4788
sub_80B4788: @ 0x080B4788
	push {lr}
	sub sp, #0xc
	adds r1, r0, #0
	adds r1, #0x5c
	ldrb r3, [r1]
	subs r1, #1
	ldrb r1, [r1]
	movs r2, #0x48
	str r2, [sp]
	ldr r2, _080B47B0  @ sub_80B4418
	str r2, [sp, #4]
	str r0, [sp, #8]
	adds r0, r3, #0
	movs r2, #5
	movs r3, #0
	bl sub_80B55AC
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_080B47B0: .4byte sub_80B4418

	THUMB_FUNC_END sub_80B4788

	THUMB_FUNC_START sub_80B47B4
sub_80B47B4: @ 0x080B47B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_80B5604
	bl sub_80B5698
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	adds r6, r5, #0
	adds r6, #0x5c
	ldrb r4, [r6]
	bl sub_80B568C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	eors r0, r4
	negs r1, r0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	bl sub_80B568C
	strb r0, [r6]
	bl sub_80B56A8
	adds r4, r5, #0
	adds r4, #0x5d
	strb r0, [r4]
	ldrb r1, [r6]
	lsls r1, r1, #4
	ldrb r0, [r4]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	movs r0, #0x38
	bl DisplayUiHand
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B4830
	cmp r7, #0
	beq _080B4830
	ldrb r2, [r6]
	lsls r1, r2, #4
	ldrb r0, [r4]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	ldr r0, [r5, #0x2c]
	lsls r2, r2, #1
	adds r0, #0x1e
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0x38
	bl StartItemHelpBox
_080B4830:
	bl sub_80B56CC
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bne _080B4926
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B4864
	ldr r0, _080B4860  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4926
	strb r3, [r2]
	bl CloseHelpBox
	b _080B4926
	.align 2, 0
_080B4860: .4byte gKeyStatusPtr
_080B4864:
	ldr r0, _080B489C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B48A0
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	lsls r1, r2, #4
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	ldr r0, [r5, #0x2c]
	lsls r2, r2, #1
	adds r0, #0x1e
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0x38
	bl StartItemHelpBox
	b _080B4926
	.align 2, 0
_080B489C: .4byte gKeyStatusPtr
_080B48A0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4904
	ldr r1, [r5, #0x2c]
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r1, #0x1e
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_80B527C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B48D8
	ldr r0, _080B48D4  @ 0x000008BB
	adds r1, r5, #0
	bl sub_80B4168
	adds r0, r5, #0
	movs r1, #4
	bl Proc_Goto
	b _080B4926
	.align 2, 0
_080B48D4: .4byte 0x000008BB
_080B48D8:
	ldr r1, [r5, #0x2c]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r1, #0x1e
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_80B5268
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8008A18
	ldr r0, _080B4900  @ 0x000008B5
	adds r1, r5, #0
	bl sub_80B4168
	adds r0, r5, #0
	bl Proc_Break
	b _080B4926
	.align 2, 0
_080B4900: .4byte 0x000008B5
_080B4904:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4926
	ldr r0, _080B492C  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B491E
	movs r0, #0x6b
	bl m4aSongNumStart
_080B491E:
	adds r0, r5, #0
	movs r1, #8
	bl Proc_Goto
_080B4926:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B492C: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B47B4

	THUMB_FUNC_START sub_80B4930
sub_80B4930: @ 0x080B4930
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_8008A00
	cmp r0, #1
	bne _080B49A8
	movs r0, #0xb9
	movs r1, #8
	bl sub_8014B88
	ldr r1, _080B49A0  @ gActionData
	movs r0, #0x17
	strb r0, [r1, #0x11]
	bl GetPartyGoldAmount
	adds r4, r0, #0
	ldr r1, [r6, #0x2c]
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, #0x1e
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_80B5268
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r4, r0
	adds r0, r4, #0
	bl SetPartyGoldAmount
	ldr r0, [r6, #0x2c]
	ldrb r1, [r5]
	bl UnitRemoveItem
	adds r0, r6, #0
	bl sub_80B42B4
	adds r0, r6, #0
	bl sub_80B505C
	ldr r0, _080B49A4  @ gUnknown_02022E5E
	bl sub_80B4ED4
	adds r0, r6, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B49B0
	adds r0, r6, #0
	movs r1, #7
	bl Proc_Goto
	b _080B49B0
	.align 2, 0
_080B49A0: .4byte gActionData
_080B49A4: .4byte gUnknown_02022E5E
_080B49A8:
	adds r0, r6, #0
	movs r1, #4
	bl Proc_Goto
_080B49B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4930

	THUMB_FUNC_START sub_80B49B8
sub_80B49B8: @ 0x080B49B8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B49C8  @ 0x000008AF
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B49C8: .4byte 0x000008AF

	THUMB_FUNC_END sub_80B49B8

	THUMB_FUNC_START sub_80B49CC
sub_80B49CC: @ 0x080B49CC
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x5c
	movs r0, #0
	strb r0, [r2]
	ldr r0, _080B49E4  @ 0x0000089D
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B49E4: .4byte 0x0000089D

	THUMB_FUNC_END sub_80B49CC

	THUMB_FUNC_START sub_80B49E8
sub_80B49E8: @ 0x080B49E8
	push {lr}
	adds r1, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #4
	bl sub_80B4168
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B49E8

	THUMB_FUNC_START sub_80B49F8
sub_80B49F8: @ 0x080B49F8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _080B4A10
	ldr r0, _080B4A0C  @ 0x00000898
	bl sub_80B4168
	b _080B4A16
	.align 2, 0
_080B4A0C: .4byte 0x00000898
_080B4A10:
	ldr r0, _080B4A1C  @ 0x000008B8
	bl sub_80B4168
_080B4A16:
	pop {r0}
	bx r0
	.align 2, 0
_080B4A1C: .4byte 0x000008B8

	THUMB_FUNC_END sub_80B49F8

	THUMB_FUNC_START sub_80B4A20
sub_80B4A20: @ 0x080B4A20
	push {lr}
	ldr r0, _080B4A34  @ gUnknown_08A394C0
	bl Proc_EndEach
	ldr r0, _080B4A38  @ gProcScr_MoveUnit
	ldr r1, _080B4A3C  @ MU_Show
	bl Proc_ForEach
	pop {r0}
	bx r0
	.align 2, 0
_080B4A34: .4byte gUnknown_08A394C0
_080B4A38: .4byte gProcScr_MoveUnit
_080B4A3C: .4byte MU_Show

	THUMB_FUNC_END sub_80B4A20

	THUMB_FUNC_START sub_80B4A40
sub_80B4A40: @ 0x080B4A40
	push {lr}
	adds r1, r0, #0
	ldr r0, _080B4A50  @ 0x00000896
	bl sub_80B4168
	pop {r0}
	bx r0
	.align 2, 0
_080B4A50: .4byte 0x00000896

	THUMB_FUNC_END sub_80B4A40

	THUMB_FUNC_START sub_80B4A54
sub_80B4A54: @ 0x080B4A54
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_80B5604
	bl sub_80B5698
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	adds r6, r5, #0
	adds r6, #0x5c
	ldrb r4, [r6]
	bl sub_80B568C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	eors r0, r4
	negs r1, r0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	bl sub_80B568C
	strb r0, [r6]
	bl sub_80B56A8
	adds r4, r5, #0
	adds r4, #0x5d
	strb r0, [r4]
	ldrb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x5e
	strb r0, [r1]
	ldrb r0, [r4]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r1, r1, #4
	ldrb r0, [r4]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	movs r0, #0x38
	bl DisplayUiHand
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B4ADE
	cmp r7, #0
	beq _080B4ADE
	ldrb r2, [r6]
	lsls r1, r2, #4
	ldrb r0, [r4]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	lsls r2, r2, #1
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0x38
	bl StartItemHelpBox
_080B4ADE:
	bl sub_80B5384
	bl sub_80B56CC
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bne _080B4B72
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r0, [r2]
	cmp r0, #0
	beq _080B4B14
	ldr r0, _080B4B10  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4B72
	strb r3, [r2]
	bl CloseHelpBox
	b _080B4B72
	.align 2, 0
_080B4B10: .4byte gKeyStatusPtr
_080B4B14:
	ldr r0, _080B4B4C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4B50
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r2, [r0]
	lsls r1, r2, #4
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, #0x48
	subs r1, r1, r0
	lsls r2, r2, #1
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0x38
	bl StartItemHelpBox
	b _080B4B72
	.align 2, 0
_080B4B4C: .4byte gKeyStatusPtr
_080B4B50:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080B4B72
	ldr r0, _080B4B78  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B4B6A
	movs r0, #0x6b
	bl m4aSongNumStart
_080B4B6A:
	adds r0, r5, #0
	movs r1, #0xc
	bl Proc_Goto
_080B4B72:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4B78: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B4A54

	THUMB_FUNC_START sub_80B4B7C
sub_80B4B7C: @ 0x080B4B7C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080B4BA4  @ gGameState
	ldrb r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080B4BA0
	ldr r0, _080B4BA8  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B4BA0
	ldr r0, _080B4BAC  @ gUnknown_08A39198
	adds r1, r2, #0
	bl Proc_StartBlocking
_080B4BA0:
	pop {r0}
	bx r0
	.align 2, 0
_080B4BA4: .4byte gGameState
_080B4BA8: .4byte gUnknown_03005280
_080B4BAC: .4byte gUnknown_08A39198

	THUMB_FUNC_END sub_80B4B7C

	THUMB_FUNC_START sub_80B4BB0
sub_80B4BB0: @ 0x080B4BB0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080B4BD8  @ gGameState
	ldrb r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080B4BE4
	ldr r0, _080B4BDC  @ gUnknown_03005280
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B4BE4
	ldr r0, _080B4BE0  @ gUnknown_08A391D0
	adds r1, r2, #0
	bl Proc_StartBlocking
	b _080B4BE8
	.align 2, 0
_080B4BD8: .4byte gGameState
_080B4BDC: .4byte gUnknown_03005280
_080B4BE0: .4byte gUnknown_08A391D0
_080B4BE4:
	bl ResetDialogueScreen
_080B4BE8:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4BB0

	THUMB_FUNC_START sub_80B4BEC
sub_80B4BEC: @ 0x080B4BEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B4C0C
	movs r0, #0x36
	movs r1, #0
	bl Sound_PlaySong80024D4
	b _080B4C14
_080B4C0C:
	movs r0, #0x35
	movs r1, #0
	bl Sound_PlaySong80024D4
_080B4C14:
	ldr r0, _080B4DF8  @ gProcScr_MoveUnit
	ldr r1, _080B4DFC  @ MU_Hide
	bl Proc_ForEach
	bl sub_80B52CC
	ldr r3, _080B4E00  @ gLCDControlBuffer
	ldrb r1, [r3, #0xc]
	movs r2, #4
	negs r2, r2
	adds r0, r2, #0
	ands r0, r1
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
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #2
	movs r2, #0
	bl sub_800680C
	bl ResetFaces
	adds r0, r6, #0
	adds r0, #0x5c
	movs r4, #0
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r0, #2
	strb r4, [r0]
	adds r0, #3
	strb r4, [r0]
	adds r0, #2
	strb r4, [r0]
	movs r0, #0x90
	lsls r0, r0, #2
	movs r1, #3
	bl sub_80B53BC
	adds r0, r6, #0
	bl Shop6C_GetPortraitIndex
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	movs r2, #8
	movs r3, #3
	bl sub_8007938
	ldr r0, _080B4E04  @ gUnknown_089AD934
	ldr r5, _080B4E08  @ gUnknown_02020188
	adds r1, r5, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B4E0C  @ gBG1TilemapBuffer
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r5, #0
	bl CallARM_FillTileRect
	str r4, [sp]
	movs r0, #6
	movs r1, #8
	movs r2, #0x14
	movs r3, #0xc
	bl DrawUiFrame2
	movs r0, #2
	bl BG_EnableSyncByMask
	adds r0, r6, #0
	bl sub_80B4E24
	ldr r5, _080B4E10  @ gUnknown_0203EF68
	movs r4, #5
_080B4CC6:
	adds r0, r5, #0
	movs r1, #0x14
	bl Text_Init
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bge _080B4CC6
	adds r0, r6, #0
	bl sub_80B4F90
	ldr r0, _080B4E00  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r3, ip
	strb r0, [r3, #1]
	movs r5, #0x34
	add r5, ip
	mov r9, r5
	ldrb r4, [r5]
	movs r6, #1
	orrs r4, r6
	movs r5, #2
	orrs r4, r5
	movs r0, #4
	orrs r4, r0
	movs r3, #8
	orrs r4, r3
	movs r0, #0x10
	orrs r4, r0
	movs r1, #0x35
	add r1, ip
	mov sl, r1
	ldrb r2, [r1]
	orrs r2, r6
	orrs r2, r5
	movs r1, #5
	negs r1, r1
	mov r8, r1
	ands r2, r1
	orrs r2, r3
	orrs r2, r0
	mov r7, ip
	adds r7, #0x36
	ldrb r1, [r7]
	orrs r1, r6
	orrs r1, r5
	mov r5, r8
	ands r1, r5
	orrs r1, r3
	orrs r1, r0
	mov r0, ip
	adds r0, #0x2d
	movs r6, #0
	movs r3, #0x38
	mov r8, r3
	mov r5, r8
	strb r5, [r0]
	mov r3, ip
	adds r3, #0x31
	movs r0, #0x48
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x2c
	movs r5, #0xf0
	strb r5, [r0]
	subs r3, #1
	movs r0, #0x98
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x2f
	strb r6, [r0]
	adds r3, #3
	movs r0, #8
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x2e
	strb r5, [r0]
	adds r0, #4
	mov r3, r8
	strb r3, [r0]
	movs r0, #0x21
	negs r0, r0
	ands r4, r0
	mov r5, r9
	strb r4, [r5]
	movs r3, #0x20
	orrs r2, r3
	mov r5, sl
	strb r2, [r5]
	ands r1, r0
	strb r1, [r7]
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
	ldr r0, _080B4E14  @ gUnknown_08B1754C
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080B4E18  @ gUnknown_08B12DB4
	movs r0, #3
	bl GetBackgroundTileDataOffset
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B4E1C  @ gBG3TilemapBuffer
	ldr r1, _080B4E20  @ gUnknown_08A295D4
	movs r2, #0xe0
	lsls r2, r2, #8
	bl CallARM_FillTileRect
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
_080B4DF8: .4byte gProcScr_MoveUnit
_080B4DFC: .4byte MU_Hide
_080B4E00: .4byte gLCDControlBuffer
_080B4E04: .4byte gUnknown_089AD934
_080B4E08: .4byte gUnknown_02020188
_080B4E0C: .4byte gBG1TilemapBuffer
_080B4E10: .4byte gUnknown_0203EF68
_080B4E14: .4byte gUnknown_08B1754C
_080B4E18: .4byte gUnknown_08B12DB4
_080B4E1C: .4byte gBG3TilemapBuffer
_080B4E20: .4byte gUnknown_08A295D4

	THUMB_FUNC_END sub_80B4BEC

	THUMB_FUNC_START sub_80B4E24
sub_80B4E24: @ 0x080B4E24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080B4E70  @ gUnknown_089AD9F8
	ldr r1, _080B4E74  @ 0x06014C00
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B4E78  @ gUnknown_08A394C0
	adds r1, r4, #0
	bl Proc_Start
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x64
	movs r0, #0xac
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x2d
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080B4E7C  @ 0x00004260
	strh r0, [r1]
	ldr r0, _080B4E80  @ gUiFramePaletteA
	movs r1, #0xa0
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r4, _080B4E84  @ gUnknown_02022E60
	adds r0, r4, #0
	bl sub_80B4E88
	subs r4, #2
	adds r0, r4, #0
	bl sub_80B4ED4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B4E70: .4byte gUnknown_089AD9F8
_080B4E74: .4byte 0x06014C00
_080B4E78: .4byte gUnknown_08A394C0
_080B4E7C: .4byte 0x00004260
_080B4E80: .4byte gUiFramePaletteA
_080B4E84: .4byte gUnknown_02022E60

	THUMB_FUNC_END sub_80B4E24

	THUMB_FUNC_START sub_80B4E88
sub_80B4E88: @ 0x080B4E88
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	ldr r0, _080B4EB0  @ gUnknown_03001DA0
	movs r1, #1
	bl Text_Init
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0x1e
	bl sub_8004B0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B4EB0: .4byte gUnknown_03001DA0

	THUMB_FUNC_END sub_80B4E88

	THUMB_FUNC_START sub_80B4EB4
sub_80B4EB4: @ 0x080B4EB4
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	ble _080B4ECE
	movs r3, #0
_080B4EBE:
	strh r3, [r2]
	adds r0, r2, #0
	adds r0, #0x40
	strh r3, [r0]
	subs r2, #2
	subs r1, #1
	cmp r1, #0
	bgt _080B4EBE
_080B4ECE:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4EB4

	THUMB_FUNC_START sub_80B4ED4
sub_80B4ED4: @ 0x080B4ED4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	adds r0, r4, #0
	movs r1, #6
	bl sub_80B4EB4
	bl GetPartyGoldAmount
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl sub_8004B88
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B4ED4

	THUMB_FUNC_START sub_80B4F04
sub_80B4F04: @ 0x080B4F04
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080B4F80  @ gUnknown_08A39478
	movs r1, #3
	bl Proc_Start
	str r5, [r0, #0x54]
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r4, [r0]
	adds r0, r4, #5
	cmp r4, r0
	bge _080B4F5C
_080B4F30:
	adds r0, r4, #0
	movs r1, #6
	bl DivRem
	lsls r0, r0, #3
	ldr r1, _080B4F84  @ gUnknown_0203EF68
	adds r0, r0, r1
	lsls r1, r4, #1
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #6
	ldr r2, _080B4F88  @ gUnknown_02023CB6
	adds r1, r1, r2
	bl Text_DrawBlank
	adds r4, #1
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	adds r0, #5
	cmp r4, r0
	blt _080B4F30
_080B4F5C:
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r2, [r0]
	lsls r2, r2, #0x14
	ldr r0, _080B4F8C  @ 0xFFB80000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B4F80: .4byte gUnknown_08A39478
_080B4F84: .4byte gUnknown_0203EF68
_080B4F88: .4byte gUnknown_02023CB6
_080B4F8C: .4byte 0xFFB80000

	THUMB_FUNC_END sub_80B4F04

	THUMB_FUNC_START sub_80B4F90
sub_80B4F90: @ 0x080B4F90
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	adds r0, r6, #0
	adds r0, #0x5f
	ldrb r4, [r0]
	adds r0, r4, #5
	cmp r4, r0
	bge _080B4FCC
_080B4FAA:
	adds r0, r4, #0
	movs r1, #6
	bl DivRem
	adds r1, r0, #0
	lsls r0, r1, #3
	ldr r1, _080B4FD8  @ gUnknown_0203EF68
	adds r0, r0, r1
	bl Text_Clear
	adds r4, #1
	adds r0, r6, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	adds r0, #5
	cmp r4, r0
	blt _080B4FAA
_080B4FCC:
	adds r0, r6, #0
	adds r0, #0x5f
	ldrb r4, [r0]
	adds r7, r0, #0
	b _080B4FF6
	.align 2, 0
_080B4FD8: .4byte gUnknown_0203EF68
_080B4FDC:
	lsls r0, r1, #3
	ldr r1, _080B5034  @ gUnknown_0203EF68
	adds r0, r0, r1
	ldr r2, [r6, #0x2c]
	movs r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldr r1, _080B5038  @ gUnknown_02023CB6
	adds r3, r3, r1
	adds r1, r5, #0
	bl sub_80B5164
	adds r4, #1
_080B4FF6:
	ldrb r0, [r7]
	adds r0, #5
	cmp r4, r0
	bge _080B5016
	adds r0, r4, #0
	movs r1, #6
	bl DivRem
	adds r1, r0, #0
	lsls r3, r4, #1
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldrh r5, [r0]
	cmp r5, #0
	bne _080B4FDC
_080B5016:
	ldrb r2, [r7]
	lsls r2, r2, #0x14
	ldr r0, _080B503C  @ 0xFFB80000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5034: .4byte gUnknown_0203EF68
_080B5038: .4byte gUnknown_02023CB6
_080B503C: .4byte 0xFFB80000

	THUMB_FUNC_END sub_80B4F90

	THUMB_FUNC_START sub_80B5040
sub_80B5040: @ 0x080B5040
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_80B4474
	ldr r0, [r4, #0x54]
	bl sub_80B4F90
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5040

	THUMB_FUNC_START sub_80B505C
sub_80B505C: @ 0x080B505C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080B50B8  @ gUnknown_08A39488
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x54]
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	movs r4, #0
_080B507E:
	adds r0, r4, #0
	movs r1, #6
	bl DivRem
	lsls r0, r0, #3
	ldr r1, _080B50BC  @ gUnknown_0203EF68
	adds r0, r0, r1
	lsls r1, r4, #1
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #6
	ldr r2, _080B50C0  @ gUnknown_02023CB6
	adds r1, r1, r2
	bl Text_DrawBlank
	adds r4, #1
	cmp r4, #4
	ble _080B507E
	ldr r2, _080B50C4  @ 0x0000FFB8
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B50B8: .4byte gUnknown_08A39488
_080B50BC: .4byte gUnknown_0203EF68
_080B50C0: .4byte gUnknown_02023CB6
_080B50C4: .4byte 0x0000FFB8

	THUMB_FUNC_END sub_80B505C

	THUMB_FUNC_START sub_80B50C8
sub_80B50C8: @ 0x080B50C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0
	bl SetFont
	bl Font_LoadForUI
	movs r4, #0
	ldr r5, _080B50F8  @ gUnknown_0203EF68
_080B50DA:
	adds r0, r4, #0
	movs r1, #6
	bl DivRem
	adds r1, r0, #0
	lsls r0, r1, #3
	adds r0, r0, r5
	bl Text_Clear
	adds r4, #1
	cmp r4, #4
	ble _080B50DA
	movs r4, #0
	b _080B5116
	.align 2, 0
_080B50F8: .4byte gUnknown_0203EF68
_080B50FC:
	lsls r0, r1, #3
	ldr r1, _080B5140  @ gUnknown_0203EF68
	adds r0, r0, r1
	movs r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldr r1, _080B5144  @ gUnknown_02023CB6
	adds r3, r3, r1
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_80B51C0
	adds r4, #1
_080B5116:
	cmp r4, #4
	bgt _080B5134
	adds r0, r4, #0
	movs r1, #6
	bl DivRem
	adds r1, r0, #0
	ldr r5, [r6, #0x2c]
	lsls r3, r4, #1
	adds r0, r5, #0
	adds r0, #0x1e
	adds r0, r0, r3
	ldrh r2, [r0]
	cmp r2, #0
	bne _080B50FC
_080B5134:
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B5140: .4byte gUnknown_0203EF68
_080B5144: .4byte gUnknown_02023CB6

	THUMB_FUNC_END sub_80B50C8

	THUMB_FUNC_START sub_80B5148
sub_80B5148: @ 0x080B5148
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_80B4788
	ldr r0, [r4, #0x54]
	bl sub_80B50C8
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5148

	THUMB_FUNC_START sub_80B5164
sub_80B5164: @ 0x080B5164
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r0, r4, #0
	bl sub_80B5220
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r4, #0
	bne _080B5184
	movs r0, #1
	b _080B5190
_080B5184:
	adds r0, r4, #0
	adds r1, r5, #0
	bl IsItemDisplayUsable
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080B5190:
	lsls r2, r0, #0x18
	asrs r2, r2, #0x18
	mov r0, r8
	adds r1, r5, #0
	adds r3, r6, #0
	bl DrawItemMenuLine
	adds r4, r6, #0
	adds r4, #0x22
	bl GetPartyGoldAmount
	movs r1, #1
	cmp r0, r7
	blt _080B51AE
	movs r1, #2
_080B51AE:
	adds r0, r4, #0
	adds r2, r7, #0
	bl sub_8004B88
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5164

	THUMB_FUNC_START sub_80B51C0
sub_80B51C0: @ 0x080B51C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	adds r4, r3, #0
	bl IsItemDisplayUsable
	adds r2, r0, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl DrawItemMenuLine
	adds r0, r5, #0
	bl sub_80B527C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B5202
	adds r4, #0x22
	adds r0, r5, #0
	bl sub_80B5268
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #2
	bl sub_8004B88
	b _080B5214
_080B5202:
	ldr r0, _080B521C  @ 0x00000537
	bl GetStringFromIndex
	adds r3, r0, #0
	adds r0, r6, #0
	movs r1, #0x5c
	movs r2, #2
	bl Text_InsertString
_080B5214:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B521C: .4byte 0x00000537

	THUMB_FUNC_END sub_80B51C0

	THUMB_FUNC_START sub_80B5220
sub_80B5220: @ 0x080B5220
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl GetItemCost
	adds r4, r0, #0
	ldr r0, _080B5254  @ gGameState
	ldrb r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B5240
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	adds r4, r4, r0
_080B5240:
	adds r0, r5, #0
	movs r1, #0x73
	bl UnitHasItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B5258
	lsls r0, r4, #0x10
	b _080B525E
	.align 2, 0
_080B5254: .4byte gGameState
_080B5258:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	lsls r0, r0, #0xf
_080B525E:
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B5220

	THUMB_FUNC_START sub_80B5268
sub_80B5268: @ 0x080B5268
	push {lr}
	bl GetItemCost
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B5268

	THUMB_FUNC_START sub_80B527C
sub_80B527C: @ 0x080B527C
	push {r4, lr}
	adds r4, r0, #0
	bl GetItemAttributes
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	bne _080B529C
	adds r0, r4, #0
	bl sub_80B5268
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B529C
	movs r0, #1
	b _080B529E
_080B529C:
	movs r0, #0
_080B529E:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B527C

	THUMB_FUNC_START sub_80B52A4
sub_80B52A4: @ 0x080B52A4
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x64
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r3, #0
	adds r1, #0x66
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _080B52C8  @ gUnknown_08A39498
	adds r3, #0x68
	movs r4, #0
	ldrsh r3, [r3, r4]
	bl CallARM_PushToSecondaryOAM
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B52C8: .4byte gUnknown_08A39498

	THUMB_FUNC_END sub_80B52A4

	THUMB_FUNC_START sub_80B52CC
sub_80B52CC: @ 0x080B52CC
	push {lr}
	ldr r2, _080B5364  @ gLCDControlBuffer
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
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
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
	ldr r0, _080B5368  @ gBG0TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B536C  @ gBG1TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B5370  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	ldr r0, _080B5374  @ gBG3TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #0xf
	bl BG_EnableSyncByMask
	bl Font_InitForUIDefault
	bl LoadUiFrameGraphics
	bl ResetIconGraphics_
	movs r0, #4
	bl LoadIconPalettes
	movs r1, #1
	negs r1, r1
	movs r0, #0
	bl LoadDialogueBoxGfx
	pop {r0}
	bx r0
	.align 2, 0
_080B5364: .4byte gLCDControlBuffer
_080B5368: .4byte gBG0TilemapBuffer
_080B536C: .4byte gBG1TilemapBuffer
_080B5370: .4byte gBG2TilemapBuffer
_080B5374: .4byte gBG3TilemapBuffer

	THUMB_FUNC_END sub_80B52CC

	THUMB_FUNC_START sub_80B5378
sub_80B5378: @ 0x080B5378
	push {lr}
	bl sub_80B5384
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5378

	THUMB_FUNC_START sub_80B5384
sub_80B5384: @ 0x080B5384
	push {lr}
	bl sub_80B56F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B539E
	movs r2, #0xc9
	lsls r2, r2, #6
	movs r0, #0x78
	movs r1, #0x40
	movs r3, #1
	bl sub_80B53F8
_080B539E:
	bl sub_80B570C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B53B6
	movs r2, #0xc9
	lsls r2, r2, #6
	movs r0, #0x78
	movs r1, #0x98
	movs r3, #0
	bl sub_80B53F8
_080B53B6:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80B5384

	THUMB_FUNC_START sub_80B53BC
sub_80B53BC: @ 0x080B53BC
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, _080B53E8  @ gUnknown_08A1C704
	ldr r1, _080B53EC  @ 0x000003FF
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _080B53F0  @ 0x06010000
	adds r1, r1, r0
	adds r0, r2, #0
	bl CopyDataWithPossibleUncomp
	ldr r0, _080B53F4  @ gUnknown_08A1A084
	adds r4, #0x10
	lsls r4, r4, #5
	adds r1, r4, #0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B53E8: .4byte gUnknown_08A1C704
_080B53EC: .4byte 0x000003FF
_080B53F0: .4byte 0x06010000
_080B53F4: .4byte gUnknown_08A1A084

	THUMB_FUNC_END sub_80B53BC

	THUMB_FUNC_START sub_80B53F8
sub_80B53F8: @ 0x080B53F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r3, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	bl GetGameClock
	movs r1, #0x28
	bl DivRem
	movs r1, #8
	bl Div
	lsls r0, r0, #1
	movs r1, #0
	cmp r4, #0
	bne _080B5422
	movs r1, #0x80
	lsls r1, r1, #6
_080B5422:
	orrs r1, r6
	ldr r3, _080B543C  @ gObject_16x8
	adds r0, r5, r0
	str r0, [sp]
	movs r0, #2
	adds r2, r7, #0
	bl PutSpriteExt
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B543C: .4byte gObject_16x8

	THUMB_FUNC_END sub_80B53F8

	THUMB_FUNC_START sub_80B5440
sub_80B5440: @ 0x080B5440
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb9
	movs r1, #8
	bl sub_8014B88
	ldr r1, _080B5490  @ gActionData
	movs r0, #0x17
	strb r0, [r1, #0x11]
	bl GetPartyGoldAmount
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r2, [r1]
	lsls r2, r2, #1
	subs r1, #0x2c
	adds r1, r1, r2
	ldrh r1, [r1]
	bl sub_80B5220
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r4, r0
	adds r0, r4, #0
	bl SetPartyGoldAmount
	adds r0, r5, #0
	bl sub_80B42B4
	adds r0, r5, #0
	bl sub_80B4F90
	ldr r0, _080B5494  @ gUnknown_02022E5E
	bl sub_80B4ED4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5490: .4byte gActionData
_080B5494: .4byte gUnknown_02022E5E

	THUMB_FUNC_END sub_80B5440

	THUMB_FUNC_START sub_80B5498
sub_80B5498: @ 0x080B5498
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r7, r2, #0
	cmp r4, #0
	bge _080B54AA
	movs r4, #0
_080B54AA:
	cmp r4, r5
	blt _080B54B0
	subs r4, r5, #1
_080B54B0:
	mov ip, r4
	ldr r0, _080B54D8  @ gKeyStatusPtr
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B54E0
	cmp r4, #0
	bne _080B54DC
	cmp r2, #0
	beq _080B5504
	ldrh r1, [r3, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B5504
	subs r4, r5, #1
	b _080B5504
	.align 2, 0
_080B54D8: .4byte gKeyStatusPtr
_080B54DC:
	subs r4, #1
	b _080B5504
_080B54E0:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B5504
	subs r0, r5, #1
	cmp r4, r0
	bne _080B5502
	cmp r7, #0
	beq _080B5504
	ldrh r1, [r3, #8]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B5504
	movs r4, #0
	b _080B5504
_080B5502:
	adds r4, #1
_080B5504:
	cmp ip, r4
	beq _080B551A
	ldr r0, _080B5524  @ gRAMChapterData
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080B551A
	movs r0, #0x66
	bl m4aSongNumStart
_080B551A:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B5524: .4byte gRAMChapterData

	THUMB_FUNC_END sub_80B5498

	THUMB_FUNC_START sub_80B5528
sub_80B5528: @ 0x080B5528
	ldr r1, _080B5530  @ gUnknown_0203EFB4
	str r0, [r1]
	bx lr
	.align 2, 0
_080B5530: .4byte gUnknown_0203EFB4

	THUMB_FUNC_END sub_80B5528

	THUMB_FUNC_START sub_80B5534
sub_80B5534: @ 0x080B5534
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080B555C  @ gUnknown_0203EFB4
	ldr r1, [r0]
	str r4, [r0]
	cmp r4, r1
	beq _080B5572
	cmp r2, r5
	bgt _080B5572
	cmp r4, r1
	bge _080B5560
	cmp r3, #0
	beq _080B5572
	subs r0, r4, r3
	cmp r0, #0
	bgt _080B5572
	movs r0, #1
	negs r0, r0
	b _080B5574
	.align 2, 0
_080B555C: .4byte gUnknown_0203EFB4
_080B5560:
	adds r0, r2, r3
	cmp r0, r5
	beq _080B5572
	subs r1, r4, r3
	subs r0, r2, #1
	cmp r1, r0
	blt _080B5572
	movs r0, #1
	b _080B5574
_080B5572:
	movs r0, #0
_080B5574:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B5534

	THUMB_FUNC_START sub_80B557C
sub_80B557C: @ 0x080B557C
	push {lr}
	subs r3, r0, r1
	cmp r3, #0
	blt _080B558C
	cmp r3, r2
	blt _080B5592
	subs r3, r1, r0
	b _080B5596
_080B558C:
	subs r3, r1, r0
	cmp r3, r2
	bge _080B5596
_080B5592:
	adds r0, r1, #0
	b _080B55A8
_080B5596:
	cmp r3, #0
	bgt _080B55A4
	adds r1, r0, #0
	cmp r3, #0
	bge _080B55A6
	subs r1, r0, r2
	b _080B55A6
_080B55A4:
	adds r1, r0, r2
_080B55A6:
	adds r0, r1, #0
_080B55A8:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B557C

	THUMB_FUNC_START sub_80B55AC
sub_80B55AC: @ 0x080B55AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r7, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	str r1, [sp]
	bl sub_80B5528
	ldr r0, _080B5600  @ gUnknown_08A394D8
	ldr r0, [r0]
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r1, [sp]
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0x10
	strh r1, [r0, #8]
	movs r1, #4
	strh r1, [r0, #0xa]
	str r7, [r0, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x18]
	ldr r2, [sp, #0x18]
	negs r1, r2
	str r1, [r0, #0x10]
	lsls r4, r4, #4
	strh r4, [r0, #0xc]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5600: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B55AC

	THUMB_FUNC_START sub_80B5604
sub_80B5604: @ 0x080B5604
	push {r4, lr}
	ldr r4, _080B5638  @ gUnknown_08A394D8
	ldr r1, [r4]
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #0
	bl sub_80B5498
	ldr r3, [r4]
	strh r0, [r3]
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	bl sub_80B5534
	adds r1, r0, #0
	cmp r1, #0
	beq _080B566C
	cmp r1, #0
	bgt _080B563C
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _080B565A
	b _080B566C
	.align 2, 0
_080B5638: .4byte gUnknown_08A394D8
_080B563C:
	cmp r1, #1
	bne _080B566C
	ldr r3, [r4]
	ldrh r0, [r3, #6]
	adds r0, #1
	strh r0, [r3, #6]
	ldr r0, [r3, #0x18]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	adds r1, r1, r2
	subs r1, #1
	ldr r2, [r3, #0x14]
	bl _call_via_r2
	b _080B566C
_080B565A:
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	subs r0, #1
	strh r0, [r2, #6]
	ldr r0, [r2, #0x18]
	ldrh r1, [r2, #6]
	ldr r2, [r2, #0x14]
	bl _call_via_r2
_080B566C:
	ldr r4, _080B5688  @ gUnknown_08A394D8
	ldr r2, [r4]
	ldrh r0, [r2, #0xc]
	ldrh r3, [r2, #6]
	ldrh r1, [r2, #8]
	muls r1, r3, r1
	ldrh r2, [r2, #0xa]
	bl sub_80B557C
	ldr r1, [r4]
	strh r0, [r1, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B5688: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B5604

	THUMB_FUNC_START sub_80B568C
sub_80B568C: @ 0x080B568C
	ldr r0, _080B5694  @ gUnknown_08A394D8
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080B5694: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B568C

	THUMB_FUNC_START sub_80B5698
sub_80B5698: @ 0x080B5698
	ldr r0, _080B56A4  @ gUnknown_08A394D8
	ldr r0, [r0]
	ldrh r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080B56A4: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B5698

	THUMB_FUNC_START sub_80B56A8
sub_80B56A8: @ 0x080B56A8
	ldr r0, _080B56B0  @ gUnknown_08A394D8
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	bx lr
	.align 2, 0
_080B56B0: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B56A8

	THUMB_FUNC_START sub_80B56B4
sub_80B56B4: @ 0x080B56B4
	ldr r1, _080B56BC  @ gUnknown_08A394D8
	ldr r1, [r1]
	strh r0, [r1, #8]
	bx lr
	.align 2, 0
_080B56BC: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B56B4

	THUMB_FUNC_START sub_80B56C0
sub_80B56C0: @ 0x080B56C0
	ldr r1, _080B56C8  @ gUnknown_08A394D8
	ldr r1, [r1]
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
_080B56C8: .4byte gUnknown_08A394D8

	THUMB_FUNC_END sub_80B56C0

	THUMB_FUNC_START sub_80B56CC
sub_80B56CC: @ 0x080B56CC
	push {lr}
	ldr r0, _080B56E4  @ gUnknown_08A394D8
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #8]
	muls r0, r1, r0
	cmp r2, r0
	bne _080B56E8
	movs r0, #0
	b _080B56EA
	.align 2, 0
_080B56E4: .4byte gUnknown_08A394D8
_080B56E8:
	movs r0, #1
_080B56EA:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B56CC

	THUMB_FUNC_START sub_80B56F0
sub_80B56F0: @ 0x080B56F0
	push {lr}
	ldr r0, _080B5700  @ gUnknown_08A394D8
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne _080B5704
	movs r0, #0
	b _080B5706
	.align 2, 0
_080B5700: .4byte gUnknown_08A394D8
_080B5704:
	movs r0, #1
_080B5706:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B56F0

	THUMB_FUNC_START sub_80B570C
sub_80B570C: @ 0x080B570C
	push {lr}
	ldr r0, _080B5724  @ gUnknown_08A394D8
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	ldrh r2, [r1, #4]
	adds r0, r0, r2
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _080B5728
	movs r0, #0
	b _080B572A
	.align 2, 0
_080B5724: .4byte gUnknown_08A394D8
_080B5728:
	movs r0, #1
_080B572A:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80B570C

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
	bl sub_80B4E24
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
	bl sub_8008A00
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
	bl sub_80B4ED4
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
	ldr r0, _080B5AF4  @ gUnknown_08A394C0
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
_080B5AF4: .4byte gUnknown_08A394C0
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
	bl sub_80B4ED4
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
	ldr r0, _080B5BF8  @ gUnknown_08A394C0
	bl Proc_EndEach
	ldr r0, _080B5BFC  @ gProcScr_MoveUnit
	ldr r1, _080B5C00  @ MU_Show
	bl Proc_ForEach
	pop {r0}
	bx r0
	.align 2, 0
_080B5BF8: .4byte gUnknown_08A394C0
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
	bl sub_8008A00
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
	ldr r0, _080B603C  @ gUnknown_088B08F0
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
_080B603C: .4byte gUnknown_088B08F0
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
	ldr r0, _080B65F0  @ gUnknown_08A3CCEC
	bx lr
	.align 2, 0
_080B65F0: .4byte gUnknown_08A3CCEC

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
	ldr r0, _080B7604  @ gUnknown_08A07DD8
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
_080B7604: .4byte gUnknown_08A07DD8
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
	bl sub_8003D20
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
	bl sub_8003D20
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
