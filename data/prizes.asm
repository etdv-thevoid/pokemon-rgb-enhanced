PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

	dw PrizeMenuTMsEntries
	dw PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
	db DRATINI
	db "@"

PrizeMenuMon1Cost:
	coins 250
	coins 1000
	coins 2750
	db "@"

PrizeMenuMon2Entries:
	db EEVEE
IF DEF(_RED)
	db MAGMAR
ENDC
IF DEF(_GREEN)
	db ELECTABUZZ
ENDC
IF DEF(_BLUE)
	db JYNX
ENDC
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	coins 4400
	coins 6600
	coins 8800
	db "@"

PrizeMenuTMsEntries:
	db TM_36
	db TM_15
	db TM_50
	db "@"

PrizeMenuTMsCost:
	coins 3300
	coins 5500
	coins 7700
	db "@"
