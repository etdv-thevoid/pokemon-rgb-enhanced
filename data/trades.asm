TradeMons:
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
	IF DEF(_RED)
		db HORSEA,     PONYTA,    2,"RUNNY@@@@@@"
		db JIGGLYPUFF, MR_MIME,   0,"MIMIEN@@@@@"
		db BEEDRILL,   BUTTERFREE,2,"DORIS@@@@@@"
		db WEEZING,    MUK,       0,"STICKY@@@@@"
		db SPEAROW,    FARFETCHD, 2,"DUX@@@@@@@@"
		db TAUROS,     SCYTHER,   0,"DASH@@@@@@@"
		db PARAS,      ONIX,      0,"ROCKY@@@@@@"
		db HYPNO,      DEWGONG,   0,"CEZANNE@@@@"
		db RHYDON,     MAGNETON,  2,"MAGGIE@@@@@"
		db NIDORAN_M,  NIDORAN_F, 2,"SPOT@@@@@@@"
	ENDC
	IF DEF(_GREEN)
		db HORSEA,     PONYTA,    2,"RUNNY@@@@@@"
		db JIGGLYPUFF, MR_MIME,   0,"MIMIEN@@@@@"
		db BUTTERFREE, BEEDRILL,  2,"DORIS@@@@@@"
		db MUK,        WEEZING,   0,"STINKY@@@@@"
		db SPEAROW,    FARFETCHD, 2,"DUX@@@@@@@@"
		db TAUROS,     PINSIR,    0,"SPIKE@@@@@@"
		db PARAS,      ONIX,      0,"ROCKY@@@@@@"
		db HYPNO,      DEWGONG,   0,"CEZANNE@@@@"
		db RHYDON,     MAGNETON,  2,"MAGGIE@@@@@"
		db NIDORAN_M,  NIDORAN_F, 2,"SPOT@@@@@@@"
	ENDC
	IF DEF(_BLUE)
		db HORSEA,     PONYTA,    2,"RUNNY@@@@@@"
		db JIGGLYPUFF, MR_MIME,   0,"MIMIEN@@@@@"
		db BEEDRILL,   BUTTERFREE,2,"DORIS@@@@@@"
		db MUK,        WEEZING,   0,"STINKY@@@@@"
		db SPEAROW,    FARFETCHD, 2,"DUX@@@@@@@@"
		db TAUROS,     SCYTHER,   0,"DASH@@@@@@@"
		db PARAS,      ONIX,      0,"ROCKY@@@@@@"
		db HYPNO,      DEWGONG,   0,"CEZANNE@@@@"
		db RHYDON,     MAGNETON,  2,"MAGGIE@@@@@"
		db NIDORAN_F,  NIDORAN_M, 2,"SPOT@@@@@@@"
	ENDC
