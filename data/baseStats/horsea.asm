db HORSEA ; pokedex id
db 30 ; base hp
db 40 ; base attack
db 70 ; base defense
db 60 ; base speed
db 70 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 225 ; catch rate
db 83 ; base exp yield
INCBIN "gfx/gs/mon/horsea.pic",0,1 ; 55, sprite dimensions
dw HorseaPicFront
dw HorseaPicBack
; attacks known at lvl 0
db BUBBLE
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 2,6
	tmlearn 9,10,11,13,14
	tmlearn 20,23
	tmlearn 31,32
	tmlearn 34,39
	tmlearn 44
	tmlearn 50,53
db BANK(HorseaPicFront)
