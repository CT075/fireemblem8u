#include "global.h"
#include "bmunit.h"
#include "rng.h"

extern void LoadArenaOpponentStruct(void);
extern void LoadArenaWeapons(void);
extern u8 AdjustArenaOpponentPower(void);
extern u8 PrepareBalancedArenaFight(void);
extern void sub_8031EA0(void);
extern void sub_8031EE4(u8 idk);
extern void sub_8031FC8(void);

extern void StoreRNState(u16 *seeds);
extern void LoadRNState(const u16 *seeds);
extern u16 gUnknown_0203A95E;

extern u8 gUnknown_0859D9FC;
extern u8 gUnknown_0859DA4A;
extern u8 gUnknown_0859DA22;

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
    const struct ClassData *cls;

    statTotal = (unit->maxHP+unit->pow+unit->skl+unit->spd)*2 + unit->lck;
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
