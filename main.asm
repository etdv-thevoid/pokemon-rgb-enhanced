INCLUDE "constants.asm"

NPC_SPRITES_1 EQU $4
NPC_SPRITES_2 EQU $5

GFX EQU $4

PICS_1 EQU $9
PICS_2 EQU $A
PICS_3 EQU $B
PICS_4 EQU $C
PICS_5 EQU $D

INCLUDE "home.asm"


SECTION "bank1",ROMX,BANK[$1]

INCLUDE "data/facing.asm"

INCLUDE "engine/black_out.asm"

; Mew sprites removed from here
	ORG $01, $425b

INCLUDE "data/baseStats/mew.asm"

INCLUDE "engine/battle/safari_zone.asm"

INCLUDE "engine/titlescreen.asm"
INCLUDE "engine/load_mon_data.asm"

INCLUDE "data/item_prices.asm"
INCLUDE "text/item_names.asm"
INCLUDE "text/unused_names.asm"

INCLUDE "engine/overworld/oam.asm"
INCLUDE "engine/oam_dma.asm"

INCLUDE "engine/print_waiting_text.asm"

INCLUDE "engine/overworld/map_sprite_functions1.asm"

INCLUDE "engine/test_battle.asm"

INCLUDE "engine/overworld/item.asm"
INCLUDE "engine/overworld/movement.asm"

INCLUDE "engine/cable_club.asm"

INCLUDE "engine/menu/main_menu.asm"

INCLUDE "engine/oak_speech.asm"

INCLUDE "engine/special_warps.asm"

INCLUDE "engine/debug1.asm"

INCLUDE "engine/menu/naming_screen.asm"

INCLUDE "engine/oak_speech2.asm"

INCLUDE "engine/subtract_paid_money.asm"

INCLUDE "engine/menu/swap_items.asm"

INCLUDE "engine/overworld/pokemart.asm"

INCLUDE "engine/learn_move.asm"

INCLUDE "engine/overworld/pokecenter.asm"

INCLUDE "engine/overworld/set_blackout_map.asm"

INCLUDE "engine/display_text_id_init.asm"
INCLUDE "engine/menu/draw_start_menu.asm"

INCLUDE "engine/overworld/cable_club_npc.asm"

INCLUDE "engine/menu/text_box.asm"

INCLUDE "engine/battle/moveEffects/drain_hp_effect.asm"

INCLUDE "engine/menu/players_pc.asm"

INCLUDE "engine/remove_pokemon.asm"

INCLUDE "engine/display_pokedex.asm"


; Hooks for color hack
INCLUDE "color/cable_club.asm"
INCLUDE "color/oak_intro.asm"
INCLUDE "color/load_hp_and_exp_bar.asm"


SECTION "bank3",ROMX,BANK[$3]

INCLUDE "engine/joypad.asm"

INCLUDE "data/map_songs.asm"

INCLUDE "data/map_header_banks.asm"

INCLUDE "engine/overworld/clear_variables.asm"
INCLUDE "engine/overworld/player_state.asm"
INCLUDE "engine/overworld/poison.asm"
INCLUDE "engine/overworld/tileset_header.asm"
INCLUDE "engine/overworld/daycare_exp.asm"

INCLUDE "data/hide_show_data.asm"

INCLUDE "engine/overworld/field_move_messages.asm"

INCLUDE "engine/items/inventory.asm"

INCLUDE "engine/overworld/wild_mons.asm"

INCLUDE "engine/items/items.asm"

INCLUDE "engine/menu/draw_badges.asm"

INCLUDE "engine/overworld/update_map.asm"
INCLUDE "engine/overworld/cut.asm"
INCLUDE "engine/overworld/missable_objects.asm"
INCLUDE "engine/overworld/push_boulder.asm"

INCLUDE "engine/add_mon.asm"
INCLUDE "engine/flag_action.asm"
INCLUDE "engine/heal_party.asm"
INCLUDE "engine/bcd.asm"
INCLUDE "engine/init_player_data.asm"
INCLUDE "engine/get_bag_item_quantity.asm"
INCLUDE "engine/pathfinding.asm"
INCLUDE "engine/hp_bar.asm"
INCLUDE "engine/hidden_object_functions3.asm"

INCLUDE "color/update_hp_bar.asm"

SECTION "NPC Sprites 1", ROMX, BANK[NPC_SPRITES_1]

OakAideSprite:         INCBIN "gfx/sprites/oak_aide.2bpp"
RockerSprite:          INCBIN "gfx/sprites/rocker.2bpp"
SwimmerSprite:         INCBIN "gfx/sprites/swimmer.2bpp"
WhitePlayerSprite:     INCBIN "gfx/sprites/white_player.2bpp"
GymHelperSprite:       INCBIN "gfx/sprites/gym_helper.2bpp"
OldPersonSprite:       INCBIN "gfx/sprites/old_person.2bpp"
MartGuySprite:         INCBIN "gfx/sprites/mart_guy.2bpp"
FisherSprite:          INCBIN "gfx/sprites/fisher.2bpp"
OldMediumWomanSprite:  INCBIN "gfx/sprites/old_medium_woman.2bpp"
NurseSprite:           INCBIN "gfx/sprites/nurse.2bpp"
CableClubWomanSprite:  INCBIN "gfx/sprites/cable_club_woman.2bpp"
MrMasterballSprite:    INCBIN "gfx/sprites/mr_masterball.2bpp"
LaprasGiverSprite:     INCBIN "gfx/sprites/lapras_giver.2bpp"
WardenSprite:          INCBIN "gfx/sprites/warden.2bpp"
SsCaptainSprite:       INCBIN "gfx/sprites/ss_captain.2bpp"
Fisher2Sprite:         INCBIN "gfx/sprites/fisher2.2bpp"
BlackbeltSprite:       INCBIN "gfx/sprites/blackbelt.2bpp"
GuardSprite:           INCBIN "gfx/sprites/guard.2bpp"
BallSprite:            INCBIN "gfx/sprites/ball.2bpp"
OmanyteSprite:         INCBIN "gfx/sprites/omanyte.2bpp"
BoulderSprite:         INCBIN "gfx/sprites/boulder.2bpp"
PaperSheetSprite:      INCBIN "gfx/sprites/paper_sheet.2bpp"
BookMapDexSprite:      INCBIN "gfx/sprites/book_map_dex.2bpp"
ClipboardSprite:       INCBIN "gfx/sprites/clipboard.2bpp"
SnorlaxSprite:         INCBIN "gfx/sprites/snorlax.2bpp"
OldAmberSprite:        INCBIN "gfx/sprites/old_amber.2bpp"
LyingOldManSprite:     INCBIN "gfx/sprites/lying_old_man.2bpp"
SwimmerFSprite:        INCBIN "gfx/sprites/swimmer_f.2bpp"


SECTION "Graphics", ROMX, BANK[GFX]

PokemonLogoGraphics:            INCBIN "gfx/gs/new_pokemon_logo.2bpp"
FontGraphics:                   INCBIN "gfx/gs/font.1bpp"
FontGraphicsEnd:
ABTiles:                        INCBIN "gfx/AB.2bpp"
HpBarAndStatusGraphics:  INCBIN "gfx/gs/gen2_hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:         INCBIN "gfx/gs/gen2_battle_arrow.1bpp"
BattleHudTiles1End:
BattleHudTiles2:         INCBIN "gfx/gs/gen2_battle_arrow_lines.1bpp"
BattleHudTiles3:         INCBIN "gfx/gs/gen2_battle_arrow_more_lines.1bpp"
BattleHudTiles3End:
NintendoCopyrightLogoGraphics:  INCBIN "gfx/copyright.2bpp"
GamefreakLogoGraphics:          INCBIN "gfx/gamefreak.2bpp"
GamefreakLogoGraphicsEnd:
TextBoxGraphics:                INCBIN "gfx/gs/text_box.2bpp"
TextBoxGraphicsEnd:
PokedexTileGraphics:            INCBIN "gfx/pokedex.2bpp"
PokedexTileGraphicsEnd:
WorldMapTileGraphics:           INCBIN "gfx/town_map.2bpp"
WorldMapTileGraphicsEnd:
PlayerCharacterTitleGraphics:   INCBIN "gfx/player_title.2bpp"
PlayerCharacterTitleGraphicsEnd:


SECTION "Battle (bank 4)", ROMX, BANK[$4]

INCLUDE "engine/overworld/is_player_just_outside_map.asm"
INCLUDE "engine/menu/status_screen.asm"
INCLUDE "engine/menu/party_menu.asm"

RedPicFront:: INCBIN "gfx/gs/trainer//red.pic"
rept 11 ; Padding
	db 0
endr

ShrinkPic1::  INCBIN "gfx/other/shrink1.pic"
ShrinkPic2::  INCBIN "gfx/other/shrink2.pic"

INCLUDE "engine/turn_sprite.asm"
INCLUDE "engine/menu/start_sub_menus.asm"
INCLUDE "engine/items/tms.asm"
INCLUDE "engine/items/tm_prices.asm"
INCLUDE "engine/battle/end_of_battle.asm"
INCLUDE "engine/battle/wild_encounters.asm"
INCLUDE "engine/battle/moveEffects/recoil_effect.asm"
INCLUDE "engine/battle/moveEffects/conversion_effect.asm"
INCLUDE "engine/battle/moveEffects/haze_effect.asm"
INCLUDE "engine/battle/get_trainer_name.asm"
INCLUDE "engine/random.asm"

INCLUDE "color/status_screen.asm"

EXPBarGraphics:  INCBIN "gfx/gs/exp_bar.2bpp"


SECTION "NPC Sprites 2", ROMX, BANK[NPC_SPRITES_2]

RedCyclingSprite:     INCBIN "gfx/sprites/cycling.2bpp"
RedSprite:            INCBIN "gfx/sprites/red.2bpp"
BlueSprite:           INCBIN "gfx/sprites/blue.2bpp"
OakSprite:            INCBIN "gfx/sprites/oak.2bpp"
BugCatcherSprite:     INCBIN "gfx/sprites/bug_catcher.2bpp"
SlowbroSprite:        INCBIN "gfx/sprites/slowbro.2bpp"
LassSprite:           INCBIN "gfx/sprites/lass.2bpp"
BlackHairBoy1Sprite:  INCBIN "gfx/sprites/black_hair_boy_1.2bpp"
LittleGirlSprite:     INCBIN "gfx/sprites/little_girl.2bpp"
BirdSprite:           INCBIN "gfx/sprites/bird.2bpp"
FatBaldGuySprite:     INCBIN "gfx/sprites/fat_bald_guy.2bpp"
GamblerSprite:        INCBIN "gfx/sprites/gambler.2bpp"
BlackHairBoy2Sprite:  INCBIN "gfx/sprites/black_hair_boy_2.2bpp"
GirlSprite:           INCBIN "gfx/sprites/girl.2bpp"
HikerSprite:          INCBIN "gfx/sprites/hiker.2bpp"
FoulardWomanSprite:   INCBIN "gfx/sprites/foulard_woman.2bpp"
GentlemanSprite:      INCBIN "gfx/sprites/gentleman.2bpp"
DaisySprite:          INCBIN "gfx/sprites/daisy.2bpp"
BikerSprite:          INCBIN "gfx/sprites/biker.2bpp"
SailorSprite:         INCBIN "gfx/sprites/sailor.2bpp"
CookSprite:           INCBIN "gfx/sprites/cook.2bpp"
BikeShopGuySprite:    INCBIN "gfx/sprites/bike_shop_guy.2bpp"
MrFujiSprite:         INCBIN "gfx/sprites/mr_fuji.2bpp"
GiovanniSprite:       INCBIN "gfx/sprites/giovanni.2bpp"
RocketSprite:         INCBIN "gfx/sprites/rocket.2bpp"
MediumSprite:         INCBIN "gfx/sprites/medium.2bpp"
WaiterSprite:         INCBIN "gfx/sprites/waiter.2bpp"
ErikaSprite:          INCBIN "gfx/sprites/erika.2bpp"
MomGeishaSprite:      INCBIN "gfx/sprites/mom_geisha.2bpp"
BrunetteGirlSprite:   INCBIN "gfx/sprites/brunette_girl.2bpp"
LanceSprite:          INCBIN "gfx/sprites/lance.2bpp"
MomSprite:            INCBIN "gfx/sprites/mom.2bpp"
BaldingGuySprite:     INCBIN "gfx/sprites/balding_guy.2bpp"
YoungBoySprite:       INCBIN "gfx/sprites/young_boy.2bpp"
GameboyKidSprite:     INCBIN "gfx/sprites/gameboy_kid.2bpp"
ClefairySprite:       INCBIN "gfx/sprites/clefairy.2bpp"
AgathaSprite:         INCBIN "gfx/sprites/agatha.2bpp"
BrunoSprite:          INCBIN "gfx/sprites/bruno.2bpp"
LoreleiSprite:        INCBIN "gfx/sprites/lorelei.2bpp"
SeelSprite:           INCBIN "gfx/sprites/seel.2bpp"


SECTION "Battle (bank 5)", ROMX, BANK[$5]

INCLUDE "engine/load_pokedex_tiles.asm"
INCLUDE "engine/overworld/map_sprites.asm"
INCLUDE "engine/overworld/emotion_bubbles.asm"
INCLUDE "engine/evolve_trade.asm"
INCLUDE "engine/battle/moveEffects/substitute_effect.asm"
INCLUDE "engine/menu/pc.asm"


SECTION "bank6",ROMX,BANK[$6]

INCLUDE "data/mapHeaders/celadoncity.asm"
INCLUDE "data/mapObjects/celadoncity.asm"
CeladonCityBlocks: INCBIN "maps/celadoncity.blk"

INCLUDE "data/mapHeaders/pallettown.asm"
INCLUDE "data/mapObjects/pallettown.asm"
PalletTownBlocks: INCBIN "maps/pallettown.blk"

INCLUDE "data/mapHeaders/viridiancity.asm"
INCLUDE "data/mapObjects/viridiancity.asm"
ViridianCityBlocks: INCBIN "maps/viridiancity.blk"

INCLUDE "data/mapHeaders/pewtercity.asm"
INCLUDE "data/mapObjects/pewtercity.asm"
PewterCityBlocks: INCBIN "maps/pewtercity.blk"

