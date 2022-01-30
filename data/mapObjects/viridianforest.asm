ViridianForestObject:
	db $3 ; border block

	db $6 ; warps
	db $0, $1, $2, VIRIDIAN_FOREST_EXIT
	db $0, $2, $3, VIRIDIAN_FOREST_EXIT
	db $2f, $f, $0, VIRIDIAN_FOREST_ENTRANCE
	db $2f, $10, $0, VIRIDIAN_FOREST_ENTRANCE
	db $2f, $11, $1, VIRIDIAN_FOREST_ENTRANCE
	db $2f, $12, $1, VIRIDIAN_FOREST_ENTRANCE

	db $6 ; signs
	db $28, $18, $b ; ViridianForestText11
	db $20, $10, $c ; ViridianForestText12
	db $11, $1a, $d ; ViridianForestText13
	db $18, $4, $e ; ViridianForestText14
	db $2d, $12, $f ; ViridianForestText15
	db $1, $2, $10 ; ViridianForestText16

	db $a ; objects
	object SPRITE_BUG_CATCHER, $10, $2b, STAY, NONE, $1 ; person
	object SPRITE_BUG_CATCHER, $1e, $21, STAY, LEFT, $2, OPP_BUG_CATCHER, $1
	object SPRITE_BUG_CATCHER, $1e, $13, STAY, LEFT, $3, OPP_BUG_CATCHER, $2
	object SPRITE_BUG_CATCHER, $2, $12, STAY, LEFT, $4, OPP_BUG_CATCHER, $3
	object SPRITE_LASS, $3, $29, STAY, NONE, $5, OPP_LASS, $13
	object SPRITE_BUG_CATCHER, $e, $11, STAY, RIGHT, $6, OPP_BUG_CATCHER, $e
	object SPRITE_BUG_CATCHER, $1b, $28, STAY, NONE, $7 ; person
	object SPRITE_BALL, $19, $b, STAY, NONE, $8, ANTIDOTE
	object SPRITE_BALL, $c, $1d, STAY, NONE, $9, POTION
	object SPRITE_BALL, $1, $1f, STAY, NONE, $a, POKE_BALL

	; warp-to
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $0, $1 ; VIRIDIAN_FOREST_EXIT
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $0, $2 ; VIRIDIAN_FOREST_EXIT
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $f ; VIRIDIAN_FOREST_ENTRANCE
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $10 ; VIRIDIAN_FOREST_ENTRANCE
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $11 ; VIRIDIAN_FOREST_ENTRANCE
	EVENT_DISP VIRIDIAN_FOREST_WIDTH, $2f, $12 ; VIRIDIAN_FOREST_ENTRANCE
