db PARASECT ; pokedex id
db 60 ; base hp
db 95 ; base attack
db 80 ; base defense
db 30 ; base speed
db 80 ; base special
db BUG ; species type 1
db GRASS ; species type 2
db 75 ; catch rate
db 128 ; base exp yield
INCBIN "pic/gsmon/parasect.pic",0,1 ; 77, sprite dimensions
dw ParasectPicFront
dw ParasectPicBack
; attacks known at lvl 0
db SCRATCH
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 28,31,32
	tmlearn 33,34,37
	tmlearn 44
	tmlearn 50,51
db BANK(ParasectPicFront)
