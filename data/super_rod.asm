; super rod data
; format: map, pointer to fishing group
SuperRodData:
	dbw PALLET_TOWN, SuperGroup1
	dbw VIRIDIAN_CITY, SuperGroup2
	dbw CERULEAN_CITY, SuperGroup2
	dbw VERMILION_CITY, SuperGroup1
	dbw CELADON_CITY, SuperGroup2
	dbw FUCHSIA_CITY, SuperGroup6
	dbw CINNABAR_ISLAND, SuperGroup1
	dbw ROUTE_4, SuperGroup2
	dbw ROUTE_6, SuperGroup2
	dbw ROUTE_10, SuperGroup2
	dbw ROUTE_11, SuperGroup1
	dbw ROUTE_12, SuperGroup3
	dbw ROUTE_13, SuperGroup3
	dbw ROUTE_17, SuperGroup3
	dbw ROUTE_18, SuperGroup3
	dbw ROUTE_19, SuperGroup1
	dbw ROUTE_20, SuperGroup1
	dbw ROUTE_21, SuperGroup1
	dbw ROUTE_22, SuperGroup2
	dbw ROUTE_23, SuperGroup7
	dbw ROUTE_24, SuperGroup2
	dbw ROUTE_25, SuperGroup1
	dbw VERMILION_DOCK, SuperGroup3
	dbw SEAFOAM_ISLANDS_4, SuperGroup5
	dbw SEAFOAM_ISLANDS_5, SuperGroup5
	dbw SAFARI_ZONE_EAST, SuperGroup4
	dbw SAFARI_ZONE_NORTH, SuperGroup4
	dbw SAFARI_ZONE_WEST, SuperGroup4
	dbw SAFARI_ZONE_CENTER, SuperGroup4
	dbw UNKNOWN_DUNGEON_3, SuperGroup7
	dbw UNKNOWN_DUNGEON_1, SuperGroup7
	db $FF

; fishing groups
; number of monsters, followed by level/monster pairs
SuperGroup1:     ; Beaches
	db 8
	db 20,TENTACOOL
	db 20,TENTACOOL
IF DEF(_BLUE)
	db 15,SHELLDER
	db 15,KRABBY
	db 20,SHELLDER
	db 20,KRABBY
	db 25,SHELLDER
	db 25,KRABBY
ELSE
	db 15,STARYU
	db 15,KRABBY
	db 20,STARYU
	db 20,KRABBY
	db 25,STARYU
	db 25,KRABBY
ENDC

SuperGroup2:     ; Ponds and Rivers
	db 8
	db 20,GOLDEEN
	db 20,GOLDEEN
	db 15,POLIWAG
	db 20,POLIWAG
	db 25,POLIWAG
IF DEF(_BLUE)
	db 15,SLOWPOKE
	db 20,SLOWPOKE
	db 25,SLOWPOKE
ELSE
	db 15,PSYDUCK
	db 20,PSYDUCK
	db 25,PSYDUCK
ENDC

SuperGroup3:     ; Fishing Piers
	db 8
	db 20,TENTACOOL
	db 20,TENTACOOL
IF DEF(_BLUE)
	db 15,SHELLDER
	db 15,HORSEA
	db 20,SHELLDER
	db 20,HORSEA
	db 25,SHELLDER
	db 25,HORSEA
ELSE
	db 15,STARYU
	db 15,HORSEA
	db 20,STARYU
	db 20,HORSEA
	db 25,STARYU
	db 25,HORSEA
ENDC

SuperGroup4:     ; SAFARI ZONE
	db 8
	db 20,DRATINI
	db 20,DRATINI
IF DEF(_BLUE)
	db 15,KRABBY
	db 15,SLOWPOKE
	db 20,KRABBY
	db 20,SLOWPOKE
	db 25,KRABBY
	db 25,SLOWPOKE
ELSE
	db 15,KRABBY
	db 15,PSYDUCK
	db 20,KRABBY
	db 20,PSYDUCK
	db 25,KRABBY
	db 25,PSYDUCK
ENDC

SuperGroup5:     ; SEAFOAM ISLANDS
	db 8
	db 20,TENTACOOL
	db 25,TENTACOOL
	db 30,TENTACRUEL
IF DEF(_BLUE)
	db 25,HORSEA
	db 25,SLOWPOKE
	db 25,SHELLDER
	db 35,SEADRA
	db 35,SLOWBRO
ELSE
	db 25,HORSEA
	db 25,PSYDUCK
	db 25,STARYU
	db 35,SEADRA
	db 35,GOLDUCK
ENDC

SuperGroup6:     ; FUCHSIA CITY
	db 8
	db 5,MAGIKARP
	db 10,MAGIKARP
	db 10,MAGIKARP
	db 15,MAGIKARP
	db 15,MAGIKARP
	db 20,MAGIKARP
	db 20,GYARADOS
	db 25,GYARADOS

SuperGroup7:     ; FINAL
	db 8
	db 30,SEAKING
	db 35,SEAKING
	db 30,POLIWHIRL
	db 35,POLIWHIRL
	db 35,GYARADOS
	db 45,DRAGONAIR
	db 40,KINGLER
IF DEF(_BLUE)
	db 40,SLOWBRO
ELSE
	db 40,GOLDUCK
ENDC
