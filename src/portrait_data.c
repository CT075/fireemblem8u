// portrait pointer table at 0x8ACBE0

#include "global.h"
#include "portrait_pointer.h"

struct FaceData CONST_DATA portrait_data[] =
{
	{portrait_Mystery_1_tileset, portrait_Mystery_1_chibi, portrait_Mystery_1_palette, portrait_Mystery_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 0
	{portrait_Eirika_tileset, portrait_Eirika_chibi, portrait_Eirika_palette, portrait_Eirika_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 1
	{portrait_Eirika_tileset, portrait_Eirika_chibi, portrait_Eirika_palette, portrait_Eirika_mouth, 0, 2, 6, 3, 4, FACE_BLINK_CLOSED}, // 2
	{portrait_Seth_tileset, portrait_Seth_chibi, portrait_Seth_palette, portrait_Seth_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 3
	{portrait_Gilliam_tileset, portrait_Gilliam_chibi, portrait_Gilliam_palette, portrait_Gilliam_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 4
	{portrait_Franz_tileset, portrait_Franz_chibi, portrait_Franz_palette, portrait_Franz_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 5
	{portrait_Moulder_tileset, portrait_Moulder_chibi, portrait_Moulder_palette, portrait_Moulder_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 6
	{portrait_Vanessa_tileset, portrait_Vanessa_chibi, portrait_Vanessa_palette, portrait_Vanessa_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 7
	{portrait_Ross_tileset, portrait_Ross_chibi, portrait_Ross_palette, portrait_Ross_mouth, 0, 3, 6, 3, 4, FACE_BLINK_NORMAL}, // 8
	{portrait_Neimi_tileset, portrait_Neimi_chibi, portrait_Neimi_palette, portrait_Neimi_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 9
	{portrait_Neimi_tileset, portrait_Neimi_chibi, portrait_Neimi_palette, portrait_Neimi_mouth, 0, 2, 6, 3, 4, FACE_BLINK_CLOSED}, // 10
	{portrait_Colm_tileset, portrait_Colm_chibi, portrait_Colm_palette, portrait_Colm_mouth, 0, 3, 5, 3, 3, FACE_BLINK_NORMAL}, // 11
	{portrait_Colm_tileset, portrait_Colm_chibi, portrait_Colm_palette, portrait_Colm_mouth, 0, 3, 5, 3, 3, FACE_BLINK_CLOSED}, // 12
	{portrait_Garcia_tileset, portrait_Garcia_chibi, portrait_Garcia_palette, portrait_Garcia_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 13
	{portrait_Innes_tileset, portrait_Innes_chibi, portrait_Innes_palette, portrait_Innes_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 14
	{portrait_Lute_tileset, portrait_Lute_chibi, portrait_Lute_palette, portrait_Lute_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 15
	{portrait_Natasha_tileset, portrait_Natasha_chibi, portrait_Natasha_palette, portrait_Natasha_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 16
	{portrait_Natasha_tileset, portrait_Natasha_chibi, portrait_Natasha_palette, portrait_Natasha_mouth, 0, 2, 6, 3, 4, FACE_BLINK_CLOSED}, // 17
	{portrait_Cormag_tileset, portrait_Cormag_chibi, portrait_Cormag_palette, portrait_Cormag_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 18
	{portrait_Ephraim_tileset, portrait_Ephraim_chibi, portrait_Ephraim_palette, portrait_Ephraim_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 19
	{portrait_Ephraim_tileset, portrait_Ephraim_chibi, portrait_Ephraim_palette, portrait_Ephraim_mouth, 0, 2, 5, 3, 3, FACE_BLINK_CLOSED}, // 20
	{portrait_Forde_tileset, portrait_Forde_chibi, portrait_Forde_palette, portrait_Forde_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 21
	{portrait_Forde_tileset, portrait_Forde_chibi, portrait_Forde_palette, portrait_Forde_mouth, 0, 2, 5, 3, 3, FACE_BLINK_CLOSED}, // 22
	{portrait_Kyle_tileset, portrait_Kyle_chibi, portrait_Kyle_palette, portrait_Kyle_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 23
	{portrait_Amelia_tileset, portrait_Amelia_chibi, portrait_Amelia_palette, portrait_Amelia_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 24
	{portrait_Artur_tileset, portrait_Artur_chibi, portrait_Artur_palette, portrait_Artur_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 25
	{portrait_Gerik_tileset, portrait_Gerik_chibi, portrait_Gerik_palette, portrait_Gerik_mouth, 0, 2, 4, 3, 2, FACE_BLINK_NORMAL}, // 26
	{portrait_Tethys_tileset, portrait_Tethys_chibi, portrait_Tethys_palette, portrait_Tethys_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 27
	{portrait_Tethys_tileset, portrait_Tethys_chibi, portrait_Tethys_palette, portrait_Tethys_mouth, 0, 2, 6, 3, 4, FACE_BLINK_CLOSED}, // 28
	{portrait_Marisa_tileset, portrait_Marisa_chibi, portrait_Marisa_palette, portrait_Marisa_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 29
	{portrait_Marisa_tileset, portrait_Marisa_chibi, portrait_Marisa_palette, portrait_Marisa_mouth, 0, 2, 6, 3, 4, FACE_BLINK_CLOSED}, // 30
	{portrait_Saleh_tileset, portrait_Saleh_chibi, portrait_Saleh_palette, portrait_Saleh_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 31
	{portrait_Ewan_tileset, portrait_Ewan_chibi, portrait_Ewan_palette, portrait_Ewan_mouth, 0, 3, 7, 3, 5, FACE_BLINK_NORMAL}, // 32
	{portrait_L_Arachel_tileset, portrait_L_Arachel_chibi, portrait_L_Arachel_palette, portrait_L_Arachel_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 33
	{portrait_Dozla_tileset, portrait_Dozla_chibi, portrait_Dozla_palette, portrait_Dozla_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 34
	{portrait_Rennac_tileset, portrait_Rennac_chibi, portrait_Rennac_palette, portrait_Rennac_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 35
	{portrait_Duessel_tileset, portrait_Duessel_chibi, portrait_Duessel_palette, portrait_Duessel_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 36
	{portrait_Myrrh_tileset, portrait_Myrrh_chibi, portrait_Myrrh_palette, portrait_Myrrh_mouth, 0, 2, 7, 3, 5, FACE_BLINK_NORMAL}, // 37
	{portrait_Myrrh_tileset, portrait_Myrrh_chibi, portrait_Myrrh_palette, portrait_Myrrh_mouth, 0, 2, 7, 3, 5, FACE_BLINK_CLOSED}, // 38
	{portrait_Myrrh_with_wing_tileset, portrait_Myrrh_with_wing_chibi, portrait_Myrrh_with_wing_palette, portrait_Myrrh_with_wing_mouth, 0, 2, 7, 3, 5, FACE_BLINK_NORMAL}, // 39
	{portrait_Knoll_tileset, portrait_Knoll_chibi, portrait_Knoll_palette, portrait_Knoll_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 40
	{portrait_Joshua_tileset, portrait_Joshua_chibi, portrait_Joshua_palette, portrait_Joshua_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 41
	{portrait_Syrene_tileset, portrait_Syrene_chibi, portrait_Syrene_palette, portrait_Syrene_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 42
	{portrait_Tana_tileset, portrait_Tana_chibi, portrait_Tana_palette, portrait_Tana_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 43
	{portrait_Eirika_tileset, portrait_Eirika_chibi, portrait_Eirika_flashback_palette, portrait_Eirika_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 44
	{portrait_Ephraim_tileset, portrait_Ephraim_chibi, portrait_Ephraim_flashback_palette, portrait_Ephraim_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 45
	{portrait_Knoll_tileset, portrait_Knoll_chibi, portrait_Knoll_flashback_palette, portrait_Knoll_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 46
	{portrait_O_Neill_tileset, portrait_O_Neill_chibi, portrait_O_Neill_palette, portrait_O_Neill_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 47
	{portrait_Breguet_tileset, portrait_Breguet_chibi, portrait_Breguet_palette, portrait_Breguet_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 48
	{portrait_Bone_tileset, portrait_Bone_chibi, portrait_Bone_palette, portrait_Bone_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 49
	{portrait_Bazba_tileset, portrait_Bazba_chibi, portrait_Bazba_palette, portrait_Bazba_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 50
	{portrait_Saar_tileset, portrait_Saar_chibi, portrait_Saar_palette, portrait_Saar_mouth, 0, 2, 5, 2, 3, FACE_BLINK_NORMAL}, // 51
	{portrait_Zonta_tileset, portrait_Zonta_chibi, portrait_Zonta_palette, portrait_Zonta_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 52
	{portrait_Novala_tileset, portrait_Novala_chibi, portrait_Novala_palette, portrait_Novala_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 53
	{portrait_Murray_tileset, portrait_Murray_chibi, portrait_Murray_palette, portrait_Murray_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 54
	{portrait_Tirado_tileset, portrait_Tirado_chibi, portrait_Tirado_palette, portrait_Tirado_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 55
	{portrait_Binks_tileset, portrait_Binks_chibi, portrait_Binks_palette, portrait_Binks_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 56
	{portrait_Pablo_tileset, portrait_Pablo_chibi, portrait_Pablo_palette, portrait_Pablo_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 57
	{portrait_Aias_tileset, portrait_Aias_chibi, portrait_Aias_palette, portrait_Aias_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 58
	{portrait_Carlyle_tileset, portrait_Carlyle_chibi, portrait_Carlyle_palette, portrait_Carlyle_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 59
	{portrait_Gheb_tileset, portrait_Gheb_chibi, portrait_Gheb_palette, portrait_Gheb_mouth, 0, 2, 4, 3, 2, FACE_BLINK_NORMAL}, // 60
	{portrait_Beran_tileset, portrait_Beran_chibi, portrait_Beran_palette, portrait_Beran_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 61
	{portrait_Selena_tileset, portrait_Selena_chibi, portrait_Selena_palette, portrait_Selena_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 62
	{portrait_Vigarde_dead_tileset, portrait_Vigarde_dead_chibi, portrait_Vigarde_dead_palette, portrait_Vigarde_dead_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 63
	{portrait_Vigarde_healthy_tileset, portrait_Vigarde_healthy_chibi, portrait_Vigarde_healthy_palette, portrait_Vigarde_healthy_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 64
	{portrait_Valter_tileset, portrait_Valter_chibi, portrait_Valter_palette, portrait_Valter_mouth, 0, 2, 4, 3, 2, FACE_BLINK_NORMAL}, // 65
	{portrait_Caellach_tileset, portrait_Caellach_chibi, portrait_Caellach_palette, portrait_Caellach_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 66
	{portrait_Orson_drugged_tileset, portrait_Orson_drugged_chibi, portrait_Orson_drugged_palette, portrait_Orson_drugged_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 67
	{portrait_Orson_tileset, portrait_Orson_chibi, portrait_Orson_palette, portrait_Orson_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 68
	{portrait_Lyon_tileset, portrait_Lyon_chibi, portrait_Lyon_palette, portrait_Lyon_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 69
	{portrait_Lyon_tileset, portrait_Lyon_chibi, portrait_Lyon_palette, portrait_Lyon_mouth, 0, 2, 5, 3, 3, FACE_BLINK_CLOSED}, // 70
	{portrait_Riev_tileset, portrait_Riev_chibi, portrait_Riev_palette, portrait_Riev_mouth, 0, 2, 7, 2, 5, FACE_BLINK_NORMAL}, // 71
	{portrait_Morva_tileset, portrait_Morva_chibi, portrait_Morva_palette, portrait_Morva_mouth, 0, 2, 4, 3, 2, FACE_BLINK_NORMAL}, // 72
	{portrait_Lyon_evil_tileset, portrait_Lyon_evil_chibi, portrait_Lyon_evil_palette, portrait_Lyon_evil_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 73
	{portrait_Glen_tileset, portrait_Glen_chibi, portrait_Glen_palette, portrait_Glen_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 74
	{portrait_Bandit_1_tileset, portrait_Bandit_1_chibi, portrait_Bandit_1_palette, portrait_Bandit_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 75
	{portrait_Man_Unused_tileset, portrait_Man_Unused_chibi, portrait_Man_Unused_palette, portrait_Man_Unused_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 76
	{portrait_Vigarde_dead_tileset, portrait_Vigarde_dead_chibi, portrait_Vigarde_flashback_palette, portrait_Vigarde_dead_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 77
	{portrait_Vigarde_dead_tileset, portrait_Vigarde_dead_chibi, portrait_Vigarde_flashback_palette, portrait_Vigarde_dead_mouth, 0, 2, 5, 3, 3, FACE_BLINK_CLOSED}, // 78
	{portrait_Lyon_tileset, portrait_Lyon_chibi, portrait_Lyon_flashback_palette, portrait_Lyon_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 79
	{portrait_Fado_tileset, portrait_Fado_chibi, portrait_Fado_palette, portrait_Fado_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 80
	{portrait_Hayden_tileset, portrait_Hayden_chibi, portrait_Hayden_palette, portrait_Hayden_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 81
	{portrait_Mansel_tileset, portrait_Mansel_chibi, portrait_Mansel_palette, portrait_Mansel_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 82
	{portrait_Klimt_tileset, portrait_Klimt_chibi, portrait_Klimt_palette, portrait_Klimt_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 83
	{portrait_Saleh_Grandma_tileset, portrait_Saleh_Grandma_chibi, portrait_Saleh_Grandma_palette, portrait_Saleh_Grandma_mouth, 0, 2, 7, 3, 5, FACE_BLINK_NORMAL}, // 84
	{portrait_Ismaire_tileset, portrait_Ismaire_chibi, portrait_Ismaire_palette, portrait_Ismaire_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 85
	{portrait_Ismaire_tileset, portrait_Ismaire_chibi, portrait_Ismaire_palette, portrait_Ismaire_mouth, 0, 2, 6, 3, 4, FACE_BLINK_CLOSED}, // 86
	{portrait_Villager_Man_1_tileset, portrait_Villager_Man_1_chibi, portrait_Villager_Man_1_palette, portrait_Villager_Man_1_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 87
	{portrait_Villager_Old_Man_tileset, portrait_Villager_Old_Man_chibi, portrait_Villager_Old_Man_palette, portrait_Villager_Old_Man_mouth, 0, 2, 7, 3, 5, FACE_BLINK_NORMAL}, // 88
	{portrait_Villager_Man_2_tileset, portrait_Villager_Man_2_chibi, portrait_Villager_Man_2_palette, portrait_Villager_Man_2_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 89
	{portrait_Villager_Man_3_tileset, portrait_Villager_Man_3_chibi, portrait_Villager_Man_3_palette, portrait_Villager_Man_3_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 90
	{portrait_Villager_Man_4_tileset, portrait_Villager_Man_4_chibi, portrait_Villager_Man_4_palette, portrait_Villager_Man_4_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 91
	{portrait_Villager_Young_Man_tileset, portrait_Villager_Young_Man_chibi, portrait_Villager_Young_Man_palette, portrait_Villager_Young_Man_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 92
	{portrait_Villager_Young_Boy_tileset, portrait_Villager_Young_Boy_chibi, portrait_Villager_Young_Boy_palette, portrait_Villager_Young_Boy_mouth, 0, 2, 7, 3, 5, FACE_BLINK_NORMAL}, // 93
	{portrait_Villager_Old_Woman_tileset, portrait_Villager_Old_Woman_chibi, portrait_Villager_Old_Woman_palette, portrait_Villager_Old_Woman_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 94
	{portrait_Villager_Woman_tileset, portrait_Villager_Woman_chibi, portrait_Villager_Woman_palette, portrait_Villager_Woman_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 95
	{portrait_Villager_Girl_Brown_Hair_tileset, portrait_Villager_Girl_Brown_Hair_chibi, portrait_Villager_Girl_Brown_Hair_palette, portrait_Villager_Girl_Brown_Hair_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 96
	{portrait_Villager_Girl_Black_Hair_tileset, portrait_Villager_Girl_Black_Hair_chibi, portrait_Villager_Girl_Black_Hair_palette, portrait_Villager_Girl_Black_Hair_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 97
	{portrait_Villager_Girl_Young_tileset, portrait_Villager_Girl_Young_chibi, portrait_Villager_Girl_Young_palette, portrait_Villager_Girl_Young_mouth, 0, 2, 7, 3, 5, FACE_BLINK_NORMAL}, // 98
	{portrait_Anna_tileset, portrait_Anna_chibi, portrait_Anna_palette, portrait_Anna_mouth, 0, 2, 6, 3, 4, FACE_BLINK_NORMAL}, // 99
	{portrait_Armoury_tileset, 0, portrait_Armoury_palette, portrait_Armoury_mouth, 0, 3, 2, 2, 0, FACE_BLINK_NORMAL}, // 100
	{portrait_Vendor_tileset, 0, portrait_Vendor_palette, portrait_Vendor_mouth, 0, 3, 3, 2, 0, FACE_BLINK_NORMAL}, // 101
	{portrait_Arena_tileset, 0, portrait_Arena_palette, portrait_Arena_mouth, 0, 3, 2, 2, 0, FACE_BLINK_NORMAL}, // 102
	{portrait_Secret_Shop_tileset, 0, portrait_Secret_Shop_palette, portrait_Secret_Shop_mouth, 0, 3, 3, 2, 0, FACE_BLINK_NORMAL}, // 103
	{portrait_Frelia_Knight_tileset, portrait_Frelia_Knight_chibi, portrait_Frelia_Knight_palette, portrait_Frelia_Knight_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 104
	{portrait_Soldier_1_tileset, portrait_Soldier_1_chibi, portrait_Soldier_1_palette, portrait_Soldier_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 105
	{portrait_Soldier_1_tileset, portrait_Soldier_1_chibi, portrait_Soldier_2_palette, portrait_Soldier_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 106
	{portrait_O_Neill_tileset, portrait_O_Neill_chibi, portrait_O_Neill_Clone_palette, portrait_O_Neill_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 107
	{portrait_O_Neill_tileset, portrait_O_Neill_chibi, portrait_O_Neill_Clone_2_palette, portrait_O_Neill_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 108
	{portrait_Novala_tileset, portrait_Novala_chibi, portrait_Novala_Clone_palette, portrait_Novala_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 109
	{portrait_Soldier_1_tileset, portrait_Soldier_1_chibi, portrait_Rausten_Soldier_palette, portrait_Soldier_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 110
	{portrait_Soldier_1_tileset, portrait_Soldier_1_chibi, portrait_Purple_Soldier_palette, portrait_Soldier_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 111
	{portrait_Soldier_1_tileset, portrait_Soldier_1_chibi, portrait_Another_Soldier_palette, portrait_Soldier_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 112
	{0, 0, portrait_Myrmidon_palette, 0, portrait_Myrmidon_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 113
	{0, 0, portrait_Swordmaster_palette, 0, portrait_Swordmaster_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 114
	{0, 0, portrait_Fighter_palette, 0, portrait_Fighter_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 115
	{0, 0, portrait_Warrior_palette, 0, portrait_Warrior_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 116
	{0, 0, portrait_Knight_palette, 0, portrait_Knight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 117
	{0, 0, portrait_General_palette, 0, portrait_General_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 118
	{0, 0, portrait_Archer_palette, 0, portrait_Archer_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 119
	{0, 0, portrait_Sniper_palette, 0, portrait_Sniper_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 120
	{0, 0, portrait_Priest_palette, 0, portrait_Priest_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 121
	{0, 0, portrait_Bishop_palette, 0, portrait_Bishop_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 122
	{0, 0, portrait_Mage_palette, 0, portrait_Mage_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 123
	{0, 0, portrait_Sage_palette, 0, portrait_Sage_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 124
	{0, 0, portrait_Shaman_palette, 0, portrait_Shaman_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 125
	{0, 0, portrait_Druid_palette, 0, portrait_Druid_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 126
	{0, 0, portrait_Cavalier_palette, 0, portrait_Cavalier_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 127
	{0, 0, portrait_Paladin_palette, 0, portrait_Paladin_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 128
	{0, 0, portrait_Troubadour_palette, 0, portrait_Troubadour_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 129
	{0, 0, portrait_Valkyrie_palette, 0, portrait_Valkyrie_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 130
	{0, 0, portrait_Nomad_palette, 0, portrait_Nomad_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 131
	{0, 0, portrait_Nomadic_Trooper_palette, 0, portrait_Nomadic_Trooper_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 132
	{0, 0, portrait_Pegasus_Knight_palette, 0, portrait_Pegasus_Knight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 133
	{0, 0, portrait_Falcon_Knight_palette, 0, portrait_Falcon_Knight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 134
	{0, 0, portrait_Wyvern_Rider_palette, 0, portrait_Wyvern_Rider_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 135
	{0, 0, portrait_Wyvern_Lord_palette, 0, portrait_Wyvern_Lord_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 136
	{0, 0, portrait_Soldier_palette, 0, portrait_Soldier_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 137
	{0, 0, portrait_Bandit_palette, 0, portrait_Bandit_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 138
	{0, 0, portrait_Pirate_palette, 0, portrait_Pirate_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 139
	{0, 0, portrait_Berserker_palette, 0, portrait_Berserker_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 140
	{0, 0, portrait_Thief_palette, 0, portrait_Thief_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 141
	{0, 0, portrait_Manakete_palette, 0, portrait_Manakete_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 142
	{0, 0, portrait_Mercenary_palette, 0, portrait_Mercenary_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 143
	{0, 0, portrait_Hero_palette, 0, portrait_Hero_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 144
	{0, 0, portrait_Fleet_palette, 0, portrait_Fleet_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 145
	{0, 0, portrait_Wyvern_Knight_palette, 0, portrait_Wyvern_Knight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 146
	{0, 0, portrait_Rogue_palette, 0, portrait_Rogue_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 147
	{0, 0, portrait_Mage_Knight_palette, 0, portrait_Mage_Knight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 148
	{0, 0, portrait_Great_Knight_palette, 0, portrait_Great_Knight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 149
	{0, 0, portrait_Ranger_palette, 0, portrait_Ranger_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 150
	{0, 0, portrait_Phantom_palette, 0, portrait_Phantom_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 151
	{0, 0, portrait_Revenant_palette, 0, portrait_Revenant_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 152
	{0, 0, portrait_Entombed_palette, 0, portrait_Entombed_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 153
	{0, 0, portrait_Bonewalker_palette, 0, portrait_Bonewalker_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 154
	{0, 0, portrait_Wight_palette, 0, portrait_Wight_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 155
	{0, 0, portrait_Bael_palette, 0, portrait_Bael_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 156
	{0, 0, portrait_Elder_Bael_palette, 0, portrait_Elder_Bael_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 157
	{0, 0, portrait_Cyclops_palette, 0, portrait_Cyclops_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 158
	{0, 0, portrait_Mauthedoog_palette, 0, portrait_Mauthedoog_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 159
	{0, 0, portrait_Gwyllgi_palette, 0, portrait_Gwyllgi_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 160
	{0, 0, portrait_Tarvos_palette, 0, portrait_Tarvos_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 161
	{0, 0, portrait_Maelduin_palette, 0, portrait_Maelduin_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 162
	{0, 0, portrait_Mogall_palette, 0, portrait_Mogall_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 163
	{0, 0, portrait_Arch_Mogall_palette, 0, portrait_Arch_Mogall_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 164
	{0, 0, portrait_Gorgon_palette, 0, portrait_Gorgon_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 165
	{0, 0, portrait_Gargoyle_palette, 0, portrait_Gargoyle_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 166
	{0, 0, portrait_Deathgoyle_palette, 0, portrait_Deathgoyle_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 167
	{0, 0, portrait_Manakete_Zombie_palette, 0, portrait_Manakete_Zombie_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 168
	{0, 0, portrait_Demon_King_palette, 0, portrait_Demon_King_card, 0, 0, 0, 0, FACE_BLINK_NORMAL}, // 169
	{portrait_Mystery_faded_tileset, portrait_Mystery_faded_chibi, portrait_Mystery_faded_palette, portrait_Mystery_faded_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 170
	{portrait_Mystery_1_tileset, portrait_Mystery_1_chibi, portrait_Mystery_1_palette, portrait_Mystery_1_mouth, 0, 2, 5, 3, 3, FACE_BLINK_NORMAL}, // 171
};
