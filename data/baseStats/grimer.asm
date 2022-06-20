db GRIMER ; pokedex id
db 80 ; base hp
db 80 ; base attack
db 50 ; base defense
db 25 ; base speed
db 40 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 90 ; base exp yield
INCBIN "gfx/gs/mon/grimer.pic",0,1 ; 55, sprite dimensions
dw GrimerPicFront
dw GrimerPicBack
; attacks known at lvl 0
db POUND
db POISON_GAS
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 12
	tmlearn 20,21,24
	tmlearn 25,28,31,32
	tmlearn 34,36,37,38
	tmlearn 44,47,48
	tmlearn 50,54
db BANK(GrimerPicFront)
