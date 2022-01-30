; old rod data
; format: map, pointer to fishing group
OldRodData:
	dbw PALLET_TOWN, OldGroup1
	dbw VIRIDIAN_CITY, OldGroup2
	dbw CERULEAN_CITY, OldGroup2
	dbw VERMILION_CITY, OldGroup1
	dbw CELADON_CITY, OldGroup2
	dbw FUCHSIA_CITY, OldGroup2
	dbw CINNABAR_ISLAND, OldGroup1
	dbw ROUTE_4, OldGroup2
	dbw ROUTE_6, OldGroup2
	dbw ROUTE_10, OldGroup2
	dbw ROUTE_11, OldGroup1
	dbw ROUTE_12, OldGroup1
	dbw ROUTE_13, OldGroup1
	dbw ROUTE_17, OldGroup1
	dbw ROUTE_18, OldGroup1
	dbw ROUTE_19, OldGroup1
	dbw ROUTE_20, OldGroup1
	dbw ROUTE_21, OldGroup1
	dbw ROUTE_22, OldGroup2
	dbw ROUTE_23, OldGroup2
	dbw ROUTE_24, OldGroup2
	dbw ROUTE_25, OldGroup1
	dbw VERMILION_DOCK, OldGroup1
	dbw SEAFOAM_ISLANDS_4, OldGroup2
	dbw SEAFOAM_ISLANDS_5, OldGroup2
	dbw SAFARI_ZONE_EAST, OldGroup2
	dbw SAFARI_ZONE_NORTH, OldGroup2
	dbw SAFARI_ZONE_WEST, OldGroup2
	dbw SAFARI_ZONE_CENTER, OldGroup2
	dbw UNKNOWN_DUNGEON_3, OldGroup2
	dbw UNKNOWN_DUNGEON_1, OldGroup2
	db $FF

; fishing groups
; number of monsters, followed by level/monster pairs
OldGroup1:     ; Beaches & Fishing Piers
	db 8
	db 5,MAGIKARP
	db 10,MAGIKARP
	db 10,MAGIKARP
	db 15,MAGIKARP
	db 5,TENTACOOL
	db 10,TENTACOOL
	db 10,TENTACOOL
	db 15,TENTACOOL

OldGroup2:     ; Ponds and Rivers
	db 8
	db 5,MAGIKARP
	db 10,MAGIKARP
	db 10,MAGIKARP
	db 15,MAGIKARP
	db 5,POLIWAG
	db 10,POLIWAG
	db 10,POLIWAG
	db 15,POLIWAG
