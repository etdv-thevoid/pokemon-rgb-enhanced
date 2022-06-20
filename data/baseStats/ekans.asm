db EKANS ; pokedex id
db 35 ; base hp
db 60 ; base attack
db 44 ; base defense
db 55 ; base speed
db 40 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 62 ; base exp yield
INCBIN "gfx/gs/mon/ekans.pic",0,1 ; 55, sprite dimensions
dw EkansPicFront
dw EkansPicBack
; attacks known at lvl 0
db BIND
db LEER
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,12
	tmlearn 20,21
	tmlearn 26,27,28,31,32
	tmlearn 34,37
	tmlearn 44,48
	tmlearn 50,54
db BANK(EkansPicFront)
