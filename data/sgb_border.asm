BorderPalettes:
INCBIN "gfx/blue/sgbborder.map"

	ds $100

	RGB 0,0,0 ; PAL_SGB1 (the first color is not defined, but if used, turns up as 30,29,29... o_O)
	RGB 10,17,26
	RGB 5,9,20
	RGB 16,20,27

	ds $18

	RGB 30,29,29 ; PAL_SGB2
	RGB 27,11,6
	RGB 5,9,20
	RGB 28,25,15

	ds $18

	RGB 30,29,29 ; PAL_SGB3
	RGB 12,15,11
	RGB 5,9,20
	RGB 14,22,17

	ds $18

SGBBorderGraphics:
INCBIN "gfx/blue/sgbborder.2bpp"
