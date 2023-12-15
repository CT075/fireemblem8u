#ifndef GUARD_eventinfo_H
#define GUARD_eventinfo_H

#include "global.h"
#include "event.h"
#include "bmunit.h"

enum { EVENT_NOSCRIPT = 1 };

enum
{
    TILE_COMMAND_NONE,

    TILE_COMMAND_VISIT    = 0x10,
    TILE_COMMAND_SEIZE    = 0x11,

    TILE_COMMAND_DOOR     = 0x12,
    TILE_COMMAND_BRIDGE   = 0x13,
    TILE_COMMAND_CHEST    = 0x14,
    TILE_COMMAND_15       = 0x15,
    TILE_COMMAND_ARMORY   = 0x16,
    TILE_COMMAND_VENDOR   = 0x17,
    TILE_COMMAND_SECRET   = 0x18,
    TILE_COMMAND_SHOP_UNK = 0x19,

    TILE_COMMAND_20       = 0x20,
};

enum {
    TUTORIAL_EVT_TYPE_PHASECHANGE = 0,
    TUTORIAL_EVT_TYPE_POSTACTION = 1,
    TUTORIAL_EVT_TYPE_ONSELECT = 2,
    TUTORIAL_EVT_TYPE_DESTSELECTED = 3,
    TUTORIAL_EVT_TYPE_AFTERMOVE = 4,
    TUTORIAL_EVT_TYPE_FORECAST = 5,
    TUTORIAL_EVT_TYPE_PLAYERPHASE = 6,
};

enum char_identifier_event {
    CHAR_EVT_PLAYER_LEADER = 0,
    CHAR_EVT_ACTIVE_UNIT = -1,
    CHAR_EVT_POSITION_AT_SLOTB = -2,
    CHAR_EVT_SLOT2 = -3,
};

struct EventInfo {
    /* 00 */ EventListScr * listScript;
    /* 04 */ u32 script;
    /* 08 */ u32 flag;
    /* 0C */ u32 commandId;
    /* 10 */ u32 givenMoney;
    /* 14 */ u32 givenItem;
    /* 18 */ s8 xPos;
    /* 19 */ s8 yPos;
    /* 1A */ u8 pidA;
    /* 1B */ u8 pidB;
};

struct EventListCmdInfo {
    /* 00 */ int (*func)(struct EventInfo* buf);
    /* 04 */ int length;
};

struct SupportTalkEnt {
    /* 00 */ u16 unitA;
    /* 02 */ u16 unitB;

    /* 04 */ u16 msgSupports[3];

    /* 0A */ u16 _pad1;
    /* 0C */ u16 unk_0c_0 : 5;
    /* 0C */ u16 unk_0c_5 : 5;
    /* 0D */ u16 unk_0d_3 : 5;
} BITPACKED;

struct BattleTalkEnt {
    /* 00 */ u8 pid;
    /* 01 */ u8 chapter;
    /* 04 */ u32 msg;
    /* 08 */ u32 flag;
};

struct BattleTalkExtEnt {
    /* 00 */ u16 pidA;
    /* 02 */ u16 pidB;
    /* 04 */ u16 chapter;
    /* 06 */ u16 flag;
    /* 08 */ u16 msg;
    /* 0C */ u32 unk_0c;
};

struct DefeatTalkEnt {
    /* 00 */ u16 pid;
    /* 02 */ u8 route;
    /* 03 */ u8 chapter;
    /* 04 */ u16 flag;
    /* 06 */ u16 msg;
    /* 08 */ u32 event;
};

struct ForceDeploymentEnt {
    /* 00 */ u16 pid;
    /* 01 */ u8 route;
    /* 02 */ u8 chapter;
};

