db BUTTERFREE ; pokedex id
db 60 ; base hp
db 45 ; base attack
db 50 ; base defense
db 70 ; base speed
db 90 ; base special
db BUG ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 160 ; base exp yield
INCBIN "gfx/gs/mon/butterfree.pic",0,1 ; 77, sprite dimensions
dw ButterfreePicFront
dw ButterfreePicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 29,31,32
	tmlearn 33,34,39
	tmlearn 42,44,46
	tmlearn 50,55
db BANK(ButterfreePicFront)
