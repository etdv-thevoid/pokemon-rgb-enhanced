ForestMons:
	db $08
IF DEF(_RED)
	db 4,WEEDLE
	db 5,KAKUNA
	db 3,WEEDLE
	db 5,WEEDLE
	db 4,KAKUNA
	db 6,PIDGEY
	db 4,METAPOD
	db 3,CATERPIE
	db 3,PIKACHU
	db 5,PIKACHU
ENDC
IF DEF(_GREEN)
	db 4,CATERPIE
	db 5,METAPOD
	db 3,CATERPIE
	db 5,CATERPIE
	db 4,METAPOD
	db 6,PIDGEY
	db 4,KAKUNA
	db 3,WEEDLE
	db 3,PIKACHU
	db 5,PIKACHU
ENDC
IF DEF(_BLUE)
	db 4,WEEDLE
	db 5,KAKUNA
	db 3,WEEDLE
	db 5,WEEDLE
	db 4,KAKUNA
	db 6,PIDGEY
	db 4,METAPOD
	db 3,CATERPIE
	db 3,PIKACHU
	db 5,PIKACHU
ENDC
IF DEF(_YELLOW)
	db 4,CATERPIE
	db 5,METAPOD
	db 3,CATERPIE
	db 5,CATERPIE
	db 4,METAPOD
	db 6,PIDGEY
	db 4,KAKUNA
	db 3,WEEDLE
	db 3,WEEDLE
	db 5,KAKUNA
ENDC
	db $00
