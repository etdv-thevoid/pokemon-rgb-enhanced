db CLEFABLE ; pokedex id
db 95 ; base hp
db 70 ; base attack
db 73 ; base defense
db 60 ; base speed
db 85 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 25 ; catch rate
db 129 ; base exp yield
INCBIN "gfx/gs/mon/clefable.pic",0,1 ; 66, sprite dimensions
dw ClefablePicFront
dw ClefablePicBack
; attacks known at lvl 0
db COMET_PUNCH
db MINIMIZE
db LIGHT_SCREEN
db 0
db GR_FAST ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,13,14,15
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,31,32
	tmlearn 33,34,35,38
	tmlearn 41,42,44,45,46
	tmlearn 49,50,54,55
db BANK(ClefablePicFront)
