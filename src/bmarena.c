#include "global.h"
#include "bmunit.h"
#include "rng.h"

extern u8 IsWeaponMagic(u8 weaponty);
extern u8 GetNearLevel(u8 lv);
extern void LoadArenaOpponentStruct(void);
extern void LoadArenaWeapons(void);
extern u8 AdjustArenaOpponentPower(void);
extern u8 PrepareBalancedArenaFight(void);
extern short GetUnitArenaWeight(struct Unit *unit, s8 isEnemyWeaponMagic);
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

u8 sub_803190C(u32 wpnty) {
    u8 *something;
    u8 *loopptr;
    int promoted;
    int ctr;
    const struct ClassData *cls;
    int iters;

    ctr = 0;
    something = NULL;

    if (wpnty <= 7) {
        switch (wpnty) {
            case 0:
            case 1:
            case 2:
                loopptr = &gUnknown_0859D9FC;
                break;
            case 3:
                loopptr = &gUnknown_0859DA4A;
                break;
            case 4:
                // Camdar: I've no idea how to match this without the goto
                goto afterswitch;
            case 5:
            case 6:
            case 7:
                loopptr = &gUnknown_0859DA22;
                break;
        }
        something = loopptr;
    }
afterswitch:

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
            cls = GetClassData(*loopptr);
            if ((cls->attributes & 0x0100) == promoted) { break; }
            loopptr += 1;
        }
        if (ctr == iters) { break; }
        ctr += 1;
        loopptr += 1;
    }

    return *loopptr;
}

