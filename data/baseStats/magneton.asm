db MAGNETON ; pokedex id
db 50 ; base hp
db 60 ; base attack
db 95 ; base defense
db 70 ; base speed
db 120 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 60 ; catch rate
db 161 ; base exp yield
INCBIN "pic/gsmon/magneton.pic",0,1 ; 66, sprite dimensions
dw MagnetonPicFront
dw MagnetonPicBack
; attacks known at lvl 0
db TRI_ATTACK
db TACKLE
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,15
	tmlearn 20,24
	tmlearn 25,31,32
	tmlearn 33,34,36,39
	tmlearn 41,44,45,47
	tmlearn 49,50,55
db BANK(MagnetonPicFront)
