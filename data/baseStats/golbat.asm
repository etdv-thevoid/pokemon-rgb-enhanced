db GOLBAT ; pokedex id
db 75 ; base hp
db 80 ; base attack
db 70 ; base defense
db 110 ; base speed
db 75 ; base special
db POISON ; species type 1
db FLYING ; species type 2
db 90 ; catch rate
db 171 ; base exp yield
INCBIN "gfx/gs/mon/golbat.pic",0,1 ; 77, sprite dimensions
dw GolbatPicFront
dw GolbatPicBack
; attacks known at lvl 0
db LEECH_LIFE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,12,15
	tmlearn 20,21
	tmlearn 31,32
	tmlearn 34,37,39
	tmlearn 44
	tmlearn 50
db BANK(GolbatPicFront)
