db CLOYSTER ; pokedex id
db 50 ; base hp
db 95 ; base attack
db 180 ; base defense
db 70 ; base speed
db 85 ; base special
db WATER ; species type 1
db ICE ; species type 2
db 60 ; catch rate
db 203 ; base exp yield
INCBIN "gfx/gs/mon/cloyster.pic",0,1 ; 77, sprite dimensions
dw CloysterPicFront
dw CloysterPicBack
; attacks known at lvl 0
db SUPERSONIC
db CLAMP
db BARRIER
db 0
db GR_SLOW ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,13,14,15
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34,36,39
	tmlearn 44,47
	tmlearn 49,50,53
db BANK(CloysterPicFront)
