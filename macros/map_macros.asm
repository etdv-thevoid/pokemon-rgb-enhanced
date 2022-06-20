; \1: source
; \2: offset (BANK() chokes on literals)
; \3: length
; \4: dest
spinner: MACRO
    dw \1 + \2
    db \3, BANK(\1)
    dw \4
ENDM