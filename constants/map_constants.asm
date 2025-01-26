MACRO map_const
	const \1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

; map ids
; indexes for:
; - MapHeaderBanks (see data/maps/map_header_banks.asm)
; - MapHeaderPointers (see data/maps/map_header_pointers.asm)
; - MapSongBanks (see data/maps/songs.asm)
; - MapHSPointers (see data/maps/hide_show_data.asm)
; - MapSpriteSets (see data/maps/sprite_sets.asm)
; - ExternalMapEntries (see data/maps/town_map_entries.asm)
; - WildDataPointers (see data/wild/grass_water.asm)
; Each map also has associated data in maps.asm.
; Order: towns/cities, then routes, then indoor/dungeon maps
	const_def
	map_const PALLET_TOWN,                   10,  9 ; $00
	map_const VIRIDIAN_CITY,                 20, 18 ; $01
	map_const PEWTER_CITY,                   20, 18 ; $02
	map_const CERULEAN_CITY,                 20, 18 ; $03
	map_const VERMILION_CITY,                20, 18 ; $04
	map_const LAVENDER_TOWN,                 10,  9 ; $05
	map_const CELADON_CITY,                  25, 18 ; $06
	map_const CELADON_UNIVERSITY_OUTSIDE,    21, 20 ; $07
	map_const FUCHSIA_CITY,                  20, 18 ; $08
	map_const SAFFRON_CITY,                  20, 18 ; $0A
	map_const CINNABAR_ISLAND,               14, 15 ; $0A
	map_const INDIGO_PLATEAU,                10,  9 ; $0B
	map_const CITRINE_CITY,                  20, 18 ; $0C
DEF NUM_CITY_MAPS EQU const_value
DEF FIRST_ROUTE_MAP EQU const_value
	map_const ROUTE_1,                       10, 18 ; $0D
	map_const ROUTE_2,                       10, 36 ; $0E
	map_const ROUTE_3,                       35,  9 ; $0F
	map_const ROUTE_4,                       45,  9 ; $10
	map_const ROUTE_5,                       10, 18 ; $11
	map_const ROUTE_6,                       10, 18 ; $12
	map_const ROUTE_7,                       10,  9 ; $13
	map_const ROUTE_8,                       30,  9 ; $14
	map_const ROUTE_9,                       30, 13 ; $15
	map_const ROUTE_10,                      10, 40 ; $16
	map_const ROUTE_11,                      30,  9 ; $17
	map_const ROUTE_12,                      10, 54 ; $18
	map_const ROUTE_13,                      30,  9 ; $19
	map_const ROUTE_14,                      10, 27 ; $1A
	map_const ROUTE_15,                      30,  9 ; $1B
	map_const ROUTE_16,                      20,  9 ; $1C
	map_const ROUTE_17,                      10, 72 ; $1D
	map_const ROUTE_18,                      25,  9 ; $1E
	map_const ROUTE_19,                      10, 27 ; $1F
	map_const ROUTE_20,                      50, 15 ; $20
	map_const ROUTE_21,                      10, 45 ; $21
	map_const ROUTE_22,                      20,  9 ; $22
	map_const ROUTE_23,                      10, 72 ; $23
	map_const ROUTE_24,                      10, 18 ; $24
	map_const ROUTE_25,                      37,  9 ; $25
	map_const BRUNSWICK_TRAIL,           	 32, 14 ; $26	- was unused Cinnabar Mart copy, moved to $26
	map_const BILLS_GARDEN,                  12, 12 ; $27	- was UNUSED_MAP_F3, moved to $27
