SaffronHouse2Script:
	jp EnableAutoTextBoxDrawing

SaffronHouse2TextPointers:
	dw SaffronHouse2Text1

SaffronHouse2Text1:
	TX_ASM
	CheckEvent EVENT_GOT_TM29
	jr nz, .explain
	ld hl, TM29PreReceiveText
	call PrintText
	lb bc, TM_29, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedTM29Text
	call PrintText
	SetEvent EVENT_GOT_TM29
	jr .done

.BagFull
	ld hl, TM29NoRoomText
	call PrintText
	jr .done

.explain
	ld hl, TM29ExplanationText
	call PrintText

.done
	jp TextScriptEnd

TM29PreReceiveText:
	TX_FAR _TM29PreReceiveText
	db "@"

ReceivedTM29Text:
	TX_FAR _ReceivedTM29Text
	TX_SFX_ITEM_1
	db "@"

TM29ExplanationText:
	TX_FAR _TM29ExplanationText
	db "@"

TM29NoRoomText:
	TX_FAR _TM29NoRoomText
	db "@"
