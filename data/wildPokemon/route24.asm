Route24Mons:
	db $19
IF DEF(_GREEN)
	db 12,BELLSPROUT
	db 11,PIDGEY
	db 12,PIDGEY
	db 14,BELLSPROUT
	db 13,PIDGEY
	db 10,VENONAT
	db 13,VENONAT
	db 8,JIGGLYPUFF
	db 10,JIGGLYPUFF
	db 12,JIGGLYPUFF
ELSE
	db 12,ODDISH
	db 11,PIDGEY
	db 12,PIDGEY
	db 14,ODDISH
	db 13,PIDGEY
	db 10,VENONAT
	db 13,VENONAT
	db 8,JIGGLYPUFF
	db 10,JIGGLYPUFF
	db 12,JIGGLYPUFF
ENDC
	db $0A
	db 15,GOLDEEN
	db 10,GOLDEEN
	db 15,GOLDEEN
	db 10,GOLDEEN
	db 15,GOLDEEN
	db 20,GOLDEEN
	db 25,GOLDEEN
	db 30,SEAKING
	db 35,SEAKING
	db 40,SEAKING
