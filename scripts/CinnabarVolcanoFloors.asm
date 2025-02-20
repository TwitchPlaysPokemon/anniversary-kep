CinnabarVolcanoFloors_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CinnabarVolcanoFloorsTrainerHeaders
	ld de, CinnabarVolcanoFloors_ScriptPointers
	ld a, [wCinnabarVolcanoFloorsCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCinnabarVolcanoFloorsCurScript], a
	ret
	
CinnabarVolcanoFloors_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw BeatTPPASH

CinnabarVolcanoFloors_TextPointers:
	dw TPPASHText
	dw CinnabarVolcanoFloorsText1
	dw CinnabarVolcanoFloorsText2
	dw CinnabarVolcanoFloorsText3
	dw CinnabarVolcanoFloorsText4
	dw PickUpItemText
	dw BoulderText
	dw BoulderText
	dw BoulderText
	dw BoulderText
	dw BoulderText
	dw BoulderText
	dw BoulderText
	dw BoulderText
	
CinnabarVolcanoFloorsTrainerHeaders:
	def_trainers
TPPASHTrainerHeader:
	trainer EVENT_BEAT_TPP_ASH, 0, ASHIntroText, ASHOutroText, ASHIntroText
CinnabarVolcanoFloorsTrainerHeader0:
	trainer EVENT_BEAT_CINNABAR_VOLCANO_TRAINER_1, 2, CinnabarVolcanoFloorsBattleText1, CinnabarVolcanoFloorsEndBattleText1, CinnabarVolcanoFloorsAfterBattleText1
CinnabarVolcanoFloorsTrainerHeader1:
	trainer EVENT_BEAT_CINNABAR_VOLCANO_TRAINER_2, 5, CinnabarVolcanoFloorsBattleText2, CinnabarVolcanoFloorsEndBattleText2, CinnabarVolcanoFloorsAfterBattleText2
CinnabarVolcanoFloorsTrainerHeader2:
	trainer EVENT_BEAT_CINNABAR_VOLCANO_TRAINER_3, 2, CinnabarVolcanoFloorsBattleText3, CinnabarVolcanoFloorsEndBattleText3, CinnabarVolcanoFloorsAfterBattleText3
CinnabarVolcanoFloorsTrainerHeader3:
	trainer EVENT_BEAT_CINNABAR_VOLCANO_TRAINER_4, 3, CinnabarVolcanoFloorsBattleText4, CinnabarVolcanoFloorsEndBattleText4, CinnabarVolcanoFloorsAfterBattleText4
	db -1 ; end
	
CinnabarVolcanoFloorsText1:
	text_asm
	ld hl, CinnabarVolcanoFloorsTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CinnabarVolcanoFloorsBattleText1:
	text_far _CinnabarVolcanoFloorsBattleText1
	text_end

CinnabarVolcanoFloorsEndBattleText1:
	text_far _CinnabarVolcanoFloorsEndBattleText1
	text_end

CinnabarVolcanoFloorsAfterBattleText1:
	text_far _CinnabarVolcanoFloorsAfterBattleText1
	text_end

CinnabarVolcanoFloorsText2:
	text_asm
	ld hl, CinnabarVolcanoFloorsTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

CinnabarVolcanoFloorsBattleText2:
	text_far _CinnabarVolcanoFloorsBattleText2
	text_end

CinnabarVolcanoFloorsEndBattleText2:
	text_far _CinnabarVolcanoFloorsEndBattleText2
	text_end

CinnabarVolcanoFloorsAfterBattleText2:
	text_far _CinnabarVolcanoFloorsAfterBattleText2
	text_end
	
CinnabarVolcanoFloorsText3:
	text_asm
	ld hl, CinnabarVolcanoFloorsTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

CinnabarVolcanoFloorsBattleText3:
	text_far _CinnabarVolcanoFloorsBattleText3
	text_end

CinnabarVolcanoFloorsEndBattleText3:
	text_far _CinnabarVolcanoFloorsEndBattleText3
	text_end

CinnabarVolcanoFloorsAfterBattleText3:
	text_far _CinnabarVolcanoFloorsAfterBattleText3
	text_end

CinnabarVolcanoFloorsText4:
	text_asm
	ld hl, CinnabarVolcanoFloorsTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

CinnabarVolcanoFloorsBattleText4:
	text_far _CinnabarVolcanoFloorsBattleText4
	text_end

CinnabarVolcanoFloorsEndBattleText4:
	text_far _CinnabarVolcanoFloorsEndBattleText4
	text_end

CinnabarVolcanoFloorsAfterBattleText4:
	text_far _CinnabarVolcanoFloorsAfterBattleText4
	text_end

TPPASHText:
	text_asm
	ld hl, TPPASHTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

BeatTPPASH:
	ld a, [wTrainerClass]
	cp ASH
	jp nz, EndTrainerBattle
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_TPP_ASH
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_TPP_ROCKETA
	ld [wMissableObjectIndex], a
	predef ShowObject
	ResetEvent EVENT_BEAT_TPP_ROCKETA
	call UpdateSprites
	ld c, 30
	call DelayFrames
	call GBFadeInFromBlack
	xor a
	ld [wJoyIgnore], a
	jp PlayDefaultMusicFadeOutCurrent

ASHOutroText:
	text "SELECT"
	prompt

ASHIntroText:
	text "B"
	line "…"
	done