#include "global.h"

#include "ctc.h"

// clang-format off

u16 CONST_DATA gSprite_08A2077C[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0xC0) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0xC4) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0xC8) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0xCC) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20796[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x100) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0x104) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0x108) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0x10C) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A207B0[] =
{
    3,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(16), OAM2_CHR(0x18A) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(48), OAM2_CHR(0x18E) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(80), OAM2_CHR(0x192) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A207C4[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0xCE) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0xD2) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0xD6) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0xDA) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A207DE[] =
{
    3,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(24), OAM2_CHR(0x180) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(56), OAM2_CHR(0x184) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(88), OAM2_CHR(0x188) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A207F2[] =
{
    2,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x94) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(64), OAM2_CHR(0x98) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20800[] =
{
    2,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x54) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(64), OAM2_CHR(0x58) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A2080E[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x10E) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0x112) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0x116) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0x11A) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20828[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x10E) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0x112) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0x116) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0x11A) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20842[] =
{
    1,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x18E) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A2084A[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x28E) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x292) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(64), OAM2_CHR(0x296) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(96), OAM2_CHR(0x29A) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20864[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x280) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0x284) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0x288) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0x28C) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A2087E[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x24E) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x252) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(64), OAM2_CHR(0x256) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(96), OAM2_CHR(0x25A) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20898[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x20E) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x212) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(64), OAM2_CHR(0x216) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(96), OAM2_CHR(0x21A) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A208B2[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x240) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0x244) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0x248) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0x24C) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A208CC[] =
{
    4,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x200) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(40), OAM2_CHR(0x204) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(72), OAM2_CHR(0x208) + OAM2_LAYER(2),
    OAM0_SHAPE_16x16, OAM1_SIZE_16x16 + OAM1_X(104), OAM2_CHR(0x20C) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A208E6[] =
{
    1,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(8), OAM2_CHR(0x200) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A208EE[] =
{
    3,
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32, OAM2_CHR(0x2C0) + OAM2_LAYER(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_X(64), OAM2_CHR(0x2C8) + OAM2_LAYER(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_X(128), OAM2_CHR(0x2D0) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20902[] =
{
    3,
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_AFFINE_ID(1), OAM2_CHR(0x2C0) + OAM2_LAYER(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_AFFINE_ID(1) + OAM1_X(64), OAM2_CHR(0x2C8) + OAM2_LAYER(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_AFFINE_ID(1) + OAM1_X(128), OAM2_CHR(0x2D0) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20916[] =
{
    3,
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_AFFINE_ID(2), OAM2_CHR(0x2C0) + OAM2_LAYER(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_AFFINE_ID(2) + OAM1_X(64), OAM2_CHR(0x2C8) + OAM2_LAYER(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_AFFINE_ID(2) + OAM1_X(128), OAM2_CHR(0x2D0) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A2092A[] =
{
    6,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x340) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(32), OAM2_CHR(0x344) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(64), OAM2_CHR(0x348) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(96), OAM2_CHR(0x34C) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(128), OAM2_CHR(0x350) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(160), OAM2_CHR(0x354) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20950[] =
{
    6,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(1), OAM2_CHR(0x380) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(1) + OAM1_X(32), OAM2_CHR(0x384) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(1) + OAM1_X(64), OAM2_CHR(0x388) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(1) + OAM1_X(96), OAM2_CHR(0x38C) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(1) + OAM1_X(128), OAM2_CHR(0x390) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(1) + OAM1_X(160), OAM2_CHR(0x394) + OAM2_LAYER(2),
};

u16 CONST_DATA gSprite_08A20976[] =
{
    6,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(2), OAM2_CHR(0x3C0) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(2) + OAM1_X(32), OAM2_CHR(0x3C4) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(2) + OAM1_X(64), OAM2_CHR(0x3C8) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(2) + OAM1_X(96), OAM2_CHR(0x3CC) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(2) + OAM1_X(128), OAM2_CHR(0x3D0) + OAM2_LAYER(2),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_AFFINE_ID(2) + OAM1_X(160), OAM2_CHR(0x3D4) + OAM2_LAYER(2),
};

u16 * CONST_DATA gUnknown_08A2099C[] =
{
    gSprite_08A2084A,
    gSprite_08A20864,
    gSprite_08A2087E,
    gSprite_08A20898,
    gSprite_08A208B2,
    gSprite_08A208CC,
    gSprite_08A208E6,
};

u16 * CONST_DATA gUnknown_08A209B8[] =
{
    gSprite_08A2077C,
    gSprite_08A20796,
    gSprite_08A207B0,
    gSprite_08A207C4,
    gSprite_08A207DE,
    gSprite_08A207F2,
    gSprite_08A20800,
    gSprite_08A20796,
    gSprite_08A20828,
    gSprite_08A20842,
    gSprite_08A2080E,
};

u16 * CONST_DATA gUnknown_08A209E4[] =
{
    gSprite_08A2092A,
    gSprite_08A20950,
    gSprite_08A20976,
};

u16 * CONST_DATA gUnknown_08A209F0[] =
{
    gSprite_08A208EE,
    gSprite_08A20902,
    gSprite_08A20916,
};

// clang-format on
