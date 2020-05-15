#include "global.h"

#include <string.h>

#include "bmunit.h"
#include "bmitem.h"
#include "rng.h"

extern void LoadArenaOpponentStruct(void);
extern void LoadArenaWeapons(void);
extern u8 AdjustArenaOpponentPower(void);
extern u8 PrepareBalancedArenaFight(void);
extern void sub_8031EA0(void);
extern void sub_8031EE4(u8);
extern void sub_8031FC8(void);

extern void StoreRNState(u16 *seeds);
extern void LoadRNState(const u16 *seeds);

extern u16 gUnknown_0203A95E;
extern u8 gUnknown_0859D9FC;
extern u8 gUnknown_0859DA4A;
extern u8 gUnknown_0859DA22;
extern u8 gUnknown_080D7F5C[8];
extern u8 gUnknown_080D7F64[0x1C];

extern struct Unit gUnknown_0203A910;

int GetUnitBestWRankType(struct Unit *unit);
int GetClassBestWRankType(const struct ClassData *cls);
u8 sub_803190C(u32 classid);
u8 IsWeaponMagic(int weaponty);
int GetNearLevel(int lv);
int GetUnitArenaWeight(struct Unit *unit, s8 isEnemyWeaponMagic);

void PrepareArenaStruct(struct Unit *unit) {
    int i;

    gArenaData.playerUnit = unit;
    gArenaData.opponentUnit = &gUnknown_0203A910;
    gUnknown_03003060 = (unit->state >> 0x11) & 7;

    gArenaData.playerClassId = unit->pClassData->number;
    gArenaData.playerWpnType = GetUnitBestWRankType(unit);
    gArenaData.opponentClassId = sub_803190C(gArenaData.playerWpnType);
    gArenaData.opponentWpnType = GetClassBestWRankType(GetClassData(gArenaData.opponentClassId));
    gArenaData.playerIsMagic = IsWeaponMagic(gArenaData.playerWpnType);
    gArenaData.opponentIsMagic = IsWeaponMagic(gArenaData.opponentWpnType);
    gArenaData.playerLevel = unit->level;

    if (((unit->state >> 0x11) & 7) <= 4) {
        gArenaData.opponentLevel = GetNearLevel(gArenaData.playerLevel);
    }
    else {
        gArenaData.opponentLevel = GetNearLevel(gArenaData.playerLevel)+7;
    }

    LoadArenaOpponentStruct();
    LoadArenaWeapons();

    for (i = 0 ; i <= 9 ; i += 1) {
        if (!AdjustArenaOpponentPower()) { break; }
    }

    for (i = 0 ; i <= 4 ; i += 1) {
        if (!PrepareBalancedArenaFight()) { break; }
    }

    gArenaData.playerPowerWeight = GetUnitArenaWeight(
            gArenaData.playerUnit,
            gArenaData.opponentIsMagic);

    gArenaData.opponentPowerWeight = GetUnitArenaWeight(
            gArenaData.opponentUnit,
            gArenaData.playerIsMagic);

    sub_8031EA0();

    gArenaData.unk0B = 1;
    sub_8031EE4(0);
    sub_8031FC8();
}

void PrepareArena(struct Unit *unit) {
    StoreRNState(&gUnknown_0203A95E);
    PrepareArenaStruct(unit);
}

void PrepareArena2(struct Unit *unit) {
    LoadRNState(&gUnknown_0203A95E);
    PrepareArenaStruct(unit);
    LoadRNState(&gUnknown_0203A95E-3);
}

int GetUnitBestWRankType(struct Unit *unit) {
    int i;
    int currMax;
    int result;
    int curr;

    currMax = 0;
    result = -1;
    i = 0;

    for (; i <= 7 ; i += 1) {
        if (i == 4) { continue; }
        curr = unit->ranks[i];
        if (currMax < curr) {
            currMax = curr;
            result = i;
        }
    }

    return result;
}

int GetClassBestWRankType(const struct ClassData *cls) {
    int i;
    int currMax;
    int result;
    int curr;

    currMax = 0;
    result = -1;
    i = 0;

    for (; i <= 7 ; i += 1) {
        if (i == 4) { continue; }
        curr = cls->baseRanks[i];
        if (currMax < curr) {
            currMax = curr;
            result = i;
        }
    }

    return result;
}

#if NONMATCHING

