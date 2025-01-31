    db DEX_PHANCERO ; pokedex id

    db 178, 137,  57, 128,  65 
    ;   hp  atk  def  spd  spc

    db GHOST, FLYING ; type 
    db 3   ; catch rate
    db 216 ; base exp yield

    INCBIN "gfx/pokemon/front/phancero.pic", 0, 1 ; sprite dimensions
    dw PhanceroPicFront, PhanceroPicBack

    ; attacks known at lvl 0
    db POUND, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
    db GROWTH_SLOW ; growth rate

    ; tm/hm learnset
    tmhm SWORDS_DANCE, TOXIC,        DOUBLE_EDGE,  COUNTER,      SEISMIC_TOSS, \
        THUNDER,      EARTHQUAKE,   PSYCHIC_M,    DOUBLE_TEAM,  SKY_ATTACK,   \
        REST,         THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   FLY,          \
        FLASH

    db BANK(PhanceroPicFront)
    assert BANK(PhanceroPicFront) == BANK(PhanceroPicBack)