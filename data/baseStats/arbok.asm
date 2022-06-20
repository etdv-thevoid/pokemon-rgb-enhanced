db ARBOK ; pokedex id
db 60 ; base hp
db 105 ; base attack
db 69 ; base defense
db 80 ; base speed
db 65 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 90 ; catch rate
db 147 ; base exp yield
INCBIN "gfx/gs/mon/arbok.pic",0,1 ; 77, sprite dimensions
dw ArbokPicFront
dw ArbokPicBack
; attacks known at lvl 0
db BIND
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,12,15
	tmlearn 20,21
	tmlearn 26,27,28,31,32
	tmlearn 34,37
	tmlearn 44,48
	tmlearn 50,54
db BANK(ArbokPicFront)
