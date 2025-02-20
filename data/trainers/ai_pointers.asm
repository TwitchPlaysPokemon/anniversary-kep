TrainerAIPointers:
	table_width 3, TrainerAIPointers
	; one entry per trainer class
	; first byte, number of times (per Pokémon) it can occur
	; next two bytes, pointer to AI subroutine for trainer class
	; subroutines are defined in engine/battle/trainer_ai.asm
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 3, JugglerAI ; juggler
	dbw 3, GenericAI
	dbw 3, GenericAI
	dbw 2, BlackbeltAI ; blackbelt
	dbw 3, GenericAI ; rival1
	dbw 2, OakAI
	dbw 3, ChiefAI ; chief
	dbw 3, GenericAI
	dbw 1, GiovanniAI ; giovanni
	dbw 3, GenericAI
	dbw 2, CooltrainerMAI ; cooltrainerm
	dbw 1, CooltrainerFAI ; cooltrainerf
	dbw 1, BrunoAI ; bruno
	dbw 5, BrockAI ; brock
	dbw 1, MistyAI ; misty
	dbw 1, LtSurgeAI ; surge
	dbw 1, ErikaAI ; erika
	dbw 2, KogaAI ; koga
	dbw 2, BlaineAI ; blaine
	dbw 1, SabrinaAI ; sabrina
	dbw 3, GenericAI
	dbw 2, Rival2AI ; rival2
	dbw 3, Rival3AI ; rival3
	dbw 1, LoreleiAI ; lorelei
	dbw 3, GenericAI
	dbw 1, AgathaAI ; agatha
	dbw 2, LanceAI ; lance
	dbw 3, GenericAI ; Yujirou
	dbw 3, GenericAI ; Student
	dbw 3, GenericAI ; Firefighter
	dbw 2, BlackbeltAI ; Koichi
	dbw 2, BlackbeltAI ; Jack
	dbw 2, GenericAI ; Jessie & James
	dbw 3, SabrinaAI
	dbw 3, AgathaAI ; Kris
	dbw 3, Rival3AI ; CCC
	dbw 3, Rival3AI ; KAY
	dbw 3, Rival3AI ; BBBBBa
	dbw 3, Rival3AI ; ASH
	dbw 3, GiovanniAI ; ROCKETA
	assert_table_length NUM_TRAINERS
