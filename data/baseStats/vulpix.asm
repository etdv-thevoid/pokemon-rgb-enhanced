db VULPIX ; pokedex id
db 38 ; base hp
db 41 ; base attack
db 40 ; base defense
db 65 ; base speed
db 65 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 63 ; base exp yield
INCBIN "gfx/gs/mon/vulpix.pic",0,1 ; 66, sprite dimensions
dw VulpixPicFront
dw VulpixPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db TAIL_WHIP
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20
	tmlearn 28,31,32
	tmlearn 33,34,38,39
	tmlearn 44
	tmlearn 50
db BANK(VulpixPicFront)
