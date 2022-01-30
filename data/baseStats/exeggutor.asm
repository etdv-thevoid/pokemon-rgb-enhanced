db EXEGGUTOR ; pokedex id
db 95 ; base hp
db 95 ; base attack
db 85 ; base defense
db 55 ; base speed
db 125 ; base special
db GRASS ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 212 ; base exp yield
INCBIN "pic/gsmon/exeggutor.pic",0,1 ; 77, sprite dimensions
dw ExeggutorPicFront
dw ExeggutorPicBack
; attacks known at lvl 0
db CONFUSION
db BARRAGE
db SLEEP_POWDER
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,12,15
	tmlearn 20,21,22
	tmlearn 29,31,32
	tmlearn 33,34,36,37
	tmlearn 41,42,44,46,47
	tmlearn 50,54
db BANK(ExeggutorPicFront)
