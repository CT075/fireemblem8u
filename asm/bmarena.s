	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	@ General Arena Logic

	THUMB_FUNC_START LoadArenaOpponentStruct
LoadArenaOpponentStruct: @ 0x08031A84
	push {r4, r5, r6, lr}
	sub sp, #0x14
	ldr r6, _08031B00  @ gUnknown_0203A910
	mov r1, sp
	movs r3, #0
	movs r0, #0xfd
	strb r0, [r1]
	ldr r4, _08031B04  @ gArenaData
	ldrb r0, [r4, #0x10]
	strb r0, [r1, #1]
	ldrb r0, [r1, #3]
	movs r2, #7
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #3]
	mov r5, sp
	ldrb r1, [r4, #0x12]
	lsls r1, r1, #3
	movs r0, #7
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	mov r2, sp
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #3]
	mov r0, sp
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xd]
	strb r3, [r0, #0xe]
	strb r3, [r0, #0xf]
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x11]
	strb r3, [r0, #0x12]
	strb r3, [r0, #0x13]
	adds r0, r6, #0
	bl ClearUnit
	movs r0, #0x80
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	mov r1, sp
	bl UnitInitFromDefinition
	ldr r1, [r6]
	adds r0, r6, #0
	bl UnitLoadStatsFromChracter
	movs r4, #8
	ldrsb r4, [r6, r4]
	ldr r0, _08031B08  @ gUnknown_0202BCF0
	ldrb r1, [r0, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08031B0C
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	b _08031B12
	.align 2, 0
_08031B00: .4byte gUnknown_0203A910
_08031B04: .4byte gArenaData
_08031B08: .4byte gUnknown_0202BCF0
_08031B0C:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
_08031B12:
	movs r1, #0xa
	bl __divsi3
	strb r0, [r6, #8]
	adds r0, r6, #0
	bl UnitAutolevel
	strb r4, [r6, #8]
	movs r2, #0
	adds r3, r6, #0
	adds r3, #0x28
	movs r4, #0xb5
_08031B2A:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031B34
	strb r4, [r1]
_08031B34:
	adds r2, #1
	cmp r2, #7
	ble _08031B2A
	movs r0, #8
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bgt _08031B46
	movs r0, #1
	strb r0, [r6, #8]
_08031B46:
	movs r0, #8
	ldrsb r0, [r6, r0]
	cmp r0, #0x14
	ble _08031B52
	movs r0, #0x14
	strb r0, [r6, #8]
_08031B52:
	adds r0, r6, #0
	bl UnitCheckStatCaps
	adds r0, r6, #0
	bl GetUnitMaxHp
	adds r1, r0, #0
	adds r0, r6, #0
	bl SetUnitHp
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START LoadArenaWeapons
LoadArenaWeapons: @ 0x08031B70
	push {r4, lr}
	sub sp, #8
	ldr r1, _08031BB8  @ gUnknown_080D7F5C
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r4, _08031BBC  @ gArenaData
	ldrb r0, [r4, #0xd]
	add r0, sp
	ldrb r0, [r0]
	bl MakeNewItem
	strh r0, [r4, #0x1a]
	ldrb r0, [r4, #0xe]
	add r0, sp
	ldrb r0, [r0]
	bl MakeNewItem
	strh r0, [r4, #0x1c]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r0, #3
	bne _08031BA6
	movs r0, #2
	strb r0, [r4, #0xc]
_08031BA6:
	ldrb r0, [r4, #0xe]
	cmp r0, #3
	bne _08031BB0
	movs r0, #2
	strb r0, [r4, #0xc]
_08031BB0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031BB8: .4byte gUnknown_080D7F5C
_08031BBC: .4byte gArenaData

	THUMB_FUNC_START GetArenaBetterItem
GetArenaBetterItem: @ 0x08031BC0
	push {r4, r5, lr}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08031BD8  @ gUnknown_080D7F64
	mov r0, sp
	movs r2, #0x1a
	bl memcpy
	mov r4, sp
	b _08031C02
	.align 2, 0
_08031BD8: .4byte gUnknown_080D7F64
_08031BDC:
	adds r0, r5, #0
	bl GetItemIndex
	adds r1, r0, #0
	ldrb r2, [r4]
	cmp r1, r2
	bne _08031C00
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	beq _08031BFC
	bl MakeNewItem
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08031C08
_08031BFC:
	adds r0, r5, #0
	b _08031C08
_08031C00:
	adds r4, #1
_08031C02:
	ldrb r1, [r4]
	cmp r1, #0xff
	bne _08031BDC
_08031C08:
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START PrepareBalancedArenaFight
PrepareBalancedArenaFight: @ 0x08031C10
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r4, _08031C38  @ gArenaData
	ldr r0, [r4]
	bl GetUnitPower
	ldr r5, _08031C3C  @ gBattleActor
	adds r0, #5
	adds r1, r5, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08031C40
	ldr r0, [r4]
	bl GetUnitResistance
	b _08031C46
	.align 2, 0
_08031C38: .4byte gArenaData
_08031C3C: .4byte gBattleActor
_08031C40:
	ldr r0, [r4]
	bl GetUnitDefense
_08031C46:
	adds r1, r5, #0
	adds r1, #0x5c
	strh r0, [r1]
	ldr r4, _08031C70  @ gArenaData
	ldr r0, [r4, #4]
	bl GetUnitPower
	ldr r5, _08031C74  @ gBattleTarget
	adds r0, #5
	adds r1, r5, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08031C78
	ldr r0, [r4, #4]
	bl GetUnitResistance
	b _08031C7E
	.align 2, 0
_08031C70: .4byte gArenaData
_08031C74: .4byte gBattleTarget
_08031C78:
	ldr r0, [r4, #4]
	bl GetUnitDefense
_08031C7E:
	adds r1, r5, #0
	adds r1, #0x5c
	strh r0, [r1]
	ldr r0, _08031CCC  @ gBattleActor
	adds r0, #0x5a
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r0, _08031CD0  @ gBattleTarget
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r4, r4, r0
	ldr r5, _08031CD4  @ gArenaData
	ldr r0, [r5, #4]
	bl GetUnitMaxHp
	movs r1, #6
	bl __divsi3
	cmp r4, r0
	bge _08031CFE
	movs r6, #1
	movs r2, #0x13
	ldrsb r2, [r5, r2]
	cmp r2, #0
	beq _08031CD8
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x18]
	subs r1, #4
	strb r1, [r0, #0x18]
	ldr r1, [r5, #4]
	movs r0, #0x18
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08031CEC
	movs r0, #0
	strb r0, [r1, #0x18]
	b _08031CEC
	.align 2, 0
_08031CCC: .4byte gBattleActor
_08031CD0: .4byte gBattleTarget
_08031CD4: .4byte gArenaData
_08031CD8:
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x17]
	subs r1, #4
	strb r1, [r0, #0x17]
	ldr r1, [r5, #4]
	movs r0, #0x17
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08031CEC
	strb r2, [r1, #0x17]
_08031CEC:
	ldr r2, _08031D4C  @ gArenaData
	ldr r1, [r2, #4]
	ldrb r0, [r1, #0x16]
	adds r0, #1
	strb r0, [r1, #0x16]
	ldr r1, [r2, #4]
	ldrb r0, [r1, #0x15]
	adds r0, #1
	strb r0, [r1, #0x15]
_08031CFE:
	ldr r0, _08031D50  @ gBattleTarget
	adds r0, #0x5a
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r0, _08031D54  @ gBattleActor
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r4, r4, r0
	ldr r5, _08031D4C  @ gArenaData
	ldr r0, [r5]
	bl GetUnitMaxHp
	movs r1, #6
	bl __divsi3
	cmp r4, r0
	bge _08031D44
	movs r6, #1
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x14]
	adds r0, #3
	strb r0, [r1, #0x14]
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x16]
	adds r0, #2
	strb r0, [r1, #0x16]
	ldr r1, [r5, #4]
	ldrb r0, [r1, #0x15]
	adds r0, #2
	strb r0, [r1, #0x15]
	ldrh r0, [r5, #0x1c]
	bl GetArenaBetterItem
	strh r0, [r5, #0x1c]
_08031D44:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08031D4C: .4byte gArenaData
_08031D50: .4byte gBattleTarget
_08031D54: .4byte gBattleActor

	THUMB_FUNC_START AdjustArenaOpponentPower
AdjustArenaOpponentPower: @ 0x08031D58
	push {r4, r5, r6, lr}
	ldr r4, _08031DA0  @ gArenaData
	ldr r0, [r4]
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	bl GetUnitArenaWeight
	strh r0, [r4, #0x16]
	ldr r0, [r4, #4]
	movs r1, #0x13
	ldrsb r1, [r4, r1]
	bl GetUnitArenaWeight
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhi _08031D80
	ldrh r1, [r4, #0x18]
_08031D80:
	ldr r6, _08031DA0  @ gArenaData
	ldrh r4, [r6, #0x16]
	ldrh r5, [r6, #0x18]
	subs r2, r4, r5
	cmp r2, #0
	bge _08031D8E
	subs r2, r5, r4
_08031D8E:
	movs r0, #0x64
	muls r0, r2, r0
	bl __divsi3
	cmp r0, #0x14
	bgt _08031DA4
	movs r0, #0
	b _08031E9A
	.align 2, 0
_08031DA0: .4byte gArenaData
_08031DA4:
	cmp r4, r5
	bcs _08031E20
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x12]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031DC0
	subs r0, r2, #1
	strb r0, [r1, #0x12]
	ldr r1, [r6, #4]
	ldrb r0, [r1, #0x13]
	subs r0, #1
	strb r0, [r1, #0x13]
_08031DC0:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x14]
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031DD0
	subs r0, r2, #1
	strb r0, [r1, #0x14]
_08031DD0:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x15]
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031DE0
	subs r0, r2, #1
	strb r0, [r1, #0x15]
_08031DE0:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x16]
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031DF0
	subs r0, r2, #1
	strb r0, [r1, #0x16]
_08031DF0:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x17]
	movs r0, #0x17
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031E00
	subs r0, r2, #1
	strb r0, [r1, #0x17]
_08031E00:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x18]
	movs r0, #0x18
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031E10
	subs r0, r2, #1
	strb r0, [r1, #0x18]
_08031E10:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x19]
	movs r0, #0x19
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08031E98
	subs r0, r2, #1
	b _08031E96
_08031E20:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x12]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r0, #0x4f
	bgt _08031E38
	adds r0, r2, #2
	strb r0, [r1, #0x12]
	ldr r1, [r6, #4]
	ldrb r0, [r1, #0x13]
	adds r0, #2
	strb r0, [r1, #0x13]
_08031E38:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x14]
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0x1d
	bgt _08031E48
	adds r0, r2, #1
	strb r0, [r1, #0x14]
_08031E48:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x15]
	movs r0, #0x15
	ldrsb r0, [r1, r0]
	cmp r0, #0x1d
	bgt _08031E58
	adds r0, r2, #1
	strb r0, [r1, #0x15]
_08031E58:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x16]
	movs r0, #0x16
	ldrsb r0, [r1, r0]
	cmp r0, #0x1d
	bgt _08031E68
	adds r0, r2, #1
	strb r0, [r1, #0x16]
_08031E68:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x17]
	movs r0, #0x17
	ldrsb r0, [r1, r0]
	cmp r0, #0x1d
	bgt _08031E78
	adds r0, r2, #1
	strb r0, [r1, #0x17]
_08031E78:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x18]
	movs r0, #0x18
	ldrsb r0, [r1, r0]
	cmp r0, #0x1d
	bgt _08031E88
	adds r0, r2, #1
	strb r0, [r1, #0x18]
_08031E88:
	ldr r1, [r6, #4]
	ldrb r2, [r1, #0x19]
	movs r0, #0x19
	ldrsb r0, [r1, r0]
	cmp r0, #0x1d
	bgt _08031E98
	adds r0, r2, #1
_08031E96:
	strb r0, [r1, #0x19]
_08031E98:
	movs r0, #1
_08031E9A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8031EA0
sub_8031EA0: @ 0x08031EA0
	push {lr}
	ldr r2, _08031EC8  @ gArenaData
	ldrh r1, [r2, #0x18]
	ldrh r0, [r2, #0x16]
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	cmp r0, #0
	bgt _08031EC2
	movs r0, #1
_08031EC2:
	strh r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08031EC8: .4byte gArenaData

	THUMB_FUNC_START sub_8031ECC
sub_8031ECC: @ 0x08031ECC
	ldr r0, _08031ED4  @ gArenaData
	movs r1, #8
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08031ED4: .4byte gArenaData

	THUMB_FUNC_START sub_8031ED8
sub_8031ED8: @ 0x08031ED8
	ldr r0, _08031EE0  @ gArenaData
	ldrb r0, [r0, #0xa]
	bx lr
	.align 2, 0
_08031EE0: .4byte gArenaData

	THUMB_FUNC_START sub_8031EE4
sub_8031EE4: @ 0x08031EE4
	ldr r1, _08031EEC  @ gArenaData
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08031EEC: .4byte gArenaData

	THUMB_FUNC_START sub_8031EF0
sub_8031EF0: @ 0x08031EF0
	push {r4, r5, lr}
	ldr r0, _08031F3C  @ gUnknown_0202BCB0
	adds r0, #0x3c
	ldrb r5, [r0]
	ldr r1, _08031F40  @ gActionData
	ldr r4, _08031F44  @ gBattleTarget
	ldrb r0, [r4, #0x13]
	strb r0, [r1, #0x15]
	movs r0, #4
	strb r0, [r1, #0x16]
	movs r0, #3
	bl SaveSuspendedGame
	bl BattleUnwind
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08031F1A
	bl BattleApplyExpGains
_08031F1A:
	ldr r0, _08031F48  @ gArenaData
	ldr r0, [r0]
	ldr r1, _08031F4C  @ gBattleActor
	bl UpdateUnitDuringBattle
	cmp r5, #0
	beq _08031F30
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08031F34
_08031F30:
	bl sub_80A4AA4
_08031F34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08031F3C: .4byte gUnknown_0202BCB0
_08031F40: .4byte gActionData
_08031F44: .4byte gBattleTarget
_08031F48: .4byte gArenaData
_08031F4C: .4byte gBattleActor

	THUMB_FUNC_START sub_8031F50
sub_8031F50: @ 0x08031F50
	push {lr}
	adds r2, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _08031F6E
	adds r0, r2, #0
	bl GetUnitBestWRankType
	cmp r0, #0
	blt _08031F6E
	movs r0, #1
	b _08031F70
_08031F6E:
	movs r0, #0
_08031F70:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8031F74
sub_8031F74: @ 0x08031F74
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08031FB4  @ gUnknown_080D7F5C
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldrh r1, [r4]
	adds r0, r5, #0
	bl CanUnitUseWeapon
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031FBE
	movs r1, #0
	ldr r2, [r5, #4]
_08031F98:
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031FB8
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	bl MakeNewItem
	strh r0, [r4]
	b _08031FBE
	.align 2, 0
_08031FB4: .4byte gUnknown_080D7F5C
_08031FB8:
	adds r1, #1
	cmp r1, #7
	ble _08031F98
_08031FBE:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8031FC8
sub_8031FC8: @ 0x08031FC8
	push {r4, lr}
	ldr r4, _08031FE8  @ gArenaData
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0x1a
	bl sub_8031F74
	ldr r0, [r4, #4]
	adds r4, #0x1c
	adds r1, r4, #0
	bl sub_8031F74
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031FE8: .4byte gArenaData

.align 2, 0
