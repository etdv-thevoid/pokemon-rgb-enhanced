db NINETALES ; pokedex id
db 73 ; base hp
db 76 ; base attack
db 75 ; base defense
db 100 ; base speed
db 100 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 75 ; catch rate
db 178 ; base exp yield
INCBIN "gfx/gs/mon/ninetales.pic",0,1 ; 77, sprite dimensions
dw NinetalesPicFront
dw NinetalesPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db CONFUSE_RAY
db HYPNOSIS
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,22
	tmlearn 28,31,32
	tmlearn 33,34,38,39
	tmlearn 42,44
	tmlearn 50
db BANK(NinetalesPicFront)
