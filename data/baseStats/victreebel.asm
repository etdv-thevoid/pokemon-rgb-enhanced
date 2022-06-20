db VICTREEBEL ; pokedex id
db 80 ; base hp
db 105 ; base attack
db 65 ; base defense
db 70 ; base speed
db 100 ; base special
db GRASS ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 191 ; base exp yield
INCBIN "gfx/gs/mon/victreebel.pic",0,1 ; 77, sprite dimensions
dw VictreebelPicFront
dw VictreebelPicBack
; attacks known at lvl 0
db WRAP
db RAZOR_LEAF
db STUN_SPORE
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 33,34,37
	tmlearn 44
	tmlearn 50,51
db BANK(VictreebelPicFront)
