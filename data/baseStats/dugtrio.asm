db DUGTRIO ; pokedex id
db 35 ; base hp
db 100 ; base attack
db 70 ; base defense
db 120 ; base speed
db 50 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 50 ; catch rate
db 153 ; base exp yield
INCBIN "pic/gsmon/dugtrio.pic",0,1 ; 77, sprite dimensions
dw DugtrioPicFront
dw DugtrioPicBack
; attacks known at lvl 0
db TRI_ATTACK
db SCRATCH
db GROWL
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 26,27,28,31,32
	tmlearn 34,37
	tmlearn 44,48
	tmlearn 49,50,51
db BANK(DugtrioPicFront)
