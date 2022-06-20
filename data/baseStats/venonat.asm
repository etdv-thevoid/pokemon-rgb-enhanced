db VENONAT ; pokedex id
db 60 ; base hp
db 55 ; base attack
db 50 ; base defense
db 45 ; base speed
db 40 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 75 ; base exp yield
INCBIN "gfx/gs/mon/venonat.pic",0,1 ; 55, sprite dimensions
dw VenonatPicFront
dw VenonatPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,12
	tmlearn 20,21,22
	tmlearn 29,31,32
	tmlearn 33,34,37
	tmlearn 44,46
	tmlearn 50,55
db BANK(VenonatPicFront)
