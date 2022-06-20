db NIDOQUEEN ; pokedex id
db 90 ; base hp
db 92 ; base attack
db 87 ; base defense
db 76 ; base speed
db 75 ; base special
db POISON ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 194 ; base exp yield
INCBIN "pic/gsmon/nidoqueen.pic",0,1 ; 77, sprite dimensions
dw NidoqueenPicFront
dw NidoqueenPicBack
; attacks known at lvl 0
db POISON_STING
db DOUBLE_KICK
db TAIL_WHIP
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 1,5,6,7,8
	tmlearn 9,10,11,13,14,15,16
	tmlearn 17,18,19,20,23,24
	tmlearn 25,26,27,28,31,32
	tmlearn 33,34,37,38,40
	tmlearn 44,48
	tmlearn 50,51,53,54
db BANK(NidoqueenPicFront)
