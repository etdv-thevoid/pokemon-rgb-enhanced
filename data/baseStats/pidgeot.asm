db PIDGEOT ; pokedex id
db 83  ; base hp
db 80  ; base attack
db 75  ; base defense
db 101 ; base speed
db 70  ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 172 ; base exp yield
INCBIN "pic/gsmon/pidgeot.pic",0,1 ; 77, sprite dimensions
dw PidgeotPicFront
dw PidgeotPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 2,4,6
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34,39
	tmlearn 43,44
	tmlearn 50,52
db BANK(PidgeotPicFront)
