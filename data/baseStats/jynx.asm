db JYNX ; pokedex id
db 65 ; base hp
db 50 ; base attack
db 35 ; base defense
db 95 ; base speed
db 95 ; base special
db ICE ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 137 ; base exp yield
INCBIN "gfx/gs/mon/jynx.pic",0,1 ; 66, sprite dimensions
dw JynxPicFront
dw JynxPicBack
; attacks known at lvl 0
db LICK
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,13,14,15
	tmlearn 20
	tmlearn 29,30,31,32
	tmlearn 33,34,35
	tmlearn 41,42,44,46
	tmlearn 50
db BANK(JynxPicFront)
