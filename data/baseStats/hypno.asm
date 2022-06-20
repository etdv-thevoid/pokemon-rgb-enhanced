db HYPNO ; pokedex id
db 85 ; base hp
db 73 ; base attack
db 70 ; base defense
db 67 ; base speed
db 115 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 75 ; catch rate
db 165 ; base exp yield
INCBIN "gfx/gs/mon/hypno.pic",0,1 ; 77, sprite dimensions
dw HypnoPicFront
dw HypnoPicBack
; attacks known at lvl 0
db POUND
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 29,30,31,32
	tmlearn 33,34,35
	tmlearn 41,42,44,45,46
	tmlearn 49,50,55
db BANK(HypnoPicFront)
