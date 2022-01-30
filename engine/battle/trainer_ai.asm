; creates a set of moves that may be used and returns its address in hl
; unused slots are filled with 0, all used slots may be chosen with equal probability
AIEnemyTrainerChooseMoves:
	ld a, $20 ; for smart AI
	ld hl, wBuffer  ; init temporary move selection array. Only the moves with the lowest numbers are chosen in the end
	ld [hli], a   ; move 1
	ld [hli], a   ; move 2
	ld [hli], a   ; move 3
	ld [hl], a    ; move 4
	ld a, [wEnemyDisabledMove] ; forbid disabled move (if any)
	swap a
	and $f
	jr z, .noMoveDisabled
	ld hl, wBuffer
	dec a
	ld c, a
	ld b, $0
	add hl, bc    ; advance pointer to forbidden move
	ld [hl], $50  ; forbid (highly discourage) disabled move
.noMoveDisabled
	ld hl, TrainerClassMoveChoiceModifications
	ld a, [wTrainerClass]
	ld b, a
.loopTrainerClasses
	dec b
	jr z, .readTrainerClassData
.loopTrainerClassData
	ld a, [hli]
	and a
	jr nz, .loopTrainerClassData
	jr .loopTrainerClasses
.readTrainerClassData
	ld a, [hl]
	and a
	jp z, .useOriginalMoveSet
	push hl
.nextMoveChoiceModification
	pop hl
	ld a, [hli]
	and a
	jr z, .loopFindMinimumEntries
	push hl
	ld hl, AIMoveChoiceModificationFunctionPointers
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc    ; skip to pointer
	ld a, [hli]   ; read pointer into hl
	ld h, [hl]
	ld l, a
	ld de, .nextMoveChoiceModification  ; set return address
	push de
	jp hl         ; execute modification function
.loopFindMinimumEntries ; all entries will be decremented sequentially until one of them is zero
	ld hl, wBuffer  ; temp move selection array
	ld de, wEnemyMonMoves  ; enemy moves
	ld c, NUM_MOVES
.loopDecrementEntries
	ld a, [de]
	inc de
	and a
	jr z, .loopFindMinimumEntries
	dec [hl]
	jr z, .minimumEntriesFound
	inc hl
	dec c
	jr z, .loopFindMinimumEntries
	jr .loopDecrementEntries
.minimumEntriesFound
	ld a, c
.loopUndoPartialIteration ; undo last (partial) loop iteration
	inc [hl]
	dec hl
	inc a
	cp NUM_MOVES + 1
	jr nz, .loopUndoPartialIteration
	ld hl, wBuffer  ; temp move selection array
	ld de, wEnemyMonMoves  ; enemy moves
	ld c, NUM_MOVES
.filterMinimalEntries ; all minimal entries now have value 1. All other slots will be disabled (move set to 0)
	ld a, [de]
	and a
	jr nz, .moveExisting
	ld [hl], a
.moveExisting
	ld a, [hl]
	dec a
	jr z, .slotWithMinimalValue
	xor a
	ld [hli], a     ; disable move slot
	jr .next
.slotWithMinimalValue
	ld a, [de]
	ld [hli], a     ; enable move slot
.next
	inc de
	dec c
	jr nz, .filterMinimalEntries
	ld hl, wBuffer    ; use created temporary array as move set
	ret
.useOriginalMoveSet
	ld hl, wEnemyMonMoves    ; use original move set
	ret

AIMoveChoiceModificationFunctionPointers:
	dw AIMoveChoiceModification1
	dw AIMoveChoiceModification2
	dw AIMoveChoiceModification3
	dw AIMoveChoiceModification4

; discourages moves that cause no damage but only a status
; ailment if player's mon already has one
AIMoveChoiceModification1:
	ld a, [wBattleMonStatus]
	and a
	ret z ; return if no status ailment on player's mon
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	and a
	ret z ; no more moves in move set
	inc de
	call ReadMove
	ld a, [wEnemyMovePower]
	and a
	jr nz, .nextMove
	ld a, [wEnemyMoveEffect]
	push hl
	push de
	push bc
	ld hl, StatusAilmentMoveEffects
	ld de, $0001
	call IsInArray
	pop bc
	pop de
	pop hl
	jr nc, .nextMove
	ld a, [hl]
	add $20 ; heavily discourage move
	ld [hl], a
	jr .nextMove

