db ELECTABUZZ ; pokedex id
db 65 ; base hp
db 83 ; base attack
db 57 ; base defense
db 105 ; base speed
db 85 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 156 ; base exp yield
INCBIN "gfx/gs/mon/electabuzz.pic",0,1 ; 66, sprite dimensions
dw ElectabuzzPicFront
dw ElectabuzzPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,24
	tmlearn 25,31,32
	tmlearn 33,34,35,39
	tmlearn 41,44,45
	tmlearn 50,54,55
db BANK(ElectabuzzPicFront)
