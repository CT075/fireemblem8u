#ifndef GUARD_BM_UNIT_H
#define GUARD_BM_UNIT_H

// Config
enum { UNIT_LEVEL_MAX = 20 };
enum { UNIT_ITEM_COUNT = 5 };
enum { UNIT_DEFINITION_ITEM_COUNT = 4 };

// Meaningful constants
enum { UNIT_EXP_DISABLED = 0xFF };

struct CharacterData {
    /* 00 */ u16 nameTextId;
    /* 02 */ u16 descTextId;
    /* 04 */ u8 number;
    /* 05 */ u8 defaultClass;
    /* 06 */ u16 portraitId;
    /* 08 */ u8 miniPortrait;
    /* 09 */ u8 affinity;
    /* 0A */ u8 _u0A;

    /* 0B */ s8 baseLevel;
    /* 0C */ s8 baseHP;
    /* 0D */ s8 basePow;
    /* 0E */ s8 baseSkl;
    /* 0F */ s8 baseSpd;
    /* 10 */ s8 baseDef;
    /* 11 */ s8 baseRes;
    /* 12 */ s8 baseLck;
    /* 13 */ s8 baseCon;

    /* 14 */ u8 baseRanks[8];

    /* 1C */ s8 growthHP;
    /* 1D */ s8 growthPow;
    /* 1E */ s8 growthSkl;
    /* 1F */ s8 growthSpd;
    /* 20 */ s8 growthDef;
    /* 21 */ s8 growthRes;
    /* 22 */ s8 growthLck;

    /* 23 */ u8 _u23;
    /* 24 */ u8 _u24;
    /* 25 */ u8 _u25;
    /* 26 */ u8 _u26;
    /* 27 */ u8 _u27;

    /* 28 */ u32 attributes;

    /* 2C */ void* pSupportData;
    /* 30 */ void* _pU30;
};

struct ClassData {
    /* 00 */ u16 nameTextId;
    /* 02 */ u16 descTextId;
    /* 04 */ u8 number;
    /* 05 */ u8 promotion;
    /* 06 */ u8 SMSId;
    /* 07 */ u8 slowWalking;
    /* 08 */ u16 defaultPortraitId;
    /* 0A */ u8 _u0A;

    /* 0B */ s8 baseHP;
    /* 0C */ s8 basePow;
    /* 0D */ s8 baseSkl;
    /* 0E */ s8 baseSpd;
    /* 0F */ s8 baseDef;
    /* 10 */ s8 baseRes;
    /* 11 */ s8 baseCon;
    /* 12 */ s8 baseMov;

    /* 13 */ s8 maxHP;
    /* 14 */ s8 maxPow;
    /* 15 */ s8 maxSkl;
    /* 16 */ s8 maxSpd;
    /* 17 */ s8 maxDef;
    /* 18 */ s8 maxRes;
    /* 19 */ s8 maxCon;

    /* 1A */ u8 classRelativePower;

    /* 1B */ s8 growthHP;
    /* 1C */ s8 growthPow;
    /* 1D */ s8 growthSkl;
    /* 1E */ s8 growthSpd;
    /* 1F */ s8 growthDef;
    /* 20 */ s8 growthRes;
    /* 21 */ s8 growthLck;

    /* 22 */ u8 promotionHP;
    /* 23 */ u8 promotionPow;
    /* 24 */ u8 promotionSkl;
    /* 25 */ u8 promotionSpd;
    /* 26 */ u8 promotionDef;
    /* 27 */ u8 promotionRes;

    /* 28 */ u32 attributes;

    /* 2C */ u8 baseRanks[8];

    /* 34 */ const void* pBattleAnimDef;
    /* 38 */ const s8* pMovCostTable[3]; // standard, rain, snow

    /* 44 */ const s8* pTerrainAvoidLookup;
    /* 48 */ const s8* pTerrainDefenseLookup;
    /* 4C */ const s8* pTerrainResistanceLookup;

    //* 44 */ const s8* pTerrainBonusTables[3]; // def, avo, res

    /* 50 */ const void* _pU50;
};

struct Unit {
    /* 00 */ const struct CharacterData* pCharacterData;
    /* 04 */ const struct ClassData* pClassData;

    /* 08 */ s8 level;
    /* 09 */ u8 exp;
    /* 0A */ u8 _u0A;

