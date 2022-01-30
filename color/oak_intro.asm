; Helper functions for oak intro

GetPikachuPalID:
	call ClearScreen
	ld a, PAL_PIKACHU
	jr GotPalID

GetRedPalID:
	call ClearScreen
	ld a, PAL_HERO
	jr GotPalID

GetRivalPalID:
	call ClearScreen
	ld a, PAL_GARY1
	jr GotPalID

GotPalID:
	ld e,0
	ld d,a

	ld a,2
	ld [rSVBK],a
	CALL_INDIRECT LoadSGBPalette
	xor a
	ld [rSVBK],a
	ret