INCLUDE "data/mapHeaders/ceruleancity.asm"
INCLUDE "data/mapObjects/ceruleancity.asm"
CeruleanCityBlocks: INCBIN "maps/ceruleancity.blk"

INCLUDE "data/mapHeaders/vermilioncity.asm"
INCLUDE "data/mapObjects/vermilioncity.asm"
VermilionCityBlocks: INCBIN "maps/vermilioncity.blk"

INCLUDE "data/mapHeaders/fuchsiacity.asm"
INCLUDE "data/mapObjects/fuchsiacity.asm"
FuchsiaCityBlocks: INCBIN "maps/fuchsiacity.blk"

INCLUDE "engine/play_time.asm"

INCLUDE "scripts/pallettown.asm"
INCLUDE "scripts/viridiancity.asm"
INCLUDE "scripts/pewtercity.asm"
INCLUDE "scripts/ceruleancity.asm"
INCLUDE "scripts/vermilioncity.asm"
INCLUDE "scripts/celadoncity.asm"
INCLUDE "scripts/fuchsiacity.asm"

INCLUDE "data/mapHeaders/blueshouse.asm"
INCLUDE "scripts/blueshouse.asm"
INCLUDE "data/mapObjects/blueshouse.asm"
BluesHouseBlocks: INCBIN "maps/blueshouse.blk"

INCLUDE "data/mapHeaders/vermilionhouse3.asm"
INCLUDE "scripts/vermilionhouse3.asm"
INCLUDE "data/mapObjects/vermilionhouse3.asm"
VermilionHouse3Blocks: INCBIN "maps/vermilionhouse3.blk"

INCLUDE "data/mapHeaders/indigoplateaulobby.asm"
INCLUDE "scripts/indigoplateaulobby.asm"
INCLUDE "data/mapObjects/indigoplateaulobby.asm"
IndigoPlateauLobbyBlocks: INCBIN "maps/indigoplateaulobby.blk"

INCLUDE "data/mapHeaders/silphco4.asm"
INCLUDE "scripts/silphco4.asm"
INCLUDE "data/mapObjects/silphco4.asm"
SilphCo4Blocks: INCBIN "maps/silphco4.blk"

INCLUDE "data/mapHeaders/silphco5.asm"
INCLUDE "scripts/silphco5.asm"
INCLUDE "data/mapObjects/silphco5.asm"
SilphCo5Blocks: INCBIN "maps/silphco5.blk"

INCLUDE "data/mapHeaders/silphco6.asm"
INCLUDE "scripts/silphco6.asm"
INCLUDE "data/mapObjects/silphco6.asm"
SilphCo6Blocks: INCBIN "maps/silphco6.blk"

INCLUDE "engine/overworld/npc_movement.asm"
INCLUDE "engine/overworld/doors.asm"
INCLUDE "engine/overworld/ledges.asm"


SECTION "bank7",ROMX,BANK[$7]

INCLUDE "data/mapHeaders/cinnabarisland.asm"
INCLUDE "data/mapObjects/cinnabarisland.asm"
CinnabarIslandBlocks: INCBIN "maps/cinnabarisland.blk"

INCLUDE "data/mapHeaders/route1.asm"
INCLUDE "data/mapObjects/route1.asm"
Route1Blocks: INCBIN "maps/route1.blk"

UndergroundPathEntranceRoute8Blocks: INCBIN "maps/undergroundpathentranceroute8.blk"

OaksLabBlocks: INCBIN "maps/oakslab.blk"

Route16HouseBlocks:
Route2HouseBlocks:
SaffronHouse1Blocks:
SaffronHouse2Blocks:
VermilionHouse1Blocks:
NameRaterBlocks:
LavenderHouse1Blocks:
LavenderHouse2Blocks:
CeruleanHouse1Blocks:
PewterHouse1Blocks:
PewterHouse2Blocks:
ViridianHouseBlocks: INCBIN "maps/viridianhouse.blk"

CeladonMansion5Blocks:
SchoolBlocks: INCBIN "maps/school.blk"

CeruleanHouseTrashedBlocks: INCBIN "maps/ceruleanhousetrashed.blk"

DiglettsCaveEntranceRoute11Blocks:
DiglettsCaveRoute2Blocks: INCBIN "maps/diglettscaveroute2.blk"

INCLUDE "text/monster_names.asm"

INCLUDE "engine/clear_save.asm"

INCLUDE "engine/predefs7.asm"

INCLUDE "scripts/cinnabarisland.asm"

INCLUDE "scripts/route1.asm"

INCLUDE "data/mapHeaders/oakslab.asm"
INCLUDE "scripts/oakslab.asm"
INCLUDE "data/mapObjects/oakslab.asm"

INCLUDE "data/mapHeaders/viridianmart.asm"
INCLUDE "scripts/viridianmart.asm"
INCLUDE "data/mapObjects/viridianmart.asm"
ViridianMartBlocks: INCBIN "maps/viridianmart.blk"

INCLUDE "data/mapHeaders/school.asm"
INCLUDE "scripts/school.asm"
INCLUDE "data/mapObjects/school.asm"

INCLUDE "data/mapHeaders/viridianhouse.asm"
INCLUDE "scripts/viridianhouse.asm"
INCLUDE "data/mapObjects/viridianhouse.asm"

INCLUDE "data/mapHeaders/pewterhouse1.asm"
INCLUDE "scripts/pewterhouse1.asm"
INCLUDE "data/mapObjects/pewterhouse1.asm"

INCLUDE "data/mapHeaders/pewterhouse2.asm"
INCLUDE "scripts/pewterhouse2.asm"
INCLUDE "data/mapObjects/pewterhouse2.asm"

INCLUDE "data/mapHeaders/ceruleanhousetrashed.asm"
INCLUDE "scripts/ceruleanhousetrashed.asm"
INCLUDE "data/mapObjects/ceruleanhousetrashed.asm"

INCLUDE "data/mapHeaders/ceruleanhouse1.asm"
INCLUDE "scripts/ceruleanhouse1.asm"
INCLUDE "data/mapObjects/ceruleanhouse1.asm"

INCLUDE "data/mapHeaders/bikeshop.asm"
INCLUDE "scripts/bikeshop.asm"
INCLUDE "data/mapObjects/bikeshop.asm"
BikeShopBlocks: INCBIN "maps/bikeshop.blk"

INCLUDE "data/mapHeaders/lavenderhouse1.asm"
INCLUDE "scripts/lavenderhouse1.asm"
INCLUDE "data/mapObjects/lavenderhouse1.asm"

INCLUDE "data/mapHeaders/lavenderhouse2.asm"
INCLUDE "scripts/lavenderhouse2.asm"
INCLUDE "data/mapObjects/lavenderhouse2.asm"

INCLUDE "data/mapHeaders/namerater.asm"
INCLUDE "scripts/namerater.asm"
INCLUDE "data/mapObjects/namerater.asm"

INCLUDE "data/mapHeaders/vermilionhouse1.asm"
INCLUDE "scripts/vermilionhouse1.asm"
INCLUDE "data/mapObjects/vermilionhouse1.asm"

INCLUDE "data/mapHeaders/vermiliondock.asm"
INCLUDE "scripts/vermiliondock.asm"
INCLUDE "data/mapObjects/vermiliondock.asm"
VermilionDockBlocks: INCBIN "maps/vermiliondock.blk"

INCLUDE "data/mapHeaders/celadonmansion5.asm"
INCLUDE "scripts/celadonmansion5.asm"
INCLUDE "data/mapObjects/celadonmansion5.asm"

INCLUDE "data/mapHeaders/fuchsiamart.asm"
INCLUDE "scripts/fuchsiamart.asm"
INCLUDE "data/mapObjects/fuchsiamart.asm"
FuchsiaMartBlocks: INCBIN "maps/fuchsiamart.blk"

INCLUDE "data/mapHeaders/saffronhouse1.asm"
INCLUDE "scripts/saffronhouse1.asm"
INCLUDE "data/mapObjects/saffronhouse1.asm"

INCLUDE "data/mapHeaders/saffronhouse2.asm"
INCLUDE "scripts/saffronhouse2.asm"
INCLUDE "data/mapObjects/saffronhouse2.asm"

INCLUDE "data/mapHeaders/diglettscaveroute2.asm"
INCLUDE "scripts/diglettscaveroute2.asm"
INCLUDE "data/mapObjects/diglettscaveroute2.asm"

INCLUDE "data/mapHeaders/route2house.asm"
INCLUDE "scripts/route2house.asm"
INCLUDE "data/mapObjects/route2house.asm"

INCLUDE "data/mapHeaders/route5gate.asm"
INCLUDE "scripts/route5gate.asm"
INCLUDE "data/mapObjects/route5gate.asm"
Route5GateBlocks: INCBIN "maps/route5gate.blk"

INCLUDE "data/mapHeaders/route6gate.asm"
INCLUDE "scripts/route6gate.asm"
INCLUDE "data/mapObjects/route6gate.asm"
Route6GateBlocks: INCBIN "maps/route6gate.blk"

INCLUDE "data/mapHeaders/route7gate.asm"
INCLUDE "scripts/route7gate.asm"
INCLUDE "data/mapObjects/route7gate.asm"
Route7GateBlocks: INCBIN "maps/route7gate.blk"

INCLUDE "data/mapHeaders/route8gate.asm"
INCLUDE "scripts/route8gate.asm"
INCLUDE "data/mapObjects/route8gate.asm"
Route8GateBlocks: INCBIN "maps/route8gate.blk"

INCLUDE "data/mapHeaders/undergroundpathentranceroute8.asm"
INCLUDE "scripts/undergroundpathentranceroute8.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute8.asm"

INCLUDE "data/mapHeaders/powerplant.asm"
INCLUDE "scripts/powerplant.asm"
INCLUDE "data/mapObjects/powerplant.asm"
PowerPlantBlocks: INCBIN "maps/powerplant.blk"

INCLUDE "data/mapHeaders/diglettscaveroute11.asm"
INCLUDE "scripts/diglettscaveroute11.asm"
INCLUDE "data/mapObjects/diglettscaveroute11.asm"

INCLUDE "data/mapHeaders/route16house.asm"
INCLUDE "scripts/route16house.asm"
INCLUDE "data/mapObjects/route16house.asm"

INCLUDE "data/mapHeaders/route22gate.asm"
INCLUDE "scripts/route22gate.asm"
INCLUDE "data/mapObjects/route22gate.asm"
Route22GateBlocks: INCBIN "maps/route22gate.blk"

INCLUDE "data/mapHeaders/billshouse.asm"
INCLUDE "scripts/billshouse.asm"
INCLUDE "data/mapObjects/billshouse.asm"
BillsHouseBlocks: INCBIN "maps/billshouse.blk"

INCLUDE "engine/menu/oaks_pc.asm"

INCLUDE "engine/hidden_object_functions7.asm"


SECTION "Pics 1", ROMX, BANK[PICS_1]

MoltresPicFront:    INCBIN "gfx/gs/mon/moltres.pic"
MoltresPicBack:     INCBIN "gfx/gs/monback/moltresb.pic"

TentacoolPicFront:  INCBIN "gfx/gs/mon/tentacool.pic"
TentacoolPicBack:   INCBIN "gfx/gs/monback/tentacoolb.pic"
ScytherPicFront:    INCBIN "gfx/gs/mon/scyther.pic"
ScytherPicBack:     INCBIN "gfx/gs/monback/scytherb.pic"
StaryuPicFront:     INCBIN "gfx/gs/mon/staryu.pic"
StaryuPicBack:      INCBIN "gfx/gs/monback/staryub.pic"
BlastoisePicFront:  INCBIN "gfx/gs/mon/blastoise.pic"
BlastoisePicBack:   INCBIN "gfx/gs/monback/blastoiseb.pic"
PinsirPicFront:     INCBIN "gfx/gs/mon/pinsir.pic"
PinsirPicBack:      INCBIN "gfx/gs/monback/pinsirb.pic"
TangelaPicFront:    INCBIN "gfx/gs/mon/tangela.pic"
TangelaPicBack:     INCBIN "gfx/gs/monback/tangelab.pic"

JolteonPicFront:    INCBIN "gfx/gs/mon/jolteon.pic"
JolteonPicBack:     INCBIN "gfx/gs/monback/jolteonb.pic"
VaporeonPicFront:   INCBIN "gfx/gs/mon/vaporeon.pic"
VaporeonPicBack:    INCBIN "gfx/gs/monback/vaporeonb.pic"
MachopPicFront:     INCBIN "gfx/gs/mon/machop.pic"
MachopPicBack:      INCBIN "gfx/gs/monback/machopb.pic"
ZubatPicFront:      INCBIN "gfx/gs/mon/zubat.pic"
ZubatPicBack:       INCBIN "gfx/gs/monback/zubatb.pic"
EkansPicFront:      INCBIN "gfx/gs/mon/ekans.pic"
EkansPicBack:       INCBIN "gfx/gs/monback/ekansb.pic"
ParasPicFront:      INCBIN "gfx/gs/mon/paras.pic"
ParasPicBack:       INCBIN "gfx/gs/monback/parasb.pic"
PoliwhirlPicFront:  INCBIN "gfx/gs/mon/poliwhirl.pic"
PoliwhirlPicBack:   INCBIN "gfx/gs/monback/poliwhirlb.pic"
PoliwrathPicFront:  INCBIN "gfx/gs/mon/poliwrath.pic"
PoliwrathPicBack:   INCBIN "gfx/gs/monback/poliwrathb.pic"
WeedlePicFront:     INCBIN "gfx/gs/mon/weedle.pic"
WeedlePicBack:      INCBIN "gfx/gs/monback/weedleb.pic"
KakunaPicFront:     INCBIN "gfx/gs/mon/kakuna.pic"
KakunaPicBack:      INCBIN "gfx/gs/monback/kakunab.pic"
BeedrillPicFront:   INCBIN "gfx/gs/mon/beedrill.pic"
BeedrillPicBack:    INCBIN "gfx/gs/monback/beedrillb.pic"



SECTION "Battle (bank 9)", ROMX[$7d6b], BANK[$9]
INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/save_trainer_name.asm"
INCLUDE "engine/battle/moveEffects/focus_energy_effect.asm"


