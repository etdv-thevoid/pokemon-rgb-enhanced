MansionMons1:
	db $0A
IF DEF(_RED)
	db 32,KOFFING
	db 30,KOFFING
	db 34,RATICATE
	db 30,RATICATE
	db 34,GROWLITHE
	db 31,VENOMOTH
	db 30,GRIMER
	db 33,VENOMOTH
	db 37,WEEZING
	db 39,MUK
ENDC
IF DEF(_GREEN)
	db 32,GRIMER
	db 30,GRIMER
	db 34,RATICATE
	db 30,RATICATE
	db 34,VULPIX
	db 31,VENOMOTH
	db 30,KOFFING
	db 33,VENOMOTH
	db 37,MUK
	db 39,WEEZING
ENDC
IF DEF(_BLUE)
	db 32,GRIMER
	db 30,GRIMER
	db 34,RATICATE
	db 30,RATICATE
	db 34,VULPIX
	db 31,VENOMOTH
	db 30,KOFFING
	db 33,VENOMOTH
	db 37,MUK
	db 39,WEEZING
ENDC
IF DEF(_YELLOW)
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
	db 5,DITTO
ENDC
	db $00
