; mon_nick_stats nickname, hp, attack, defense, special, speed
MACRO mon_nick_stats
    db \1 ; Nickname
    assert CHARLEN(\1) < NAME_LENGTH, "Nickname is too long"
    REPT NAME_LENGTH - CHARLEN(\1)  ; Fill remaining nickname space with terminators
        db "@"
    ENDR
	db HIGH(\2), LOW(\2), HIGH(\3), LOW(\3), HIGH(\4), LOW(\4), HIGH(\6), LOW(\6), HIGH(\5), LOW(\5) ; big endian stats (put speed before special)
ENDM

DEF NICKNAME_MON_BYTES EQU 5 * 2 + NAME_LENGTH
DEF NICKNAME_TRAINER_BYTES EQU 2 + NICKNAME_MON_BYTES * PARTY_LENGTH

SpecialTrainerNicknamesStats::
    db KRIS, 1 ; I took the higher of special attack/special defense for spc
    ;              nickname,      hp, atk, def, spc, spd
    mon_nick_stats "BUS",        275, 110, 150, 239, 249
    mon_nick_stats "DD",         328, 181, 196, 231, 171
    mon_nick_stats "LWW.YYYOO ", 340, 239, 252, 227, 206
    mon_nick_stats "AC.P .!.N",  292, 312, 229, 207, 159
    mon_nick_stats "BBFNOOpf- ", 279, 136, 144, 345, 294
    mon_nick_stats "CD",         371, 251, 198, 218, 226

    db CCC, 1
    ;              nickname,      hp, atk, def, spc, spd
    mon_nick_stats "QPPQQRRQPj", 239, 202, 138, 201, 201
    mon_nick_stats "DDDDDDDDDD", 178, 190, 133, 157, 253
    mon_nick_stats "MLLLULVVSS", 287, 184, 205, 175, 184
    mon_nick_stats "-??CCCAAA-", 229, 188, 177, 156, 216
    mon_nick_stats "A",          280, 200, 192, 210, 230
    mon_nick_stats "?!♂♂♀AAABa", 257, 181, 118, 112, 174

    db KAY, 1
    ;              nickname,      hp, atk, def, spc, spd
    mon_nick_stats "DD)",        190, 213, 106,  84, 159
    mon_nick_stats "Dkklll",     279, 226, 168, 195, 170
    mon_nick_stats "AA-×ZZG--♂", 214, 162, 163, 201, 221
    mon_nick_stats "GHQQNee.,",  251, 157, 148, 160, 184
    mon_nick_stats "X",          510,  43,  45, 200, 110
    mon_nick_stats "JJKSS",      214, 171, 144, 117, 198

    db BBBBBa, 1
    ;              nickname,      hp, atk, def, spc, spd
    mon_nick_stats ":LAYLA",     279, 202, 187, 205, 184
    mon_nick_stats "ROO",        296, 194, 178,  97, 192
    mon_nick_stats "LOLA",       210, 124,  80, 194, 174
    mon_nick_stats "SKJJ",       273, 236, 251, 154, 157
    mon_nick_stats "MUTTB",      247, 183, 154, 148, 166
    mon_nick_stats "W)))):;;;;", 245, 174, 161, 165, 185

    db ASH, 1
    ;              nickname,      hp, atk, def, spc, spd
    mon_nick_stats "--?<PK>z",   294, 247, 174, 212, 165
    mon_nick_stats "AAAIIRR",    220, 180, 149, 129, 175
    mon_nick_stats "AAAJA",      185, 113, 297,  84, 146
    mon_nick_stats "VNT---×((?", 227, 175, 160, 206, 110
    mon_nick_stats "bkkkttTW;",  297, 286, 161, 185, 197 ; Ditto: 263, 159, 147, 162, 151
    mon_nick_stats "BTLmNNNNo",  258, 148, 154, 230, 146

    db ROCKETA, 1 ; I took the higher of special attack/special defense for spc
    ;              nickname,      hp, atk, def, spc, spd
    mon_nick_stats "MMMMMC, fA", 454, 302, 172, 185, 287 
    mon_nick_stats "Guhn??",     190, 156, 196, 222, 125
    mon_nick_stats "S IIvoocb",  210, 254, 136, 208, 137
    mon_nick_stats "JOE",        271, 233, 176, 191, 153
    mon_nick_stats "BAKE",       238, 171, 148, 164, 265
    mon_nick_stats "ppppohbb,",  195, 153, 123, 136, 214

	db -1 ; end
