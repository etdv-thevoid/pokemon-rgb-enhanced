Route13Mons:
	db $14
	IF DEF(_RED)
		db 24,ODDISH
		db 25,PIDGEY
		db 27,PIDGEY
		db 24,FARFETCHD
		db 22,ODDISH
		db 26,FARFETCHD
		db 26,ODDISH
		db 25,DITTO
		db 28,GLOOM
		db 30,GLOOM
	ENDC
	IF DEF(_GREEN)
		db 24,BELLSPROUT
		db 25,PIDGEY
		db 27,PIDGEY
		db 24,FARFETCHD
		db 22,BELLSPROUT
		db 26,FARFETCHD
		db 26,BELLSPROUT
		db 25,DITTO
		db 28,WEEPINBELL
		db 30,WEEPINBELL
	ENDC
	IF DEF(_BLUE)
		db 24,ODDISH
		db 25,PIDGEY
		db 27,PIDGEY
		db 24,FARFETCHD
		db 22,ODDISH
		db 26,FARFETCHD
		db 26,ODDISH
		db 25,DITTO
		db 28,GLOOM
		db 30,GLOOM
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
