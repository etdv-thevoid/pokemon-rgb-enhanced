db FARFETCHD ; pokedex id
db 52 ; base hp
db 90 ; base attack
db 55 ; base defense
db 60 ; base speed
db 58 ; base special
db FIGHTING ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 94 ; base exp yield
INCBIN "gfx/gs/mon/farfetchd.pic",0,1 ; 66, sprite dimensions
dw FarfetchdPicFront
dw FarfetchdPicBack
; attacks known at lvl 0
db PECK
db 0
db 0
db 0
db GR_MEDIUM_FAST ; growth rate
; learnset
	tmlearn 2,3,4,6,8
	tmlearn 9,10
	tmlearn 18,20
	tmlearn 31,32
	tmlearn 33,34,39
	tmlearn 43,44
	tmlearn 50,51,52
db BANK(FarfetchdPicFront)
