db DODRIO ; pokedex id
db 60 ; base hp
db 110 ; base attack
db 70 ; base defense
db 110 ; base speed
db 60 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 158 ; base exp yield
INCBIN "gfx/gs/mon/dodrio.pic",0,1 ; 77, sprite dimensions
dw DodrioPicFront
dw DodrioPicBack
; attacks known at lvl 0
db PECK
db GROWL
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 2,3,4,6,8
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 49,50
db BANK(DodrioPicFront)
