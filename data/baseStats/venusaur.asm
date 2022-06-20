db VENUSAUR ; pokedex id
db 80 ; base hp
db 82 ; base attack
db 83 ; base defense
db 80 ; base speed
db 100 ; base special
db GRASS ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 208 ; base exp yield
INCBIN "pic/gsmon/venusaur.pic",0,1 ; 77, sprite dimensions
dw VenusaurPicFront
dw VenusaurPicBack
; attacks known at lvl 0
db PETAL_DANCE
db TACKLE
db GROWL
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 26,27,28,31,32
	tmlearn 33,34,37,40
	tmlearn 44
	tmlearn 50,51,54
db BANK(VenusaurPicFront)
