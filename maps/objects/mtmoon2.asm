MtMoon2Object:
	db $3 ; border block

	db $8 ; warps
	db $7, $1, $2, MT_MOON_1
	db $b, $b, $0, MT_MOON_3
	db $b, $11, $3, MT_MOON_1
	db $f, $19, $4, MT_MOON_1
	db $13, $f, $1, MT_MOON_3
	db $1b, $d, $2, MT_MOON_3
	db $3, $b, $3, MT_MOON_3
	db $3, $1b, $2, $ff

	db $0 ; signs

	db $0 ; objects

	; warp-to
	EVENT_DISP MT_MOON_2_WIDTH, $7, $1 ; MT_MOON_1
	EVENT_DISP MT_MOON_2_WIDTH, $b, $b ; MT_MOON_3
	EVENT_DISP MT_MOON_2_WIDTH, $b, $11 ; MT_MOON_1
	EVENT_DISP MT_MOON_2_WIDTH, $f, $19 ; MT_MOON_1
	EVENT_DISP MT_MOON_2_WIDTH, $13, $f ; MT_MOON_3
	EVENT_DISP MT_MOON_2_WIDTH, $1b, $d ; MT_MOON_3
	EVENT_DISP MT_MOON_2_WIDTH, $3, $b ; MT_MOON_3
	EVENT_DISP MT_MOON_2_WIDTH, $3, $1b