u8 sub_803190C(u32 wpnty) {
    u8 *something;
    u8 *loopptr;
    int promoted;
    int ctr;
    const struct ClassData *cls;
    int iters;

    ctr = 0;
    something = NULL;

    switch (wpnty) {
        case 0:
        case 1:
        case 2:
            loopptr = &gUnknown_0859D9FC;
            something = loopptr;
            break;
        case 3:
            loopptr = &gUnknown_0859DA4A;
            something = loopptr;
            break;
        case 5:
        case 6:
        case 7:
            loopptr = &gUnknown_0859DA22;
            something = loopptr;
            break;
    }

    promoted = (
      ( gArenaData.playerUnit->pCharacterData->attributes
      | gArenaData.playerUnit->pClassData->attributes
      ) & 0x0100);

    if (*something != 0) {
        for (loopptr = something ; *loopptr != 0 ; loopptr += 1) {
            cls = GetClassData(*loopptr);
            if ((cls->attributes & 0x0100) == promoted) {
                ctr += 1;
            }
        }
    }

    iters = NextRN_N(ctr);
    ctr = 0;
    loopptr = something;

    while (1) {
        while (1) {
            if ((GetClassData(*loopptr)->attributes & 0x0100) == promoted) { break; }
            loopptr += 1;
        }
        if (ctr == iters) { break; }
        ctr += 1;
        loopptr += 1;
    }

    return *loopptr;
}

#else // NONMATCHING

__attribute__((naked))
u8 sub_803190C(u32 wpnty) {
  asm("\n\
      .syntax unified\n\
					push {r4, r5, r6, r7, lr}\n\
					mov r7, r8\n\
					push {r7}\n\
					movs r6, #0\n\
					mov r8, r6\n\
					cmp r0, #7\n\
					bhi _08031960\n\
					lsls r0, r0, #2\n\
					ldr r1, _08031924  @ _08031928\n\
					adds r0, r0, r1\n\
					ldr r0, [r0]\n\
					mov pc, r0\n\
					.align 2, 0\n\
				_08031924: .4byte _08031928\n\
				_08031928: @ jump table\n\
					.4byte _08031948 @ case 0\n\
					.4byte _08031948 @ case 1\n\
					.4byte _08031948 @ case 2\n\
					.4byte _08031950 @ case 3\n\
					.4byte _08031960 @ case 4\n\
					.4byte _0803195C @ case 5\n\
					.4byte _0803195C @ case 6\n\
					.4byte _0803195C @ case 7\n\
				_08031948:\n\
					ldr r0, _0803194C  @ gUnknown_0859D9FC\n\
					b _0803195E\n\
					.align 2, 0\n\
				_0803194C: .4byte gUnknown_0859D9FC\n\
				_08031950:\n\
					ldr r1, _08031958  @ gUnknown_0859DA4A\n\
					mov r8, r1\n\
					b _08031960\n\
					.align 2, 0\n\
				_08031958: .4byte gUnknown_0859DA4A\n\
				_0803195C:\n\
					ldr r0, _080319A8  @ gUnknown_0859DA22\n\
				_0803195E:\n\
					mov r8, r0\n\
				_08031960:\n\
					ldr r0, _080319AC  @ gArenaData\n\
					ldr r0, [r0]\n\
					ldr r1, [r0]\n\
					ldr r0, [r0, #4]\n\
					ldr r5, [r1, #0x28]\n\
					ldr r0, [r0, #0x28]\n\
					orrs r5, r0\n\
					movs r0, #0x80\n\
					lsls r0, r0, #1\n\
					ands r5, r0\n\
					mov r1, r8\n\
					ldrb r0, [r1]\n\
					cmp r0, #0\n\
					beq _0803199A\n\
					mov r4, r8\n\
				_0803197E:\n\
					ldrb r0, [r4]\n\
					bl GetClassData\n\
					ldr r0, [r0, #0x28]\n\
					movs r1, #0x80\n\
					lsls r1, r1, #1\n\
					ands r0, r1\n\
					cmp r0, r5\n\
					bne _08031992\n\
					adds r6, #1\n\
				_08031992:\n\
					adds r4, #1\n\
					ldrb r0, [r4]\n\
					cmp r0, #0\n\
					bne _0803197E\n\
				_0803199A:\n\
					adds r0, r6, #0\n\
					bl NextRN_N\n\
					adds r7, r0, #0\n\
					movs r6, #0\n\
					mov r4, r8\n\
					b _080319B4\n\
					.align 2, 0\n\
				_080319A8: .4byte gUnknown_0859DA22\n\
				_080319AC: .4byte gArenaData\n\
				_080319B0:\n\
					adds r6, #1\n\
				_080319B2:\n\
					adds r4, #1\n\
				_080319B4:\n\
					ldrb r0, [r4]\n\
					bl GetClassData\n\
					ldr r0, [r0, #0x28]\n\
					movs r1, #0x80\n\
					lsls r1, r1, #1\n\
					ands r0, r1\n\
					cmp r0, r5\n\
					bne _080319B2\n\
					cmp r6, r7\n\
					bne _080319B0\n\
					ldrb r0, [r4]\n\
					pop {r3}\n\
					mov r8, r3\n\
					pop {r4, r5, r6, r7}\n\
					pop {r1}\n\
					bx r1\n\
          .syntax divided\n\
      ");
}

