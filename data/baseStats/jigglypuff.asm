db JIGGLYPUFF ; pokedex id
db 115 ; base hp
db 45 ; base attack
db 20 ; base defense
db 20 ; base speed
db 25 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 170 ; catch rate
db 76 ; base exp yield
INCBIN "gfx/gs/mon/jigglypuff.pic",0,1 ; 55, sprite dimensions
dw JigglypuffPicFront
dw JigglypuffPicBack
; attacks known at lvl 0
db SING
db 0
db 0
db 0
db GR_FAST ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,13,14
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,31,32
	tmlearn 33,34,38
	tmlearn 41,44,45,46
	tmlearn 49,50,54,55
db BANK(JigglypuffPicFront)