StatusAilmentMoveEffects:
	db $01 ; unused sleep effect
	db SLEEP_EFFECT
	db POISON_EFFECT
	db PARALYZE_EFFECT
	db $FF

; Deleted & Unused
AIMoveChoiceModification2:
	ret

; Deleted & Unused
AIMoveChoiceModification3:
	ret

; Smart AI routine
; Does everything a good Trainer would do...
AIMoveChoiceModification4:
; damaging move priority on turn 3+
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement
	cp $2
	jr c, .healingCheck
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.damageLoop
	dec b
	jr z, .healingCheck
	inc hl
	ld a, [de]
	and a
	jr z, .healingCheck
	inc de
	call ReadMove
	ld a, [wEnemyMovePower]
	and a
	jr z, .damageLoop
; encourage by 2
	dec [hl]
	dec [hl]
	jr .damageLoop
; healing moves?
.healingCheck
	ld a, [wEnemyMonMaxHP]
	and a
	jr z, .noscale
	ld b, a
	ld a, [wEnemyMonMaxHP + 1]
	srl b
	rr a
	ld b, a
	ld a, [wEnemyMonHP]
	ld c, a
	ld a, [wEnemyMonHP + 1]
	srl c
	rr a
	ld c, a
	jr .realHealCheck
.noscale
	ld a, [wEnemyMonMaxHP + 1]
	ld b, a
	ld a, [wEnemyMonHP + 1]
	ld c, a
.realHealCheck
	srl b
	ld a, c
	cp b
	ld hl, HealingMoves
	jr nc, .debuffHealingMoves
	ld b, -8
	call Random
	ld a, [hRandomAdd]
	cp $C0 ; 3/4 chance
	jr nc, .dreamEaterCheck
	jr .applyHealingChance
.debuffHealingMoves
	ld b, 10
.applyHealingChance
	call AlterMovePriorityArray
.dreamEaterCheck
	ld a, [wBattleMonStatus]
	and SLP
	ld a, DREAM_EATER
	ld [wAIBuffer1], a
	jr z, .debuffDreamEater
	ld b, -1
	jr .applyDreamEater
.debuffDreamEater
	ld b, 20
.applyDreamEater
	call AlterMovePriority
.effectivenessCheck
; encourage any damaging move with SE, slightly discourage NVE moves
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.seloop
	dec b
	jr z, .selfBuffCheck
	inc hl
	ld a, [de]
	and a
	jr z, .selfBuffCheck
	inc de
	call ReadMove
	ld a, [wEnemyMoveEffect]
	cp SUPER_FANG_EFFECT
	jr z, .seloop
	cp SPECIAL_DAMAGE_EFFECT
	jr z, .seloop
	ld a, [wEnemyMovePower]
	cp 10
	jr c, .seloop
	push hl
	push bc
	push de
	callab AIGetTypeEffectiveness
	pop de
	pop bc
	pop hl
	ld a, [wTypeEffectiveness]
	cp $0a
	jr z, .seloop
	jr c, .nvemove
; strongly encourage SE Move
	rept 4
	dec [hl]
	endr
	cp $15
	jr c, .seloop
; even more strongly encourage 4x SE move
	rept 3
	dec [hl]
	endr
	jr .seloop
.nvemove
; slighly discourage
	inc [hl]
	and a
	jr nz, .seloop
; strongly discourage immunity
	ld a, [hl]
	add 50
	ld [hl], a
	jr .seloop
.selfBuffCheck
; 50% chance to encourage self-buff or status on turn 1 - 2
	ld a, [wAILayer2Encouragement]
	cp $2
	jr nc, .discourageFocusEnergy
	call Random
	ld a, [hRandomAdd]
	cp $80
	jr nc, .discourageFocusEnergy
	ld hl, LightStatusMoves
	ld b, -3
	call AlterMovePriorityArray
	ld hl, MediumStatusMoves
	ld b, -5
	call AlterMovePriorityArray
	ld hl, HeavyStatusMoves
	ld b, -6
	call AlterMovePriorityArray
