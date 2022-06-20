FuchsiaHouse1Object:
	db $a ; border block

	db $2 ; warps
	db $7, $2, $1, $ff
	db $7, $3, $1, $ff

	db $0 ; signs

	db $2 ; objects
	object SPRITE_MR_MASTERBALL, $5, $3, STAY, LEFT, $1 ; person
	object SPRITE_OLD_PERSON, $2, $3, STAY, RIGHT, $2 ; person

	; warp-to
	EVENT_DISP FUCHSIA_HOUSE_1_WIDTH, $7, $2
	EVENT_DISP FUCHSIA_HOUSE_1_WIDTH, $7, $3
