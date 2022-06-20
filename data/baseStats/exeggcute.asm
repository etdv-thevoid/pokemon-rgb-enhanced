db EXEGGCUTE ; pokedex id
db 60 ; base hp
db 40 ; base attack
db 80 ; base defense
db 40 ; base speed
db 60 ; base special
db GRASS ; species type 1
db PSYCHIC ; species type 2
db 90 ; catch rate
db 98 ; base exp yield
INCBIN "gfx/gs/mon/exeggcute.pic",0,1 ; 77, sprite dimensions
dw ExeggcutePicFront
dw ExeggcutePicBack
; attacks known at lvl 0
db CONFUSION
db 0
db 0
db 0
db GR_SLOW ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,12
	tmlearn 20,21,22
	tmlearn 29,31,32
	tmlearn 33,34,36,37
	tmlearn 41,44,46,47
	tmlearn 50
db BANK(ExeggcutePicFront)
