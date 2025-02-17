MtMoonCrater_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MtMoonCrater_TrainerHeaders
	ld de, MtMoonCrater_ScriptPointers
	ld a, [wMtMoonCraterCurScript]
	call ExecuteCurMapScriptInTable
	ld [wMtMoonCraterCurScript], a
	ret

MtMoonCrater_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw BeatTPPCCC

MtMoonCrater_TextPointers:
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw TPPCCCText
	text_end ; unused


MtMoonCrater_TrainerHeaders:
	def_trainers
MtMoonCrater_TrainerHeader:
	trainer EVENT_BEAT_TPP_CCC, 0, CCCIntroText, CCCOutroText, CCCIntroText
	db -1 ; end

TPPCCCText:
	text_asm
	ld hl, MtMoonCrater_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

BeatTPPCCC:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_TPP_CCC
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

CCCIntroText:
    text "A"
    done

CCCOutroText:
    text "…"
    line "…"
    prompt