.discourageFocusEnergy
; NEVER use Focus Energy if we have already used it.
	ld a, [wEnemyBattleStatus2]
	bit GettingPumped, a
	jr z, .discourageLightScreen
	ld a, FOCUS_ENERGY
	ld [wAIBuffer1], a
	ld b, 50
	call AlterMovePriority
.discourageLightScreen
; NEVER use Light Screen if we have already used it.
	ld a, [wEnemyBattleStatus3]
	bit HasLightScreenUp, a
	jr z, .discourageReflect
	ld a, LIGHT_SCREEN
	ld [wAIBuffer1], a
	ld b, 50
	call AlterMovePriority
.discourageReflect
; NEVER use Reflect if we have already used it.
	ld a, [wEnemyBattleStatus3]
	bit HasReflectUp, a
	jr z, .discourageBattleEndingMoves
	ld a, REFLECT
	ld [wAIBuffer1], a
	ld b, 50
	call AlterMovePriority
.discourageBattleEndingMoves
; NEVER use moves that try to end the battle...
	ld hl, EndBattleMoves
	ld b, 50
	call AlterMovePriorityArray
.discourageImmunePoisonMoves
; NEVER use poison status moves that the player is immune to
	ld de, wBattleMonType1
	ld a, [de]
	cp POISON
	jr z, .poisonStatusDoesntAffect
; Check Second Type
	inc de
	ld a, [de]
	cp POISON
	jr z, .poisonStatusDoesntAffect
	jr .discourageImmuneThunderWave
.poisonStatusDoesntAffect
	ld hl, PoisonMoves
	ld b, 50
	call AlterMovePriorityArray
.discourageImmuneThunderWave
; NEVER use thunderwave if the player is immune to it
	ld de, wBattleMonType1
	ld a, [de]
	cp ELECTRIC
	jr z, .thunderWaveDoesntAffect
	cp GROUND
	jr z, .thunderWaveDoesntAffect
; Check Second Types
	inc de
	ld a, [de]
	cp ELECTRIC
	jr z, .thunderWaveDoesntAffect
	cp GROUND
	jr z, .thunderWaveDoesntAffect
	jr .discourageImmuneGlare
.thunderWaveDoesntAffect
	ld a, THUNDER_WAVE
	ld [wAIBuffer1], a
	ld b, 50
	call AlterMovePriority
.discourageImmuneGlare
; NEVER use glare if the player is immune to it
	ld de, wBattleMonType1
	ld a, [de]
	cp GHOST
	jr z, .glareDoesntAffect
; Check Second Type
	inc de
	ld a, [de]
	cp GHOST
	jr z, .glareDoesntAffect
	jr .discourageImmuneLeechSeed
.glareDoesntAffect
	ld a, GLARE
	ld [wAIBuffer1], a
	ld b, 50
	call AlterMovePriority
.discourageImmuneLeechSeed
; NEVER use leech seed if the player is immune to it
	ld de, wBattleMonType1
	ld a, [de]
	cp GRASS
	jr z, .leechSeedDoesntAffect
; Check Second Type
	inc de
	ld a, [de]
	cp GRASS
	jr z, .leechSeedDoesntAffect
 	jr .checkToInflictStatusOrConfusion
.leechSeedDoesntAffect
	ld a, LEECH_SEED
	ld [wAIBuffer1], a
	ld b, 50
	call AlterMovePriority
.checkToInflictStatusOrConfusion
; if enemy already has a status affliction, don't keep trying to give them one
; this *should* already be part of AIMoveChoiceModification1 but it doesn't always seem to catch them
; if player does not have a status, we then check confusion state. If not confused, attempt to do so
; The Priority here always falls to non-volatile status conditions first, then confusion
; Only 50% chance to perform this code
	call Random
	ld a, [hRandomAdd]
	cp $80
	jr c, .checkToInflictStatus

; Discourage Status moves
	ld hl, StatusOnlyMoves
	ld b, 30
	call AlterMovePriorityArray
; Discourage Confusion moves
	ld hl, ConfuseMoves
	ld b, 30
	call AlterMovePriorityArray
; Discourage Disable
	ld a, DISABLE
	ld [wAIBuffer1], a
	ld b, 30
	call AlterMovePriority
	ret

