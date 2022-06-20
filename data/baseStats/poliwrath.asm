db POLIWRATH ; pokedex id
db 90 ; base hp
db 95 ; base attack
db 95 ; base defense
db 70 ; base speed
db 70 ; base special
db WATER ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 185 ; base exp yield
INCBIN "gfx/gs/mon/poliwrath.pic",0,1 ; 77, sprite dimensions
dw PoliwrathPicFront
dw PoliwrathPicBack
; attacks known at lvl 0
db BUBBLEBEAM
db HYPNOSIS
db BODY_SLAM
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,13,14,15
	tmlearn 17,18,19,20
	tmlearn 26,27,28,29,31,32
	tmlearn 34,35,40
	tmlearn 44,46,48
	tmlearn 50,53,54
db BANK(PoliwrathPicFront)
