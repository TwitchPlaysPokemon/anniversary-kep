ReadTrainer:

; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartySpecies] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl, wEnemyPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

; check if we are in battle tent since we need a random pokemon data
	ld a,[wCurMap]
	cp BATTLE_TENT
	jr nz, .notBT
	farcall ReadBattleTentTrainer
	jp .FinishUp

; get the pointer to trainer data for this class
.notBT
	ld a, [wTrainerClass] ; get trainer class
	dec a
	add a
	ld hl, TrainerDataPointers
	ld c, a
	ld b, 0
	add hl, bc ; hl points to trainer class
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wTrainerNo]
	ld b, a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z, .IterateTrainer
.inner
	ld a, [hli]
	and a
	jr nz, .inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.IterateTrainer
	ld a, [hli]
	cp $FF ; is the trainer special?
	jr z, .SpecialTrainer ; if so, check for special moves
	ld [wCurEnemyLVL], a
.LoopTrainerData
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jp z, .AddAdditionalMoveData
	ld [wcf91], a ; write species somewhere (XXX why?)
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .LoopTrainerData
.SpecialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jr z, .AddAdditionalMoveData
	ld [wCurEnemyLVL], a
	ld a, [hli]
	ld [wcf91], a
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .SpecialTrainer
.AddAdditionalMoveData
; does the trainer have additional move data?
	ld a, [wTrainerClass]
	ld b, a
	ld a, [wTrainerNo]
	ld c, a
	ld hl, SpecialTrainerMoves
.loopAdditionalMoveData
	ld a, [hli]
	cp $ff
	jr z, .checkNicknamesStats
	cp b
	jr nz, .findNextEntry
	ld a, [hli]
	cp c
	jr nz, .findNextEntry
	ld d, h
	ld e, l
.writeAdditionalMoveDataLoop
	ld a, [de]
	inc de
	and a
	jp z, .checkNicknamesStats
	dec a
	ld hl, wEnemyMon1Moves
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld a, [de]
	inc de
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [de]
	inc de
	ld [hl], a
	jr .writeAdditionalMoveDataLoop
.findNextEntry
	ld a, [hli]
	and a
	jr nz, .findNextEntry
	jr .loopAdditionalMoveData
.checkNicknamesStats
	ld a, [wTrainerClass]
	ld b, a
	ld a, [wTrainerNo]
	ld c, a
	ld hl, SpecialTrainerNicknamesStats
	ld de, NICKNAME_TRAINER_BYTES - 1
.findTrainerClass
	ld a, [hli]
	cp $ff
	jr z, .FinishUp
	cp b
	jr z, .foundClass
	add hl, de
	jr .findTrainerClass
.foundClass
	ld a, [hl]
	cp c
	jr z, .foundParty
	add hl, de
	jr .findTrainerClass
.foundParty
	inc hl
	FOR n, 1, PARTY_LENGTH + 1
		DEF partyMember = PARTY_LENGTH + 1 - n
		ld bc, wEnemyMon{d:partyMember}Stats
		push bc
		ld bc, wEnemyMon{d:partyMember}HP
		push bc
		ld bc, wEnemyMon{d:partyMember}Nick
		push bc
	ENDR
	ld a, PARTY_LENGTH
.updatePartyMember
	ld [wTrainerHasNicknames], a
	pop de
	; hl: start of party member nickname; de: wEnemyMonNNick
	ld bc, NAME_LENGTH
	call CopyData
	; hl: start of party member HP stat
	ld d, h
	ld e, l
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	pop hl
	; hl: wEnemyMonNHP
	ld a, b
	ld [hli], a
	ld a, c
	ld [hl], a
	ld h, d
	ld l, e
	pop de
	; hl: start of party member stats; de: wEnemyMonNStats
	ld bc, NICKNAME_MON_BYTES - NAME_LENGTH
	call CopyData
	ld a, [wTrainerHasNicknames]
	dec a
	and a
	jr nz, .updatePartyMember ; leaving wTrainerHasNicknames at 1
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLVL]
	ld b, a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl, wTrainerBaseMoney + 1
	ld c, 2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz, .LastLoop ; repeat wCurEnemyLVL times
	ret