SECTION "Pics 2", ROMX, BANK[PICS_2]


HaunterPicFront:    INCBIN "gfx/gs/mon/haunter.pic"
HaunterPicBack:     INCBIN "gfx/gs/monback/haunterb.pic"
AbraPicFront:       INCBIN "gfx/gs/mon/abra.pic"
AbraPicBack:        INCBIN "gfx/gs/monback/abrab.pic"
AlakazamPicFront:   INCBIN "gfx/gs/mon/alakazam.pic"
AlakazamPicBack:    INCBIN "gfx/gs/monback/alakazamb.pic"
PidgeottoPicFront:  INCBIN "gfx/gs/mon/pidgeotto.pic"
PidgeottoPicBack:   INCBIN "gfx/gs/monback/pidgeottob.pic"
PidgeotPicFront:    INCBIN "gfx/gs/mon/pidgeot.pic"
PidgeotPicBack:     INCBIN "gfx/gs/monback/pidgeotb.pic"
StarmiePicFront:    INCBIN "gfx/gs/mon/starmie.pic"
StarmiePicBack:     INCBIN "gfx/gs/monback/starmieb.pic"
RedPicBack:         INCBIN "gfx/gs/trainer//redb.pic"
OldManPic:          INCBIN "gfx/gs/trainer//oldman.pic"

GastlyPicFront:     INCBIN "gfx/gs/mon/gastly.pic"
GastlyPicBack:      INCBIN "gfx/gs/monback/gastlyb.pic"
VileplumePicFront:  INCBIN "gfx/gs/mon/vileplume.pic"
VileplumePicBack:   INCBIN "gfx/gs/monback/vileplumeb.pic"



SECTION "Battle (bank A)", ROMX[$7ea9], BANK[$A]
INCLUDE "engine/battle/moveEffects/leech_seed_effect.asm"


SECTION "Pics 3", ROMX, BANK[PICS_3]

; Removed 'mon sprites from here

	ORG $0b, $7b7b

INCLUDE "engine/battle/display_effectiveness.asm"

TrainerInfoTextBoxTileGraphics:  INCBIN "gfx/trainer_info.2bpp"
TrainerInfoTextBoxTileGraphicsEnd:
BlankLeaderNames:                INCBIN "gfx/blank_leader_names.2bpp"
CircleTile:                      INCBIN "gfx/circle_tile.2bpp"
BadgeNumbersTileGraphics:        INCBIN "gfx/badge_numbers.2bpp"

INCLUDE "engine/items/tmhm.asm"
INCLUDE "engine/battle/scale_sprites.asm"
INCLUDE "engine/battle/moveEffects/pay_day_effect.asm"
INCLUDE "engine/game_corner_slots2.asm"


SECTION "Pics 4", ROMX, BANK[PICS_4]

; Removed 'mon sprites from here


SECTION "Battle (bank C)", ROMX[$7f2b], BANK[$C]
INCLUDE "engine/battle/moveEffects/mist_effect.asm"
INCLUDE "engine/battle/moveEffects/one_hit_ko_effect.asm"


SECTION "Pics 5", ROMX, BANK[PICS_5]

; Removed 'mon sprites from here

	ORG $0d, $7244

INCLUDE "engine/titlescreen2.asm"
INCLUDE "engine/battle/link_battle_versus_text.asm"
INCLUDE "engine/slot_machine.asm"
INCLUDE "engine/overworld/pewter_guys.asm"
INCLUDE "engine/multiply_divide.asm"
INCLUDE "engine/game_corner_slots.asm"


SECTION "bankE",ROMX,BANK[$E]

INCLUDE "data/moves.asm"
BaseStats: INCLUDE "data/base_stats.asm"
INCLUDE "data/cries.asm"
INCLUDE "engine/battle/scroll_draw_trainer_pic.asm"
INCLUDE "engine/battle/trainer_ai.asm"
INCLUDE "engine/battle/draw_hud_pokeball_gfx.asm"

INCLUDE "engine/evos_moves.asm"
INCLUDE "engine/battle/moveEffects/heal_effect.asm"
INCLUDE "engine/battle/moveEffects/transform_effect.asm"
INCLUDE "engine/battle/moveEffects/reflect_light_screen_effect.asm"

INCLUDE "color/draw_hud_pokeball_gfx.asm"


SECTION "bankF",ROMX,BANK[$F]

INCLUDE "engine/battle/core.asm"


SECTION "bank10",ROMX,BANK[$10]

INCLUDE "engine/menu/pokedex.asm"
INCLUDE "engine/trade.asm"
INCLUDE "engine/intro.asm"
INCLUDE "engine/trade2.asm"

; Moved from bank E
TradingAnimationGraphics:
	INCBIN "gfx/game_boy.norepeat.2bpp"
	INCBIN "gfx/link_cable.2bpp"
TradingAnimationGraphicsEnd:

TradingAnimationGraphics2:
; Pokeball traveling through the link cable.
	INCBIN "gfx/trade2.2bpp"
TradingAnimationGraphics2End:

; Hooks for color hack
INCLUDE "color/trade.asm"

SECTION "bank11",ROMX,BANK[$11]

INCLUDE "data/mapHeaders/lavendertown.asm"
INCLUDE "data/mapObjects/lavendertown.asm"
LavenderTownBlocks: INCBIN "maps/lavendertown.blk"

ViridianPokecenterBlocks: INCBIN "maps/viridianpokecenter.blk"

SafariZoneRestHouse1Blocks:
SafariZoneRestHouse2Blocks:
SafariZoneRestHouse3Blocks:
SafariZoneRestHouse4Blocks: INCBIN "maps/safarizoneresthouse1.blk"

INCLUDE "scripts/lavendertown.asm"

INCLUDE "engine/pokedex_rating.asm"

INCLUDE "data/mapHeaders/viridianpokecenter.asm"
INCLUDE "scripts/viridianpokecenter.asm"
INCLUDE "data/mapObjects/viridianpokecenter.asm"

INCLUDE "data/mapHeaders/mansion1.asm"
INCLUDE "scripts/mansion1.asm"
INCLUDE "data/mapObjects/mansion1.asm"
Mansion1Blocks: INCBIN "maps/mansion1.blk"

INCLUDE "data/mapHeaders/rocktunnel1.asm"
INCLUDE "scripts/rocktunnel1.asm"
INCLUDE "data/mapObjects/rocktunnel1.asm"
RockTunnel1Blocks: INCBIN "maps/rocktunnel1.blk"

INCLUDE "data/mapHeaders/seafoamislands1.asm"
INCLUDE "scripts/seafoamislands1.asm"
INCLUDE "data/mapObjects/seafoamislands1.asm"
SeafoamIslands1Blocks: INCBIN "maps/seafoamislands1.blk"

INCLUDE "data/mapHeaders/ssanne3.asm"
INCLUDE "scripts/ssanne3.asm"
INCLUDE "data/mapObjects/ssanne3.asm"
SSAnne3Blocks: INCBIN "maps/ssanne3.blk"

INCLUDE "data/mapHeaders/victoryroad3.asm"
INCLUDE "scripts/victoryroad3.asm"
INCLUDE "data/mapObjects/victoryroad3.asm"
VictoryRoad3Blocks: INCBIN "maps/victoryroad3.blk"

INCLUDE "data/mapHeaders/rockethideout1.asm"
INCLUDE "scripts/rockethideout1.asm"
INCLUDE "data/mapObjects/rockethideout1.asm"
RocketHideout1Blocks: INCBIN "maps/rockethideout1.blk"

INCLUDE "data/mapHeaders/rockethideout2.asm"
INCLUDE "scripts/rockethideout2.asm"
INCLUDE "data/mapObjects/rockethideout2.asm"
RocketHideout2Blocks: INCBIN "maps/rockethideout2.blk"

INCLUDE "data/mapHeaders/rockethideout3.asm"
INCLUDE "scripts/rockethideout3.asm"
INCLUDE "data/mapObjects/rockethideout3.asm"
RocketHideout3Blocks: INCBIN "maps/rockethideout3.blk"

INCLUDE "data/mapHeaders/rockethideout4.asm"
INCLUDE "scripts/rockethideout4.asm"
INCLUDE "data/mapObjects/rockethideout4.asm"
RocketHideout4Blocks: INCBIN "maps/rockethideout4.blk"

INCLUDE "data/mapHeaders/rockethideoutelevator.asm"
INCLUDE "scripts/rockethideoutelevator.asm"
INCLUDE "data/mapObjects/rockethideoutelevator.asm"
RocketHideoutElevatorBlocks: INCBIN "maps/rockethideoutelevator.blk"

INCLUDE "data/mapHeaders/silphcoelevator.asm"
INCLUDE "scripts/silphcoelevator.asm"
INCLUDE "data/mapObjects/silphcoelevator.asm"
SilphCoElevatorBlocks: INCBIN "maps/silphcoelevator.blk"

INCLUDE "data/mapHeaders/safarizoneeast.asm"
INCLUDE "scripts/safarizoneeast.asm"
INCLUDE "data/mapObjects/safarizoneeast.asm"
SafariZoneEastBlocks: INCBIN "maps/safarizoneeast.blk"

INCLUDE "data/mapHeaders/safarizonenorth.asm"
INCLUDE "scripts/safarizonenorth.asm"
INCLUDE "data/mapObjects/safarizonenorth.asm"
SafariZoneNorthBlocks: INCBIN "maps/safarizonenorth.blk"

INCLUDE "data/mapHeaders/safarizonecenter.asm"
INCLUDE "scripts/safarizonecenter.asm"
INCLUDE "data/mapObjects/safarizonecenter.asm"
SafariZoneCenterBlocks: INCBIN "maps/safarizonecenter.blk"

INCLUDE "data/mapHeaders/safarizoneresthouse1.asm"
INCLUDE "scripts/safarizoneresthouse1.asm"
INCLUDE "data/mapObjects/safarizoneresthouse1.asm"

INCLUDE "data/mapHeaders/safarizoneresthouse2.asm"
INCLUDE "scripts/safarizoneresthouse2.asm"
INCLUDE "data/mapObjects/safarizoneresthouse2.asm"

INCLUDE "data/mapHeaders/safarizoneresthouse3.asm"
INCLUDE "scripts/safarizoneresthouse3.asm"
INCLUDE "data/mapObjects/safarizoneresthouse3.asm"

INCLUDE "data/mapHeaders/safarizoneresthouse4.asm"
INCLUDE "scripts/safarizoneresthouse4.asm"
INCLUDE "data/mapObjects/safarizoneresthouse4.asm"

INCLUDE "data/mapHeaders/unknowndungeon2.asm"
INCLUDE "scripts/unknowndungeon2.asm"
INCLUDE "data/mapObjects/unknowndungeon2.asm"
UnknownDungeon2Blocks: INCBIN "maps/unknowndungeon2.blk"

INCLUDE "data/mapHeaders/unknowndungeon3.asm"
INCLUDE "scripts/unknowndungeon3.asm"
INCLUDE "data/mapObjects/unknowndungeon3.asm"
UnknownDungeon3Blocks: INCBIN "maps/unknowndungeon3.blk"
END

INCLUDE "data/mapHeaders/rocktunnel2.asm"
INCLUDE "scripts/rocktunnel2.asm"
INCLUDE "data/mapObjects/rocktunnel2.asm"
RockTunnel2Blocks: INCBIN "maps/rocktunnel2.blk"

INCLUDE "data/mapHeaders/seafoamislands2.asm"
INCLUDE "scripts/seafoamislands2.asm"
INCLUDE "data/mapObjects/seafoamislands2.asm"
SeafoamIslands2Blocks: INCBIN "maps/seafoamislands2.blk"

INCLUDE "data/mapHeaders/seafoamislands3.asm"
INCLUDE "scripts/seafoamislands3.asm"
INCLUDE "data/mapObjects/seafoamislands3.asm"
SeafoamIslands3Blocks: INCBIN "maps/seafoamislands3.blk"

INCLUDE "data/mapHeaders/seafoamislands4.asm"
INCLUDE "scripts/seafoamislands4.asm"
INCLUDE "data/mapObjects/seafoamislands4.asm"
SeafoamIslands4Blocks: INCBIN "maps/seafoamislands4.blk"

INCLUDE "data/mapHeaders/seafoamislands5.asm"
INCLUDE "scripts/seafoamislands5.asm"
INCLUDE "data/mapObjects/seafoamislands5.asm"
SeafoamIslands5Blocks: INCBIN "maps/seafoamislands5.blk"

INCLUDE "engine/overworld/hidden_objects.asm"


SECTION "bank12",ROMX,BANK[$12]

INCLUDE "data/mapHeaders/route7.asm"
INCLUDE "data/mapObjects/route7.asm"
Route7Blocks: INCBIN "maps/route7.blk"

CeladonPokecenterBlocks:
RockTunnelPokecenterBlocks:
MtMoonPokecenterBlocks: INCBIN "maps/mtmoonpokecenter.blk"

Route18GateBlocks:
Route15GateBlocks:
Route11GateBlocks: INCBIN "maps/route11gate.blk"

Route18GateUpstairsBlocks:
Route16GateUpstairsBlocks:
Route12GateUpstairsBlocks:
Route15GateUpstairsBlocks:
Route11GateUpstairsBlocks: INCBIN "maps/route11gateupstairs.blk"

INCLUDE "engine/predefs12.asm"

INCLUDE "scripts/route7.asm"

INCLUDE "data/mapHeaders/redshouse1f.asm"
INCLUDE "scripts/redshouse1f.asm"
INCLUDE "data/mapObjects/redshouse1f.asm"
RedsHouse1FBlocks: INCBIN "maps/redshouse1f.blk"

INCLUDE "data/mapHeaders/celadonmart3.asm"
INCLUDE "scripts/celadonmart3.asm"
INCLUDE "data/mapObjects/celadonmart3.asm"
CeladonMart3Blocks: INCBIN "maps/celadonmart3.blk"

INCLUDE "data/mapHeaders/celadonmart4.asm"
INCLUDE "scripts/celadonmart4.asm"
INCLUDE "data/mapObjects/celadonmart4.asm"
CeladonMart4Blocks: INCBIN "maps/celadonmart4.blk"

