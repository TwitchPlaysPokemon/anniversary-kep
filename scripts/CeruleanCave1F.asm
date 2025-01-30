CeruleanCave1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanCave1F_TrainerHeaders
	ld de, CeruleanCave1F_ScriptPointers
	ld a, [wCeruleanCave1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanCave1FCurScript], a
	ret

CeruleanCave1F_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw BeatTPPKAY

CeruleanCave1F_TrainerHeaders:
	def_trainers
KAYTrainerHeader:
	trainer EVENT_BEAT_TPP_KAY, 0, KAYIntroText, KAYOutroText, KAYIntroText	
	db -1 ; end
	
CeruleanCave1F_TextPointers:
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw TPPKAYText

TPPKAYText:
	text_asm
	ld hl, KAYTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

BeatTPPKAY:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_TPP_KAY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_TPP_BBBBBa
	ld [wMissableObjectIndex], a
	predef ShowObject
	ResetEvent EVENT_BEAT_TPP_BBBBBa
	call UpdateSprites
	ld c, 30
	call DelayFrames
	call GBFadeInFromBlack
	xor a
	ld [wJoyIgnore], a
	jp PlayDefaultMusicFadeOutCurrent

KAYOutroText:
	text "B"
	prompt

KAYIntroText:
	text "…"
	line "…"
	done
