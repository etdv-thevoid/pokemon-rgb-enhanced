db LEAFEON ; pokedex id
db 65  ; base hp
db 65  ; base attack
db 130 ; base defense
db 65  ; base speed
db 110 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 199 ; base exp yield
INCBIN "pic/gsmon/leafeon.pic",0,1 ; 77, sprite dimensions
dw LeafeonPicFront
dw LeafeonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 28,31,32
	tmlearn 33,34,37,39
	tmlearn 44
	tmlearn 50,51
db BANK(LeafeonPicFront)