INCLUDE "data/mapHeaders/celadonmartroof.asm"
INCLUDE "scripts/celadonmartroof.asm"
INCLUDE "data/mapObjects/celadonmartroof.asm"
CeladonMartRoofBlocks: INCBIN "maps/celadonmartroof.blk"

INCLUDE "data/mapHeaders/celadonmartelevator.asm"
INCLUDE "scripts/celadonmartelevator.asm"
INCLUDE "data/mapObjects/celadonmartelevator.asm"
CeladonMartElevatorBlocks: INCBIN "maps/celadonmartelevator.blk"

INCLUDE "data/mapHeaders/celadonmansion1.asm"
INCLUDE "scripts/celadonmansion1.asm"
INCLUDE "data/mapObjects/celadonmansion1.asm"
CeladonMansion1Blocks: INCBIN "maps/celadonmansion1.blk"

INCLUDE "data/mapHeaders/celadonmansion2.asm"
INCLUDE "scripts/celadonmansion2.asm"
INCLUDE "data/mapObjects/celadonmansion2.asm"
CeladonMansion2Blocks: INCBIN "maps/celadonmansion2.blk"

INCLUDE "data/mapHeaders/celadonmansion3.asm"
INCLUDE "scripts/celadonmansion3.asm"
INCLUDE "data/mapObjects/celadonmansion3.asm"
CeladonMansion3Blocks: INCBIN "maps/celadonmansion3.blk"

INCLUDE "data/mapHeaders/celadonmansion4.asm"
INCLUDE "scripts/celadonmansion4.asm"
INCLUDE "data/mapObjects/celadonmansion4.asm"
CeladonMansion4Blocks: INCBIN "maps/celadonmansion4.blk"

INCLUDE "data/mapHeaders/celadonpokecenter.asm"
INCLUDE "scripts/celadonpokecenter.asm"
INCLUDE "data/mapObjects/celadonpokecenter.asm"

INCLUDE "data/mapHeaders/celadongym.asm"
INCLUDE "scripts/celadongym.asm"
INCLUDE "data/mapObjects/celadongym.asm"
CeladonGymBlocks: INCBIN "maps/celadongym.blk"

INCLUDE "data/mapHeaders/celadongamecorner.asm"
INCLUDE "scripts/celadongamecorner.asm"
INCLUDE "data/mapObjects/celadongamecorner.asm"
CeladonGameCornerBlocks: INCBIN "maps/celadongamecorner.blk"

INCLUDE "data/mapHeaders/celadonmart5.asm"
INCLUDE "scripts/celadonmart5.asm"
INCLUDE "data/mapObjects/celadonmart5.asm"
CeladonMart5Blocks: INCBIN "maps/celadonmart5.blk"

INCLUDE "data/mapHeaders/celadonprizeroom.asm"
INCLUDE "scripts/celadonprizeroom.asm"
INCLUDE "data/mapObjects/celadonprizeroom.asm"
CeladonPrizeRoomBlocks: INCBIN "maps/celadonprizeroom.blk"

INCLUDE "data/mapHeaders/celadondiner.asm"
INCLUDE "scripts/celadondiner.asm"
INCLUDE "data/mapObjects/celadondiner.asm"
CeladonDinerBlocks: INCBIN "maps/celadondiner.blk"

INCLUDE "data/mapHeaders/celadonhouse.asm"
INCLUDE "scripts/celadonhouse.asm"
INCLUDE "data/mapObjects/celadonhouse.asm"
CeladonHouseBlocks: INCBIN "maps/celadonhouse.blk"

INCLUDE "data/mapHeaders/celadonhotel.asm"
INCLUDE "scripts/celadonhotel.asm"
INCLUDE "data/mapObjects/celadonhotel.asm"
CeladonHotelBlocks: INCBIN "maps/celadonhotel.blk"

INCLUDE "data/mapHeaders/mtmoonpokecenter.asm"
INCLUDE "scripts/mtmoonpokecenter.asm"
INCLUDE "data/mapObjects/mtmoonpokecenter.asm"

INCLUDE "data/mapHeaders/rocktunnelpokecenter.asm"
INCLUDE "scripts/rocktunnelpokecenter.asm"
INCLUDE "data/mapObjects/rocktunnelpokecenter.asm"

INCLUDE "data/mapHeaders/route11gate.asm"
INCLUDE "scripts/route11gate.asm"
INCLUDE "data/mapObjects/route11gate.asm"

INCLUDE "data/mapHeaders/route11gateupstairs.asm"
INCLUDE "scripts/route11gateupstairs.asm"
INCLUDE "data/mapObjects/route11gateupstairs.asm"

INCLUDE "data/mapHeaders/route12gate.asm"
INCLUDE "scripts/route12gate.asm"
INCLUDE "data/mapObjects/route12gate.asm"
Route12GateBlocks: INCBIN "maps/route12gate.blk"

INCLUDE "data/mapHeaders/route12gateupstairs.asm"
INCLUDE "scripts/route12gateupstairs.asm"
INCLUDE "data/mapObjects/route12gateupstairs.asm"

INCLUDE "data/mapHeaders/route15gate.asm"
INCLUDE "scripts/route15gate.asm"
INCLUDE "data/mapObjects/route15gate.asm"

INCLUDE "data/mapHeaders/route15gateupstairs.asm"
INCLUDE "scripts/route15gateupstairs.asm"
INCLUDE "data/mapObjects/route15gateupstairs.asm"

INCLUDE "data/mapHeaders/route16gate.asm"
INCLUDE "scripts/route16gate.asm"
INCLUDE "data/mapObjects/route16gate.asm"
Route16GateBlocks: INCBIN "maps/route16gate.blk"

INCLUDE "data/mapHeaders/route16gateupstairs.asm"
INCLUDE "scripts/route16gateupstairs.asm"
INCLUDE "data/mapObjects/route16gateupstairs.asm"

INCLUDE "data/mapHeaders/route18gate.asm"
INCLUDE "scripts/route18gate.asm"
INCLUDE "data/mapObjects/route18gate.asm"

INCLUDE "data/mapHeaders/route18gateupstairs.asm"
INCLUDE "scripts/route18gateupstairs.asm"
INCLUDE "data/mapObjects/route18gateupstairs.asm"

INCLUDE "data/mapHeaders/mtmoon1.asm"
INCLUDE "scripts/mtmoon1.asm"
INCLUDE "data/mapObjects/mtmoon1.asm"
MtMoon1Blocks: INCBIN "maps/mtmoon1.blk"

INCLUDE "data/mapHeaders/mtmoon3.asm"
INCLUDE "scripts/mtmoon3.asm"
INCLUDE "data/mapObjects/mtmoon3.asm"
MtMoon3Blocks: INCBIN "maps/mtmoon3.blk"

INCLUDE "data/mapHeaders/safarizonewest.asm"
INCLUDE "scripts/safarizonewest.asm"
INCLUDE "data/mapObjects/safarizonewest.asm"
SafariZoneWestBlocks: INCBIN "maps/safarizonewest.blk"

INCLUDE "data/mapHeaders/safarizonesecrethouse.asm"
INCLUDE "scripts/safarizonesecrethouse.asm"
INCLUDE "data/mapObjects/safarizonesecrethouse.asm"
SafariZoneSecretHouseBlocks: INCBIN "maps/safarizonesecrethouse.blk"


SECTION "bank13",ROMX,BANK[$13]

TrainerPics::
YoungsterPic::     INCBIN "gfx/gs/trainer//youngster.pic"
BugCatcherPic::    INCBIN "gfx/gs/trainer//bugcatcher.pic"
LassPic::          INCBIN "gfx/gs/trainer//lass.pic"
SailorPic::        INCBIN "gfx/gs/trainer//sailor.pic"
JrTrainerMPic::    INCBIN "gfx/gs/trainer//jr.trainerm.pic"
JrTrainerFPic::    INCBIN "gfx/gs/trainer//jr.trainerf.pic"
PokemaniacPic::    INCBIN "gfx/gs/trainer//pokemaniac.pic"
SuperNerdPic::     INCBIN "gfx/gs/trainer//supernerd.pic"
HikerPic::         INCBIN "gfx/gs/trainer//hiker.pic"
BikerPic::         INCBIN "gfx/gs/trainer//biker.pic"
BurglarPic::       INCBIN "gfx/gs/trainer//burglar.pic"
EngineerPic::      INCBIN "gfx/gs/trainer//engineer.pic"
SwimmerFPic::      INCBIN "gfx/gs/trainer//swimmer_f.pic"
FisherPic::        INCBIN "gfx/gs/trainer//fisher.pic"
SwimmerPic::       INCBIN "gfx/gs/trainer//swimmer.pic"
CueBallPic::       INCBIN "gfx/gs/trainer//cueball.pic"
GamblerPic::       INCBIN "gfx/gs/trainer//gambler.pic"
BeautyPic::        INCBIN "gfx/gs/trainer//beauty.pic"
PsychicPic::       INCBIN "gfx/gs/trainer//psychic.pic"
RockerPic::        INCBIN "gfx/gs/trainer//rocker.pic"
JugglerPic::       INCBIN "gfx/gs/trainer//juggler.pic"
TamerPic::         INCBIN "gfx/gs/trainer//tamer.pic"
BirdKeeperPic::    INCBIN "gfx/gs/trainer//birdkeeper.pic"
BlackbeltPic::     INCBIN "gfx/gs/trainer//blackbelt.pic"
Rival1Pic::        INCBIN "gfx/gs/trainer//rival1.pic"
ProfOakPic::       INCBIN "gfx/gs/trainer//prof.oak.pic"
RocketFPic::       INCBIN "gfx/gs/trainer//rocket_f.pic"
ScientistPic::     INCBIN "gfx/gs/trainer//scientist.pic"
GiovanniPic::      INCBIN "gfx/gs/trainer//giovanni.pic"
RocketPic::        INCBIN "gfx/gs/trainer//rocket.pic"
CooltrainerMPic::  INCBIN "gfx/gs/trainer//cooltrainerm.pic"
CooltrainerFPic::  INCBIN "gfx/gs/trainer//cooltrainerf.pic"
BrunoPic::         INCBIN "gfx/gs/trainer//bruno.pic"
BrockPic::         INCBIN "gfx/gs/trainer//brock.pic"
MistyPic::         INCBIN "gfx/yellow/trainermisty.pic"
LtSurgePic::       INCBIN "gfx/gs/trainer//lt.surge.pic"
ErikaPic::         INCBIN "gfx/gs/trainer//erika.pic"
KogaPic::          INCBIN "gfx/gs/trainer//koga.pic"
BlainePic::        INCBIN "gfx/gs/trainer//blaine.pic"
SabrinaPic::       INCBIN "gfx/gs/trainer//sabrina.pic"
GentlemanPic::     INCBIN "gfx/gs/trainer//gentleman.pic"
Rival2Pic::        INCBIN "gfx/gs/trainer//rival2.pic"
Rival3Pic::        INCBIN "gfx/gs/trainer//rival3.pic"
LoreleiPic::       INCBIN "gfx/gs/trainer//lorelei.pic"
ChannelerPic::     INCBIN "gfx/gs/trainer//channeler.pic"
AgathaPic::        INCBIN "gfx/gs/trainer//agatha.pic"
LancePic::         INCBIN "gfx/gs/trainer//lance.pic"


	ORG $13, $7d04

INCLUDE "data/mapHeaders/tradecenter.asm"
INCLUDE "scripts/tradecenter.asm"
INCLUDE "data/mapObjects/tradecenter.asm"
TradeCenterBlocks: INCBIN "maps/tradecenter.blk"

INCLUDE "data/mapHeaders/colosseum.asm"
INCLUDE "scripts/colosseum.asm"
INCLUDE "data/mapObjects/colosseum.asm"
ColosseumBlocks: INCBIN "maps/colosseum.blk"

INCLUDE "engine/give_pokemon.asm"

INCLUDE "engine/predefs.asm"


SECTION "bank14",ROMX,BANK[$14]

INCLUDE "data/mapHeaders/route22.asm"
INCLUDE "data/mapObjects/route22.asm"
Route22Blocks: INCBIN "maps/route22.blk"

INCLUDE "data/mapHeaders/route20.asm"
INCLUDE "data/mapObjects/route20.asm"
Route20Blocks: INCBIN "maps/route20.blk"

INCLUDE "data/mapHeaders/route23.asm"
INCLUDE "data/mapObjects/route23.asm"
Route23Blocks: INCBIN "maps/route23.blk"

INCLUDE "data/mapHeaders/route24.asm"
INCLUDE "data/mapObjects/route24.asm"
Route24Blocks: INCBIN "maps/route24.blk"

INCLUDE "data/mapHeaders/route25.asm"
INCLUDE "data/mapObjects/route25.asm"
Route25Blocks: INCBIN "maps/route25.blk"

INCLUDE "data/mapHeaders/indigoplateau.asm"
INCLUDE "scripts/indigoplateau.asm"
INCLUDE "data/mapObjects/indigoplateau.asm"
IndigoPlateauBlocks: INCBIN "maps/indigoplateau.blk"

INCLUDE "data/mapHeaders/saffroncity.asm"
INCLUDE "data/mapObjects/saffroncity.asm"
SaffronCityBlocks: INCBIN "maps/saffroncity.blk"
INCLUDE "scripts/saffroncity.asm"

INCLUDE "scripts/route20.asm"
INCLUDE "scripts/route22.asm"
INCLUDE "scripts/route23.asm"
INCLUDE "scripts/route24.asm"
INCLUDE "scripts/route25.asm"

INCLUDE "data/mapHeaders/victoryroad2.asm"
INCLUDE "scripts/victoryroad2.asm"
INCLUDE "data/mapObjects/victoryroad2.asm"
VictoryRoad2Blocks: INCBIN "maps/victoryroad2.blk"

INCLUDE "data/mapHeaders/mtmoon2.asm"
INCLUDE "scripts/mtmoon2.asm"
INCLUDE "data/mapObjects/mtmoon2.asm"
MtMoon2Blocks: INCBIN "maps/mtmoon2.blk"

