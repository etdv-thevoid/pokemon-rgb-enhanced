db KINGLER ; pokedex id
db 55 ; base hp
db 130 ; base attack
db 115 ; base defense
db 75 ; base speed
db 50 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 60 ; catch rate
db 206 ; base exp yield
INCBIN "gfx/gs/mon/kingler.pic",0,1 ; 77, sprite dimensions
dw KinglerPicFront
dw KinglerPicBack
; attacks known at lvl 0
db BUBBLE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,11,13,14,15
	tmlearn 18,20
	tmlearn 28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,51,53,54
db BANK(KinglerPicFront)
