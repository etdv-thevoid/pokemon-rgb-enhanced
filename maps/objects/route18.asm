Route18Object:
	db $43 ; border block

	db $4 ; warps
	db $8, $21, $0, ROUTE_18_GATE_1F
	db $9, $21, $1, ROUTE_18_GATE_1F
	db $8, $28, $2, ROUTE_18_GATE_1F
	db $9, $28, $3, ROUTE_18_GATE_1F

	db $2 ; signs
	db $7, $2b, $4 ; Route18Text4
	db $5, $21, $5 ; Route18Text5

	db $3 ; objects
	object SPRITE_ROCKER, $24, $b, STAY, RIGHT, $1, OPP_BIRD_KEEPER, $c
	object SPRITE_ROCKER, $28, $f, STAY, LEFT, $2, OPP_BIRD_KEEPER, $d
	object SPRITE_ROCKER, $2a, $d, STAY, LEFT, $3, OPP_BIRD_KEEPER, $e

	; warp-to
	EVENT_DISP ROUTE_18_WIDTH, $8, $21 ; ROUTE_18_GATE_1F
	EVENT_DISP ROUTE_18_WIDTH, $9, $21 ; ROUTE_18_GATE_1F
	EVENT_DISP ROUTE_18_WIDTH, $8, $28 ; ROUTE_18_GATE_1F
	EVENT_DISP ROUTE_18_WIDTH, $9, $28 ; ROUTE_18_GATE_1F