INCLUDE "data/mapHeaders/silphco7.asm"
INCLUDE "scripts/silphco7.asm"
INCLUDE "data/mapObjects/silphco7.asm"
SilphCo7Blocks: INCBIN "maps/silphco7.blk"

INCLUDE "data/mapHeaders/mansion2.asm"
INCLUDE "scripts/mansion2.asm"
INCLUDE "data/mapObjects/mansion2.asm"
Mansion2Blocks: INCBIN "maps/mansion2.blk"

INCLUDE "data/mapHeaders/mansion3.asm"
INCLUDE "scripts/mansion3.asm"
INCLUDE "data/mapObjects/mansion3.asm"
Mansion3Blocks: INCBIN "maps/mansion3.blk"

INCLUDE "data/mapHeaders/mansion4.asm"
INCLUDE "scripts/mansion4.asm"
INCLUDE "data/mapObjects/mansion4.asm"
Mansion4Blocks: INCBIN "maps/mansion4.blk"

INCLUDE "engine/battle/init_battle_variables.asm"
INCLUDE "engine/battle/moveEffects/paralyze_effect.asm"

INCLUDE "engine/overworld/card_key.asm"

INCLUDE "engine/menu/prize_menu.asm"

INCLUDE "engine/hidden_object_functions14.asm"


SECTION "bank15",ROMX,BANK[$15]

INCLUDE "data/mapHeaders/route2.asm"
INCLUDE "data/mapObjects/route2.asm"
Route2Blocks: INCBIN "maps/route2.blk"

INCLUDE "data/mapHeaders/route3.asm"
INCLUDE "data/mapObjects/route3.asm"
Route3Blocks: INCBIN "maps/route3.blk"

INCLUDE "data/mapHeaders/route4.asm"
INCLUDE "data/mapObjects/route4.asm"
Route4Blocks: INCBIN "maps/route4.blk"

INCLUDE "data/mapHeaders/route5.asm"
INCLUDE "data/mapObjects/route5.asm"
Route5Blocks: INCBIN "maps/route5.blk"

INCLUDE "data/mapHeaders/route9.asm"
INCLUDE "data/mapObjects/route9.asm"
Route9Blocks: INCBIN "maps/route9.blk"

INCLUDE "data/mapHeaders/route13.asm"
INCLUDE "data/mapObjects/route13.asm"
Route13Blocks: INCBIN "maps/route13.blk"

INCLUDE "data/mapHeaders/route14.asm"
INCLUDE "data/mapObjects/route14.asm"
Route14Blocks: INCBIN "maps/route14.blk"

INCLUDE "data/mapHeaders/route17.asm"
INCLUDE "data/mapObjects/route17.asm"
Route17Blocks: INCBIN "maps/route17.blk"

INCLUDE "data/mapHeaders/route19.asm"
INCLUDE "data/mapObjects/route19.asm"
Route19Blocks: INCBIN "maps/route19.blk"

INCLUDE "data/mapHeaders/route21.asm"
INCLUDE "data/mapObjects/route21.asm"
Route21Blocks: INCBIN "maps/route21.blk"

VermilionHouse2Blocks:
Route12HouseBlocks:
DayCareMBlocks: INCBIN "maps/daycarem.blk"

FuchsiaHouse3Blocks: INCBIN "maps/fuchsiahouse3.blk"

INCLUDE "engine/battle/experience.asm"

INCLUDE "scripts/route2.asm"
INCLUDE "scripts/route3.asm"
INCLUDE "scripts/route4.asm"
INCLUDE "scripts/route5.asm"
INCLUDE "scripts/route9.asm"
INCLUDE "scripts/route13.asm"
INCLUDE "scripts/route14.asm"
INCLUDE "scripts/route17.asm"
INCLUDE "scripts/route19.asm"
INCLUDE "scripts/route21.asm"

INCLUDE "data/mapHeaders/vermilionhouse2.asm"
INCLUDE "scripts/vermilionhouse2.asm"
INCLUDE "data/mapObjects/vermilionhouse2.asm"

INCLUDE "data/mapHeaders/celadonmart2.asm"
INCLUDE "scripts/celadonmart2.asm"
INCLUDE "data/mapObjects/celadonmart2.asm"
CeladonMart2Blocks: INCBIN "maps/celadonmart2.blk"

INCLUDE "data/mapHeaders/fuchsiahouse3.asm"
INCLUDE "scripts/fuchsiahouse3.asm"
INCLUDE "data/mapObjects/fuchsiahouse3.asm"

INCLUDE "data/mapHeaders/daycarem.asm"
INCLUDE "scripts/daycarem.asm"
INCLUDE "data/mapObjects/daycarem.asm"

INCLUDE "data/mapHeaders/route12house.asm"
INCLUDE "scripts/route12house.asm"
INCLUDE "data/mapObjects/route12house.asm"

INCLUDE "data/mapHeaders/silphco8.asm"
INCLUDE "scripts/silphco8.asm"
INCLUDE "data/mapObjects/silphco8.asm"
SilphCo8Blocks: INCBIN "maps/silphco8.blk"

INCLUDE "engine/menu/diploma.asm"

INCLUDE "engine/overworld/trainers.asm"

INCLUDE "color/exp_bar.asm"

INCLUDE "engine/menu/item_descriptions.asm"


SECTION "bank16",ROMX,BANK[$16]

INCLUDE "data/mapHeaders/route6.asm"
INCLUDE "data/mapObjects/route6.asm"
Route6Blocks: INCBIN "maps/route6.blk"

INCLUDE "data/mapHeaders/route8.asm"
INCLUDE "data/mapObjects/route8.asm"
Route8Blocks: INCBIN "maps/route8.blk"

INCLUDE "data/mapHeaders/route10.asm"
INCLUDE "data/mapObjects/route10.asm"
Route10Blocks: INCBIN "maps/route10.blk"

INCLUDE "data/mapHeaders/route11.asm"
INCLUDE "data/mapObjects/route11.asm"
Route11Blocks: INCBIN "maps/route11.blk"

INCLUDE "data/mapHeaders/route12.asm"
INCLUDE "data/mapObjects/route12.asm"
Route12Blocks: INCBIN "maps/route12.blk"

INCLUDE "data/mapHeaders/route15.asm"
INCLUDE "data/mapObjects/route15.asm"
Route15Blocks: INCBIN "maps/route15.blk"

INCLUDE "data/mapHeaders/route16.asm"
INCLUDE "data/mapObjects/route16.asm"
Route16Blocks: INCBIN "maps/route16.blk"

INCLUDE "data/mapHeaders/route18.asm"
INCLUDE "data/mapObjects/route18.asm"
Route18Blocks: INCBIN "maps/route18.blk"

	INCBIN "maps/unusedblocks58d7d.blk"

INCLUDE "engine/battle/common_text.asm"

INCLUDE "engine/experience.asm"

INCLUDE "engine/overworld/oaks_aide.asm"

INCLUDE "scripts/route6.asm"
INCLUDE "scripts/route8.asm"
INCLUDE "scripts/route10.asm"
INCLUDE "scripts/route11.asm"
INCLUDE "scripts/route12.asm"
INCLUDE "scripts/route15.asm"
INCLUDE "scripts/route16.asm"
INCLUDE "scripts/route18.asm"

INCLUDE "data/mapHeaders/fanclub.asm"
INCLUDE "scripts/fanclub.asm"
INCLUDE "data/mapObjects/fanclub.asm"
FanClubBlocks:
	INCBIN "maps/fanclub.blk"

INCLUDE "data/mapHeaders/silphco2.asm"
INCLUDE "scripts/silphco2.asm"
INCLUDE "data/mapObjects/silphco2.asm"
SilphCo2Blocks:
	INCBIN "maps/silphco2.blk"

INCLUDE "data/mapHeaders/silphco3.asm"
INCLUDE "scripts/silphco3.asm"
INCLUDE "data/mapObjects/silphco3.asm"
SilphCo3Blocks:
	INCBIN "maps/silphco3.blk"

INCLUDE "data/mapHeaders/silphco10.asm"
INCLUDE "scripts/silphco10.asm"
INCLUDE "data/mapObjects/silphco10.asm"
SilphCo10Blocks:
	INCBIN "maps/silphco10.blk"

INCLUDE "data/mapHeaders/lance.asm"
INCLUDE "scripts/lance.asm"
INCLUDE "data/mapObjects/lance.asm"
LanceBlocks:
	INCBIN "maps/lance.blk"

INCLUDE "data/mapHeaders/halloffameroom.asm"
INCLUDE "scripts/halloffameroom.asm"
INCLUDE "data/mapObjects/halloffameroom.asm"
HallofFameRoomBlocks:
	INCBIN "maps/halloffameroom.blk"

INCLUDE "engine/overworld/saffron_guards.asm"


SECTION "bank17",ROMX,BANK[$17]

SaffronMartBlocks:
LavenderMartBlocks:
CeruleanMartBlocks:
VermilionMartBlocks: INCBIN "maps/vermilionmart.blk"

CopycatsHouse2FBlocks:
RedsHouse2FBlocks: INCBIN "maps/redshouse2f.blk"

Museum1FBlocks: INCBIN "maps/museum1f.blk"

Museum2FBlocks: INCBIN "maps/museum2f.blk"

SaffronPokecenterBlocks:
VermilionPokecenterBlocks:
LavenderPokecenterBlocks:
PewterPokecenterBlocks: INCBIN "maps/pewterpokecenter.blk"

UndergroundPathEntranceRoute7Blocks:
UndergroundPathEntranceRoute7CopyBlocks:
UndergroundPathEntranceRoute6Blocks:
UndergroundPathEntranceRoute5Blocks: INCBIN "maps/undergroundpathentranceroute5.blk"

Route2GateBlocks:
ViridianForestEntranceBlocks:
ViridianForestExitBlocks: INCBIN "maps/viridianforestexit.blk"

INCLUDE "data/mapHeaders/redshouse2f.asm"
INCLUDE "scripts/redshouse2f.asm"
INCLUDE "data/mapObjects/redshouse2f.asm"

INCLUDE "engine/predefs17.asm"

INCLUDE "data/mapHeaders/museum1f.asm"
INCLUDE "scripts/museum1f.asm"
INCLUDE "data/mapObjects/museum1f.asm"

INCLUDE "data/mapHeaders/museum2f.asm"
INCLUDE "scripts/museum2f.asm"
INCLUDE "data/mapObjects/museum2f.asm"

INCLUDE "data/mapHeaders/pewtergym.asm"
INCLUDE "scripts/pewtergym.asm"
INCLUDE "data/mapObjects/pewtergym.asm"
PewterGymBlocks: INCBIN "maps/pewtergym.blk"

INCLUDE "data/mapHeaders/pewterpokecenter.asm"
INCLUDE "scripts/pewterpokecenter.asm"
INCLUDE "data/mapObjects/pewterpokecenter.asm"

INCLUDE "data/mapHeaders/ceruleanpokecenter.asm"
INCLUDE "scripts/ceruleanpokecenter.asm"
INCLUDE "data/mapObjects/ceruleanpokecenter.asm"
CeruleanPokecenterBlocks: INCBIN "maps/ceruleanpokecenter.blk"

INCLUDE "data/mapHeaders/ceruleangym.asm"
INCLUDE "scripts/ceruleangym.asm"
INCLUDE "data/mapObjects/ceruleangym.asm"
CeruleanGymBlocks: INCBIN "maps/ceruleangym.blk"

INCLUDE "data/mapHeaders/ceruleanmart.asm"
INCLUDE "scripts/ceruleanmart.asm"
INCLUDE "data/mapObjects/ceruleanmart.asm"

INCLUDE "data/mapHeaders/lavenderpokecenter.asm"
INCLUDE "scripts/lavenderpokecenter.asm"
INCLUDE "data/mapObjects/lavenderpokecenter.asm"

INCLUDE "data/mapHeaders/lavendermart.asm"
INCLUDE "scripts/lavendermart.asm"
INCLUDE "data/mapObjects/lavendermart.asm"

INCLUDE "data/mapHeaders/vermilionpokecenter.asm"
INCLUDE "scripts/vermilionpokecenter.asm"
INCLUDE "data/mapObjects/vermilionpokecenter.asm"

INCLUDE "data/mapHeaders/vermilionmart.asm"
INCLUDE "scripts/vermilionmart.asm"
INCLUDE "data/mapObjects/vermilionmart.asm"

INCLUDE "data/mapHeaders/vermiliongym.asm"
INCLUDE "scripts/vermiliongym.asm"
INCLUDE "data/mapObjects/vermiliongym.asm"
VermilionGymBlocks: INCBIN "maps/vermiliongym.blk"

INCLUDE "data/mapHeaders/copycatshouse2f.asm"
INCLUDE "scripts/copycatshouse2f.asm"
INCLUDE "data/mapObjects/copycatshouse2f.asm"

INCLUDE "data/mapHeaders/fightingdojo.asm"
INCLUDE "scripts/fightingdojo.asm"
INCLUDE "data/mapObjects/fightingdojo.asm"
FightingDojoBlocks: INCBIN "maps/fightingdojo.blk"

INCLUDE "data/mapHeaders/saffrongym.asm"
INCLUDE "scripts/saffrongym.asm"
INCLUDE "data/mapObjects/saffrongym.asm"
SaffronGymBlocks: INCBIN "maps/saffrongym.blk"

INCLUDE "data/mapHeaders/saffronmart.asm"
INCLUDE "scripts/saffronmart.asm"
INCLUDE "data/mapObjects/saffronmart.asm"

INCLUDE "data/mapHeaders/silphco1.asm"
INCLUDE "scripts/silphco1.asm"
INCLUDE "data/mapObjects/silphco1.asm"
SilphCo1Blocks: INCBIN "maps/silphco1.blk"

INCLUDE "data/mapHeaders/saffronpokecenter.asm"
INCLUDE "scripts/saffronpokecenter.asm"
INCLUDE "data/mapObjects/saffronpokecenter.asm"

INCLUDE "data/mapHeaders/viridianforestexit.asm"
INCLUDE "scripts/viridianforestexit.asm"
INCLUDE "data/mapObjects/viridianforestexit.asm"

INCLUDE "data/mapHeaders/route2gate.asm"
INCLUDE "scripts/route2gate.asm"
INCLUDE "data/mapObjects/route2gate.asm"

