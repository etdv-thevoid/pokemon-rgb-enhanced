db HITMONCHAN ; pokedex id
db 50 ; base hp
db 90 ; base attack
db 50 ; base defense
db 80 ; base speed
db 75 ; base special
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 140 ; base exp yield
INCBIN "pic/gsmon/hitmonchan.pic",0,1 ; 66, sprite dimensions
dw HitmonchanPicFront
dw HitmonchanPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 1,6,8
	tmlearn 9,10
	tmlearn 17,18,19,20
	tmlearn 31,32
	tmlearn 34,35,39
	tmlearn 44
	tmlearn 49,50,54
db BANK(HitmonchanPicFront)