#endif // NONMATCHING

u8 IsWeaponMagic(int weaponty) {
    switch (weaponty) {
        case 0:
        case 1:
        case 2:
        case 3:
            return 0;
        case 5:
        case 6:
        case 7:
            return 1;
    }
}

int GetNearLevel(int lv) {
    int result;

    result = lv + NextRN_N(9) - 4;
    if (result <= 0) {
        return 1;
    }
    return result;
}

#if NONMATCHING

// This one comes down to register choice
int GetUnitArenaWeight(struct Unit *unit, s8 isEnemyWeaponMagic) {
    int statTotal;
    int con;
    int dmgRedStat;
    int maxHP;
    const struct ClassData *cls;

    statTotal = unit->maxHP;
    statTotal = (unit->pow + unit->skl) + statTotal + unit->spd;
    statTotal *= 2;
    statTotal += unit->lck;
    cls = unit->pClassData;
    con = cls->baseCon;
    con += unit->pCharacterData->baseCon;
    statTotal += con;

    if (isEnemyWeaponMagic) {
        dmgRedStat = GetUnitResistance(unit);
    }
    else {
        dmgRedStat = GetUnitDefense(unit);
    }
    statTotal += 2*dmgRedStat;

    if (((unit->pCharacterData->attributes | unit->pClassData->attributes) & 0x40)) {
        statTotal += GetUnitPower(unit);
    }

    return statTotal;
}

#else // NONMATCHING

__attribute__((naked))
int GetUnitArenaWeight(struct Unit *unit, s8 isEnemyWeaponMagic) {
  asm("\n\
      .syntax unified\n\
			push {r4, r5, lr}\n\
			adds r4, r0, #0\n\
			movs r5, #0x12\n\
			ldrsb r5, [r4, r5]\n\
			movs r0, #0x14\n\
			ldrsb r0, [r4, r0]\n\
			adds r0, r0, r5\n\
			movs r2, #0x15\n\
			ldrsb r2, [r4, r2]\n\
			adds r2, r2, r0\n\
			movs r0, #0x16\n\
			ldrsb r0, [r4, r0]\n\
			adds r0, r0, r2\n\
			lsls r5, r0, #1\n\
			movs r0, #0x19\n\
			ldrsb r0, [r4, r0]\n\
			adds r5, r5, r0\n\
			ldr r0, [r4, #4]\n\
			ldrb r0, [r0, #0x11]\n\
			lsls r0, r0, #0x18\n\
			asrs r0, r0, #0x18\n\
			ldr r2, [r4]\n\
			ldrb r2, [r2, #0x13]\n\
			lsls r2, r2, #0x18\n\
			asrs r2, r2, #0x18\n\
			adds r0, r0, r2\n\
			adds r5, r5, r0\n\
			lsls r1, r1, #0x18\n\
			cmp r1, #0\n\
			beq _08031A58\n\
			adds r0, r4, #0\n\
			bl GetUnitResistance\n\
			b _08031A5E\n\
		_08031A58:\n\
			adds r0, r4, #0\n\
			bl GetUnitDefense\n\
		_08031A5E:\n\
			lsls r0, r0, #1\n\
			adds r5, r5, r0\n\
			ldr r0, [r4]\n\
			ldr r1, [r4, #4]\n\
			ldr r0, [r0, #0x28]\n\
			ldr r1, [r1, #0x28]\n\
			orrs r0, r1\n\
			movs r1, #0x40\n\
			ands r0, r1\n\
			cmp r0, #0\n\
			beq _08031A7C\n\
			adds r0, r4, #0\n\
			bl GetUnitPower\n\
			adds r5, r5, r0\n\
		_08031A7C:\n\
			adds r0, r5, #0\n\
			pop {r4, r5}\n\
			pop {r1}\n\
			bx r1\n\
		  .syntax divided\n\
  ");
}

