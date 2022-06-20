db SEADRA ; pokedex id
db 55 ; base hp
db 75 ; base attack
db 95 ; base defense
db 85 ; base speed
db 95 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 75 ; catch rate
db 155 ; base exp yield
INCBIN "gfx/gs/mon/seadra.pic",0,1 ; 66, sprite dimensions
dw SeadraPicFront
dw SeadraPicBack
; attacks known at lvl 0
db BUBBLE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,11,13,14,15
	tmlearn 20,23
	tmlearn 31,32
	tmlearn 34,39
	tmlearn 44
	tmlearn 50,53
db BANK(SeadraPicFront)
