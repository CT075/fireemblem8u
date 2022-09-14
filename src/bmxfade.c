#include "global.h"

#include "hardware.h"

void SetAllUnitNotBackSprite();

struct BmxfadeProc {
    PROC_HEADER;

    /* 29 */ u8 _pad29[0x4C - 0x29];
    /* 4C */ u16 unk_4C;
    /* 4E */ s16 unk_4E;
};

void sub_801DD1C(struct BmxfadeProc* proc)
{
    proc->unk_4C = 0x10;

    SetupBackgroundForWeatherMaybe();

    sub_8001ED0(0, 0, 1, 0, 0);
    sub_8001F0C(0, 0, 0, 1, 1);
}

void sub_801DD54(struct BmxfadeProc* proc)
{
    SetSpecialColorEffectsParameters(1, proc->unk_4C, 0x10 - proc->unk_4C, 0);

    if (--proc->unk_4C > 0)
        return;
    
    Proc_Break(proc);
    SetDefaultColorEffects();
    SetBackgroundTileDataOffset(2, 0);
    BG_Fill(gBG2TilemapBuffer, 0);
    BG_EnableSyncByMask(4);
}

void Destruct6CBMXFADE(struct BmxfadeProc* proc)
{
    SetAllUnitNotBackSprite();

    if (0 != proc->unk_4E)
        SubSkipThread2();
}
