db JOLTEON ; pokedex id
db 65 ; base hp
db 65 ; base attack
db 65 ; base defense
db 130 ; base speed
db 110 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 197 ; base exp yield
INCBIN "gfx/gs/mon/jolteon.pic",0,1 ; 66, sprite dimensions
dw JolteonPicFront
dw JolteonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 20,24
	tmlearn 25,28,31,32
	tmlearn 33,34,39
	tmlearn 41,44,45
	tmlearn 50,55
db BANK(JolteonPicFront)