    /* 0B */ s8 index;

    /* 0C */ u32 state;

    /* 10 */ s8 xPos;
    /* 11 */ s8 yPos;

    /* 12 */ s8 maxHP;
    /* 13 */ s8 curHP;
    /* 14 */ s8 pow;
    /* 15 */ s8 skl;
    /* 16 */ s8 spd;
    /* 17 */ s8 def;
    /* 18 */ s8 res;
    /* 19 */ s8 lck;

    /* 1A */ s8 conBonus;
    /* 1B */ u8 rescueOtherUnit;
    /* 1C */ u8 ballistaIndex;
    /* 1D */ s8 movBonus;

    /* 1E */ u16 items[UNIT_ITEM_COUNT];
    /* 28 */ u8 ranks[8];

    /* 30 */ u8 statusIndex : 4;
    /* 30 */ u8 statusDuration : 4;

    /* 31 */ u8 torchDuration : 4;
    /* 31 */ u8 barrierDuration : 4;

    /* 32 */ u8 supports[6];
    /* 38 */ u8 unitLeader;
    /* 39 */ u8 supportBits;
    /* 3A */ u8 _u3A;
    /* 3B */ u8 _u3B;

    /* 3C */ struct SMSHandle* pMapSpriteHandle;

    /* 40 */ u16 ai3And4;
    /* 42 */ u8 ai1;
    /* 43 */ u8 ai1data;
    /* 44 */ u8 ai2;
    /* 45 */ u8 ai2data;
    /* 46 */ u8 _u46;
    /* 47 */ u8 _u47;
};

struct UnitDefinition {
    /* 00 */ u8  charIndex;
    /* 01 */ u8  classIndex;
    /* 02 */ u8  leaderCharIndex;

    /* 03 */ u8  autolevel  : 1;
    /* 03 */ u8  allegiance : 2;
    /* 03 */ u8  level      : 5;

    /* 04 */ u16 xPosition  : 6; /* 04:0 to 04:5 */
    /* 04 */ u16 yPosition  : 6; /* 04:6 to 05:3 */
    /* 05 */ u16 genMonster : 1; /* 05:4 */
    /* 05 */ u16 itemDrop   : 1; /* 05:5 */
    /* 05 */ u16 sumFlag    : 1; /* 05:6 */
    /* 05 */ u16 extraData  : 9; /* 05:7 to 06:7 */
    /* 07 */ u16 redaCount  : 8;

    /* 08 */ const void* redas;

    /* 0C */ u8 items[UNIT_DEFINITION_ITEM_COUNT];

    struct {
        /* 10 */ u8 ai1;
        /* 11 */ u8 ai2;
        /* 12 */ u8 ai3;
        /* 13 */ u8 ai4;
    } ai;
};

enum {
    // Unit state constant masks

    US_NONE         = 0,

    US_HIDDEN       = (1 << 0),
    US_UNSELECTABLE = (1 << 1),
    US_DEAD         = (1 << 2),
    US_NOT_DEPLOYED = (1 << 3),
    US_RESCUING     = (1 << 4),
    US_RESCUED      = (1 << 5),
    US_HAS_MOVED    = (1 << 6), // Bad name?
    US_CANTOING     = US_HAS_MOVED, // Alias
    US_UNDER_A_ROOF = (1 << 7),
    US_BIT8 = (1 << 8),
    // = (1 << 9),
    US_HAS_MOVED_AI = (1 << 10),
    US_IN_BALLISTA  = (1 << 11),
    US_DROP_ITEM    = (1 << 12),
    US_GROWTH_BOOST = (1 << 13),
    US_SOLOANIM_1   = (1 << 14),
    US_SOLOANIM_2   = (1 << 15),
    US_BIT16        = (1 << 16),
    // = (1 << 17),
    // = (1 << 18),
    // = (1 << 19),
    US_BIT20        = (1 << 20),
    US_BIT21        = (1 << 21),
    US_BIT22        = (1 << 22),
    // = (1 << 23),
    // = (1 << 24),
    US_BIT25 = (1 << 25),
    US_BIT26 = (1 << 26),
    // = (1 << 27),
    // = (1 << 28),
    // = (1 << 29),
    // = (1 << 30),
    // = (1 << 31),