DEF FIRST_INDOOR_MAP EQU const_value
	map_const REDS_HOUSE_1F,                  4,  4 ; $28
	map_const REDS_HOUSE_2F,                  4,  4 ; $29
	map_const BLUES_HOUSE,                    4,  4 ; $2A
	map_const OAKS_LAB,                       7,  6 ; $2B
	map_const VIRIDIAN_POKECENTER,            7,  4 ; $2C
	map_const VIRIDIAN_MART,                  4,  4 ; $2D
	map_const VIRIDIAN_SCHOOL_HOUSE,          4,  4 ; $2E
	map_const VIRIDIAN_NICKNAME_HOUSE,        4,  4 ; $2F
	map_const VIRIDIAN_GYM,                  10,  9 ; $30
	map_const DIGLETTS_CAVE_ROUTE_2,          4,  4 ; $31
	map_const VIRIDIAN_FOREST_NORTH_GATE,     5,  4 ; $32
	map_const ROUTE_2_TRADE_HOUSE,            4,  4 ; $33
	map_const ROUTE_2_GATE,                   5,  4 ; $34
	map_const VIRIDIAN_FOREST_SOUTH_GATE,     5,  4 ; $35
	map_const VIRIDIAN_FOREST,               17, 24 ; $36
	map_const MUSEUM_1F,                     10,  4 ; $37
	map_const MUSEUM_2F,                      7,  4 ; $38
	map_const PEWTER_GYM,                     5,  7 ; $39
	map_const PEWTER_NIDORAN_HOUSE,           4,  4 ; $3A
	map_const PEWTER_MART,                    4,  4 ; $3B
	map_const PEWTER_SPEECH_HOUSE,            4,  4 ; $3C
	map_const PEWTER_POKECENTER,              7,  4 ; $3D
	map_const MT_MOON_1F,                    20, 18 ; $3E
	map_const MT_MOON_B1F,                   14, 14 ; $3F
	map_const MT_MOON_B2F,                   20, 18 ; $40
	map_const CERULEAN_TRASHED_HOUSE,         4,  4 ; $41
	map_const CERULEAN_TRADE_HOUSE,           4,  4 ; $42
	map_const CERULEAN_POKECENTER,            7,  4 ; $43
	map_const CERULEAN_GYM,                   5,  7 ; $44
	map_const BIKE_SHOP,                      4,  4 ; $45
	map_const CERULEAN_MART,                  4,  4 ; $46
	map_const MT_MOON_POKECENTER,             7,  4 ; $47
	map_const VIRIDIAN_PRE_GYM,               5,  7 ; $48	- was CERULEAN_TRASHED_HOUSE_COPY
	map_const ROUTE_5_GATE,                   4,  3 ; $49
	map_const UNDERGROUND_PATH_ROUTE_5,       4,  4 ; $4A
	map_const DAYCARE,                        6,  4 ; $4B
	map_const ROUTE_6_GATE,                   4,  3 ; $4C
	map_const UNDERGROUND_PATH_ROUTE_6,       4,  4 ; $4D
	map_const CELESTE_HILL,                  11, 11 ; $4E	- Was copy of above & unused
	map_const ROUTE_7_GATE,                   3,  4 ; $4F
	map_const UNDERGROUND_PATH_ROUTE_7,       4,  4 ; $50
	map_const CITRINE_ROCKET_HOUSE,           5,  5 ; $51	- was UNDERGROUND_PATH_ROUTE_7_COPY
	map_const ROUTE_8_GATE,                   3,  4 ; $52
	map_const UNDERGROUND_PATH_ROUTE_8,       4,  4 ; $53
	map_const ROCK_TUNNEL_POKECENTER,         7,  4 ; $54
	map_const ROCK_TUNNEL_1F,                20, 18 ; $55
	map_const POWER_PLANT,                   20, 18 ; $56
	map_const ROUTE_11_GATE_1F,               4,  5 ; $57
	map_const DIGLETTS_CAVE_ROUTE_11,         4,  4 ; $58
	map_const ROUTE_11_GATE_2F,               4,  4 ; $59
	map_const ROUTE_12_GATE_1F,               5,  4 ; $5A
	map_const BILLS_HOUSE,                    7,  4 ; $5B
	map_const VERMILION_POKECENTER,           7,  4 ; $5C
	map_const POKEMON_FAN_CLUB,               4,  4 ; $5D
	map_const VERMILION_MART,                 4,  4 ; $5E
	map_const VERMILION_GYM,                  5,  9 ; $5F
	map_const VERMILION_PIDGEY_HOUSE,         4,  4 ; $60
	map_const VERMILION_DOCK,                14,  6 ; $61
	map_const SS_ANNE_1F,                    20,  9 ; $62
	map_const SS_ANNE_2F,                    20,  9 ; $63
	map_const SS_ANNE_3F,                    10,  3 ; $64
	map_const SS_ANNE_B1F,                   15,  4 ; $65
	map_const SS_ANNE_BOW,                   10,  7 ; $66
	map_const SS_ANNE_KITCHEN,                7,  8 ; $67
	map_const SS_ANNE_CAPTAINS_ROOM,          3,  4 ; $68
	map_const SS_ANNE_1F_ROOMS,              12,  8 ; $69
	map_const SS_ANNE_2F_ROOMS,              12,  8 ; $6A
	map_const SS_ANNE_B1F_ROOMS,             12,  8 ; $6B
	map_const SILPH_GAUNTLET_1F,             10,  9 ; $6C	- Was UNUSED_MAP_69
	map_const SILPH_GAUNTLET_2F,             13, 10 ; $6D	- Was UNUSED_MAP_6A
	map_const SILPH_GAUNTLET_3F,             17, 13 ; $6E	- Was UNUSED_MAP_6B
	map_const VICTORY_ROAD_1F,               10,  9 ; $6F
	map_const BRUNSWICK_GROTTO,              15, 12 ; $70	- Was UNUSED_MAP_6D
	map_const SILPH_GAUNTLET_5F,             10,  9 ; $71	- Was UNUSED_MAP_6E
	map_const SILPH_GAUNTLET_6F,             12, 12 ; $72	- Was UNUSED_MAP_6F
	map_const SILPH_GAUNTLET_7F,              6,  5 ; $73	- Was UNUSED_MAP_70
	map_const LANCES_ROOM,                   13, 13 ; $74
	map_const FARAWAY_ISLAND_OUTSIDE,        15, 20 ; $75	- Was UNUSED_MAP_72
	map_const FARAWAY_ISLAND_INSIDE,         15, 11 ; $76	- Was UNUSED_MAP_73
	map_const POKEMON_MANSION_B2F,           15, 12 ; $77	- Was UNUSED_MAP_74
	map_const MT_MOON_CRATER,                25, 25 ; $78	- Was UNUSED_MAP_75
	map_const HALL_OF_FAME,                   5,  4 ; $79
	map_const UNDERGROUND_PATH_NORTH_SOUTH,   4, 24 ; $7A ; UndergroundPathNorthSouth.blk is actually 4x23
	map_const CHAMPIONS_ROOM,                 5,  6 ; $7B
	map_const UNDERGROUND_PATH_WEST_EAST,    25,  4 ; $7C
	map_const CELADON_MART_1F,               10,  4 ; $7D
	map_const CELADON_MART_2F,               10,  4 ; $7E
	map_const CELADON_MART_3F,               10,  4 ; $7F
	map_const CELADON_MART_4F,               10,  4 ; $80
	map_const CELADON_MART_ROOF,             10,  4 ; $81
	map_const CELADON_MART_ELEVATOR,          2,  2 ; $82
	map_const CELADON_MANSION_1F,             4,  6 ; $83
	map_const CELADON_MANSION_2F,             4,  6 ; $84
	map_const CELADON_MANSION_3F,             4,  6 ; $85
	map_const CELADON_MANSION_ROOF,           4,  6 ; $86
	map_const CELADON_MANSION_ROOF_HOUSE,     4,  4 ; $87
	map_const CELADON_POKECENTER,             7,  4 ; $88
	map_const CELADON_GYM,                    5,  9 ; $89
	map_const GAME_CORNER,                   10,  9 ; $8A
	map_const CELADON_MART_5F,               10,  4 ; $8B
	map_const GAME_CORNER_PRIZE_ROOM,         5,  4 ; $8C
	map_const CELADON_DINER,                  5,  4 ; $8D
	map_const CELADON_CHIEF_HOUSE,            4,  4 ; $8E
	map_const CELADON_HOTEL,                  7,  4 ; $8F
	map_const LAVENDER_POKECENTER,            7,  4 ; $90
	map_const POKEMON_TOWER_1F,              10,  9 ; $91
	map_const POKEMON_TOWER_2F,              10,  9 ; $92
	map_const SILPH_GAUNTLET_4F,             10,  9 ; $93	- Was Pokemon Tower 3F
	map_const CELESTE_HILL_GATE,              5,  4 ; $94	- Was Pokemon Tower 4F
	map_const POKEMON_TOWER_5F,              10,  9 ; $95
	map_const POKEMON_TOWER_6F,              10,  9 ; $96
	map_const POKEMON_TOWER_7F,              10,  9 ; $97
	map_const MR_FUJIS_HOUSE,                 4,  4 ; $98
	map_const LAVENDER_MART,                  4,  4 ; $99
	map_const LAVENDER_CUBONE_HOUSE,          4,  4 ; $9A
	map_const FUCHSIA_MART,                   4,  4 ; $9B
	map_const FUCHSIA_BILLS_GRANDPAS_HOUSE,   4,  4 ; $9C
	map_const FUCHSIA_POKECENTER,             7,  4 ; $9D
	map_const WARDENS_HOUSE,                  5,  4 ; $9E
	map_const SAFARI_ZONE_GATE,               4,  3 ; $9F
	map_const FUCHSIA_GYM,                    5,  9 ; $A0
	map_const FUCHSIA_MEETING_ROOM,           7,  4 ; $A1
	map_const SEAFOAM_ISLANDS_B1F,           15,  9 ; $A2
	map_const SEAFOAM_ISLANDS_B2F,           15,  9 ; $A3
	map_const SEAFOAM_ISLANDS_B3F,           15,  9 ; $A4
	map_const SEAFOAM_ISLANDS_B4F,           15,  9 ; $A5
	map_const CITRINE_TRADEBACK_HOUSE,        4,  4 ; $A6 - Was Vermillion Old Rod house
	map_const CITRINE_POKECENTER,             7,  4 ; $A7 - Was Fuschia Good Rod house
	map_const POKEMON_MANSION_1F,            15, 14 ; $A8
	map_const CINNABAR_GYM,                  10,  9 ; $A9
	map_const CINNABAR_LAB,                   9,  4 ; $AA
	map_const CINNABAR_LAB_TRADE_ROOM,        4,  4 ; $AB
	map_const CINNABAR_LAB_METRONOME_ROOM,    4,  4 ; $AC
	map_const CINNABAR_LAB_FOSSIL_ROOM,       4,  4 ; $AD
	map_const CINNABAR_POKECENTER,            7,  4 ; $AE
	map_const CINNABAR_MART,                  4,  4 ; $AF
	map_const INDIGO_PLATEAU_LOBBY,           8,  6 ; $B0
	map_const COPYCATS_HOUSE_1F,              4,  4 ; $B1
	map_const COPYCATS_HOUSE_2F,              4,  4 ; $B2
	map_const FIGHTING_DOJO,                  5,  6 ; $B3
	map_const SAFFRON_GYM,                   10,  9 ; $B4
	map_const SAFFRON_PIDGEY_HOUSE,           4,  4 ; $B5
	map_const SAFFRON_MART,                   4,  4 ; $B6
	map_const SILPH_CO_1F,                   15,  9 ; $B7
	map_const SAFFRON_POKECENTER,             7,  4 ; $B8
	map_const MR_PSYCHICS_HOUSE,              4,  4 ; $B9
	map_const ROUTE_15_GATE_1F,               4,  5 ; $BA
	map_const ROUTE_15_GATE_2F,               4,  4 ; $BB
	map_const ROUTE_16_GATE_1F,               4,  7 ; $BC
	map_const ROUTE_16_GATE_2F,               4,  4 ; $BD
	map_const ROUTE_16_FLY_HOUSE,             4,  4 ; $BE
	map_const FISHING_GURU_HOUSE,             4,  4 ; $BF
	map_const ROUTE_18_GATE_1F,               4,  5 ; $C0
	map_const ROUTE_18_GATE_2F,               4,  4 ; $C1
	map_const SEAFOAM_ISLANDS_1F,            15,  9 ; $C2
	map_const ROUTE_22_GATE,                  5,  4 ; $C3
	map_const VICTORY_ROAD_2F,               15,  9 ; $C4
	map_const ROUTE_12_GATE_2F,               4,  4 ; $C5
	map_const VERMILION_TRADE_HOUSE,          4,  4 ; $C6
	map_const DIGLETTS_CAVE,                 20, 18 ; $C7
	map_const VICTORY_ROAD_3F,               15,  9 ; $C8
	map_const ROCKET_HIDEOUT_B1F,            15, 14 ; $C9
	map_const ROCKET_HIDEOUT_B2F,            15, 14 ; $CA
	map_const ROCKET_HIDEOUT_B3F,            15, 14 ; $CB
	map_const ROCKET_HIDEOUT_B4F,            15, 12 ; $CC
	map_const ROCKET_HIDEOUT_ELEVATOR,        3,  4 ; $CD
	map_const CITRINE_MART,             	  4,  4 ; $CE	- was UNUSED_MAP_CC
	map_const GARNET_CAVERN_1F,              15,  9 ; $CF	- was UNUSED_MAP_CD
	map_const GARNET_CAVERN_B1F,             15,  9 ; $D0	- was UNUSED_MAP_CE
	map_const VERMILION_FERRY_DOCK,          14,  6 ; $D1	- was SILPH_CO_2F
	map_const SILPH_CO_3F,                   15,  9 ; $D2
	map_const CITRINE_FERRY_DOCK,            14,  6 ; $D3	- was SILPH_CO_4F
	map_const SILPH_CO_5F,                   15,  9 ; $D4
	map_const SEAGALLOP_FERRY,                5,  4 ; $D5	- was SILPH_CO_6F
	map_const SILPH_CO_7F,                   13,  9 ; $D6
	map_const POKEMON_MANSION_2F,            15, 14 ; $D7
	map_const POKEMON_MANSION_3F,            15,  9 ; $D8
	map_const POKEMON_MANSION_B1F,           15, 14 ; $D9
	map_const SAFARI_ZONE_EAST,              15, 13 ; $DA
	map_const SAFARI_ZONE_NORTH,             20, 18 ; $DB
	map_const SAFARI_ZONE_WEST,              15, 13 ; $DC
	map_const SAFARI_ZONE_CENTER,            15, 13 ; $DD
	map_const SAFARI_ZONE_CENTER_REST_HOUSE,  4,  4 ; $DE
	map_const SAFARI_ZONE_SECRET_HOUSE,       4,  4 ; $DF
	map_const SAFARI_ZONE_WEST_REST_HOUSE,    4,  4 ; $E0
	map_const SAFARI_ZONE_EAST_REST_HOUSE,    4,  4 ; $E1
	map_const SAFARI_ZONE_NORTH_REST_HOUSE,   4,  4 ; $E2
	map_const CERULEAN_CAVE_2F,              15,  9 ; $E3
	map_const CERULEAN_CAVE_B1F,             15,  9 ; $E4
	map_const CERULEAN_CAVE_1F,              15,  9 ; $E5
	map_const NAME_RATERS_HOUSE,              4,  4 ; $E6
	map_const CERULEAN_BADGE_HOUSE,           4,  4 ; $E7
	map_const CINNABAR_VOLCANO,              14, 12 ; $E8	- Was UNUSED_MAP_E7
	map_const CINNABAR_VOLCANO_FLOORS,       20, 20 ; $E9	- Switched with ROCK_TUNNEL_B1F
	map_const ROUTE_10_GATE,                  5,  4 ; $EA
	map_const SILPH_CO_11F,                   9,  9 ; $EB
	map_const FARAWAY_FERRY_DOCK,            14,  6 ; $EC	- was SILPH_CO_ELEVATOR
	map_const GARNET_CAVERN_2F,              15,  9 ; $ED	- was UNUSED_MAP_ED
	map_const UNDERWATER_TUNNEL,             15,  9 ; $EE	- Was UNUSED_MAP_EE
	map_const TRADE_CENTER,                   5,  4 ; $EF
	map_const COLOSSEUM,                      5,  4 ; $F0
	map_const CELADON_UNIVERSITY_INSIDE,     11, 10 ; $F1	- Was UNUSED_MAP_F1
	map_const CELADON_UNIVERSITY_POKECENTER,  7,  4 ; $F2	- Was UNUSED_MAP_F2
	map_const LORELEIS_ROOM,                  5,  6 ; $F3
	map_const BRUNOS_ROOM,                    5,  6 ; $F4
	map_const AGATHAS_ROOM,                   5,  6 ; $F5
	map_const ROCK_TUNNEL_B1F,               20, 18 ; $F6	- Switched with CINNABAR_VOLCANO_FLOORS
	map_const GIOVANNIS_ROOM,                11, 14 ; $F7
	map_const BATTLE_TENT,                    5, 10 ; $F8
	map_const MT_MOON_SQUARE,                13,  7 ; $F9
	map_const MT_MOON_SQUARE_HOUSE,           4,  4 ; $FA
	map_const CELESTE_HILL_CAVE,	         20, 18 ; $FB
	map_const CELESTE_HILL_OUTSIDE,	         20, 20 ; $FC
	map_const BRUNSWICK_GLADE,               19, 20 ; $FD
	map_const MT_SILVER,					 10, 18 ; $FE
DEF NUM_MAPS EQU const_value

; Indoor maps, such as houses, use this as the Map ID in their exit warps
; This map ID takes the player back to the last outdoor map they were on, stored in wLastMap
DEF LAST_MAP EQU -1
