FarawayIslandOutside_Script:
	call EnableAutoTextBoxDrawing
	ld hl, FarawayIslandOutsideTrainerHeaders
	ld de, FarawayIslandOutside_ScriptPointers
	ld a, [wFarawayIslandOutsideCurScript]
	call ExecuteCurMapScriptInTable
	ld [wFarawayIslandOutsideCurScript], a
	ret

FarawayIslandOutside_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw BeatTPPBBBBBa

FarawayIslandOutside_TextPointers:
	dw TPPBBBBBaText
	dw FarawayIslandSign

FarawayIslandSign:
	text_far _FarawayIslandSign
	text_end

FarawayIslandOutsideTrainerHeaders:
	def_trainers
BBBBBaTrainerHeader:
	trainer EVENT_BEAT_TPP_BBBBBa, 0, BBBBBaIntroText, BBBBBaOutroText, BBBBBaIntroText
	db -1 ; end

TPPBBBBBaText:
	text_asm
	ld hl, BBBBBaTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

BeatTPPBBBBBa:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_TPP_BBBBBa
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

BBBBBaOutroText:
	text "B B B B B"
	line "A"
	prompt

BBBBBaIntroText:
	text "START"
	line "…"
	done