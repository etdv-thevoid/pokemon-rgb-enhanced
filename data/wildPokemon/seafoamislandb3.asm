IslandMonsB3:
	db $0A
IF DEF(_BLUE)
	db 31,SLOWPOKE
	db 31,SEEL
	db 33,SLOWPOKE
	db 33,SEEL
	db 29,KRABBY
	db 31,SHELLDER
	db 31,KRABBY
	db 29,SHELLDER
	db 37,JYNX
	db 39,DEWGONG
ELSE
	db 31,PSYDUCK
	db 31,SEEL
	db 33,PSYDUCK
	db 33,SEEL
	db 29,KRABBY
	db 31,STARYU
	db 31,KRABBY
	db 29,STARYU
	db 37,KINGLER
	db 39,DEWGONG
ENDC
	db $05
	db 15,TENTACOOL
	db 10,TENTACOOL
	db 15,TENTACOOL
	db 10,TENTACOOL
	db 15,TENTACOOL
	db 20,TENTACOOL
	db 25,TENTACOOL
	db 30,TENTACRUEL
	db 35,TENTACRUEL
	db 40,TENTACRUEL
