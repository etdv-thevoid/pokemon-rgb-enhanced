db HITMONLEE ; pokedex id
db 50 ; base hp
db 120 ; base attack
db 60 ; base defense
db 80 ; base speed
db 35 ; base special
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 139 ; base exp yield
INCBIN "gfx/gs/mon/hitmonlee.pic",0,1 ; 77, sprite dimensions
dw HitmonleePicFront
dw HitmonleePicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 5,6,8
	tmlearn 9,10
	tmlearn 17,18,19,20
	tmlearn 31,32
	tmlearn 34,35,39
	tmlearn 44
	tmlearn 50,54
db BANK(HitmonleePicFront)
