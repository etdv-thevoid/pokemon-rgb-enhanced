db TENTACRUEL ; pokedex id
db 80 ; base hp
db 70 ; base attack
db 65 ; base defense
db 100 ; base speed
db 120 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 60 ; catch rate
db 205 ; base exp yield
INCBIN "gfx/gs/mon/tentacruel.pic",0,1 ; 66, sprite dimensions
dw TentacruelPicFront
dw TentacruelPicBack
; attacks known at lvl 0
db POISON_STING
db 0
db 0
db 0
db GR_SLOW ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20,21
	tmlearn 31,32
	tmlearn 33,34,37
	tmlearn 44
	tmlearn 50,51,53
db BANK(TentacruelPicFront)