#endif // NONMATCHING

#if NONMATCHING

// This function is *so weird*. As dumb as it looks, I promise that it is
// basically what the real routine does (and I have no idea how it works)
void LoadArenaOpponentStruct(void) {
    struct UnitDefinition idk;
    struct Unit *opponent;
    u8 whateven;
    u8 whateven2;
    u8 writevalue;
    s8 lv;
    s8 other;
    int i;

    writevalue = 0;
    opponent = &gUnknown_0203A910;

    idk.charIndex = 0xFD;
    idk.classIndex = gArenaData.opponentClassId;

    // ?????
    whateven = (-7) & idk.autolevel;
    idk.autolevel = whateven;
    whateven2 = (opponent->level << 3) | (7 & whateven);
    idk.autolevel = whateven2;
    idk.autolevel = whateven2 | 1;

    idk.items[0] = writevalue;
    idk.items[1] = writevalue;
    idk.items[2] = writevalue;
    idk.items[3] = writevalue;
    idk.ai.ai1 = writevalue;
    idk.ai.ai2 = writevalue;
    idk.ai.ai3 = writevalue;
    idk.ai.ai4 = writevalue;

    ClearUnit(opponent);

    opponent->index = 0x80;
    UnitInitFromDefinition(opponent, &idk);
    UnitLoadStatsFromCharacter(opponent, opponent->pCharacterData);

    lv = opponent->level;
    if (gRAMChapterData.chapterStateBits & 0x40) {
        other = lv * 24;
    }
    else {
        other = lv * 12;
    }

    opponent->level = other / 10;

    UnitAutolevel(opponent);

    opponent->level = lv;

    for (i = 0 ; i <= 7 ; i += 1) {
        if (opponent->ranks[i]) {
            opponent->ranks[i] = 0xb5;
        }
    }

    if (opponent->level <= 0) {
        opponent->level = 1;
    }

    if (opponent->level > 20) {
        opponent->level = 20;
    }

    UnitCheckStatCaps(opponent);
    SetUnitHp(opponent, GetUnitMaxHp(opponent));
}

#else // NONMATCHING

