db KANGASKHAN ; pokedex id
db 105 ; base hp
db 95 ; base attack
db 80 ; base defense
db 90 ; base speed
db 40 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 175 ; base exp yield
INCBIN "pic/gsmon/kangaskhan.pic",0,1 ; 77, sprite dimensions
dw KangaskhanPicFront
dw KangaskhanPicBack
; attacks known at lvl 0
db COMET_PUNCH
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,13,14,15
	tmlearn 17,18,19,20,23,24
	tmlearn 25,26,27,31,32
	tmlearn 34,38,40
	tmlearn 44
	tmlearn 50,51,53,54
db BANK(KangaskhanPicFront)
