db EEVEE ; pokedex id
db 55 ; base hp
db 55 ; base attack
db 55 ; base defense
db 55 ; base speed
db 55 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 92 ; base exp yield
INCBIN "gfx/gs/mon/eevee.pic",0,1 ; 55, sprite dimensions
dw EeveePicFront
dw EeveePicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10
	tmlearn 20
	tmlearn 28,31,32
	tmlearn 33,34,39
	tmlearn 44
	tmlearn 50
db BANK(EeveePicFront)