INCLUDE "data/mapHeaders/viridianforestentrance.asm"
INCLUDE "scripts/viridianforestentrance.asm"
INCLUDE "data/mapObjects/viridianforestentrance.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute5.asm"
INCLUDE "scripts/undergroundpathentranceroute5.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute5.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute6.asm"
INCLUDE "scripts/undergroundpathentranceroute6.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute6.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute7.asm"
INCLUDE "scripts/undergroundpathentranceroute7.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute7.asm"

INCLUDE "data/mapHeaders/undergroundpathentranceroute7copy.asm"
INCLUDE "scripts/undergroundpathentranceroute7copy.asm"
INCLUDE "data/mapObjects/undergroundpathentranceroute7copy.asm"

INCLUDE "data/mapHeaders/silphco9.asm"
INCLUDE "scripts/silphco9.asm"
INCLUDE "data/mapObjects/silphco9.asm"
SilphCo9Blocks: INCBIN "maps/silphco9.blk"

INCLUDE "data/mapHeaders/victoryroad1.asm"
INCLUDE "scripts/victoryroad1.asm"
INCLUDE "data/mapObjects/victoryroad1.asm"
VictoryRoad1Blocks: INCBIN "maps/victoryroad1.blk"

INCLUDE "engine/predefs17_2.asm"

INCLUDE "engine/hidden_object_functions17.asm"


SECTION "bank18",ROMX,BANK[$18]

ViridianForestBlocks:    INCBIN "maps/viridianforest.blk"
UndergroundPathNSBlocks: INCBIN "maps/undergroundpathns.blk"
UndergroundPathWEBlocks: INCBIN "maps/undergroundpathwe.blk"

	INCBIN "maps/unusedblocks60258.blk"

SSAnne10Blocks:
SSAnne9Blocks: INCBIN "maps/ssanne9.blk"

INCLUDE "data/mapHeaders/pokemontower1.asm"
INCLUDE "scripts/pokemontower1.asm"
INCLUDE "data/mapObjects/pokemontower1.asm"
PokemonTower1Blocks: INCBIN "maps/pokemontower1.blk"

INCLUDE "data/mapHeaders/pokemontower2.asm"
INCLUDE "scripts/pokemontower2.asm"
INCLUDE "data/mapObjects/pokemontower2.asm"
PokemonTower2Blocks: INCBIN "maps/pokemontower2.blk"

INCLUDE "data/mapHeaders/pokemontower3.asm"
INCLUDE "scripts/pokemontower3.asm"
INCLUDE "data/mapObjects/pokemontower3.asm"
PokemonTower3Blocks: INCBIN "maps/pokemontower3.blk"

INCLUDE "data/mapHeaders/pokemontower4.asm"
INCLUDE "scripts/pokemontower4.asm"
INCLUDE "data/mapObjects/pokemontower4.asm"
PokemonTower4Blocks: INCBIN "maps/pokemontower4.blk"

INCLUDE "data/mapHeaders/pokemontower5.asm"
INCLUDE "scripts/pokemontower5.asm"
INCLUDE "data/mapObjects/pokemontower5.asm"
PokemonTower5Blocks: INCBIN "maps/pokemontower5.blk"

INCLUDE "data/mapHeaders/pokemontower6.asm"
INCLUDE "scripts/pokemontower6.asm"
INCLUDE "data/mapObjects/pokemontower6.asm"
PokemonTower6Blocks: INCBIN "maps/pokemontower6.blk"

	INCBIN "maps/unusedblocks60cef.blk"

INCLUDE "data/mapHeaders/pokemontower7.asm"
INCLUDE "scripts/pokemontower7.asm"
INCLUDE "data/mapObjects/pokemontower7.asm"
PokemonTower7Blocks: INCBIN "maps/pokemontower7.blk"

INCLUDE "data/mapHeaders/celadonmart1.asm"
INCLUDE "scripts/celadonmart1.asm"
INCLUDE "data/mapObjects/celadonmart1.asm"
CeladonMart1Blocks: INCBIN "maps/celadonmart1.blk"

INCLUDE "engine/overworld/cinnabar_lab.asm"

INCLUDE "data/mapHeaders/viridianforest.asm"
INCLUDE "scripts/viridianforest.asm"
INCLUDE "data/mapObjects/viridianforest.asm"

INCLUDE "data/mapHeaders/ssanne1.asm"
INCLUDE "scripts/ssanne1.asm"
INCLUDE "data/mapObjects/ssanne1.asm"
SSAnne1Blocks: INCBIN "maps/ssanne1.blk"

INCLUDE "data/mapHeaders/ssanne2.asm"
INCLUDE "scripts/ssanne2.asm"
INCLUDE "data/mapObjects/ssanne2.asm"
SSAnne2Blocks: INCBIN "maps/ssanne2.blk"

INCLUDE "data/mapHeaders/ssanne4.asm"
INCLUDE "scripts/ssanne4.asm"
INCLUDE "data/mapObjects/ssanne4.asm"
SSAnne4Blocks: INCBIN "maps/ssanne4.blk"

INCLUDE "data/mapHeaders/ssanne5.asm"
INCLUDE "scripts/ssanne5.asm"
INCLUDE "data/mapObjects/ssanne5.asm"
SSAnne5Blocks: INCBIN "maps/ssanne5.blk"

INCLUDE "data/mapHeaders/ssanne6.asm"
INCLUDE "scripts/ssanne6.asm"
INCLUDE "data/mapObjects/ssanne6.asm"
SSAnne6Blocks: INCBIN "maps/ssanne6.blk"

INCLUDE "data/mapHeaders/ssanne7.asm"
INCLUDE "scripts/ssanne7.asm"
INCLUDE "data/mapObjects/ssanne7.asm"
SSAnne7Blocks: INCBIN "maps/ssanne7.blk"

INCLUDE "data/mapHeaders/ssanne8.asm"
INCLUDE "scripts/ssanne8.asm"
INCLUDE "data/mapObjects/ssanne8.asm"
SSAnne8Blocks: INCBIN "maps/ssanne8.blk"

INCLUDE "data/mapHeaders/ssanne9.asm"
INCLUDE "scripts/ssanne9.asm"
INCLUDE "data/mapObjects/ssanne9.asm"

INCLUDE "data/mapHeaders/ssanne10.asm"
INCLUDE "scripts/ssanne10.asm"
INCLUDE "data/mapObjects/ssanne10.asm"

INCLUDE "data/mapHeaders/undergroundpathns.asm"
INCLUDE "scripts/undergroundpathns.asm"
INCLUDE "data/mapObjects/undergroundpathns.asm"

INCLUDE "data/mapHeaders/undergroundpathwe.asm"
INCLUDE "scripts/undergroundpathwe.asm"
INCLUDE "data/mapObjects/undergroundpathwe.asm"

INCLUDE "data/mapHeaders/diglettscave.asm"
INCLUDE "scripts/diglettscave.asm"
INCLUDE "data/mapObjects/diglettscave.asm"
DiglettsCaveBlocks: INCBIN "maps/diglettscave.blk"

INCLUDE "data/mapHeaders/silphco11.asm"
INCLUDE "scripts/silphco11.asm"
INCLUDE "data/mapObjects/silphco11.asm"
SilphCo11Blocks: INCBIN "maps/silphco11.blk"

INCLUDE "engine/hidden_object_functions18.asm"


SECTION "bank19",ROMX,BANK[$19]

Overworld_GFX:     INCBIN "gfx/tilesets/overworld.t2.2bpp"
Overworld_Block:   INCBIN "gfx/blocksets/overworld.bst"

RedsHouse1_GFX:
RedsHouse2_GFX:    INCBIN "gfx/tilesets/reds_house.t7.2bpp"
RedsHouse1_Block:
RedsHouse2_Block:  INCBIN "gfx/blocksets/reds_house.bst"

House_GFX:         INCBIN "gfx/tilesets/house.t2.2bpp"
House_Block:       INCBIN "gfx/blocksets/house.bst"
Mansion_GFX:       INCBIN "gfx/tilesets/mansion.t2.2bpp"
Mansion_Block:     INCBIN "gfx/blocksets/mansion.bst"
ShipPort_GFX:      INCBIN "gfx/tilesets/ship_port.t2.2bpp"
ShipPort_Block:    INCBIN "gfx/blocksets/ship_port.bst"
Interior_GFX:      INCBIN "gfx/tilesets/interior.t1.2bpp"
Interior_Block:    INCBIN "gfx/blocksets/interior.bst"
Plateau_GFX:       INCBIN "gfx/tilesets/plateau.t10.2bpp"
Plateau_Block:     INCBIN "gfx/blocksets/plateau.bst"


SECTION "bank1A",ROMX,BANK[$1A]

INCLUDE "engine/battle/decrement_pp.asm"

Version_GFX:
IF DEF(_RED)
	INCBIN "gfx/rg/redgreenversion.1bpp" ; 10 tiles
ENDC
IF DEF(_GREEN)
	INCBIN "gfx/rg/redgreenversion.1bpp" ; 10 tiles
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/blue/blueversion.1bpp" ; 8 tiles
ENDC
Version_GFXEnd:

Dojo_GFX:
Gym_GFX:           INCBIN "gfx/tilesets/gym.2bpp"
Dojo_Block:
Gym_Block:         INCBIN "gfx/blocksets/gym.bst"

Mart_GFX:
Pokecenter_GFX:    INCBIN "gfx/tilesets/pokecenter.2bpp"
Mart_Block:
Pokecenter_Block:  INCBIN "gfx/blocksets/pokecenter.bst"

ForestGate_GFX:
Museum_GFX:
Gate_GFX:          INCBIN "gfx/tilesets/gate.t1.2bpp"
ForestGate_Block:
Museum_Block:
Gate_Block:        INCBIN "gfx/blocksets/gate.bst"

Forest_GFX:        INCBIN "gfx/tilesets/forest.2bpp"
Forest_Block:      INCBIN "gfx/blocksets/forest.bst"
Facility_GFX:      INCBIN "gfx/tilesets/facility.2bpp"
Facility_Block:    INCBIN "gfx/blocksets/facility.bst"


SECTION "bank1B",ROMX,BANK[$1B]

Cemetery_GFX:      INCBIN "gfx/tilesets/cemetery.t4.2bpp"
Cemetery_Block:    INCBIN "gfx/blocksets/cemetery.bst"
Cavern_GFX:        INCBIN "gfx/tilesets/cavern.t14.2bpp"
Cavern_Block:      INCBIN "gfx/blocksets/cavern.bst"
Lobby_GFX:         INCBIN "gfx/tilesets/lobby.t2.2bpp"
Lobby_Block:       INCBIN "gfx/blocksets/lobby.bst"
Ship_GFX:          INCBIN "gfx/tilesets/ship.t6.2bpp"
Ship_Block:        INCBIN "gfx/blocksets/ship.bst"
Lab_GFX:           INCBIN "gfx/tilesets/lab.t4.2bpp"
Lab_Block:         INCBIN "gfx/blocksets/lab.bst"
Club_GFX:          INCBIN "gfx/tilesets/club.t5.2bpp"
Club_Block:        INCBIN "gfx/blocksets/club.bst"
Underground_GFX:   INCBIN "gfx/tilesets/underground.t7.2bpp"
Underground_Block: INCBIN "gfx/blocksets/underground.bst"


SECTION "bank1C",ROMX,BANK[$1C]

INCLUDE "engine/gamefreak.asm"
INCLUDE "engine/hall_of_fame.asm"
INCLUDE "engine/overworld/healing_machine.asm"
INCLUDE "engine/overworld/player_animations.asm"
INCLUDE "engine/battle/ghost_marowak_anim.asm"
INCLUDE "engine/battle/battle_transitions.asm"
INCLUDE "engine/town_map.asm"
INCLUDE "engine/mon_party_sprites.asm"
INCLUDE "engine/in_game_trades.asm"
INCLUDE "engine/palettes.asm"

	ORG $1c, $75e8

INCLUDE "engine/save.asm"

BlackTile:
	REPT 16
	db $ff
	ENDR
BlackTileEnd:

INCLUDE "color/ghost_marowak_anim.asm"
INCLUDE "color/color.asm"


SECTION "bank1D",ROMX,BANK[$1D]

CopycatsHouse1FBlocks: INCBIN "maps/copycatshouse1f.blk"

CinnabarMartBlocks:
PewterMartBlocks: INCBIN "maps/pewtermart.blk"

FuchsiaHouse1Blocks: INCBIN "maps/fuchsiahouse1.blk"

CinnabarPokecenterBlocks:
FuchsiaPokecenterBlocks: INCBIN "maps/fuchsiapokecenter.blk"

CeruleanHouse2Blocks: INCBIN "maps/ceruleanhouse2.blk"

INCLUDE "engine/HoF_room_pc.asm"

INCLUDE "engine/status_ailments.asm"

INCLUDE "engine/items/itemfinder.asm"

INCLUDE "scripts/ceruleancity2.asm"

INCLUDE "data/mapHeaders/viridiangym.asm"
INCLUDE "scripts/viridiangym.asm"
INCLUDE "data/mapObjects/viridiangym.asm"
ViridianGymBlocks: INCBIN "maps/viridiangym.blk"

INCLUDE "data/mapHeaders/pewtermart.asm"
INCLUDE "scripts/pewtermart.asm"
INCLUDE "data/mapObjects/pewtermart.asm"

INCLUDE "data/mapHeaders/unknowndungeon1.asm"
INCLUDE "scripts/unknowndungeon1.asm"
INCLUDE "data/mapObjects/unknowndungeon1.asm"
UnknownDungeon1Blocks: INCBIN "maps/unknowndungeon1.blk"

INCLUDE "data/mapHeaders/ceruleanhouse2.asm"
INCLUDE "scripts/ceruleanhouse2.asm"
INCLUDE "data/mapObjects/ceruleanhouse2.asm"

INCLUDE "engine/menu/vending_machine.asm"

INCLUDE "data/mapHeaders/fuchsiahouse1.asm"
INCLUDE "scripts/fuchsiahouse1.asm"
INCLUDE "scripts/move_deleter.asm"
INCLUDE "scripts/move_reminder.asm"
INCLUDE "data/mapObjects/fuchsiahouse1.asm"