    // Helpers
    US_UNAVAILABLE = (US_DEAD | US_NOT_DEPLOYED | US_BIT16),
};

enum {
    // Unit status identifiers

    UNIT_STATUS_NONE = 0,

    UNIT_STATUS_POISON = 1,
    UNIT_STATUS_SLEEP = 2,
    UNIT_STATUS_SILENCED = 3,
    UNIT_STATUS_BERSERK = 4,

    UNIT_STATUS_ATTACK = 5,
    UNIT_STATUS_DEFENSE = 6,
    UNIT_STATUS_CRIT = 7,
    UNIT_STATUS_DODGE = 8,

    UNIT_STATUS_SICK = 9,
    UNIT_STATUS_RECOVER = 10,

    UNIT_STATUS_PETRIFY = 11,
    UNIT_STATUS_12 = 12,
    UNIT_STATUS_13 = 13,
};

enum {
    FACTION_BLUE   = 0x00, // player units
    FACTION_GREEN  = 0x40, // ally npc units
    FACTION_RED    = 0x80, // enemy units
    FACTION_PURPLE = 0xC0, // link arena 4th team
};

enum {
    // Character/Class attributes

    CA_NONE = 0,

    CA_MOUNTEDAID = (1 << 0),
    CA_CANTO = (1 << 1),
    CA_STEAL = (1 << 2),
    CA_LOCKPICK = (1 << 3),
    CA_DANCE = (1 << 4),
    CA_PLAY = (1 << 5),
    CA_CRITBONUS = (1 << 6),
    CA_BALLISTAE = (1 << 7),
    CA_PROMOTED = (1 << 8),
    CA_SUPPLY = (1 << 9),
    CA_MOUNTED = (1 << 10),
    CA_WYVERN = (1 << 11),
    CA_PEGASUS = (1 << 12),
    CA_LORD = (1 << 13),
    CA_FEMALE = (1 << 14),
    CA_BOSS = (1 << 15),
    CA_LOCK_1 = (1 << 16),
    CA_LOCK_2 = (1 << 17),
    CA_LOCK_3 = (1 << 18), // Dragons or Monster depending of game
    CA_MAXLEVEL10 = (1 << 19),
    CA_UNSELECTABLE = (1 << 20),
    CA_TRIANGLEATTACK_PEGASI = (1 << 21),
    CA_TRIANGLEATTACK_ARMORS = (1 << 22),
    CA_BIT_23 = 0x00800000,
    // = 0x01000000,
    CA_LETHALITY = 0x02000000,
    CA_MAGICSEAL = 0x04000000,
    CA_SUMMON = 0x08000000,
    CA_LOCK_4 = 0x10000000,
    CA_LOCK_5 = 0x20000000,
    CA_LOCK_6 = 0x40000000,
    CA_LOCK_7 = 0x80000000,

    // Helpers
    CA_REFRESHER = CA_DANCE | CA_PLAY,
};

enum {
    // To check result of GetUnit[Item]UseBits

    UNIT_USEBIT_WEAPON = (1 << 0),
    UNIT_USEBIT_STAFF  = (1 << 1),
};

// TODO: MOVE ELSEWHERE (bmbattle?)
struct BattleUnit {
    /* 00 */ struct Unit unit;

    /* 48 */ u16 weaponAfter;
    /* 4A */ u16 weaponBefore;
    /* 4C */ u32 weaponAttributes;
    /* 50 */ u8 weaponType;
    /* 51 */ u8 weaponSlotIndex;

    /* 52 */ u8 canCounter;

    /* 53 */ s8 WTHitModifier;
    /* 54 */ s8 WTAtkModifier;

    /* 55 */ u8 terrainIndex;
    /* 56 */ s8 terrainDefense;
    /* 57 */ s8 terrainAvoid;
    /* 58 */ s8 terrainResistance;
    /* 59 */ u8 _u59;

    /* 5A */ u16 battleAttack;
    /* 5C */ u16 battleDefense;
    /* 5E */ u16 battleAttackSpeed;
    /* 60 */ u16 battleHit;
    /* 62 */ u16 battleAvoid;
    /* 64 */ u16 battleEffectiveHit;
    /* 66 */ u16 battleCrit;
    /* 68 */ u16 battleDodge;
    /* 6A */ u16 battleEffectiveCrit;
    /* 6C */ u16 battleSilencerRate;

