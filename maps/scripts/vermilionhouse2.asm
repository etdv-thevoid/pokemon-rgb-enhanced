VermilionHouse2Script:
	jp EnableAutoTextBoxDrawing

VermilionHouse2TextPointers:
	dw VermilionHouse2Text1

VermilionHouse2Text1:
	TX_ASM
	ld a, [wd728]
	bit 3, a
	jr nz, .after

	ld hl, VermilionHouse2Text_560b1
	call PrintText

	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused

	lb bc, OLD_ROD, 1
	call GiveItem
	jr nc, .full

	ld hl, wd728
	set 3, [hl]

	ld hl, VermilionHouse2Text_560b6
	jr .talk

.full
	ld hl, VermilionHouse2Text_560ca
	jr .talk

.refused
	ld hl, VermilionHouse2Text_560c0
	jr .talk

.after
	ld hl, VermilionHouse2Text_560c5

.talk
	call PrintText
	jp TextScriptEnd

VermilionHouse2Text_560b1:
	TX_FAR _VermilionHouse2Text_560b1
	db "@"

VermilionHouse2Text_560b6:
	TX_FAR _VermilionHouse2Text_560b6
	TX_SFX_ITEM_1
	TX_FAR _VermilionHouse2Text_560bb
	db "@"

VermilionHouse2Text_560c0:
	TX_FAR _VermilionHouse2Text_560c0
	db "@"

VermilionHouse2Text_560c5:
	TX_FAR _VermilionHouse2Text_560c5
	db "@"

VermilionHouse2Text_560ca:
	TX_FAR _VermilionHouse2Text_560ca
	db "@"