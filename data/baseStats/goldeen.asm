db GOLDEEN ; pokedex id
db 45 ; base hp
db 67 ; base attack
db 60 ; base defense
db 63 ; base speed
db 50 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 225 ; catch rate
db 111 ; base exp yield
INCBIN "gfx/gs/mon/goldeen.pic",0,1 ; 66, sprite dimensions
dw GoldeenPicFront
dw GoldeenPicBack
; attacks known at lvl 0
db PECK
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6,7
	tmlearn 9,10,11,13,14
	tmlearn 20
	tmlearn 31,32
	tmlearn 34,39
	tmlearn 44
	tmlearn 50,53
db BANK(GoldeenPicFront)
