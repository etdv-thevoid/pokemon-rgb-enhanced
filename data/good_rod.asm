; good rod data
; format: map, pointer to fishing group
GoodRodData:
	dbw PALLET_TOWN, GoodGroup1
	dbw VIRIDIAN_CITY, GoodGroup2
	dbw CERULEAN_CITY, GoodGroup2
	dbw VERMILION_CITY, GoodGroup1
	dbw CELADON_CITY, GoodGroup2
	dbw FUCHSIA_CITY, GoodGroup2
	dbw CINNABAR_ISLAND, GoodGroup1
	dbw ROUTE_4, GoodGroup2
	dbw ROUTE_6, GoodGroup2
	dbw ROUTE_10, GoodGroup2
	dbw ROUTE_11, GoodGroup1
	dbw ROUTE_12, GoodGroup3
	dbw ROUTE_13, GoodGroup3
	dbw ROUTE_17, GoodGroup3
	dbw ROUTE_18, GoodGroup3
	dbw ROUTE_19, GoodGroup1
	dbw ROUTE_20, GoodGroup1
	dbw ROUTE_21, GoodGroup1
	dbw ROUTE_22, GoodGroup2
	dbw ROUTE_23, GoodGroup2
	dbw ROUTE_24, GoodGroup2
	dbw ROUTE_25, GoodGroup1
	dbw VERMILION_DOCK, GoodGroup3
	dbw SEAFOAM_ISLANDS_4, GoodGroup3
	dbw SEAFOAM_ISLANDS_5, GoodGroup3
	dbw SAFARI_ZONE_EAST, GoodGroup2
	dbw SAFARI_ZONE_NORTH, GoodGroup2
	dbw SAFARI_ZONE_WEST, GoodGroup2
	dbw SAFARI_ZONE_CENTER, GoodGroup2
	dbw UNKNOWN_DUNGEON_3, GoodGroup2
	dbw UNKNOWN_DUNGEON_1, GoodGroup2
	db $FF

; fishing groups
; number of monsters, followed by level/monster pairs
GoodGroup1:     ; Beaches
	db 8
	db 10,TENTACOOL
	db 15,TENTACOOL
	db 15,TENTACOOL
	db 20,TENTACOOL
	db 10,KRABBY
	db 15,KRABBY
	db 15,KRABBY
	db 20,KRABBY

GoodGroup2:     ; Ponds and Rivers
	db 8
	db 10,GOLDEEN
	db 15,GOLDEEN
	db 15,GOLDEEN
	db 20,GOLDEEN
IF DEF(_BLUE)
	db 10,SLOWPOKE
	db 15,SLOWPOKE
	db 15,SLOWPOKE
	db 20,SLOWPOKE
ELSE
	db 10,PSYDUCK
	db 15,PSYDUCK
	db 15,PSYDUCK
	db 20,PSYDUCK
ENDC

GoodGroup3:     ; Fishing Piers
	db 8
	db 10,TENTACOOL
	db 15,TENTACOOL
	db 15,TENTACOOL
	db 20,TENTACOOL
	db 10,HORSEA
	db 15,HORSEA
	db 15,HORSEA
	db 20,HORSEA