.checkToInflictStatus
; is player statused?
	ld a, [wBattleMonStatus]
	and a
	jr z, .inflictStatus
; fallthrough on nz

.discourageStatusMoves
; Discourage Status moves if already status'd
	ld hl, StatusOnlyMoves
	ld b, 30
	call AlterMovePriorityArray
	jr .checkInflictConfusion

.inflictStatus
; if they don't have a status, attempt to give them it.
	ld hl, StatusOnlyMoves
	ld b, -7
	call AlterMovePriorityArray
; fallthrough

.checkInflictConfusion
; is player confused?
	ld a,[wPlayerBattleStatus1]
	bit Confused, a
	jr z, .inflictConfusion
; fallthrough on nz

.discourageConfuseMoves
; Discourage Confusion moves if already confused
	ld hl, ConfuseMoves
	ld b, 30
	call AlterMovePriorityArray
	jr .checkInflictDisable

.inflictConfusion
; if they don't have confusion, attempt to give them it.
	ld hl, ConfuseMoves
	ld b, -7
	call AlterMovePriorityArray
; fallthrough

.checkInflictDisable
; does player have a disabled move?
	ld hl, wPlayerDisabledMove
	ld a, [hl]
	and a
	jr z, .inflictDisable
	; fallthrough on nz

.discourageDisable
; Discourage disable if already disabled
	ld a, DISABLE
	ld [wAIBuffer1], a
	ld b, 30
	call AlterMovePriority
	ret

.inflictDisable
; if they don't have a disabled move, attempt to do it.
	ld a, DISABLE
	ld [wAIBuffer1], a
	ld b, -7
	call AlterMovePriority
	ret

LightStatusMoves:
	db DISABLE
	db MIST
	db HAZE
	db LEER
	db GROWL
	db TAIL_WHIP
	db STRING_SHOT
	db HARDEN
	db WITHDRAW
	db DEFENSE_CURL
	db $FF

MediumStatusMoves:
	db BIDE
	db SHARPEN
	db MEDITATE
	db BARRIER
	db AGILITY
	db SCREECH
	db DOUBLE_TEAM
	db SMOKESCREEN
	db SAND_ATTACK
	db FLASH
	db $FF

HeavyStatusMoves:
	db SWORDS_DANCE
	db ACID_ARMOR
	db GROWTH
	db AMNESIA
	db MINIMIZE
	db KINESIS
	db SUBSTITUTE
	db FOCUS_ENERGY
	db REFLECT
	db LIGHT_SCREEN
	db $FF

HealingMoves:
	db REST
	db RECOVER
	db SOFTBOILED
	db $FF

EndBattleMoves:
	db WHIRLWIND
	db ROAR
	db TELEPORT
	db $FF

StatusOnlyMoves:
	db POISONPOWDER
	db STUN_SPORE
	db SLEEP_POWDER
	db THUNDER_WAVE
	db TOXIC
	db HYPNOSIS
	db GLARE
	db POISON_GAS
	db LOVELY_KISS
	db SPORE
	db SING
	db $FF

ConfuseMoves:
	db SUPERSONIC
	db CONFUSE_RAY
	db $FF

PoisonMoves:
	db POISON_GAS
	db POISONPOWDER
	db TOXIC
	db $FF

AlterMovePriority:
; [wAIBuffer1] = move
; b = priority change
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.moveLoop
	dec c
	ret z
	inc hl
	ld a, [de]
	and a
	ret z
	inc de
	push bc
	ld b, a
	ld a, [wAIBuffer1]
	cp b
	pop bc
	jr nz, .moveLoop
	ld a, [hl]
	add b
	ld [hl], a
	ret

AlterMovePriorityArray:
; hl = move array
; b = priority change
	ld a, h
	ld [wAIBuffer1], a
	ld a, l
	ld [wAIBuffer1 + 1], a
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.moveLoop
	dec c
	ret z
	inc hl
	ld a, [de]
	and a
	ret z
	inc de
	push hl
	push de
	push bc
	ld b, a
	ld a, [wAIBuffer1]
	ld h, a
	ld a, [wAIBuffer1 + 1]
	ld l, a
	ld a, b
	ld de, $0001
	call IsInArray
	pop bc
	pop de
	pop hl
	jr nc, .moveLoop
	ld a, [hl]
	add b
	ld [hl], a
	ret

