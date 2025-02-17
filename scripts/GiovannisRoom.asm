GiovannisRoom_Script:
	call EnableAutoTextBoxDrawing
	ld hl, GiovannisRoom_TrainerHeaders
	ld de, GiovannisRoom_ScriptPointers
	ld a, [wGiovannisRoomCurScript]
	call ExecuteCurMapScriptInTable
	ld [wGiovannisRoomCurScript], a
	ret

GiovannisRoom_ScriptPointers:
	dw GiovannisRoomScript0
	dw GiovannisRoomScript4
	dw BeatTPPRocketA

GiovannisRoomScript0:
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
	ld hl, GiovannisRoomArrowTilePlayerMovement
	call DecodeArrowMovementRLE
	cp $ff
	jr z, .done ; Normally this checks for map trainers, but since there's none, we can remove them.
	ld hl, wd736
	set 7, [hl]
	call StartSimulatingJoypadStates
	ld a, SFX_ARROW_TILES
	call PlaySound
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, $1
	ld [wCurMapScript], a
.done
	ret

; Some tile movements were removed due to either being unnecessary or ports from Viridian Gym itself.
GiovannisRoomArrowTilePlayerMovement:
	map_coord_movement 12, 16, GiovannisRoomArrowMovement1
	map_coord_movement 14, 15, GiovannisRoomArrowMovement2
	map_coord_movement 10, 15, GiovannisRoomArrowMovement3
	map_coord_movement 11, 14, GiovannisRoomArrowMovement4
	map_coord_movement 13, 8, GiovannisRoomArrowMovement5
	map_coord_movement 15, 8, GiovannisRoomArrowMovement7
	map_coord_movement 12, 9, GiovannisRoomArrowMovement8
	map_coord_movement 14, 9, GiovannisRoomArrowMovement9
	map_coord_movement 15, 10, GiovannisRoomArrowMovement11
	map_coord_movement 14, 11, GiovannisRoomArrowMovement13
	db -1 ; end

GiovannisRoomArrowMovement1:
	db D_UP, 2
	db -1 ; end

GiovannisRoomArrowMovement2:
	db D_UP, 9
	db D_LEFT, 4
	db -1 ; end

GiovannisRoomArrowMovement3:
	db D_UP, 9
	db -1 ; end

GiovannisRoomArrowMovement4:
	db D_RIGHT, 2
	db -1 ; end

GiovannisRoomArrowMovement5:
	db D_RIGHT, 3
	db D_DOWN, 2
	db D_RIGHT, 2
	db -1 ; end

GiovannisRoomArrowMovement7:
	db D_RIGHT, 3
	db D_DOWN, 2
	db -1 ; end

GiovannisRoomArrowMovement8:
	db D_UP, 1
	db D_RIGHT, 2
	db -1 ; end

GiovannisRoomArrowMovement9:
	db D_UP, 1
	db -1 ; end

GiovannisRoomArrowMovement11:
	db D_RIGHT, 3
	db -1 ; end

GiovannisRoomArrowMovement13:
	db D_UP, 3
	db -1 ; end

GiovannisRoomScript4:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	jr nz, .GiovannisRoomLoadSpinnerArrow
	xor a
	ld [wJoyIgnore], a
	ld hl, wd736
	res 7, [hl]
	ld a, $0
	ld [wCurMapScript], a
	ret
.GiovannisRoomLoadSpinnerArrow
	farjp LoadSpinnerArrowTiles

GiovannisRoom_TextPointers:
	dw GiovannisRoomText1
	dw GiovannisRoomText2
	dw GiovannisRoomText3
	dw GiovannisRoomText4
	dw PickUpItemText
	dw PickUpItemText
	dw TPPRocketAText

GiovannisRoomText1:
	text_far _GiovannisRoomText1
	text_end

GiovannisRoomText2:
	text_far _GiovannisRoomText2
	text_end

GiovannisRoomText3:
	text_far _GiovannisRoomText3
	text_end

GiovannisRoomText4:
	text_far _GiovannisRoomText4
	text_end

GiovannisRoom_TrainerHeaders:
	def_trainers
RocketATrainerHeader:
	trainer EVENT_BEAT_TPP_ROCKETA, 0, RocketAIntroText, RocketAOutroText, RocketAIntroText
	db -1 ; end

TPPRocketAText:
	text_asm
	ld hl, RocketATrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

BeatTPPRocketA:
	call EndTrainerBattle
	ld a, [wIsInBattle]
	cp $ff
	jp z, ResetButtonPressedAndMapScript
	ld a, $f0
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_TPP_ROCKETA
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_TPP_KAY
	ld [wMissableObjectIndex], a
	predef ShowObject
	ResetEvent EVENT_BEAT_TPP_KAY
	call UpdateSprites
	ld c, 30
	call DelayFrames
	call GBFadeInFromBlack
	xor a
	ld [wJoyIgnore], a
	jp PlayDefaultMusicFadeOutCurrent

RocketAOutroText:
	text "A"
	prompt

RocketAIntroText:
	text "…"
	line "…"
	done