    /* 6E */ u8 expGain;
    /* 6F */ u8 statusOut;
    /* 70 */ u8 levelPrevious;
    /* 71 */ u8 expPrevious;

    /* 72 */ u8 currentHP;

    /* 73 */ s8 changeHP;
    /* 74 */ s8 changePow;
    /* 75 */ s8 changeSkl;
    /* 76 */ s8 changeSpd;
    /* 77 */ s8 changeDef;
    /* 78 */ s8 changeRes;
    /* 79 */ s8 changeLck;
    /* 7A */ s8 changeCon;

    /* 7B */ s8 wexpMultiplier;
    /* 7C */ s8 nonZeroDamage;
    /* 7D */ s8 weaponBroke;

    /* 7E */ u8 _u7E;
    /* 7F */ u8 _u7F;
};

// TODO: MOVE ELSEWHERE
extern const struct ClassData gClassData[]; // gClassData
extern const struct CharacterData gCharacterData[]; // gCharacterData

void ClearUnits(void);
void ClearUnit(struct Unit* unit);
void CopyUnit(struct Unit* from, struct Unit* to);
struct Unit* GetFreeUnit(int faction);
struct Unit* GetFreeBlueUnit(const struct UnitDefinition* uDef);
int GetUnitFogViewRange(struct Unit* unit);
void SetUnitStatus(struct Unit* unit, int statusId);
void SetUnitStatusExt(struct Unit* unit, int status, int duration);
int GetUnitSMSId(struct Unit* unit);
s8 UnitAddItem(struct Unit* unit, int item);
void UnitClearInventory(struct Unit* unit);
void UnitRemoveInvalidItems(struct Unit* unit);
int GetUnitItemCount(struct Unit* unit);
s8 UnitHasItem(struct Unit* unit, int item);
int LoadUnits(const struct UnitDefinition* uDef);
void sub_8017A54(struct Unit* unit);
s8 CanClassWieldWeaponType(u8 classId, u8 wpnType);
struct Unit* LoadUnit(const struct UnitDefinition* uDef);
void UnitInitFromDefinition(struct Unit* unit, const struct UnitDefinition* uDef);
void UnitLoadItemsFromDefinition(struct Unit* unit, const struct UnitDefinition* uDef);
void UnitLoadStatsFromChracter(struct Unit* unit, const struct CharacterData* character);
void FixROMUnitStructPtr(struct Unit* unit);
void UnitLoadSupports(struct Unit* unit);
void UnitAutolevelWExp(struct Unit* unit, const struct UnitDefinition* uDef);
void UnitAutolevelCore(struct Unit* unit, u8 classId, int levelCount);
void UnitAutolevelPenalty(struct Unit* unit, u8 classId, int levelCount);
void UnitApplyBonusLevels(struct Unit* unit, int levelCount);
void UnitAutolevel(struct Unit* unit);
void UnitAutolevelRealistic(struct Unit* unit);
void UnitCheckStatCaps(struct Unit* unit);
struct Unit* GetUnitFromCharId(int charId);
struct Unit* GetUnitFromCharIdAndFaction(int charId, int faction);
s8 CanUnitRescue(struct Unit* actor, struct Unit* target);
void UnitRescue(struct Unit* actor, struct Unit* target);
void UnitDrop(struct Unit* actor, int xTarget, int yTarget);
s8 UnitGive(struct Unit* actor, struct Unit* target);
void UnitKill(struct Unit* unit);
void UnitChangeFaction(struct Unit* unit, int faction);
void UnitFinalizeMovement(struct Unit* unit);
void UnitGetDeathDropLocation(struct Unit* unit, int* xOut, int* yOut);
void UnitBeginAction(struct Unit* unit);
void UnitBeginCantoAction(struct Unit* unit);
void MoveActiveUnit(int x, int y);
void ClearActiveFactionGrayedStates(void);
void TickActiveFactionTurn(void);
void SetAllUnitNotBackSprite(void); // TODO: better name
void UnitUpdateUsedItem(struct Unit* unit, int itemSlot);
int GetUnitAid(struct Unit* unit);
int GetUnitMagBy2Range(struct Unit* unit);
s8 UnitHasMagicRank(struct Unit* unit);
void sub_8018A7C(struct Unit* unit, int x, int y);
int GetUnitKeyItemSlotForTerrain(struct Unit* unit, int terrain);
int GetUnitAidIconId(u32 attributes);
int GetUnitWeaponUsabilityBits(struct Unit* unit);
int GetCombinedEnemyWeaponUsabilityBits(void);
s8 CanUnitMove(void);
s8 IsPositionMagicSealed(int x, int y);
s8 IsUnitMagicSealed(struct Unit* unit);
int GetUnitLastItem(struct Unit* unit);
const s8* GetUnitMovementCost(struct Unit* unit);
int GetClassSMSId(int classId);
void UpdatePrevDeployStates(void);
void LoadUnitPrepScreenPositions(void);
void ClearTemporaryUnits(void);
s8 IsUnitSlotAvailable(int faction);
void sub_8018F80(void);
void sub_8018FC0(void);
int CountAvailableBlueUnits(void);
int CountRedUnits(void);
int CountGreenUnits(void);
void ClearCutsceneUnits(void);
void sub_8019108(void);
int GetUnitCurrentHp(struct Unit* unit);
int GetUnitMaxHp(struct Unit* unit);
int GetUnitPower(struct Unit* unit);
int GetUnitSkill(struct Unit* unit);
int GetUnitSpeed(struct Unit* unit);
int GetUnitDefense(struct Unit* unit);
int GetUnitResistance(struct Unit* unit);
int GetUnitLuck(struct Unit* unit);
int GetUnitPortraitId(struct Unit* unit);
int GetUnitMiniPortraitId(struct Unit* unit);
int GetUnitLeaderCharId(struct Unit* unit);
void SetUnitLeaderCharId(struct Unit* unit, int charId);
void SetUnitHp(struct Unit* unit, int value);
void AddUnitHp(struct Unit* unit, int amount);
char* GetUnitRescueName(struct Unit* unit);
char* GetUnitStatusName(struct Unit* unit);
struct Unit* GetUnit(int id);
const struct ClassData* GetClassData(int classId);
const struct CharacterData* GetCharacterData(int charId);
void UnitRemoveItem(struct Unit* unit, int slot);
s8 CanUnitCrossTerrain(struct Unit* unit, int terrain);

