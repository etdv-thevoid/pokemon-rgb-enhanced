LavenderTownObject:
	db $2c ; border block

	db $6 ; warps
	db $5, $5, $0, LAVENDER_POKECENTER
	db $5, $e, $0, POKEMONTOWER_1
	db $d, $f, $0, LAVENDER_HOUSE_1
	db $5, $1, $0, LAVENDER_MART
	db $9, $7, $0, LAVENDER_HOUSE_2
	db $d, $7, $0, NAME_RATERS_HOUSE

	db $6 ; signs
	db $b, $3, $4 ; LavenderTownText4
	db $1, $9, $5 ; LavenderTownText5
	db $5, $2, $6 ; MartSignText
	db $5, $6, $7 ; PokeCenterSignText
	db $d, $d, $8 ; LavenderTownText8
	db $7, $11, $9 ; LavenderTownText9

	db $3 ; objects
	object SPRITE_LITTLE_GIRL, $f, $9, WALK, $0, $1 ; person
	object SPRITE_BLACK_HAIR_BOY_1, $10, $e, STAY, NONE, $2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $2, $d, STAY, NONE, $3 ; person

	; warp-to
	EVENT_DISP LAVENDER_TOWN_WIDTH, $5, $5 ; LAVENDER_POKECENTER
	EVENT_DISP LAVENDER_TOWN_WIDTH, $5, $e ; POKEMONTOWER_1
	EVENT_DISP LAVENDER_TOWN_WIDTH, $d, $f ; LAVENDER_HOUSE_1
	EVENT_DISP LAVENDER_TOWN_WIDTH, $5, $1 ; LAVENDER_MART
	EVENT_DISP LAVENDER_TOWN_WIDTH, $9, $7 ; LAVENDER_HOUSE_2
	EVENT_DISP LAVENDER_TOWN_WIDTH, $d, $7 ; NAME_RATERS_HOUSE
