Route19Object:
	db $43 ; border block

	db $0 ; warps

	db $1 ; signs
	db $9, $b, $b ; Route19Text11

	db $a ; objects
	object SPRITE_BLACK_HAIR_BOY_1, $8, $7, STAY, LEFT, 1, OPP_SWIMMER, 2
	object SPRITE_BLACK_HAIR_BOY_1, $d, $7, STAY, LEFT, 2, OPP_SWIMMER, 3
	object SPRITE_SWIMMER, $d, $19, STAY, LEFT, $3, OPP_SWIMMER, $4
	object SPRITE_SWIMMER_F, $4, $1b, STAY, RIGHT, $4, OPP_SWIMMER_F, $1
	object SPRITE_SWIMMER, $10, $1f, STAY, UP, $5, OPP_SWIMMER, $5
	object SPRITE_SWIMMER, $9, $b, STAY, DOWN, $6, OPP_SWIMMER, $6
	object SPRITE_SWIMMER_F, $8, $2b, STAY, LEFT, $7, OPP_BEAUTY, $c
	object SPRITE_SWIMMER_F, $b, $2b, STAY, RIGHT, $8, OPP_BEAUTY, $d
	object SPRITE_SWIMMER_F, $9, $2a, STAY, UP, $9, OPP_SWIMMER_F, $2
	object SPRITE_SWIMMER_F, $a, $2c, STAY, DOWN, $a, OPP_BEAUTY, $e

	; warp-to