#define UNIT_IS_VALID(aUnit) ((aUnit) && (aUnit)->pCharacterData)

#define UNIT_FACTION(aUnit) ((aUnit)->index & 0xC0)

#define UNIT_CATTRIBUTES(aUnit) ((aUnit)->pCharacterData->attributes | (aUnit)->pClassData->attributes)

#define UNIT_MHP_MAX(aUnit) (UNIT_FACTION(unit) == FACTION_RED ? 120 : 60)
#define UNIT_POW_MAX(aUnit) ((aUnit)->pClassData->maxPow)
#define UNIT_SKL_MAX(aUnit) ((aUnit)->pClassData->maxSkl)
#define UNIT_SPD_MAX(aUnit) ((aUnit)->pClassData->maxSpd)
#define UNIT_DEF_MAX(aUnit) ((aUnit)->pClassData->maxDef)
#define UNIT_RES_MAX(aUnit) ((aUnit)->pClassData->maxRes)
#define UNIT_LCK_MAX(aUnit) (30)
#define UNIT_CON_MAX(aUnit) ((aUnit)->pClassData->maxCon)
#define UNIT_MOV_MAX(aUnit) (15)

#define UNIT_CON_BASE(aUnit) ((aUnit)->pClassData->baseCon + (aUnit)->pCharacterData->baseCon)
#define UNIT_MOV_BASE(aUnit) ((aUnit)->pClassData->baseMov)

#define UNIT_CON(aUnit) (UNIT_CON_BASE(aUnit) + (aUnit)->conBonus)
#define UNIT_MOV(aUnit) ((aUnit)->movBonus + UNIT_MOV_BASE(aUnit))

#define UNIT_IS_GORGON_EGG(aUnit) (((aUnit)->pClassData->number == CLASS_GORGONEGG) || ((aUnit)->pClassData->number == CLASS_GORGONEGG2))
#define UNIT_IS_PHANTOM(aUnit) ((aUnit)->pClassData->number == CLASS_PHANTOM)

#endif // GUARD_BM_UNIT_H