void StartEventFromInfo(struct EventInfo* info, u8 execType);
struct EventInfo* SearchAvailableEvent(struct EventInfo* info);
struct EventInfo* SearchNextAvailableEvent(struct EventInfo* info);
bool EventInfoCheckTalk(struct EventInfo * info, u8 pidA, u8 pidB);
bool CheckActiveUnitArea(int x1, int y1, int x2, int y2);
bool CheckAnyBlueUnitArea(int x1, int y1, int x2, int y2);
bool CheckAnyBlueUnitArea1(void);
bool CheckAnyBlueUnitArea2(void);
bool CheckAnyBlueUnitArea3(void);
bool CheckAnyBlueUnitArea4(void);
bool CheckAnyBlueUnitArea5(void);
bool CheckAnyBlueUnitArea6(void);
bool CheckAnyBlueUnitArea7(void);
bool CheckAnyRedUnitArea(int x1, int y1, int x2, int y2);
bool IsThereClosedChestAt(s8 x, s8 y);
void StartAvailableChestTileEvent(s8, s8);
bool IsThereClosedDoorAt(s8 x, s8 y);
void StartAvailableDoorTileEvent(s8, s8);
bool IsThereTileCommand15(s8 x, s8 y);
bool ShouldCallEndEvent(void);
void MaybeCallEndEvent_(void);
void CallEndEvent(void);
bool sub_80832C4(void);
bool sub_80832C8(void);
bool sub_80832CC(void);
bool sub_80832D0(void);
bool sub_80832D4(void);
bool CheckWin(void);
void MaybeCallEndEvent(void);
struct TrapData* GetTrapPointer(void);
struct TrapData* GetHardModeTrapPointer(void);
void* GetChapterAllyUnitDataPointer(void);
const struct UnitDefinition * GetChapterEnemyUnitDefinitions(void);
void GetChapterSkirmishLeaderClasses(u8 chapterId, u8* list);
bool sub_8083424(void);
struct BattleTalkEnt* GetAvailableBattleTalk(u8 pid, struct BattleTalkEnt* it);
bool ShouldCallBattleQuote(u8 charA, u8 charB);
void CallBattleQuoteEventsIfAny(u8 charA, u8 charB);
void SetPidDefeatedFlag(u8 pid, int flag);
bool ShouldDisplayDefeatTalkForPid(u8 pid);
void DisplayDefeatTalkForPid(u8 pid);
void sub_8083654(u16 pid);
void StartSupportTalk(u8, u8, int);
void StartSupportViewerTalk(u8, u8, int);
// ?? GetSupportTalkSong_(u8 unused, u8 pidA, u8 pidB, int rank);
void sub_80837B0(void);
bool sub_80837D8(void);
bool sub_80837F8(void);
int EvCheck00_Always(struct EventInfo* info);
// ??? EvCheck01_AFEV(???);
// ??? EvCheck02_TURN(???);
// ??? EvCheck03_CHAR(???);
// ??? EvCheck04_CHARASM(???);
// ??? EvCheck05_LOCA(???);
// ??? EvCheck06_VILL(???);
// ??? EvCheck07_CHES(???);
// ??? EvCheck08_DOOR(???);
// ??? EvCheck09_(???);
// ??? EvCheck0A_SHOP(???);
// ??? EvCheck0B_AREA(???);
// ??? EvCheck0C_Never(???);
// ??? EvCheck0D_Never(???);
// ??? EvCheck0E_(???);
// ??? EvCheck0F_(???);
// ??? EvCheck10_(???);
// ??? SetChapterFlag(???);
// ??? ClearChapterFlag(???);
void ResetChapterFlags(void);
// ??? CheckChapterFlag(???);
// ??? SetPermanentFlag(???);
// ??? ClearPermanentFlag(???);
void ResetPermanentFlags(void);
bool CheckPermanentFlagFrom(int, void*);
bool CheckPermanentFlag(int);
void SetFlag(int);
void ClearFlag(int);
bool CheckFlag(int);
u8 *GetPermanentFlagBits();
int GetPermanentFlagBitsSize();
u8 *GetChapterFlagBits();
int GetChapterFlagBitsSize();
void EnqueueTutEvent(uintptr_t a, u8 b);
bool RunTutorialEvent(u8 type);
bool RunPhaseSwitchEvents(void);
bool CheckForCharacterEvents(u8 pidA, u8 pidB);
void StartCharacterEvent(u8, u8);
u16 sub_8083FFC(u16 itemId);
int GetAvailableTileEventCommand(s8, s8);
void StartAvailableTileEvent(s8, s8);
bool CheckForWaitEvents(void);
void RunWaitEvents(void);
bool TryCallSelectEvents(void);
bool StartDestSelectedEvent(void);
bool StartAfterUnitMovedEvent(void);
bool CheckBattleForecastTutorialEvent(void);
void StartBattleForecastTutorialEvent(void);
void StartPlayerPhaseStartTutorialEvent(void);
void ClearActiveEventRegistry(void);
void RegisterEventActivation(u32, u16);
u16 GetEventTriggerId(const void * script);
void SetFlag82(void);
bool CheckFlag82(void);
struct BattleTalkExtEnt* GetBattleQuoteEntry(u16, u16);
struct DefeatTalkEnt* GetDefeatTalkEntry(u16);
struct SupportTalkEnt* GetSupportTalkEntry(u16, u16);
u16 GetSupportTalkSong(u16, u16, u8);
struct SupportTalkEnt* GetSupportTalkList();
bool IsCharacterForceDeployed_(u16 pid);
int IsSethLArachelMyrrhInnes(u16 pid);

