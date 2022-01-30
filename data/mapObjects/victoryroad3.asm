VictoryRoad3Object:
	db $7d ; border block

	db $4 ; warps
	db $7, $17, $3, VICTORY_ROAD_2
	db $8, $1a, $5, VICTORY_ROAD_2
	db $f, $1b, $4, VICTORY_ROAD_2
	db $0, $2, $6, VICTORY_ROAD_2

	db $0 ; signs

	db $a ; objects
	object SPRITE_BLACK_HAIR_BOY_1, $1c, $5, STAY, LEFT, $1, OPP_COOLTRAINER_M, $4
	object SPRITE_BRUNETTE_GIRL, $7, $d, STAY, RIGHT, $2, OPP_COOLTRAINER_F, $2
	object SPRITE_BLACK_HAIR_BOY_1, $6, $e, STAY, LEFT, $3, OPP_COOLTRAINER_M, $5
	object SPRITE_BRUNETTE_GIRL, $d, $3, STAY, RIGHT, $4, OPP_COOLTRAINER_F, $3
	object SPRITE_BALL, $1a, $5, STAY, NONE, $5, MAX_REVIVE
	object SPRITE_BALL, $7, $7, STAY, NONE, $6, TM_23
	object SPRITE_BOULDER, $16, $3, STAY, BOULDER_MOVEMENT_BYTE_2, $7 ; person
	object SPRITE_BOULDER, $d, $c, STAY, BOULDER_MOVEMENT_BYTE_2, $8 ; person
	object SPRITE_BOULDER, $18, $a, STAY, BOULDER_MOVEMENT_BYTE_2, $9 ; person
	object SPRITE_BOULDER, $16, $f, STAY, BOULDER_MOVEMENT_BYTE_2, $a ; person

	; warp-to
	EVENT_DISP VICTORY_ROAD_3_WIDTH, $7, $17 ; VICTORY_ROAD_2
	EVENT_DISP VICTORY_ROAD_3_WIDTH, $8, $1a ; VICTORY_ROAD_2
	EVENT_DISP VICTORY_ROAD_3_WIDTH, $f, $1b ; VICTORY_ROAD_2
	EVENT_DISP VICTORY_ROAD_3_WIDTH, $0, $2 ; VICTORY_ROAD_2
