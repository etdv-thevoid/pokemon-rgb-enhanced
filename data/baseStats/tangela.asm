db TANGELA ; pokedex id
db 65 ; base hp
db 55 ; base attack
db 125 ; base defense
db 50 ; base speed
db 100 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 166 ; base exp yield
INCBIN "gfx/gs/mon/tangela.pic",0,1 ; 66, sprite dimensions
dw TangelaPicFront
dw TangelaPicBack
; attacks known at lvl 0
db CONSTRICT
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 34,37
	tmlearn 44
	tmlearn 50,51
db BANK(TangelaPicFront)
