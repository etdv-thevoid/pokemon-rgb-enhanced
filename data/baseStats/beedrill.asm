db BEEDRILL ; pokedex id
db 65 ; base hp
db 90 ; base attack
db 40 ; base defense
db 75 ; base speed
db 45 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 159 ; base exp yield
INCBIN "gfx/gs/mon/beedrill.pic",0,1 ; 77, sprite dimensions
dw BeedrillPicFront
dw BeedrillPicBack
; attacks known at lvl 0
db POISON_STING
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,12,15
	tmlearn 20,21
	tmlearn 31,32
	tmlearn 33,34,37,39
	tmlearn 44
	tmlearn 50,51
db BANK(BeedrillPicFront)
