#ifndef GUARD_UI_SELECTTARGET_H
#define GUARD_UI_SELECTTARGET_H

enum { MAX_TARGET_LIST_COUNT = 64 };

struct SelectTarget
{
    /* 00 */ s8 x, y;
    /* 02 */ s8 uid;
    /* 03 */ u8 extra;

    /* 04 */ struct SelectTarget* next;
    /* 08 */ struct SelectTarget* prev;
};

struct SelectInfo
{
    /* 00 */ void(*onInit)(ProcPtr proc);
    /* 04 */ void(*onEnd)(ProcPtr proc);

    /* 08 */ void(*onUnk08)(ProcPtr proc);

    /* 0C */ void(*onSwitchIn)(ProcPtr proc, struct SelectTarget* target);
    /* 10 */ void(*onSwitchOut)(ProcPtr proc, struct SelectTarget* target);

    /* 14 */ u8(*onSelect)(ProcPtr proc, struct SelectTarget* target);
    /* 18 */ u8(*onCancel)(ProcPtr proc, struct SelectTarget* target);
    /* 1C */ u8(*onHelp)(ProcPtr proc, struct SelectTarget* target);
};

struct SelectTargetProc {
    /* 00 */ PROC_HEADER;

    /* 29 */ u8 _pad[0x2B - 0x29];
    /* 2C */ const struct SelectInfo* selectRoutines;
    /* 30 */ struct SelectTarget* currentTarget;
    /* 34 */ u8 unk_34;
    /* 35 */ u8 _pad2[0x38 - 0x35];
    /* 38 */ u8(*onAPress)(ProcPtr proc, struct SelectTarget*);
};

void InitTargets(int xRoot, int yRoot);
void AddTarget(int x, int y, int uId, int tId);
void LinkTargets(void);
void TargetSelection_GetRealCursorPosition(ProcPtr proc, int* xPos, int* yPos);
void TargetSelection_Loop(ProcPtr proc);
ProcPtr NewTargetSelection(const struct SelectInfo* selectInfo);
ProcPtr NewTargetSelection_Specialized(const struct SelectInfo* selectInfo, u8(*onSelect)(ProcPtr, struct SelectTarget*));
ProcPtr EndTargetSelection(ProcPtr proc);
void TargetSelection_HandleMoveInput(struct SelectTargetProc* proc);
int TargetSelection_HandleSelectInput(struct SelectTargetProc* proc);
void sub_804FBBC(void);
void sub_804FBDC(void);
int GetFarthestTargetIndex(void);
struct SelectTarget* LinkTargetsOrdered(void);
struct SelectTarget* GetLinkedTargetList(void);
struct SelectTarget* GetFirstTargetPointer(void);
int GetSelectTargetCount(void);
struct SelectTarget* GetTarget(int index);

#endif // GUARD_UI_SELECTTARGET_H
