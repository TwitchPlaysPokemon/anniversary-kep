DEF OPP_ID_OFFSET EQU 0 ; Was only used in KEP for music check, now also fixed

MACRO trainer_const
	const \1
	DEF OPP_\1 EQU OPP_ID_OFFSET + \1
ENDM

; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerNamePointers (see data/trainers/name_pointers.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)
	const_def
	trainer_const NOBODY         ; $00
	trainer_const YOUNGSTER      ; $01
	trainer_const BUG_CATCHER    ; $02
	trainer_const LASS           ; $03
	trainer_const SAILOR         ; $04
	trainer_const JR_TRAINER_M   ; $05
	trainer_const JR_TRAINER_F   ; $06
	trainer_const POKEMANIAC     ; $07
	trainer_const SUPER_NERD     ; $08
	trainer_const HIKER          ; $09
	trainer_const BIKER          ; $0A
	trainer_const BURGLAR        ; $0B
	trainer_const ENGINEER       ; $0C
	trainer_const FISHER         ; $0D
	trainer_const SWIMMER        ; $0E
	trainer_const CUE_BALL       ; $0F
	trainer_const GAMBLER        ; $10
	trainer_const BEAUTY         ; $11
	trainer_const PSYCHIC_TR     ; $12
	trainer_const ROCKER         ; $13
	trainer_const JUGGLER        ; $14
	trainer_const TAMER          ; $15
	trainer_const BIRD_KEEPER    ; $16
	trainer_const BLACKBELT      ; $17
	trainer_const RIVAL1         ; $18
	trainer_const PROF_OAK       ; $19
	trainer_const CHIEF          ; $1A
	trainer_const SCIENTIST      ; $1B
	trainer_const GIOVANNI       ; $1C
	trainer_const ROCKET         ; $1D
	trainer_const COOLTRAINER_M  ; $1E
	trainer_const COOLTRAINER_F  ; $1F
	trainer_const BRUNO          ; $20
	trainer_const BROCK          ; $21
	trainer_const MISTY          ; $22
	trainer_const LT_SURGE       ; $23
	trainer_const ERIKA          ; $24
	trainer_const KOGA           ; $25
	trainer_const BLAINE         ; $26
	trainer_const SABRINA        ; $27
	trainer_const GENTLEMAN      ; $28
	trainer_const RIVAL2         ; $29
	trainer_const RIVAL3         ; $2A
	trainer_const LORELEI        ; $2B
	trainer_const CHANNELER      ; $2C
	trainer_const AGATHA         ; $2D
	trainer_const LANCE          ; $2E
	trainer_const YUJIROU 		 ; $2F
	trainer_const STUDENT        ; $30
	trainer_const FIREFIGHTER    ; $31
	trainer_const KOICHI         ; $32
	trainer_const JACK           ; $33
	trainer_const JESSIE_JAMES   ; $34
	trainer_const LEADER_GIOVANNI; $35
	trainer_const KRIS           ; $36
	trainer_const CCC            ; $37
	trainer_const KAY            ; $38
	trainer_const BBBBBa         ; $39
	trainer_const ASH            ; $3A
	trainer_const ROCKETA        ; $3B
DEF NUM_TRAINERS EQU const_value - 1
