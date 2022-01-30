db GENGAR ; pokedex id
db 60 ; base hp
db 65 ; base attack
db 60 ; base defense
db 110 ; base speed
db 130 ; base special
db GHOST ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 190 ; base exp yield
INCBIN "pic/gsmon/gengar.pic",0,1 ; 66, sprite dimensions
dw GengarPicFront
dw GengarPicBack
; attacks known at lvl 0
db LICK
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,12,15
	tmlearn 17,18,19,20,21,24
	tmlearn 25,29,31,32
	tmlearn 34,35,36,37
	tmlearn 42,44,46,47
	tmlearn 50,54
db BANK(GengarPicFront)