struct ActiveEventRegistry {
    /* 00 */ u32 scripts[10];
    /* 28 */ s16 flags[10];
    /* 3C */ s16 idx;
};

extern struct ActiveEventRegistry gActiveEventRegistry;

extern struct BattleTalkExtEnt gBattleTalkList[];
extern struct DefeatTalkEnt gDefeatTalkList[];
extern struct SupportTalkEnt gSupportTalkList[];
extern struct ForceDeploymentEnt gForceDeploymentList[];
extern u8 gPidList_SethLArachelMyrrhInnes[];

extern CONST_DATA EventListScr EventScr_CallOnTutorialMode[];
extern CONST_DATA EventListScr EventScr_CallOnHardMode[];
extern CONST_DATA EventListScr EventScr_CallOnChapterNumber[];
extern CONST_DATA EventListScr EventScr_CallIfCommonMode[];
extern CONST_DATA EventListScr EventScr_CallWithModeCheck[];
extern CONST_DATA EventListScr EventScr_SetFlagIfPlayedThrough[];
extern CONST_DATA EventListScr Event_TextWithBG[];
extern CONST_DATA EventListScr EventScr_UnTriggerIfNotUnit[];
extern CONST_DATA EventListScr EventScr_UnTriggerIfNotFaction[];
extern CONST_DATA EventListScr EventScr_EndAndResetTriggEvent[];
extern CONST_DATA EventListScr EventScr_9EE1E8[];
extern CONST_DATA EventListScr EventScr_9EE218[];
extern CONST_DATA EventListScr EventScr_9EE248[];
extern CONST_DATA EventListScr EventScr_LoadReinforce[];
extern CONST_DATA EventListScr EventScr_LoadReinforceHardMode[];
extern CONST_DATA EventListScr EventScr_TextShowWithFadeIn[];
extern CONST_DATA EventListScr EventScr_SetBackground[];
extern CONST_DATA EventListScr Event_TextWithBG[];
extern CONST_DATA EventListScr EventScr_ApplyActiveUnitTileChange[];
extern CONST_DATA EventListScr EventScr_ApplyTileChangeForFactionIfAlly[];
extern CONST_DATA EventListScr EventScr_ApplyTileChangeForFactionIfEnemy[];
extern CONST_DATA EventListScr EventScr_ApplyTileChangeForFactionIfNPC[];
extern CONST_DATA EventListScr EventScr_ApplyTileChangeForFaction[];
extern CONST_DATA EventListScr EventScr_9EE39C[];
extern CONST_DATA EventListScr EventScr_MoveUnitS2ToLeader[];
extern CONST_DATA EventListScr EventScr_FormatMoveUnit[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial0_Exec[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial1_Exec[];

extern CONST_DATA EventListScr EventScr_Prologue_BeginingScene[];
extern CONST_DATA EventListScr EventScr_Prologue_RenaisThroneCutscene[];
extern CONST_DATA EventListScr EventScr_Prologue_GiveRapier[];
extern CONST_DATA EventListScr EventScr_Prologue_ONeillSpawn[];
extern CONST_DATA EventListScr EventScr_Prologue_OneEmimyLeft[];
extern CONST_DATA EventListScr EventScr_Prologue_ONeillAttack[];
extern CONST_DATA EventListScr EventScr_Prologue_EndingScene[];
extern CONST_DATA EventListScr EventScr_Prologue_EirikaAttacked[];
extern CONST_DATA EventListScr EventScr_Prologue_Turn1[];
extern CONST_DATA EventListScr EventScr_Prologue_Turn2[];
extern CONST_DATA EventListScr EventScr_Prologue_Turn3[];
extern CONST_DATA EventListScr EventScr_Prologue_ExecTut[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial0[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial1[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial2[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial3[];
extern CONST_DATA EventListScr EventScr_Prologue_TutMessageTurn1[];
extern CONST_DATA EventListScr EventScr_Prologue_TutMessageTurn2[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial4[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial5[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial6[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial7[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial8[];
extern CONST_DATA EventListScr EventScr_Prologue_Tutorial9[];
extern CONST_DATA EventListScr EventScr_Prologue_OneillSethBattle[];
extern CONST_DATA EventListScr EventScr_Prologue_TutEirikaAttack[];
extern CONST_DATA EventListScr EventScr_Prologue_TutorialA[];
extern CONST_DATA EventListScr EventScr_Prologue_TutorialB[];
extern CONST_DATA EventListScr EventScr_Prologue_TutorialC[];
extern CONST_DATA EventListScr EventScr_Prologue_TutorialD[];
extern CONST_DATA EventListScr EventScr_Prologue_TutorialE[];
extern CONST_DATA EventListScr EventScr_Prologue_9EF828[];
extern CONST_DATA EventListScr EventScr_Ch1_BeginingScene[];
extern CONST_DATA EventListScr EventScr_Ch1_Turn1Player[];
extern CONST_DATA EventListScr EventScr_Ch1_Turn1Enemy[];
extern CONST_DATA EventListScr EventScr_Ch1_Turn_AllyReinforceArrive[];
extern CONST_DATA EventListScr EventScr_Ch1_Misc_DefeatBoss[];
extern CONST_DATA EventListScr EventScr_Ch1_EndingScene[];
extern CONST_DATA EventListScr EventScr_Ch1_Talk_SethFranz[];
extern CONST_DATA EventListScr EventScr_Ch1_Talk_EirikaFranz[];
extern CONST_DATA EventListScr EventScr_Ch1_Loca_Visit1[];
extern CONST_DATA EventListScr EventScr_Ch1_Loca_Visit2[];
extern CONST_DATA EventListScr EventScr_Ch1_Misc_Area[];
extern CONST_DATA EventListScr EventScr_Ch1_Turn_EnemyReinforceArrive[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_GuideWTA[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_EirikaVisitHouseIdle1[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_EirikaVisitHouseIdle2[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_EirikaVisitHouseEnd[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_GuideTerrainHeal[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_OnBeginning[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_GuideMsg944[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_GilliamBattle[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_TradeSelectGalliamIdle1[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_TradeSelectGalliamIdle2[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_TradeSelectGalliamEnd[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_AfterTrade[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_PostTradeAndItemUseAction[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_GuideMsgSeize[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_ChooseSethTurn1[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_SethMoveToEnemy[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_BeforeSethMoveToEnemy[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_AfterSethMoveToEnemy[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_GuideOnBKSEL[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_AfterSethBattleEirikaVisit[];
extern CONST_DATA EventListScr EventScr_Ch1Tut_MsgOnGuideOption[];

extern struct UnitDefinition UnitDef_Event_PrologueAlly[];
extern struct UnitDefinition UnitDef_Event_PrologueEnemy[];
extern struct UnitDefinition UnitDef_Event_PrologueThroneRoomUnits[];
extern struct UnitDefinition UnitDef_Event_PrologueMessager[];
extern struct UnitDefinition UnitDef_Event_PrologueGradoRoyals[];
extern struct UnitDefinition UnitDef_Event_PrologueGradoShamans[];
extern struct UnitDefinition UnitDef_Event_PrologueGradoCavalry[];
extern struct UnitDefinition UnitDef_Event_PrologueEscapees[];
extern struct UnitDefinition UnitDef_Event_PrologueValterGroup[];
extern struct UnitDefinition UnitDef_Event_Ch1Ally[];
extern struct UnitDefinition UnitDef_Event_Ch1Enemy[];
extern struct UnitDefinition UnitDef_Event_Ch1AllyReinforce[];
extern struct UnitDefinition UnitDef_Event_Ch1EnemyReinforce[];
extern struct UnitDefinition UnitDef_Event_Ch1NPC[];

#endif // GUARD_eventinfo_H