ReadMove:
	push hl
	push de
	push bc
	dec a
	ld hl,Moves
	ld bc,MoveEnd - Moves
	call AddNTimes
	ld de,wEnemyMoveNum
	call CopyData
	pop bc
	pop de
	pop hl
	ret

; move choice modification methods that are applied for each trainer class
; 0 is sentinel value
TrainerClassMoveChoiceModifications:
	db 1,4,0   ; YOUNGSTER
	db 1,4,0   ; BUG CATCHER
	db 1,4,0   ; LASS
	db 1,4,0   ; SAILOR
	db 1,4,0   ; JR_TRAINER_M
	db 1,4,0   ; JR_TRAINER_F
	db 1,4,0   ; POKEMANIAC
	db 1,4,0   ; SUPER_NERD
	db 1,4,0   ; HIKER
	db 1,4,0   ; BIKER
	db 1,4,0   ; BURGLAR
	db 1,4,0   ; ENGINEER
	db 1,4,0   ; SWIMMER_F
	db 1,4,0   ; FISHER
	db 1,4,0   ; SWIMMER
	db 1,4,0   ; CUE_BALL
	db 1,4,0   ; GAMBLER
	db 1,4,0   ; BEAUTY
	db 1,4,0   ; PSYCHIC_TR
	db 1,4,0   ; ROCKER
	db 1,4,0   ; JUGGLER
	db 1,4,0   ; TAMER
	db 1,4,0   ; BIRD_KEEPER
	db 1,4,0   ; BLACKBELT
	db 1,4,0   ; RIVAL1
	db 1,4,0   ; PROF_OAK
	db 1,4,0   ; ROCKET_F
	db 1,4,0   ; SCIENTIST
	db 1,4,0   ; GIOVANNI
	db 1,4,0   ; ROCKET
	db 1,4,0   ; COOLTRAINER_M
	db 1,4,0   ; COOLTRAINER_F
	db 1,4,0   ; BRUNO
	db 1,4,0   ; BROCK
	db 1,4,0   ; MISTY
	db 1,4,0   ; LT_SURGE
	db 1,4,0   ; ERIKA
	db 1,4,0   ; KOGA
	db 1,4,0   ; BLAINE
	db 1,4,0   ; SABRINA
	db 1,4,0   ; GENTLEMAN
	db 1,4,0   ; RIVAL2
	db 1,4,0   ; RIVAL3
	db 1,4,0   ; LORELEI
	db 1,4,0   ; CHANNELER
	db 1,4,0   ; AGATHA
	db 1,4,0   ; LANCE

INCLUDE "engine/battle/trainer_pic_money_pointers.asm"

INCLUDE "text/trainer_names.asm"

INCLUDE "engine/battle/bank_e_misc.asm"

INCLUDE "engine/battle/read_trainer_party.asm"

INCLUDE "data/trainer_moves.asm"

INCLUDE "data/trainer_parties.asm"

