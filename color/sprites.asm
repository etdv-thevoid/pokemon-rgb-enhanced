LoadOverworldSpritePalettes:
	ld hl,SpritePalettes
	jr LoadSpritePaletteData

LoadAttackSpritePalettes:
	ld hl,AttackSpritePalettes

LoadSpritePaletteData:
	ld a,[rSVBK]
	ld b,a
	ld a,2
	ld [rSVBK],a
	push bc

	ld de,W2_SprPaletteData
	ld b,$40
.sprCopyLoop
	ld a,[hli]
	ld [de],a
	inc de
	dec b
	jr nz,.sprCopyLoop
	ld a,1
	ld [W2_ForceOBPUpdate],a

	pop af
	ld [rSVBK],a
	ret

; Set an overworld sprite's colors
; On entering, A contains the flags (without a color palette) and de is the destination.
; This is called in the middle of a loop in engine/overworld/oam.asm, once per sprite.
ColorOverworldSprite:
	push af
	push bc
	push de
	and $f8
	ld b,a

	ld a,[hSpriteOffset2]
	ld e,a
	ld d,wSpriteStateData1>>8
	ld a,[de]		; Load A with picture ID
	dec a

	ld de, SpritePaletteAssignments
	add e
	ld e,a
	jr nc,.noCarry
	inc d
.noCarry
	ld a,[de]		; Get the picture ID's palette

	; If it's random, that means no particular palette is assigned
	cp SPR_PAL_RANDOM
	jr nz,.norandomColor

	; This is a (somewhat) random but consistent color
	ld a,[hSpriteOffset2]
	swap a
	and 3

.norandomColor

	pop de
	or b
	ld [de],a
	inc hl
	inc e
	pop bc
	pop af
	ret

; This is called whenever [wUpdateSpritesEnabled] != 1 (overworld sprites not enabled?).
;
; This sometimes does occur on the overworld, such as when exclamation marks appear, and
; when trees are being cut or boulders are being moved. Though, when in the overworld,
; W2_SpritePaletteMap is all blanked out (set to 9) except for the exclamation mark tile,
; so this function usually won't do anything.
;
; This colorizes: attack sprites, party menu, exclamation mark, trades, perhaps more?
ColorNonOverworldSprites:
	ld a,2
	ld [rSVBK],a

	ld hl, wOAMBuffer
	ld b, 40

.spriteLoop
	inc hl
	inc hl
	ld a,[hli] ; tile
	ld e, a
	ld d, W2_SpritePaletteMap>>8
	ld a,[de]
	cp ATK_PAL_TYPE ; colorize based on attack type
	jr z,.getAttackType
	cp ATK_PAL_SET ; do not colorize (use whatever palette it's set to already)
	jr z,.nextSprite
	cp ATK_PAL_INTRO ; color based on sprite number (used in game freak intro)
	jr z, .gameFreakIntro
	jr .setPalette ; Otherwise, use the value as-is

.gameFreakIntro: ; The stars under the logo all get different colors
	ld a,b
	and 3
	add 4
	jr .setPalette

.getAttackType
	push hl

	; Load animation (move) being used
	xor a
	ld [rSVBK],a
	ld a,[wAnimationID]
	ld d,a
	ld a,2
	ld [rSVBK],a

	; If the absorb animation is playing, it's always green. (Needed for leech seed)
	ld a,d
	cp ABSORB
	ld a,GRASS
	jr z,.gotType

	; Make stun spore and solarbeam yellow, despite being grass moves
	ld a,d
	cp STUN_SPORE
	ld a,ELECTRIC
	jr z,.gotType
	ld a,d
	cp SOLARBEAM
	ld a,ELECTRIC
	jr z,.gotType

	; Make dream eater blue, despite being ghost moves
	ld a,d
	cp DREAM_EATER
	ld a,WATER
	jr z,.gotType

	; Make tri-attack and focus energy red, despite being non-fire moves
	ld a,d
	cp TRI_ATTACK
	ld a,FIRE
	jr z,.gotType

	ld a,d
	cp FOCUS_ENERGY
	ld a,FIRE
	jr z,.gotType

	ld a,[H_WHOSETURN]
	and a
	jr z,.playersTurn
	ld a,[wEnemyMoveType] ; Enemy move type
	jr .gotType
.playersTurn
	ld a,[wPlayerMoveType] ; Move type
.gotType
	ld hl, TypePaletteMap
	add l
	ld l,a
	jr nc,.noCarry
	inc h
.noCarry
	ld a,[hl]
	pop hl

.setPalette
	ld c,a
	ld a,$f8
	and [hl]
	or c
	ld [hl],a

.nextSprite
	inc hl
	dec b
	jr nz, .spriteLoop

.end
	xor a
	ld [rSVBK],a
	ret

; Called whenever an animation plays in-battle. There are two animation tilesets, each
; with its own palette.
LoadAnimationTilesetPalettes:
	push de
	ld a,[wWhichBattleAnimTileset] ; Animation tileset (0-2)
	ld c,a
	ld a,2
	ld [rSVBK],a

	xor a
	ld [W2_UseOBP1],a

	call LoadAttackSpritePalettes

	; Indices 0 and 2 both refer to "AnimationTileset1", just different amounts of it.
	; 0 is in-battle, 2 is during a trade.
	; Index 1 refers to "AnimationTileset2".
	ld a,c
	cp 1
	ld hl, AnimationTileset2Palettes
	jr z,.gotPalette
	ld hl, AnimationTileset1Palettes
.gotPalette
	ld de, W2_SpritePaletteMap
	ld b, $80
.copyLoop
	ld a,[hli]
	ld [de],a
	inc e
	dec b
	jr nz,.copyLoop

	; If in a trade, some of the tiles near the end are different. Override some tiles
	; for the link cable, and replace the "purple" palette to match the exact color of
	; the link cable.
	ld a,c
	cp 2
	jr nz,.done

	; Replace ATK_PAL_PURPLE with PAL_MEWMON
	ld d, PAL_MEWMON
	ld e, ATK_PAL_PURPLE
	call LoadSGBPalette_Sprite

	; Set the link cable sprite tiles
	ld a, ATK_PAL_PURPLE
	ld hl, W2_SpritePaletteMap+$7e
	ld [hli],a
	ld [hli],a

.done
	ld a,1
	ld [W2_ForceOBPUpdate],a

	xor a
	ld [rSVBK],a

	pop de
	ret


; Set all sprite palettes to not be colorized by "ColorNonOverworldSprites".
ClearSpritePaletteMap:
	ld a,[rSVBK]
	ld b,a
	ld a,2
	ld [rSVBK],a
	push bc

	ld hl, W2_SpritePaletteMap
	ld b,$0 ; $100
	ld a,9
.loop
	ld [hli],a
	dec b
	jr nz,.loop

	pop af
	ld [rSVBK],a
	ret


INCLUDE "color/data/sprite_palette_assignments.asm"

AnimationTileset1Palettes:
	INCBIN "color/data/animtileset1palettes.bin"

AnimationTileset2Palettes:
	INCBIN "color/data/animtileset2palettes.bin"

INCLUDE "color/data/typepalettemap.asm"

INCLUDE "color/data/spritepalettes.asm"

SlotPaletteMap:
	INCBIN "color/data/slotpalettemap_blue.bin"

INCLUDE "color/data/slotspritepalettemap.asm"
