Route12HouseScript:
	jp EnableAutoTextBoxDrawing

Route12HouseTextPointers:
	dw Route12HouseText1

Route12HouseText1:
	TX_ASM
	ld a, [wd728]
	bit 4, a
	jr nz, .after

	ld hl, Route12HouseText_564c0
	call PrintText

	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused

	lb bc, GOOD_ROD, 1
	call GiveItem
	jr nc, .full

	ld hl, wd728
	set 4, [hl]

	ld hl, Route12HouseText_564c5
	jr .talk

.full
	ld hl, Route12HouseText_564d9
	jr .talk

.refused
	ld hl, Route12HouseText_564cf
	jr .talk

.after
	ld hl, Route12HouseText_564d4

.talk
	call PrintText
	jp TextScriptEnd

Route12HouseText_564c0:
	TX_FAR _Route12HouseText_564c0
	db "@"

Route12HouseText_564c5:
	TX_FAR _Route12HouseText_564c5
	TX_SFX_ITEM_1
	TX_FAR _Route12HouseText_564ca
	db "@"

Route12HouseText_564cf:
	TX_FAR _Route12HouseText_564cf
	db "@"

Route12HouseText_564d4:
	TX_FAR _Route12HouseText_564d4
	db "@"

Route12HouseText_564d9:
	TX_FAR _Route12HouseText_564d9
	db "@"