INCLUDE "data/mapHeaders/fuchsiapokecenter.asm"
INCLUDE "scripts/fuchsiapokecenter.asm"
INCLUDE "data/mapObjects/fuchsiapokecenter.asm"

INCLUDE "data/mapHeaders/fuchsiahouse2.asm"
INCLUDE "scripts/fuchsiahouse2.asm"
INCLUDE "data/mapObjects/fuchsiahouse2.asm"
FuchsiaHouse2Blocks: INCBIN "maps/fuchsiahouse2.blk"

INCLUDE "data/mapHeaders/safarizoneentrance.asm"
INCLUDE "scripts/safarizoneentrance.asm"
INCLUDE "data/mapObjects/safarizoneentrance.asm"
SafariZoneEntranceBlocks: INCBIN "maps/safarizoneentrance.blk"

INCLUDE "data/mapHeaders/fuchsiagym.asm"
INCLUDE "scripts/fuchsiagym.asm"
INCLUDE "data/mapObjects/fuchsiagym.asm"
FuchsiaGymBlocks: INCBIN "maps/fuchsiagym.blk"

INCLUDE "data/mapHeaders/fuchsiameetingroom.asm"
INCLUDE "scripts/fuchsiameetingroom.asm"
INCLUDE "data/mapObjects/fuchsiameetingroom.asm"
FuchsiaMeetingRoomBlocks: INCBIN "maps/fuchsiameetingroom.blk"

INCLUDE "data/mapHeaders/cinnabargym.asm"
INCLUDE "scripts/cinnabargym.asm"
INCLUDE "data/mapObjects/cinnabargym.asm"
CinnabarGymBlocks: INCBIN "maps/cinnabargym.blk"

INCLUDE "data/mapHeaders/lab1.asm"
INCLUDE "scripts/lab1.asm"
INCLUDE "data/mapObjects/lab1.asm"
Lab1Blocks: INCBIN "maps/lab1.blk"

INCLUDE "data/mapHeaders/lab2.asm"
INCLUDE "scripts/lab2.asm"
INCLUDE "data/mapObjects/lab2.asm"
Lab2Blocks: INCBIN "maps/lab2.blk"

INCLUDE "data/mapHeaders/lab3.asm"
INCLUDE "scripts/lab3.asm"
INCLUDE "data/mapObjects/lab3.asm"
Lab3Blocks: INCBIN "maps/lab3.blk"

INCLUDE "data/mapHeaders/lab4.asm"
INCLUDE "scripts/lab4.asm"
INCLUDE "data/mapObjects/lab4.asm"
Lab4Blocks: INCBIN "maps/lab4.blk"

INCLUDE "data/mapHeaders/cinnabarpokecenter.asm"
INCLUDE "scripts/cinnabarpokecenter.asm"
INCLUDE "data/mapObjects/cinnabarpokecenter.asm"

INCLUDE "data/mapHeaders/cinnabarmart.asm"
INCLUDE "scripts/cinnabarmart.asm"
INCLUDE "data/mapObjects/cinnabarmart.asm"

INCLUDE "data/mapHeaders/copycatshouse1f.asm"
INCLUDE "scripts/copycatshouse1f.asm"
INCLUDE "data/mapObjects/copycatshouse1f.asm"

INCLUDE "data/mapHeaders/gary.asm"
INCLUDE "scripts/gary.asm"
INCLUDE "data/mapObjects/gary.asm"
GaryBlocks: INCBIN "maps/gary.blk"

INCLUDE "data/mapHeaders/lorelei.asm"
INCLUDE "scripts/lorelei.asm"
INCLUDE "data/mapObjects/lorelei.asm"
LoreleiBlocks: INCBIN "maps/lorelei.blk"

INCLUDE "data/mapHeaders/bruno.asm"
INCLUDE "scripts/bruno.asm"
INCLUDE "data/mapObjects/bruno.asm"
BrunoBlocks: INCBIN "maps/bruno.blk"

INCLUDE "data/mapHeaders/agatha.asm"
INCLUDE "scripts/agatha.asm"
INCLUDE "data/mapObjects/agatha.asm"
AgathaBlocks: INCBIN "maps/agatha.blk"

INCLUDE "engine/menu/league_pc.asm"

INCLUDE "engine/overworld/hidden_items.asm"


SECTION "bank1E",ROMX,BANK[$1E]

INCLUDE "engine/battle/animations.asm"

INCLUDE "engine/overworld/cut2.asm"

INCLUDE "engine/overworld/ssanne.asm"

RedFishingTilesFront: INCBIN "gfx/red_fishing_tile_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/red_fishing_tile_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/red_fishing_tile_side.2bpp"
RedFishingRodTiles:   INCBIN "gfx/red_fishingrod_tiles.2bpp"

INCLUDE "data/animations.asm"

INCLUDE "engine/evolution.asm"

INCLUDE "engine/overworld/elevator.asm"

INCLUDE "color/animations.asm"

; Inserted pokemon images go here

SECTION "bank32",ROMX,BANK[$32]

GrowlithePicFront:   INCBIN "gfx/gs/mon/growlithe.pic"
GrowlithePicBack:    INCBIN "gfx/gs/monback/growlitheb.pic"
OnixPicFront:        INCBIN "gfx/gs/mon/onix.pic"
OnixPicBack:         INCBIN "gfx/gs/monback/onixb.pic"
FearowPicFront:      INCBIN "gfx/gs/mon/fearow.pic"
FearowPicBack:       INCBIN "gfx/gs/monback/fearowb.pic"
PidgeyPicFront:      INCBIN "gfx/gs/mon/pidgey.pic"
PidgeyPicBack:       INCBIN "gfx/gs/monback/pidgeyb.pic"
SlowpokePicFront:    INCBIN "gfx/gs/mon/slowpoke.pic"
SlowpokePicBack:     INCBIN "gfx/gs/monback/slowpokeb.pic"
KadabraPicFront:     INCBIN "gfx/gs/mon/kadabra.pic"
KadabraPicBack:      INCBIN "gfx/gs/monback/kadabrab.pic"
GravelerPicFront:    INCBIN "gfx/gs/mon/graveler.pic"
GravelerPicBack:     INCBIN "gfx/gs/monback/gravelerb.pic"
ChanseyPicFront:     INCBIN "gfx/gs/mon/chansey.pic"
ChanseyPicBack:      INCBIN "gfx/gs/monback/chanseyb.pic"
MachokePicFront:     INCBIN "gfx/gs/mon/machoke.pic"
MachokePicBack:      INCBIN "gfx/gs/monback/machokeb.pic"
MrMimePicFront:      INCBIN "gfx/gs/mon/mr.mime.pic"
MrMimePicBack:       INCBIN "gfx/gs/monback/mr.mimeb.pic"
HitmonleePicFront:   INCBIN "gfx/gs/mon/hitmonlee.pic"
HitmonleePicBack:    INCBIN "gfx/gs/monback/hitmonleeb.pic"
HitmonchanPicFront:  INCBIN "gfx/gs/mon/hitmonchan.pic"
HitmonchanPicBack:   INCBIN "gfx/gs/monback/hitmonchanb.pic"
ArbokPicFront:       INCBIN "gfx/gs/mon/arbok.pic"
ArbokPicBack:        INCBIN "gfx/gs/monback/arbokb.pic"
ParasectPicFront:    INCBIN "gfx/gs/mon/parasect.pic"
ParasectPicBack:     INCBIN "gfx/gs/monback/parasectb.pic"
PsyduckPicFront:     INCBIN "gfx/gs/mon/psyduck.pic"
PsyduckPicBack:      INCBIN "gfx/gs/monback/psyduckb.pic"
DrowzeePicFront:     INCBIN "gfx/gs/mon/drowzee.pic"
DrowzeePicBack:      INCBIN "gfx/gs/monback/drowzeeb.pic"
GolemPicFront:       INCBIN "gfx/gs/mon/golem.pic"
GolemPicBack:        INCBIN "gfx/gs/monback/golemb.pic"
MagmarPicFront:      INCBIN "gfx/gs/mon/magmar.pic"
MagmarPicBack:       INCBIN "gfx/gs/monback/magmarb.pic"
ElectabuzzPicFront:  INCBIN "gfx/gs/mon/electabuzz.pic"
ElectabuzzPicBack:   INCBIN "gfx/gs/monback/electabuzzb.pic"
MagnetonPicFront:    INCBIN "gfx/gs/mon/magneton.pic"
MagnetonPicBack:     INCBIN "gfx/gs/monback/magnetonb.pic"
KoffingPicFront:     INCBIN "gfx/gs/mon/koffing.pic"
KoffingPicBack:      INCBIN "gfx/gs/monback/koffingb.pic"
MankeyPicFront:      INCBIN "gfx/gs/mon/mankey.pic"
MankeyPicBack:       INCBIN "gfx/gs/monback/mankeyb.pic"
SeelPicFront:        INCBIN "gfx/gs/mon/seel.pic"
SeelPicBack:         INCBIN "gfx/gs/monback/seelb.pic"
DiglettPicFront:     INCBIN "gfx/gs/mon/diglett.pic"
DiglettPicBack:      INCBIN "gfx/gs/monback/diglettb.pic"
TaurosPicFront:      INCBIN "gfx/gs/mon/tauros.pic"
TaurosPicBack:       INCBIN "gfx/gs/monback/taurosb.pic"


SECTION "bank33",ROMX,BANK[$33]


RhydonPicFront:      INCBIN "gfx/gs/mon/rhydon.pic"
RhydonPicBack:       INCBIN "gfx/gs/monback/rhydonb.pic"
KangaskhanPicFront:  INCBIN "gfx/gs/mon/kangaskhan.pic"
KangaskhanPicBack:   INCBIN "gfx/gs/monback/kangaskhanb.pic"
NidoranMPicFront:    INCBIN "gfx/gs/mon/nidoranm.pic"
NidoranMPicBack:     INCBIN "gfx/gs/monback/nidoranmb.pic"
ClefairyPicFront:    INCBIN "gfx/gs/mon/clefairy.pic"
ClefairyPicBack:     INCBIN "gfx/gs/monback/clefairyb.pic"
SpearowPicFront:     INCBIN "gfx/gs/mon/spearow.pic"
SpearowPicBack:      INCBIN "gfx/gs/monback/spearowb.pic"
VoltorbPicFront:     INCBIN "gfx/gs/mon/voltorb.pic"
VoltorbPicBack:      INCBIN "gfx/gs/monback/voltorbb.pic"
NidokingPicFront:    INCBIN "gfx/gs/mon/nidoking.pic"
NidokingPicBack:     INCBIN "gfx/gs/monback/nidokingb.pic"
SlowbroPicFront:     INCBIN "gfx/gs/mon/slowbro.pic"
SlowbroPicBack:      INCBIN "gfx/gs/monback/slowbrob.pic"
IvysaurPicFront:     INCBIN "gfx/gs/mon/ivysaur.pic"
IvysaurPicBack:      INCBIN "gfx/gs/monback/ivysaurb.pic"
ExeggutorPicFront:   INCBIN "gfx/gs/mon/exeggutor.pic"
ExeggutorPicBack:    INCBIN "gfx/gs/monback/exeggutorb.pic"
LickitungPicFront:   INCBIN "gfx/gs/mon/lickitung.pic"
LickitungPicBack:    INCBIN "gfx/gs/monback/lickitungb.pic"
ExeggcutePicFront:   INCBIN "gfx/gs/mon/exeggcute.pic"
ExeggcutePicBack:    INCBIN "gfx/gs/monback/exeggcuteb.pic"
GrimerPicFront:      INCBIN "gfx/gs/mon/grimer.pic"
GrimerPicBack:       INCBIN "gfx/gs/monback/grimerb.pic"
GengarPicFront:      INCBIN "gfx/gs/mon/gengar.pic"
GengarPicBack:       INCBIN "gfx/gs/monback/gengarb.pic"
NidoranFPicFront:    INCBIN "gfx/gs/mon/nidoranf.pic"
NidoranFPicBack:     INCBIN "gfx/gs/monback/nidoranfb.pic"
NidoqueenPicFront:   INCBIN "gfx/gs/mon/nidoqueen.pic"
NidoqueenPicBack:    INCBIN "gfx/gs/monback/nidoqueenb.pic"
CubonePicFront:      INCBIN "gfx/gs/mon/cubone.pic"
CubonePicBack:       INCBIN "gfx/gs/monback/cuboneb.pic"
RhyhornPicFront:     INCBIN "gfx/gs/mon/rhyhorn.pic"
RhyhornPicBack:      INCBIN "gfx/gs/monback/rhyhornb.pic"
LaprasPicFront:      INCBIN "gfx/gs/mon/lapras.pic"
LaprasPicBack:       INCBIN "gfx/gs/monback/laprasb.pic"
ArcaninePicFront:    INCBIN "gfx/gs/mon/arcanine.pic"
ArcaninePicBack:     INCBIN "gfx/gs/monback/arcanineb.pic"
GyaradosPicFront:    INCBIN "gfx/gs/mon/gyarados.pic"
GyaradosPicBack:     INCBIN "gfx/gs/monback/gyaradosb.pic"
ShellderPicFront:    INCBIN "gfx/gs/mon/shellder.pic"
ShellderPicBack:     INCBIN "gfx/gs/monback/shellderb.pic"


SECTION "bank34",ROMX,BANK[$34]


