db ARCANINE ; pokedex id
db 90 ; base hp
db 110 ; base attack
db 80 ; base defense
db 95 ; base speed
db 80 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 75 ; catch rate
db 213 ; base exp yield
INCBIN "pic/gsmon/arcanine.pic",0,1 ; 77, sprite dimensions
dw ArcaninePicFront
dw ArcaninePicBack
; attacks known at lvl 0
db TAKE_DOWN
db AGILITY
db FIRE_SPIN
db 0
db GR_SLOW ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,23
	tmlearn 28,31,32
	tmlearn 33,34,38,39
	tmlearn 44
	tmlearn 50
db BANK(ArcaninePicFront)
