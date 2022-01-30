db WIGGLYTUFF ; pokedex id
db 140 ; base hp
db 70 ; base attack
db 45 ; base defense
db 45 ; base speed
db 83 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 50 ; catch rate
db 109 ; base exp yield
INCBIN "pic/gsmon/wigglytuff.pic",0,1 ; 66, sprite dimensions
dw WigglytuffPicFront
dw WigglytuffPicBack
; attacks known at lvl 0
db DOUBLE_SLAP
db SING
db REST
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,13,14,15
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,31,32
	tmlearn 33,34,38
	tmlearn 41,42,44,45,46
	tmlearn 49,50,54,55
db BANK(WigglytuffPicFront)
