addtradefunc: MACRO
    \1TradeFunc::
        dw \1
ENDM

tradefunc: MACRO
    db (\1TradeFunc - TradeFuncPointerTable) / 2
ENDM