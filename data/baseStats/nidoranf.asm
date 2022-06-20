db NIDORAN_F ; pokedex id
db 55 ; base hp
db 47 ; base attack
db 52 ; base defense
db 41 ; base speed
db 40 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 235 ; catch rate
db 59 ; base exp yield
INCBIN "pic/gsmon/nidoranf.pic",0,1 ; 55, sprite dimensions
dw NidoranFPicFront
dw NidoranFPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db 0
db 0
db GR_MEDIUM_SLOW ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,14
	tmlearn 20,24
	tmlearn 25,28,31,32
	tmlearn 33,34,37
	tmlearn 44
	tmlearn 50,51
db BANK(NidoranFPicFront)
