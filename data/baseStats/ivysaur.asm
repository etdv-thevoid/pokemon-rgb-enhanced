db IVYSAUR ; pokedex id
db 60 ; base hp
db 62 ; base attack
db 63 ; base defense
db 60 ; base speed
db 80 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 141 ; base exp yield
INCBIN "gfx/gs/mon/ivysaur.pic",0,1 ; 66, sprite dimensions
dw IvysaurPicFront
dw IvysaurPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,12
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 50,51
db BANK(IvysaurPicFront)
