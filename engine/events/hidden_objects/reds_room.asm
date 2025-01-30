PrintRedSNESText:
	call EnableAutoTextBoxDrawing
	tx_pre_jump RedBedroomSNESText

RedBedroomSNESText::
	text_far _RedBedroomSNESText
	text_end

OpenRedsPC:
	call EnableAutoTextBoxDrawing
	tx_pre_jump RedBedroomPCText

RedBedroomPCText::
	script_players_pc

RedsBed:
 ;	CheckEvent EVENT_POST_GAME_ATTAINED
	CheckEvent EVENT_BEAT_TPP_ROCKETA
	ret z
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	CheckEvent EVENT_BEAT_DREAM_KRIS
	jr z, .warpToMtSilver
	tx_pre_jump RedsBedDreamText ; "Was it just a dream?"

.warpToMtSilver
	ld a, SFX_GO_OUTSIDE
	call PlaySound
	xor a
	ld [wMusicFade], a
	dec a ; SFX_STOP_ALL_MUSIC
	call PlaySound
	xor a
	ld [wUpdateSpritesEnabled], a
	call GBFadeOutToWhite
	call ClearScreen
	call ClearSprites
	call DisableLCD
	ld hl, $9800
	ld bc, $400
	ld a, " "
	call FillMemory
	call EnableLCD
	ld c, 60
	call DelayFrames
	call GBPalNormal

	ld a, HS_TPP_KRIS
	ld [wMissableObjectIndex], a
	predef ShowObject

	tx_pre RedsBedMtSilverText ; "Later that night..."
	ld a, MT_SILVER
	ld [wd72d], a
	farcall SpecialWarpIn
	farcall SpecialEnterMap
	ld c, 60
	call DelayFrames
	jp PlayDefaultMusicFadeOutCurrent

RedsBedDreamText::
	text_far _ItWasJustADreamText
	text_end

RedsBedMtSilverText::
	text_far _MtSilverIntroText
	text_end