ArticunoPicFront:    INCBIN "gfx/gs/mon/articuno.pic"
ArticunoPicBack:     INCBIN "gfx/gs/monback/articunob.pic"
ZapdosPicFront:      INCBIN "gfx/gs/mon/zapdos.pic"
ZapdosPicBack:       INCBIN "gfx/gs/monback/zapdosb.pic"
DittoPicFront:       INCBIN "gfx/gs/mon/ditto.pic"
DittoPicBack:        INCBIN "gfx/gs/monback/dittob.pic"
MeowthPicFront:      INCBIN "gfx/gs/mon/meowth.pic"
MeowthPicBack:       INCBIN "gfx/gs/monback/meowthb.pic"
KrabbyPicFront:      INCBIN "gfx/gs/mon/krabby.pic"
KrabbyPicBack:       INCBIN "gfx/gs/monback/krabbyb.pic"
VulpixPicFront:      INCBIN "gfx/gs/mon/vulpix.pic"
VulpixPicBack:       INCBIN "gfx/gs/monback/vulpixb.pic"
NinetalesPicFront:   INCBIN "gfx/gs/mon/ninetales.pic"
NinetalesPicBack:    INCBIN "gfx/gs/monback/ninetalesb.pic"
PikachuPicFront:     INCBIN "gfx/gs/mon/pikachu.pic"
PikachuPicBack:      INCBIN "gfx/gs/monback/pikachub.pic"
RaichuPicFront:      INCBIN "gfx/gs/mon/raichu.pic"
RaichuPicBack:       INCBIN "gfx/gs/monback/raichub.pic"
DratiniPicFront:     INCBIN "gfx/gs/mon/dratini.pic"
DratiniPicBack:      INCBIN "gfx/gs/monback/dratinib.pic"
DragonairPicFront:   INCBIN "gfx/gs/mon/dragonair.pic"
DragonairPicBack:    INCBIN "gfx/gs/monback/dragonairb.pic"
KabutoPicFront:      INCBIN "gfx/gs/mon/kabuto.pic"
KabutoPicBack:       INCBIN "gfx/gs/monback/kabutob.pic"
KabutopsPicFront:    INCBIN "gfx/gs/mon/kabutops.pic"
KabutopsPicBack:     INCBIN "gfx/gs/monback/kabutopsb.pic"
HorseaPicFront:      INCBIN "gfx/gs/mon/horsea.pic"
HorseaPicBack:       INCBIN "gfx/gs/monback/horseab.pic"
SeadraPicFront:      INCBIN "gfx/gs/mon/seadra.pic"
SeadraPicBack:       INCBIN "gfx/gs/monback/seadrab.pic"
SandshrewPicFront:   INCBIN "gfx/gs/mon/sandshrew.pic"
SandshrewPicBack:    INCBIN "gfx/gs/monback/sandshrewb.pic"
SandslashPicFront:   INCBIN "gfx/gs/mon/sandslash.pic"
SandslashPicBack:    INCBIN "gfx/gs/monback/sandslashb.pic"
OmanytePicFront:     INCBIN "gfx/gs/mon/omanyte.pic"
OmanytePicBack:      INCBIN "gfx/gs/monback/omanyteb.pic"
OmastarPicFront:     INCBIN "gfx/gs/mon/omastar.pic"
OmastarPicBack:      INCBIN "gfx/gs/monback/omastarb.pic"
JigglypuffPicFront:  INCBIN "gfx/gs/mon/jigglypuff.pic"
JigglypuffPicBack:   INCBIN "gfx/gs/monback/jigglypuffb.pic"
WigglytuffPicFront:  INCBIN "gfx/gs/mon/wigglytuff.pic"
WigglytuffPicBack:   INCBIN "gfx/gs/monback/wigglytuffb.pic"
EeveePicFront:       INCBIN "gfx/gs/mon/eevee.pic"
EeveePicBack:        INCBIN "gfx/gs/monback/eeveeb.pic"
FlareonPicFront:     INCBIN "gfx/gs/mon/flareon.pic"
FlareonPicBack:      INCBIN "gfx/gs/monback/flareonb.pic"


SECTION "bank35",ROMX,BANK[$35]


DodrioPicFront:      INCBIN "gfx/gs/mon/dodrio.pic"
DodrioPicBack:       INCBIN "gfx/gs/monback/dodriob.pic"
PrimeapePicFront:    INCBIN "gfx/gs/mon/primeape.pic"
PrimeapePicBack:     INCBIN "gfx/gs/monback/primeapeb.pic"
DugtrioPicFront:     INCBIN "gfx/gs/mon/dugtrio.pic"
DugtrioPicBack:      INCBIN "gfx/gs/monback/dugtriob.pic"
VenomothPicFront:    INCBIN "gfx/gs/mon/venomoth.pic"
VenomothPicBack:     INCBIN "gfx/gs/monback/venomothb.pic"
DewgongPicFront:     INCBIN "gfx/gs/mon/dewgong.pic"
DewgongPicBack:      INCBIN "gfx/gs/monback/dewgongb.pic"
CaterpiePicFront:    INCBIN "gfx/gs/mon/caterpie.pic"
CaterpiePicBack:     INCBIN "gfx/gs/monback/caterpieb.pic"
MetapodPicFront:     INCBIN "gfx/gs/mon/metapod.pic"
MetapodPicBack:      INCBIN "gfx/gs/monback/metapodb.pic"
ButterfreePicFront:  INCBIN "gfx/gs/mon/butterfree.pic"
ButterfreePicBack:   INCBIN "gfx/gs/monback/butterfreeb.pic"
MachampPicFront:     INCBIN "gfx/gs/mon/machamp.pic"
MachampPicBack:      INCBIN "gfx/gs/monback/machampb.pic"
GolduckPicFront:     INCBIN "gfx/gs/mon/golduck.pic"
GolduckPicBack:      INCBIN "gfx/gs/monback/golduckb.pic"
HypnoPicFront:       INCBIN "gfx/gs/mon/hypno.pic"
HypnoPicBack:        INCBIN "gfx/gs/monback/hypnob.pic"
GolbatPicFront:      INCBIN "gfx/gs/mon/golbat.pic"
GolbatPicBack:       INCBIN "gfx/gs/monback/golbatb.pic"
MewtwoPicFront:      INCBIN "gfx/gs/mon/mewtwo.pic"
MewtwoPicBack:       INCBIN "gfx/gs/monback/mewtwob.pic"
SnorlaxPicFront:     INCBIN "gfx/gs/mon/snorlax.pic"
SnorlaxPicBack:      INCBIN "gfx/gs/monback/snorlaxb.pic"
MagikarpPicFront:    INCBIN "gfx/gs/mon/magikarp.pic"
MagikarpPicBack:     INCBIN "gfx/gs/monback/magikarpb.pic"
MukPicFront:         INCBIN "gfx/gs/mon/muk.pic"
MukPicBack:          INCBIN "gfx/gs/monback/mukb.pic"
KinglerPicFront:     INCBIN "gfx/gs/mon/kingler.pic"
KinglerPicBack:      INCBIN "gfx/gs/monback/kinglerb.pic"
CloysterPicFront:    INCBIN "gfx/gs/mon/cloyster.pic"
CloysterPicBack:     INCBIN "gfx/gs/monback/cloysterb.pic"
ElectrodePicFront:   INCBIN "gfx/gs/mon/electrode.pic"
ElectrodePicBack:    INCBIN "gfx/gs/monback/electrodeb.pic"
ClefablePicFront:    INCBIN "gfx/gs/mon/clefable.pic"
ClefablePicBack:     INCBIN "gfx/gs/monback/clefableb.pic"
WeezingPicFront:     INCBIN "gfx/gs/mon/weezing.pic"
WeezingPicBack:      INCBIN "gfx/gs/monback/weezingb.pic"
PersianPicFront:     INCBIN "gfx/gs/mon/persian.pic"
PersianPicBack:      INCBIN "gfx/gs/monback/persianb.pic"



SECTION "bank36",ROMX,BANK[$36]


BulbasaurPicFront:   INCBIN "gfx/gs/mon/bulbasaur.pic"
BulbasaurPicBack:    INCBIN "gfx/gs/monback/bulbasaurb.pic"
VenusaurPicFront:    INCBIN "gfx/gs/mon/venusaur.pic"
VenusaurPicBack:     INCBIN "gfx/gs/monback/venusaurb.pic"
TentacruelPicFront:  INCBIN "gfx/gs/mon/tentacruel.pic"
TentacruelPicBack:   INCBIN "gfx/gs/monback/tentacruelb.pic"
GoldeenPicFront:     INCBIN "gfx/gs/mon/goldeen.pic"
GoldeenPicBack:      INCBIN "gfx/gs/monback/goldeenb.pic"
SeakingPicFront:     INCBIN "gfx/gs/mon/seaking.pic"
SeakingPicBack:      INCBIN "gfx/gs/monback/seakingb.pic"
PonytaPicFront:      INCBIN "gfx/gs/mon/ponyta.pic"
RapidashPicFront:    INCBIN "gfx/gs/mon/rapidash.pic"
PonytaPicBack:       INCBIN "gfx/gs/monback/ponytab.pic"
RapidashPicBack:     INCBIN "gfx/gs/monback/rapidashb.pic"
RattataPicFront:     INCBIN "gfx/gs/mon/rattata.pic"
RattataPicBack:      INCBIN "gfx/gs/monback/rattatab.pic"
RaticatePicFront:    INCBIN "gfx/gs/mon/raticate.pic"
RaticatePicBack:     INCBIN "gfx/gs/monback/raticateb.pic"
NidorinoPicFront:    INCBIN "gfx/gs/mon/nidorino.pic"
NidorinoPicBack:     INCBIN "gfx/gs/monback/nidorinob.pic"
NidorinaPicFront:    INCBIN "gfx/gs/mon/nidorina.pic"
NidorinaPicBack:     INCBIN "gfx/gs/monback/nidorinab.pic"
GeodudePicFront:     INCBIN "gfx/gs/mon/geodude.pic"
GeodudePicBack:      INCBIN "gfx/gs/monback/geodudeb.pic"
PorygonPicFront:     INCBIN "gfx/gs/mon/porygon.pic"
PorygonPicBack:      INCBIN "gfx/gs/monback/porygonb.pic"
AerodactylPicFront:  INCBIN "gfx/gs/mon/aerodactyl.pic"
AerodactylPicBack:   INCBIN "gfx/gs/monback/aerodactylb.pic"
MagnemitePicFront:   INCBIN "gfx/gs/mon/magnemite.pic"
MagnemitePicBack:    INCBIN "gfx/gs/monback/magnemiteb.pic"
CharmanderPicFront:  INCBIN "gfx/gs/mon/charmander.pic"
CharmanderPicBack:   INCBIN "gfx/gs/monback/charmanderb.pic"
SquirtlePicFront:    INCBIN "gfx/gs/mon/squirtle.pic"
SquirtlePicBack:     INCBIN "gfx/gs/monback/squirtleb.pic"
CharmeleonPicFront:  INCBIN "gfx/gs/mon/charmeleon.pic"
CharmeleonPicBack:   INCBIN "gfx/gs/monback/charmeleonb.pic"
WartortlePicFront:   INCBIN "gfx/gs/mon/wartortle.pic"
WartortlePicBack:    INCBIN "gfx/gs/monback/wartortleb.pic"
CharizardPicFront:   INCBIN "gfx/gs/mon/charizard.pic"
CharizardPicBack:    INCBIN "gfx/gs/monback/charizardb.pic"
FossilKabutopsPic:   INCBIN "gfx/other/fossilkabutops.pic"
FossilAerodactylPic: INCBIN "gfx/other/fossilaerodactyl.pic"
GhostPic:            INCBIN "gfx/other/ghost.pic"
OddishPicFront:      INCBIN "gfx/gs/mon/oddish.pic"
OddishPicBack:       INCBIN "gfx/gs/monback/oddishb.pic"
GloomPicFront:       INCBIN "gfx/gs/mon/gloom.pic"
GloomPicBack:        INCBIN "gfx/gs/monback/gloomb.pic"


SECTION "bank37",ROMX,BANK[$37]


BellsproutPicFront:  INCBIN "gfx/gs/mon/bellsprout.pic"
BellsproutPicBack:   INCBIN "gfx/gs/monback/bellsproutb.pic"
WeepinbellPicFront:  INCBIN "gfx/gs/mon/weepinbell.pic"
WeepinbellPicBack:   INCBIN "gfx/gs/monback/weepinbellb.pic"
VictreebelPicFront:  INCBIN "gfx/gs/mon/victreebel.pic"
VictreebelPicBack:   INCBIN "gfx/gs/monback/victreebelb.pic"

MewPicFront:         INCBIN "gfx/gs/mon/mew.pic"
MewPicBack:          INCBIN "gfx/gs/monback/mewb.pic"

FarfetchdPicFront:   INCBIN "gfx/gs/mon/farfetchd.pic"
FarfetchdPicBack:    INCBIN "gfx/gs/monback/farfetchdb.pic"
VenonatPicFront:     INCBIN "gfx/gs/mon/venonat.pic"
VenonatPicBack:      INCBIN "gfx/gs/monback/venonatb.pic"
DragonitePicFront:   INCBIN "gfx/gs/mon/dragonite.pic"
DragonitePicBack:    INCBIN "gfx/gs/monback/dragoniteb.pic"
DoduoPicFront:       INCBIN "gfx/gs/mon/doduo.pic"
DoduoPicBack:        INCBIN "gfx/gs/monback/doduob.pic"
PoliwagPicFront:     INCBIN "gfx/gs/mon/poliwag.pic"
PoliwagPicBack:      INCBIN "gfx/gs/monback/poliwagb.pic"
JynxPicFront:        INCBIN "gfx/gs/mon/jynx.pic"
JynxPicBack:         INCBIN "gfx/gs/monback/jynxb.pic"
MarowakPicFront:     INCBIN "gfx/gs/mon/marowak.pic"
MarowakPicBack:      INCBIN "gfx/gs/monback/marowakb.pic"
LeafeonPicFront::    INCBIN "gfx/gs/mon/leafeon.pic"
LeafeonPicBack::     INCBIN "gfx/gs/monback/leafeon.pic"

BillSprite:     		 INCBIN "gfx/sprites/bill.2bpp"
BlaineSprite:     	 INCBIN "gfx/sprites/blaine.2bpp"
BrockSprite:         INCBIN "gfx/sprites/brock.2bpp"
KogaSprite:     		 INCBIN "gfx/sprites/koga.2bpp"
MistySprite:     		 INCBIN "gfx/sprites/misty.2bpp"
SabrinaSprite:       INCBIN "gfx/sprites/sabrina.2bpp"
SurgeSprite:         INCBIN "gfx/sprites/surge.2bpp"
RocketFSprite:       INCBIN "gfx/sprites/rocket_f.2bpp"
StarterSprite:       INCBIN "gfx/sprites/starter.2bpp"
BallMSprite:         INCBIN "gfx/sprites/ball_m.2bpp"
