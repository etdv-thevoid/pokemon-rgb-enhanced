db POLIWAG ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 40 ; base defense
db 90 ; base speed
db 40 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 77 ; base exp yield
INCBIN "gfx/gs/mon/poliwag.pic",0,1 ; 55, sprite dimensions
dw PoliwagPicFront
dw PoliwagPicBack
; attacks known at lvl 0
db BUBBLE
db 0
db 0
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,13,14
	tmlearn 20
	tmlearn 28,29,31,32
	tmlearn 34
	tmlearn 44,46
	tmlearn 50,53
db BANK(PoliwagPicFront)