__attribute__((naked))
void LoadArenaOpponentStruct(void) {
    asm("\n\
      .syntax unified\n\
    push {r4, r5, r6, lr}\n\
	sub sp, #0x14\n\
	ldr r6, _08031B00  @ gUnknown_0203A910\n\
	mov r1, sp\n\
	movs r3, #0\n\
	movs r0, #0xfd\n\
	strb r0, [r1]\n\
	ldr r4, _08031B04  @ gArenaData\n\
	ldrb r0, [r4, #0x10]\n\
	strb r0, [r1, #1]\n\
	ldrb r0, [r1, #3]\n\
	movs r2, #7\n\
	negs r2, r2\n\
	ands r2, r0\n\
	strb r2, [r1, #3]\n\
	mov r5, sp\n\
	ldrb r1, [r4, #0x12]\n\
	lsls r1, r1, #3\n\
	movs r0, #7\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strb r0, [r5, #3]\n\
	mov r2, sp\n\
	movs r1, #1\n\
	orrs r0, r1\n\
	strb r0, [r2, #3]\n\
	mov r0, sp\n\
	strb r3, [r0, #0xc]\n\
	strb r3, [r0, #0xd]\n\
	strb r3, [r0, #0xe]\n\
	strb r3, [r0, #0xf]\n\
	strb r3, [r0, #0x10]\n\
	strb r3, [r0, #0x10]\n\
	strb r3, [r0, #0x11]\n\
	strb r3, [r0, #0x12]\n\
	strb r3, [r0, #0x13]\n\
	adds r0, r6, #0\n\
	bl ClearUnit\n\
	movs r0, #0x80\n\
	strb r0, [r6, #0xb]\n\
	adds r0, r6, #0\n\
	mov r1, sp\n\
	bl UnitInitFromDefinition\n\
	ldr r1, [r6]\n\
	adds r0, r6, #0\n\
	bl UnitLoadStatsFromCharacter\n\
	movs r4, #8\n\
	ldrsb r4, [r6, r4]\n\
	ldr r0, _08031B08  @ gRAMChapterData\n\
	ldrb r1, [r0, #0x14]\n\
	movs r0, #0x40\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08031B0C\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #3\n\
	b _08031B12\n\
	.align 2, 0\n\
_08031B00: .4byte gUnknown_0203A910\n\
_08031B04: .4byte gArenaData\n\
_08031B08: .4byte gRAMChapterData\n\
_08031B0C:\n\
	lsls r0, r4, #1\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #2\n\
_08031B12:\n\
	movs r1, #0xa\n\
	bl __divsi3\n\
	strb r0, [r6, #8]\n\
	adds r0, r6, #0\n\
	bl UnitAutolevel\n\
	strb r4, [r6, #8]\n\
	movs r2, #0\n\
	adds r3, r6, #0\n\
	adds r3, #0x28\n\
	movs r4, #0xb5\n\
_08031B2A:\n\
	adds r1, r3, r2\n\
	ldrb r0, [r1]\n\
	cmp r0, #0\n\
	beq _08031B34\n\
	strb r4, [r1]\n\
_08031B34:\n\
	adds r2, #1\n\
	cmp r2, #7\n\
	ble _08031B2A\n\
	movs r0, #8\n\
	ldrsb r0, [r6, r0]\n\
	cmp r0, #0\n\
	bgt _08031B46\n\
	movs r0, #1\n\
	strb r0, [r6, #8]\n\
_08031B46:\n\
	movs r0, #8\n\
	ldrsb r0, [r6, r0]\n\
	cmp r0, #0x14\n\
	ble _08031B52\n\
	movs r0, #0x14\n\
	strb r0, [r6, #8]\n\
_08031B52:\n\
	adds r0, r6, #0\n\
	bl UnitCheckStatCaps\n\
	adds r0, r6, #0\n\
	bl GetUnitMaxHp\n\
	adds r1, r0, #0\n\
	adds r0, r6, #0\n\
	bl SetUnitHp\n\
	add sp, #0x14\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
      .syntax divided\n\
    ");
}

#endif // NONMATCHING

void LoadArenaWeapons(void) {
    char candidates[8];

    memcpy(candidates, gUnknown_080D7F5C, 8);

    gArenaData.playerWeapon = MakeNewItem(candidates[gArenaData.playerWpnType]);
    gArenaData.opponentWeapon = MakeNewItem(candidates[gArenaData.opponentWpnType]);

    gArenaData.range = 1;

    if (gArenaData.playerWpnType == 3) {
        gArenaData.range = 2;
    }

    if (gArenaData.opponentWpnType == 3) {
        gArenaData.range = 2;
    }
}

#if NONMATCHING

// The only difference is that the gUnknown_080D7F64 variable pool is in the
// wrong place; it's even correct wrt register alloc
u16 GetArenaBetterItem(int wptype) {
    u8 candidates[0x1C];
    u16 wp;
    u8 *ptr;

    wp = wptype;

    memcpy(candidates, gUnknown_080D7F64, 0x1A);

    ptr = candidates;

    do {
        if (GetItemIndex(wp) == *ptr) {
            ptr += 1;
            if (*ptr) {
                return MakeNewItem(*ptr);
            }
            else {
                return wp;
            }
        }
        else {
            ptr += 1;
        }
    }
    while (*ptr != 0xFF);
}

#else // NONMATCHING

__attribute__((naked))
u16 GetArenaBetterItem(int wptype) {
    asm("\n\
      .syntax unified\n\
	push {r4, r5, lr}\n\
	sub sp, #0x1c\n\
	lsls r0, r0, #0x10\n\
	lsrs r5, r0, #0x10\n\
	ldr r1, _08031BD8  @ gUnknown_080D7F64\n\
	mov r0, sp\n\
	movs r2, #0x1a\n\
	bl memcpy\n\
	mov r4, sp\n\
	b _08031C02\n\
	.align 2, 0\n\
_08031BD8: .4byte gUnknown_080D7F64\n\
_08031BDC:\n\
	adds r0, r5, #0\n\
	bl GetItemIndex\n\
	adds r1, r0, #0\n\
	ldrb r2, [r4]\n\
	cmp r1, r2\n\
	bne _08031C00\n\
	adds r4, #1\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	beq _08031BFC\n\
	bl MakeNewItem\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	b _08031C08\n\
_08031BFC:\n\
	adds r0, r5, #0\n\
	b _08031C08\n\
_08031C00:\n\
	adds r4, #1\n\
_08031C02:\n\
	ldrb r1, [r4]\n\
	cmp r1, #0xff\n\
	bne _08031BDC\n\
_08031C08:\n\
	add sp, #0x1c\n\
	pop {r4, r5}\n\
	pop {r1}\n\
	bx r1\n\
      .syntax divided\n\
    ");
}

#endif

