MtSilver_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MtSilver_TrainerHeaders
	ld de, MtSilver_ScriptPointers
	ld a, [wMtSilverCurScript]
	call ExecuteCurMapScriptInTable
	ld [wMtSilverCurScript], a
	ret
	
MtSilver_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw TehUrn_TPPRed
	
TehUrn_TPPRed:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	call UpdateSprites
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, $2
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call GBFadeOutToBlack
	ld a, HS_TPP_RED
	ld [wMissableObjectIndex], a
	predef HideObject
	call UpdateSprites
	ld c, 30
	call DelayFrames
	call GBFadeInFromBlack
	ld c, 60
	call DelayFrames
	xor a
	ld [wJoyIgnore], a
	;ld [wMtSilverCurScript], a
	;ld [wCurMapScript], a
	ld [wd732], a
	call GBFadeOutToWhite
	ld a, REDS_HOUSE_2F
	ld [wd72d], a
	farcall SpecialWarpIn
	ld c, 60
	call DelayFrames
	farcall SpecialEnterMap
	call GBFadeInFromWhite
	jp PlayDefaultMusicFadeOutCurrent

MtSilver_TextPointers:
	dw TPPRedText
	dw Red12dots

MtSilver_TrainerHeaders:
	def_trainers
MtSilver_TrainerHeader:
	trainer EVENT_BEAT_DREAM_RED, 0, Red12dots, Red3dots, Red12dots
	db -1 ; end
	
TPPRedText:
	text_asm
	ld hl, MtSilver_TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd
	
Red3dots:
    text "start9"
    prompt
    
Red12dots:
    text "…"
    line "…"
    done