db MAGNEMITE ; pokedex id
db 25 ; base hp
db 35 ; base attack
db 70 ; base defense
db 45 ; base speed
db 95 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 89 ; base exp yield
INCBIN "gfx/gs/mon/magnemite.pic",0,1 ; 55, sprite dimensions
dw MagnemitePicFront
dw MagnemitePicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10
	tmlearn 20,24
	tmlearn 25,31,32
	tmlearn 33,34,36,39
	tmlearn 41,44,45,47
	tmlearn 50,55
db BANK(MagnemitePicFront)