TrainerAI:
	and a
	ld a,[wIsInBattle]
	dec a
	ret z ; if not a trainer, we're done here
	ld a,[wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	ld a,[wTrainerClass] ; what trainer class is this?
	dec a
	ld c,a
	ld b,0
	ld hl,TrainerAIPointers
	add hl,bc
	add hl,bc
	add hl,bc
	ld a,[wAICount]
	and a
	ret z ; if no AI uses left, we're done here
	inc hl
	inc a
	jr nz,.getpointer
	dec hl
	ld a,[hli]
	ld [wAICount],a
.getpointer
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call Random
	jp hl

TrainerAIPointers:
; one entry per trainer class
; first byte, number of times (per Pokémon) it can occur
; next two bytes, pointer to AI subroutine for trainer class
	dbw 1,PotionAI ; YOUNGSTER
	dbw 1,PotionAI ; BUG CATCHER
	dbw 1,PotionAI ; LASS
	dbw 3,SwitchOutAI ; SAILOR
	dbw 1,FullHealOrPotionAI ; JR_TRAINER_M
	dbw 1,FullHealOrPotionAI ; JR_TRAINER_F
	dbw 2,SwitchOrSuperPotionAI ; POKEMANIAC
	dbw 3,SwitchOutAI ; SUPER_NERD
	dbw 1,FullHealOrPotionAI ; HIKER
	dbw 1,XDefendAI ; BIKER
	dbw 3,SwitchOutAI ; BURGLAR
	dbw 1,GuardSpecAI ; ENGINEER
	dbw 1,XDefendAI ; SWIMMER_F
	dbw 1,SuperPotion1AI ; FISHER
	dbw 1,XSpeedAI ; SWIMMER
	dbw 1,DireHitAI ; CUE_BALL
	dbw 3,SwitchOutAI ; GAMBLER
	dbw 1,SuperPotion1AI ; BEAUTY
	dbw 1,XSpecialAI ; PSYCHIC_TR
	dbw 1,XSpeedAI ; ROCKER
	dbw 3,SwitchOutAI ; JUGGLER
	dbw 1,XAttackAI ; TAMER
	dbw 1,DireHitAI ; BIRD_KEEPER
	dbw 1,XAttackAI ; BLACKBELT
	dbw 1,FullHealOrPotionAI ; RIVAL1
	dbw 1,FullRestoreAI ; PROF_OAK
	dbw 3,NoItemAI ; ROCKET_F
	dbw 1,GuardSpecAI ; SCIENTIST
	dbw 1,HyperPotion2AI ; GIOVANNI
	dbw 3,NoItemAI ; ROCKET
	dbw 1,SwitchOrHyperPotionAI ; COOLTRAINER_M
	dbw 1,SwitchOrHyperPotionAI ; COOLTRAINER_F
	dbw 1,HyperPotion2AI ; BRUNO
	dbw 1,FullHealOrPotionAI ; BROCK
	dbw 2,FullHealAI ; MISTY
	dbw 1,SuperPotion1AI ; LT_SURGE
	dbw 1,SuperPotion2AI ; ERIKA
	dbw 1,HyperPotion1AI ; KOGA
	dbw 2,HyperPotion1AI ; BLAINE
	dbw 2,SwitchOrFullHealAI ; SABRINA
	dbw 1,FullHealOrPotionAI ; GENTLEMAN
	dbw 1,FullHealOrSuperPotionAI ; RIVAL2
	dbw 1,FullRestoreAI ; RIVAL3
	dbw 2,SuperPotion2AI ; LORELEI
	dbw 1,XSpecialAI ; CHANNELER
	dbw 2,SwitchOrSuperPotionAI ; AGATHA
	dbw 1,HyperPotion2AI ; LANCE

SwitchOutAI:
	cp $40
	ret nc
	ld a,[wEnemyBattleStatus2]
	bit HasSubstituteUp, a
	ret nz ; Don't want to switch if we have a sub up
	ld a,2
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons
	jp AISwitchIfEnoughMons

XAttackAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseXAttack

XDefendAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseXDefend

XSpeedAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseXSpeed

XSpecialAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseXSpecial

XAccuracyAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseXAccuracy

GuardSpecAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseGuardSpec

DireHitAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ret nc
	jp AIUseDireHit

PotionAI:
	cp $20
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUsePotion

FullHealAI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,[wEnemyMonStatus]
	and a
	ret z
	jp AIUseFullHeal

SuperPotion1AI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

SuperPotion2AI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,$A
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

HyperPotion1AI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseHyperPotion

HyperPotion2AI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,$A
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseHyperPotion

FullRestoreAI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,[wEnemyMonStatus]
	and a
	jp nz, AIUseFullRestore
	ld a,$A
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseFullRestore

FullHealOrPotionAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,[wEnemyMonStatus]
	and a
	jp nz, AIUseFullHeal
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUsePotion

FullHealOrSuperPotionAI:
	cp $40
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,[wEnemyMonStatus]
	and a
	jp nz, AIUseFullHeal
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

SwitchOrFullHealAI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,[wEnemyMonStatus]
	and a
	jp nz, AIUseFullHeal
	ld a,[wEnemyBattleStatus2]
	bit HasSubstituteUp, a
	ret nz ; Don't want to switch if we have a sub up
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons

SwitchOrSuperPotionAI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,$A
	call AICheckIfHPBelowFraction
	jp c,AIUseSuperPotion
	ld a,[wEnemyBattleStatus2]
	bit HasSubstituteUp, a
	ret nz ; Don't want to switch if we have a sub up
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons

SwitchOrHyperPotionAI:
	cp $80
	ret nc
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement (How many turns has it been out?)
	cp 2
	ccf
	ret nc ; They can't heal too early
	ld a,$A
	call AICheckIfHPBelowFraction
	jp c,AIUseHyperPotion
	ld a,[wEnemyBattleStatus2]
	bit HasSubstituteUp, a
	ret nz ; Don't want to switch if we have a sub up
	ld a,5
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons

NoItemAI:
	and a ; clear carry
	ret

; end of individual trainer AI routines

DecrementAICount:
	ld hl,wAICount
	dec [hl]
	scf
	ret

AIPlayRestoringSFX:
	ld a,SFX_HEAL_AILMENT
	jp PlaySoundWaitForCurrent

AIUseFullRestore:
	call AICureStatus
	ld a,FULL_RESTORE
	ld [wAIItem],a
	ld de,wHPBarOldHP
	ld hl,wEnemyMonHP + 1
	ld a,[hld]
	ld [de],a
	inc de
	ld a,[hl]
	ld [de],a
	inc de
	ld hl,wEnemyMonMaxHP + 1
	ld a,[hld]
	ld [de],a
	inc de
	ld [wHPBarMaxHP],a
	ld [wEnemyMonHP + 1],a
	ld a,[hl]
	ld [de],a
	ld [wHPBarMaxHP+1],a
	ld [wEnemyMonHP],a
	jr AIPrintItemUseAndUpdateHPBar

AIUsePotion:
; enemy trainer heals his monster with a potion
	ld a,POTION
	ld b,20
	jr AIRecoverHP

AIUseSuperPotion:
; enemy trainer heals his monster with a super potion
	ld a,SUPER_POTION
	ld b,50
	jr AIRecoverHP

AIUseHyperPotion:
; enemy trainer heals his monster with a hyper potion
	ld a,HYPER_POTION
	ld b,200
	; fallthrough

AIRecoverHP:
; heal b HP and print "trainer used $(a) on pokemon!"
	ld [wAIItem],a
	ld hl,wEnemyMonHP + 1
	ld a,[hl]
	ld [wHPBarOldHP],a
	add b
	ld [hld],a
	ld [wHPBarNewHP],a
	ld a,[hl]
	ld [wHPBarOldHP+1],a
	ld [wHPBarNewHP+1],a
	jr nc,.next
	inc a
	ld [hl],a
	ld [wHPBarNewHP+1],a
.next
	inc hl
	ld a,[hld]
	ld b,a
	ld de,wEnemyMonMaxHP + 1
	ld a,[de]
	dec de
	ld [wHPBarMaxHP],a
	sub b
	ld a,[hli]
	ld b,a
	ld a,[de]
	ld [wHPBarMaxHP+1],a
	sbc b
	jr nc,AIPrintItemUseAndUpdateHPBar
	inc de
	ld a,[de]
	dec de
	ld [hld],a
	ld [wHPBarNewHP],a
	ld a,[de]
	ld [hl],a
	ld [wHPBarNewHP+1],a
	; fallthrough

AIPrintItemUseAndUpdateHPBar:
	call AIPrintItemUse_
	coord hl, 2, 2
	xor a
	ld [wHPBarType],a
	predef UpdateHPBar2
	jp DecrementAICount

AISwitchIfEnoughMons:
; enemy trainer switches if there are 3 or more unfainted mons in party
	ld a,[wEnemyPartyCount]
	ld c,a
	ld hl,wEnemyMon1HP

	ld d,0 ; keep count of unfainted monsters

	; count how many monsters haven't fainted yet
.loop
	ld a,[hli]
	ld b,a
	ld a,[hld]
	or b
	jr z,.Fainted ; has monster fainted?
	inc d
.Fainted
	push bc
	ld bc, wEnemyMon2 - wEnemyMon1
	add hl,bc
	pop bc
	dec c
	jr nz,.loop

	ld a,d ; how many available monsters are there?
	cp 2 ; don't bother if only 1 or 2
	jp nc,SwitchEnemyMon
	and a
	ret

SwitchEnemyMon:

; prepare to withdraw the active monster: copy hp, number, and status to roster

	ld a,[wEnemyMonPartyPos]
	ld hl,wEnemyMon1HP
	ld bc,wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld d,h
	ld e,l
	ld hl,wEnemyMonHP
	ld bc,4
	call CopyData

	ld hl, AIBattleWithdrawText
	call PrintText

	; This wFirstMonsNotOutYet variable is abused to prevent the player from
	; switching in a new mon in response to this switch.
	ld a,1
	ld [wFirstMonsNotOutYet],a
	callab EnemySendOut
	xor a
	ld [wFirstMonsNotOutYet],a

	ld a,[wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	scf
	ret

AIBattleWithdrawText:
	TX_FAR _AIBattleWithdrawText
	db "@"

AIUseFullHeal:
	call AIPlayRestoringSFX
	call AICureStatus
	ld a,FULL_HEAL
	jp AIPrintItemUse

AICureStatus:
; cures the status of enemy's active pokemon
	ld a,[wEnemyMonPartyPos]
	ld hl,wEnemyMon1Status
	ld bc,wEnemyMon2 - wEnemyMon1
	call AddNTimes
	xor a
	ld [hl],a ; clear status in enemy team roster
	ld [wEnemyMonStatus],a ; clear status of active enemy
	ld hl,wEnemyBattleStatus3
	res 0,[hl]
	ret

AIUseXAccuracy:
	call AIPlayRestoringSFX
	ld hl,wEnemyBattleStatus2
	set 0,[hl]
	ld a,X_ACCURACY
	jp AIPrintItemUse

AIUseGuardSpec:
	call AIPlayRestoringSFX
	ld hl,wEnemyBattleStatus2
	set 1,[hl]
	ld a,GUARD_SPEC
	jp AIPrintItemUse

AIUseDireHit:
	call AIPlayRestoringSFX
	ld hl,wEnemyBattleStatus2
	set 2,[hl]
	ld a,DIRE_HIT
	jp AIPrintItemUse

AICheckIfHPBelowFraction:
; return carry if enemy trainer's current HP is below 1 / a of the maximum
	ld [H_DIVISOR],a
	ld hl,wEnemyMonMaxHP
	ld a,[hli]
	ld [H_DIVIDEND],a
	ld a,[hl]
	ld [H_DIVIDEND + 1],a
	ld b,2
	call Divide
	ld a,[H_QUOTIENT + 3]
	ld c,a
	ld a,[H_QUOTIENT + 2]
	ld b,a
	ld hl,wEnemyMonHP + 1
	ld a,[hld]
	ld e,a
	ld a,[hl]
	ld d,a
	ld a,d
	sub b
	ret nz
	ld a,e
	sub c
	ret

AIUseXAttack:
	ld b,$A
	ld a,X_ATTACK
	jr AIIncreaseStat

AIUseXDefend:
	ld b,$B
	ld a,X_DEFEND
	jr AIIncreaseStat

AIUseXSpeed:
	ld b,$C
	ld a,X_SPEED
	jr AIIncreaseStat

AIUseXSpecial:
	ld b,$D
	ld a,X_SPECIAL
	; fallthrough

AIIncreaseStat:
	ld [wAIItem],a
	push bc
	call AIPrintItemUse_
	pop bc
	ld hl,wEnemyMoveEffect
	ld a,[hld]
	push af
	ld a,[hl]
	push af
	push hl
	ld a,ANIM_AF
	ld [hli],a
	ld [hl],b
	callab StatModifierUpEffect
	pop hl
	pop af
	ld [hli],a
	pop af
	ld [hl],a
	jp DecrementAICount

AIPrintItemUse:
	ld [wAIItem],a
	call AIPrintItemUse_
	jp DecrementAICount

AIPrintItemUse_:
; print "x used [wAIItem] on z!"
	ld a,[wAIItem]
	ld [wd11e],a
	call GetItemName
	ld hl, AIBattleUseItemText
	jp PrintText

AIBattleUseItemText:
	TX_FAR _AIBattleUseItemText
	db "@"
