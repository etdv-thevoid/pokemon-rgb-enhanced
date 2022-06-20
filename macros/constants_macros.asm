; Constant enumeration is useful for monsters, items, moves, etc.
const_def: MACRO
    const_def
ENDM

const_skip: MACRO
    const_value = const_value + 1
ENDM

const: MACRO
    \1 EQU const_value
    const_value = const_value + 1
ENDM

map_const: MACRO
	const \1
    \1_HEIGHT EQU \2
    \1_WIDTH EQU \3
ENDM

trainer_const: MACRO
    \1     EQU const_value
    OPP_\1 EQU const_value + 200
    const_value = const_value + 1
ENDM

music_const: MACRO
    \1 EQUS "((\2 - SFX_Headers_1) / 3)"
ENDM