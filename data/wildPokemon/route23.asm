Route23Mons:
	db $0A
IF DEF(_RED)
	db 36,ARBOK
	db 41,NIDORINO
ENDC
IF DEF(_GREEN)
	db 36,SANDSLASH
	db 41,NIDORINO
ENDC
IF DEF(_RED)
	db 36,SANDSLASH
	db 41,NIDORINA
ENDC
db 42,PRIMEAPE
db 38,FEAROW
db 43,FEAROW
IF DEF(_RED)
	db 41,ARBOK
	db 44,NIDORINA
ENDC
IF DEF(_RED)
	db 36,SANDSLASH
	db 41,NIDORINA
ENDC
IF DEF(_RED)
	db 36,SANDSLASH
	db 41,NIDORINO
ENDC
	db 40,DITTO
	db 40,DITTO
	db 40,DITTO
	db $0A
	db 20,GOLDEEN
	db 15,GOLDEEN
	db 20,GOLDEEN
	db 15,GOLDEEN
	db 20,GOLDEEN
	db 25,GOLDEEN
	db 30,GOLDEEN
	db 35,SEAKING
	db 40,SEAKING
	db 45,SEAKING
