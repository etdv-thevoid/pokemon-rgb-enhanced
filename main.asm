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
SeelSprite:           INCBIN "gfx/sprites/seel.2bpp"
ClefairySprite:       INCBIN "gfx/sprites/clefairy.2bpp"


SECTION "Graphics", ROMX, BANK[GFX]

PokemonLogoGraphics:            INCBIN "gfx/gs/new_pokemon_logo.2bpp"
FontGraphics:                   INCBIN "gfx/gs/font.1bpp"
FontGraphicsEnd:
ABTiles:                        INCBIN "gfx/AB.2bpp"
HpBarAndStatusGraphics:         INCBIN "gfx/gs/gen2_hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:                INCBIN "gfx/gs/gen2_battle_arrow.1bpp"
BattleHudTiles1End:
BattleHudTiles2:                INCBIN "gfx/gs/gen2_battle_arrow_lines.1bpp"
BattleHudTiles3:                INCBIN "gfx/gs/gen2_battle_arrow_more_lines.1bpp"
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

RedPicFront::   INCBIN "gfx/gs/trainer/red.pic"
GreenPicFront:: INCBIN "gfx/gs/trainer/green.pic"

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
GreenCyclingSprite:   INCBIN "gfx/sprites/cycling_green.2bpp"
GreenSprite:          INCBIN "gfx/sprites/green.2bpp"
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
AgathaSprite:         INCBIN "gfx/sprites/agatha.2bpp"
BrunoSprite:          INCBIN "gfx/sprites/bruno.2bpp"
LoreleiSprite:        INCBIN "gfx/sprites/lorelei.2bpp"


SECTION "Battle (bank 5)", ROMX, BANK[$5]

INCLUDE "engine/load_pokedex_tiles.asm"
INCLUDE "engine/overworld/map_sprites.asm"
INCLUDE "engine/overworld/emotion_bubbles.asm"
INCLUDE "engine/evolve_trade.asm"
INCLUDE "engine/battle/moveEffects/substitute_effect.asm"
INCLUDE "engine/menu/pc.asm"


SECTION "bank6",ROMX,BANK[$6]

INCLUDE "maps/headers/celadoncity.asm"
INCLUDE "maps/objects/celadoncity.asm"
CeladonCityBlocks: INCBIN "maps/celadoncity.blk"

INCLUDE "maps/headers/pallettown.asm"
INCLUDE "maps/objects/pallettown.asm"
PalletTownBlocks: INCBIN "maps/pallettown.blk"

INCLUDE "maps/headers/viridiancity.asm"
INCLUDE "maps/objects/viridiancity.asm"
ViridianCityBlocks: INCBIN "maps/viridiancity.blk"

INCLUDE "maps/headers/pewtercity.asm"
INCLUDE "maps/objects/pewtercity.asm"
PewterCityBlocks: INCBIN "maps/pewtercity.blk"

INCLUDE "maps/headers/ceruleancity.asm"
INCLUDE "maps/objects/ceruleancity.asm"
CeruleanCityBlocks: INCBIN "maps/ceruleancity.blk"

INCLUDE "maps/headers/vermilioncity.asm"
INCLUDE "maps/objects/vermilioncity.asm"
VermilionCityBlocks: INCBIN "maps/vermilioncity.blk"

INCLUDE "maps/headers/fuchsiacity.asm"
INCLUDE "maps/objects/fuchsiacity.asm"
FuchsiaCityBlocks: INCBIN "maps/fuchsiacity.blk"

INCLUDE "engine/play_time.asm"

INCLUDE "maps/scripts/pallettown.asm"
INCLUDE "maps/scripts/viridiancity.asm"
INCLUDE "maps/scripts/pewtercity.asm"
INCLUDE "maps/scripts/ceruleancity.asm"
INCLUDE "maps/scripts/vermilioncity.asm"
INCLUDE "maps/scripts/celadoncity.asm"
INCLUDE "maps/scripts/fuchsiacity.asm"

INCLUDE "maps/headers/blueshouse.asm"
INCLUDE "maps/scripts/blueshouse.asm"
INCLUDE "maps/objects/blueshouse.asm"
BluesHouseBlocks: INCBIN "maps/blueshouse.blk"

INCLUDE "maps/headers/vermilionhouse3.asm"
INCLUDE "maps/scripts/vermilionhouse3.asm"
INCLUDE "maps/objects/vermilionhouse3.asm"
VermilionHouse3Blocks: INCBIN "maps/vermilionhouse3.blk"

INCLUDE "maps/headers/indigoplateaulobby.asm"
INCLUDE "maps/scripts/indigoplateaulobby.asm"
INCLUDE "maps/objects/indigoplateaulobby.asm"
IndigoPlateauLobbyBlocks: INCBIN "maps/indigoplateaulobby.blk"

INCLUDE "maps/headers/silphco4.asm"
INCLUDE "maps/scripts/silphco4.asm"
INCLUDE "maps/objects/silphco4.asm"
SilphCo4Blocks: INCBIN "maps/silphco4.blk"

INCLUDE "maps/headers/silphco5.asm"
INCLUDE "maps/scripts/silphco5.asm"
INCLUDE "maps/objects/silphco5.asm"
SilphCo5Blocks: INCBIN "maps/silphco5.blk"

INCLUDE "maps/headers/silphco6.asm"
INCLUDE "maps/scripts/silphco6.asm"
INCLUDE "maps/objects/silphco6.asm"
SilphCo6Blocks: INCBIN "maps/silphco6.blk"

INCLUDE "engine/overworld/npc_movement.asm"
INCLUDE "engine/overworld/doors.asm"
INCLUDE "engine/overworld/ledges.asm"


SECTION "bank7",ROMX,BANK[$7]

INCLUDE "maps/headers/cinnabarisland.asm"
INCLUDE "maps/objects/cinnabarisland.asm"
CinnabarIslandBlocks: INCBIN "maps/cinnabarisland.blk"

INCLUDE "maps/headers/route1.asm"
INCLUDE "maps/objects/route1.asm"
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

INCLUDE "maps/scripts/cinnabarisland.asm"

INCLUDE "maps/scripts/route1.asm"

INCLUDE "maps/headers/oakslab.asm"
INCLUDE "maps/scripts/oakslab.asm"
INCLUDE "maps/objects/oakslab.asm"

INCLUDE "maps/headers/viridianmart.asm"
INCLUDE "maps/scripts/viridianmart.asm"
INCLUDE "maps/objects/viridianmart.asm"
ViridianMartBlocks: INCBIN "maps/viridianmart.blk"

INCLUDE "maps/headers/school.asm"
INCLUDE "maps/scripts/school.asm"
INCLUDE "maps/objects/school.asm"

INCLUDE "maps/headers/viridianhouse.asm"
INCLUDE "maps/scripts/viridianhouse.asm"
INCLUDE "maps/objects/viridianhouse.asm"

INCLUDE "maps/headers/pewterhouse1.asm"
INCLUDE "maps/scripts/pewterhouse1.asm"
INCLUDE "maps/objects/pewterhouse1.asm"

INCLUDE "maps/headers/pewterhouse2.asm"
INCLUDE "maps/scripts/pewterhouse2.asm"
INCLUDE "maps/objects/pewterhouse2.asm"

INCLUDE "maps/headers/ceruleanhousetrashed.asm"
INCLUDE "maps/scripts/ceruleanhousetrashed.asm"
INCLUDE "maps/objects/ceruleanhousetrashed.asm"

INCLUDE "maps/headers/ceruleanhouse1.asm"
INCLUDE "maps/scripts/ceruleanhouse1.asm"
INCLUDE "maps/objects/ceruleanhouse1.asm"

INCLUDE "maps/headers/bikeshop.asm"
INCLUDE "maps/scripts/bikeshop.asm"
INCLUDE "maps/objects/bikeshop.asm"
BikeShopBlocks: INCBIN "maps/bikeshop.blk"

INCLUDE "maps/headers/lavenderhouse1.asm"
INCLUDE "maps/scripts/lavenderhouse1.asm"
INCLUDE "maps/objects/lavenderhouse1.asm"

INCLUDE "maps/headers/lavenderhouse2.asm"
INCLUDE "maps/scripts/lavenderhouse2.asm"
INCLUDE "maps/objects/lavenderhouse2.asm"

INCLUDE "maps/headers/namerater.asm"
INCLUDE "maps/scripts/namerater.asm"
INCLUDE "maps/objects/namerater.asm"

INCLUDE "maps/headers/vermilionhouse1.asm"
INCLUDE "maps/scripts/vermilionhouse1.asm"
INCLUDE "maps/objects/vermilionhouse1.asm"

INCLUDE "maps/headers/vermiliondock.asm"
INCLUDE "maps/scripts/vermiliondock.asm"
INCLUDE "maps/objects/vermiliondock.asm"
VermilionDockBlocks: INCBIN "maps/vermiliondock.blk"

INCLUDE "maps/headers/celadonmansion5.asm"
INCLUDE "maps/scripts/celadonmansion5.asm"
INCLUDE "maps/objects/celadonmansion5.asm"

INCLUDE "maps/headers/fuchsiamart.asm"
INCLUDE "maps/scripts/fuchsiamart.asm"
INCLUDE "maps/objects/fuchsiamart.asm"
FuchsiaMartBlocks: INCBIN "maps/fuchsiamart.blk"

INCLUDE "maps/headers/saffronhouse1.asm"
INCLUDE "maps/scripts/saffronhouse1.asm"
INCLUDE "maps/objects/saffronhouse1.asm"

INCLUDE "maps/headers/saffronhouse2.asm"
INCLUDE "maps/scripts/saffronhouse2.asm"
INCLUDE "maps/objects/saffronhouse2.asm"

INCLUDE "maps/headers/diglettscaveroute2.asm"
INCLUDE "maps/scripts/diglettscaveroute2.asm"
INCLUDE "maps/objects/diglettscaveroute2.asm"

INCLUDE "maps/headers/route2house.asm"
INCLUDE "maps/scripts/route2house.asm"
INCLUDE "maps/objects/route2house.asm"

INCLUDE "maps/headers/route5gate.asm"
INCLUDE "maps/scripts/route5gate.asm"
INCLUDE "maps/objects/route5gate.asm"
Route5GateBlocks: INCBIN "maps/route5gate.blk"

INCLUDE "maps/headers/route6gate.asm"
INCLUDE "maps/scripts/route6gate.asm"
INCLUDE "maps/objects/route6gate.asm"
Route6GateBlocks: INCBIN "maps/route6gate.blk"

INCLUDE "maps/headers/route7gate.asm"
INCLUDE "maps/scripts/route7gate.asm"
INCLUDE "maps/objects/route7gate.asm"
Route7GateBlocks: INCBIN "maps/route7gate.blk"

INCLUDE "maps/headers/route8gate.asm"
INCLUDE "maps/scripts/route8gate.asm"
INCLUDE "maps/objects/route8gate.asm"
Route8GateBlocks: INCBIN "maps/route8gate.blk"

INCLUDE "maps/headers/undergroundpathentranceroute8.asm"
INCLUDE "maps/scripts/undergroundpathentranceroute8.asm"
INCLUDE "maps/objects/undergroundpathentranceroute8.asm"

INCLUDE "maps/headers/powerplant.asm"
INCLUDE "maps/scripts/powerplant.asm"
INCLUDE "maps/objects/powerplant.asm"
PowerPlantBlocks: INCBIN "maps/powerplant.blk"

INCLUDE "maps/headers/diglettscaveroute11.asm"
INCLUDE "maps/scripts/diglettscaveroute11.asm"
INCLUDE "maps/objects/diglettscaveroute11.asm"

INCLUDE "maps/headers/route16house.asm"
INCLUDE "maps/scripts/route16house.asm"
INCLUDE "maps/objects/route16house.asm"

INCLUDE "maps/headers/route22gate.asm"
INCLUDE "maps/scripts/route22gate.asm"
INCLUDE "maps/objects/route22gate.asm"
Route22GateBlocks: INCBIN "maps/route22gate.blk"

INCLUDE "maps/headers/billshouse.asm"
INCLUDE "maps/scripts/billshouse.asm"
INCLUDE "maps/objects/billshouse.asm"
BillsHouseBlocks: INCBIN "maps/billshouse.blk"

INCLUDE "engine/menu/oaks_pc.asm"

INCLUDE "engine/hidden_object_functions7.asm"


SECTION "Pics 1", ROMX, BANK[PICS_1]

MoltresPicFront:    INCBIN "gfx/gs/mon/moltres.pic"
MoltresPicBack:     INCBIN "gfx/gs/mon/moltresb.pic"

TentacoolPicFront:  INCBIN "gfx/gs/mon/tentacool.pic"
TentacoolPicBack:   INCBIN "gfx/gs/mon/tentacoolb.pic"
ScytherPicFront:    INCBIN "gfx/gs/mon/scyther.pic"
ScytherPicBack:     INCBIN "gfx/gs/mon/scytherb.pic"
StaryuPicFront:     INCBIN "gfx/gs/mon/staryu.pic"
StaryuPicBack:      INCBIN "gfx/gs/mon/staryub.pic"
BlastoisePicFront:  INCBIN "gfx/gs/mon/blastoise.pic"
BlastoisePicBack:   INCBIN "gfx/gs/mon/blastoiseb.pic"
PinsirPicFront:     INCBIN "gfx/gs/mon/pinsir.pic"
PinsirPicBack:      INCBIN "gfx/gs/mon/pinsirb.pic"
TangelaPicFront:    INCBIN "gfx/gs/mon/tangela.pic"
TangelaPicBack:     INCBIN "gfx/gs/mon/tangelab.pic"

JolteonPicFront:    INCBIN "gfx/gs/mon/jolteon.pic"
JolteonPicBack:     INCBIN "gfx/gs/mon/jolteonb.pic"
VaporeonPicFront:   INCBIN "gfx/gs/mon/vaporeon.pic"
VaporeonPicBack:    INCBIN "gfx/gs/mon/vaporeonb.pic"
MachopPicFront:     INCBIN "gfx/gs/mon/machop.pic"
MachopPicBack:      INCBIN "gfx/gs/mon/machopb.pic"
ZubatPicFront:      INCBIN "gfx/gs/mon/zubat.pic"
ZubatPicBack:       INCBIN "gfx/gs/mon/zubatb.pic"
EkansPicFront:      INCBIN "gfx/gs/mon/ekans.pic"
EkansPicBack:       INCBIN "gfx/gs/mon/ekansb.pic"
ParasPicFront:      INCBIN "gfx/gs/mon/paras.pic"
ParasPicBack:       INCBIN "gfx/gs/mon/parasb.pic"
PoliwhirlPicFront:  INCBIN "gfx/gs/mon/poliwhirl.pic"
PoliwhirlPicBack:   INCBIN "gfx/gs/mon/poliwhirlb.pic"
PoliwrathPicFront:  INCBIN "gfx/gs/mon/poliwrath.pic"
PoliwrathPicBack:   INCBIN "gfx/gs/mon/poliwrathb.pic"
WeedlePicFront:     INCBIN "gfx/gs/mon/weedle.pic"
WeedlePicBack:      INCBIN "gfx/gs/mon/weedleb.pic"
KakunaPicFront:     INCBIN "gfx/gs/mon/kakuna.pic"
KakunaPicBack:      INCBIN "gfx/gs/mon/kakunab.pic"
BeedrillPicFront:   INCBIN "gfx/gs/mon/beedrill.pic"
BeedrillPicBack:    INCBIN "gfx/gs/mon/beedrillb.pic"



SECTION "Battle (bank 9)", ROMX[$7d6b], BANK[$9]
INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/save_trainer_name.asm"
INCLUDE "engine/battle/moveEffects/focus_energy_effect.asm"


SECTION "Pics 2", ROMX, BANK[PICS_2]


HaunterPicFront:    INCBIN "gfx/gs/mon/haunter.pic"
HaunterPicBack:     INCBIN "gfx/gs/mon/haunterb.pic"
AbraPicFront:       INCBIN "gfx/gs/mon/abra.pic"
AbraPicBack:        INCBIN "gfx/gs/mon/abrab.pic"
AlakazamPicFront:   INCBIN "gfx/gs/mon/alakazam.pic"
AlakazamPicBack:    INCBIN "gfx/gs/mon/alakazamb.pic"
PidgeottoPicFront:  INCBIN "gfx/gs/mon/pidgeotto.pic"
PidgeottoPicBack:   INCBIN "gfx/gs/mon/pidgeottob.pic"
PidgeotPicFront:    INCBIN "gfx/gs/mon/pidgeot.pic"
PidgeotPicBack:     INCBIN "gfx/gs/mon/pidgeotb.pic"
StarmiePicFront:    INCBIN "gfx/gs/mon/starmie.pic"
StarmiePicBack:     INCBIN "gfx/gs/mon/starmieb.pic"
RedPicBack:         INCBIN "gfx/gs/trainer/redb.pic"
GreenPicBack:       INCBIN "gfx/gs/trainer/greenb.pic"
OldManPic:          INCBIN "gfx/gs/trainer/oldman.pic"

GastlyPicFront:     INCBIN "gfx/gs/mon/gastly.pic"
GastlyPicBack:      INCBIN "gfx/gs/mon/gastlyb.pic"
VileplumePicFront:  INCBIN "gfx/gs/mon/vileplume.pic"
VileplumePicBack:   INCBIN "gfx/gs/mon/vileplumeb.pic"



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

INCLUDE "maps/headers/lavendertown.asm"
INCLUDE "maps/objects/lavendertown.asm"
LavenderTownBlocks: INCBIN "maps/lavendertown.blk"

ViridianPokecenterBlocks: INCBIN "maps/viridianpokecenter.blk"

SafariZoneRestHouse1Blocks:
SafariZoneRestHouse2Blocks:
SafariZoneRestHouse3Blocks:
SafariZoneRestHouse4Blocks: INCBIN "maps/safarizoneresthouse1.blk"

INCLUDE "maps/scripts/lavendertown.asm"

INCLUDE "engine/pokedex_rating.asm"

INCLUDE "maps/headers/viridianpokecenter.asm"
INCLUDE "maps/scripts/viridianpokecenter.asm"
INCLUDE "maps/objects/viridianpokecenter.asm"

INCLUDE "maps/headers/mansion1.asm"
INCLUDE "maps/scripts/mansion1.asm"
INCLUDE "maps/objects/mansion1.asm"
Mansion1Blocks: INCBIN "maps/mansion1.blk"

INCLUDE "maps/headers/rocktunnel1.asm"
INCLUDE "maps/scripts/rocktunnel1.asm"
INCLUDE "maps/objects/rocktunnel1.asm"
RockTunnel1Blocks: INCBIN "maps/rocktunnel1.blk"

INCLUDE "maps/headers/seafoamislands1.asm"
INCLUDE "maps/scripts/seafoamislands1.asm"
INCLUDE "maps/objects/seafoamislands1.asm"
SeafoamIslands1Blocks: INCBIN "maps/seafoamislands1.blk"

INCLUDE "maps/headers/ssanne3.asm"
INCLUDE "maps/scripts/ssanne3.asm"
INCLUDE "maps/objects/ssanne3.asm"
SSAnne3Blocks: INCBIN "maps/ssanne3.blk"

INCLUDE "maps/headers/victoryroad3.asm"
INCLUDE "maps/scripts/victoryroad3.asm"
INCLUDE "maps/objects/victoryroad3.asm"
VictoryRoad3Blocks: INCBIN "maps/victoryroad3.blk"

INCLUDE "maps/headers/rockethideout1.asm"
INCLUDE "maps/scripts/rockethideout1.asm"
INCLUDE "maps/objects/rockethideout1.asm"
RocketHideout1Blocks: INCBIN "maps/rockethideout1.blk"

INCLUDE "maps/headers/rockethideout2.asm"
INCLUDE "maps/scripts/rockethideout2.asm"
INCLUDE "maps/objects/rockethideout2.asm"
RocketHideout2Blocks: INCBIN "maps/rockethideout2.blk"

INCLUDE "maps/headers/rockethideout3.asm"
INCLUDE "maps/scripts/rockethideout3.asm"
INCLUDE "maps/objects/rockethideout3.asm"
RocketHideout3Blocks: INCBIN "maps/rockethideout3.blk"

INCLUDE "maps/headers/rockethideout4.asm"
INCLUDE "maps/scripts/rockethideout4.asm"
INCLUDE "maps/objects/rockethideout4.asm"
RocketHideout4Blocks: INCBIN "maps/rockethideout4.blk"

INCLUDE "maps/headers/rockethideoutelevator.asm"
INCLUDE "maps/scripts/rockethideoutelevator.asm"
INCLUDE "maps/objects/rockethideoutelevator.asm"
RocketHideoutElevatorBlocks: INCBIN "maps/rockethideoutelevator.blk"

INCLUDE "maps/headers/silphcoelevator.asm"
INCLUDE "maps/scripts/silphcoelevator.asm"
INCLUDE "maps/objects/silphcoelevator.asm"
SilphCoElevatorBlocks: INCBIN "maps/silphcoelevator.blk"

INCLUDE "maps/headers/safarizoneeast.asm"
INCLUDE "maps/scripts/safarizoneeast.asm"
INCLUDE "maps/objects/safarizoneeast.asm"
SafariZoneEastBlocks: INCBIN "maps/safarizoneeast.blk"

INCLUDE "maps/headers/safarizonenorth.asm"
INCLUDE "maps/scripts/safarizonenorth.asm"
INCLUDE "maps/objects/safarizonenorth.asm"
SafariZoneNorthBlocks: INCBIN "maps/safarizonenorth.blk"

INCLUDE "maps/headers/safarizonecenter.asm"
INCLUDE "maps/scripts/safarizonecenter.asm"
INCLUDE "maps/objects/safarizonecenter.asm"
SafariZoneCenterBlocks: INCBIN "maps/safarizonecenter.blk"

INCLUDE "maps/headers/safarizoneresthouse1.asm"
INCLUDE "maps/scripts/safarizoneresthouse1.asm"
INCLUDE "maps/objects/safarizoneresthouse1.asm"

INCLUDE "maps/headers/safarizoneresthouse2.asm"
INCLUDE "maps/scripts/safarizoneresthouse2.asm"
INCLUDE "maps/objects/safarizoneresthouse2.asm"

INCLUDE "maps/headers/safarizoneresthouse3.asm"
INCLUDE "maps/scripts/safarizoneresthouse3.asm"
INCLUDE "maps/objects/safarizoneresthouse3.asm"

INCLUDE "maps/headers/safarizoneresthouse4.asm"
INCLUDE "maps/scripts/safarizoneresthouse4.asm"
INCLUDE "maps/objects/safarizoneresthouse4.asm"

INCLUDE "maps/headers/unknowndungeon2.asm"
INCLUDE "maps/scripts/unknowndungeon2.asm"
INCLUDE "maps/objects/unknowndungeon2.asm"
UnknownDungeon2Blocks: INCBIN "maps/unknowndungeon2.blk"

INCLUDE "maps/headers/unknowndungeon3.asm"
INCLUDE "maps/scripts/unknowndungeon3.asm"
INCLUDE "maps/objects/unknowndungeon3.asm"
UnknownDungeon3Blocks: INCBIN "maps/unknowndungeon3.blk"
END

INCLUDE "maps/headers/rocktunnel2.asm"
INCLUDE "maps/scripts/rocktunnel2.asm"
INCLUDE "maps/objects/rocktunnel2.asm"
RockTunnel2Blocks: INCBIN "maps/rocktunnel2.blk"

INCLUDE "maps/headers/seafoamislands2.asm"
INCLUDE "maps/scripts/seafoamislands2.asm"
INCLUDE "maps/objects/seafoamislands2.asm"
SeafoamIslands2Blocks: INCBIN "maps/seafoamislands2.blk"

INCLUDE "maps/headers/seafoamislands3.asm"
INCLUDE "maps/scripts/seafoamislands3.asm"
INCLUDE "maps/objects/seafoamislands3.asm"
SeafoamIslands3Blocks: INCBIN "maps/seafoamislands3.blk"

INCLUDE "maps/headers/seafoamislands4.asm"
INCLUDE "maps/scripts/seafoamislands4.asm"
INCLUDE "maps/objects/seafoamislands4.asm"
SeafoamIslands4Blocks: INCBIN "maps/seafoamislands4.blk"

INCLUDE "maps/headers/seafoamislands5.asm"
INCLUDE "maps/scripts/seafoamislands5.asm"
INCLUDE "maps/objects/seafoamislands5.asm"
SeafoamIslands5Blocks: INCBIN "maps/seafoamislands5.blk"

INCLUDE "engine/overworld/hidden_objects.asm"


SECTION "bank12",ROMX,BANK[$12]

INCLUDE "maps/headers/route7.asm"
INCLUDE "maps/objects/route7.asm"
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

INCLUDE "maps/scripts/route7.asm"

INCLUDE "maps/headers/redshouse1f.asm"
INCLUDE "maps/scripts/redshouse1f.asm"
INCLUDE "maps/objects/redshouse1f.asm"
RedsHouse1FBlocks: INCBIN "maps/redshouse1f.blk"

INCLUDE "maps/headers/celadonmart3.asm"
INCLUDE "maps/scripts/celadonmart3.asm"
INCLUDE "maps/objects/celadonmart3.asm"
CeladonMart3Blocks: INCBIN "maps/celadonmart3.blk"

INCLUDE "maps/headers/celadonmart4.asm"
INCLUDE "maps/scripts/celadonmart4.asm"
INCLUDE "maps/objects/celadonmart4.asm"
CeladonMart4Blocks: INCBIN "maps/celadonmart4.blk"

INCLUDE "maps/headers/celadonmartroof.asm"
INCLUDE "maps/scripts/celadonmartroof.asm"
INCLUDE "maps/objects/celadonmartroof.asm"
CeladonMartRoofBlocks: INCBIN "maps/celadonmartroof.blk"

INCLUDE "maps/headers/celadonmartelevator.asm"
INCLUDE "maps/scripts/celadonmartelevator.asm"
INCLUDE "maps/objects/celadonmartelevator.asm"
CeladonMartElevatorBlocks: INCBIN "maps/celadonmartelevator.blk"

INCLUDE "maps/headers/celadonmansion1.asm"
INCLUDE "maps/scripts/celadonmansion1.asm"
INCLUDE "maps/objects/celadonmansion1.asm"
CeladonMansion1Blocks: INCBIN "maps/celadonmansion1.blk"

INCLUDE "maps/headers/celadonmansion2.asm"
INCLUDE "maps/scripts/celadonmansion2.asm"
INCLUDE "maps/objects/celadonmansion2.asm"
CeladonMansion2Blocks: INCBIN "maps/celadonmansion2.blk"

INCLUDE "maps/headers/celadonmansion3.asm"
INCLUDE "maps/scripts/celadonmansion3.asm"
INCLUDE "maps/objects/celadonmansion3.asm"
CeladonMansion3Blocks: INCBIN "maps/celadonmansion3.blk"

INCLUDE "maps/headers/celadonmansion4.asm"
INCLUDE "maps/scripts/celadonmansion4.asm"
INCLUDE "maps/objects/celadonmansion4.asm"
CeladonMansion4Blocks: INCBIN "maps/celadonmansion4.blk"

INCLUDE "maps/headers/celadonpokecenter.asm"
INCLUDE "maps/scripts/celadonpokecenter.asm"
INCLUDE "maps/objects/celadonpokecenter.asm"

INCLUDE "maps/headers/celadongym.asm"
INCLUDE "maps/scripts/celadongym.asm"
INCLUDE "maps/objects/celadongym.asm"
CeladonGymBlocks: INCBIN "maps/celadongym.blk"

INCLUDE "maps/headers/celadongamecorner.asm"
INCLUDE "maps/scripts/celadongamecorner.asm"
INCLUDE "maps/objects/celadongamecorner.asm"
CeladonGameCornerBlocks: INCBIN "maps/celadongamecorner.blk"

INCLUDE "maps/headers/celadonmart5.asm"
INCLUDE "maps/scripts/celadonmart5.asm"
INCLUDE "maps/objects/celadonmart5.asm"
CeladonMart5Blocks: INCBIN "maps/celadonmart5.blk"

INCLUDE "maps/headers/celadonprizeroom.asm"
INCLUDE "maps/scripts/celadonprizeroom.asm"
INCLUDE "maps/objects/celadonprizeroom.asm"
CeladonPrizeRoomBlocks: INCBIN "maps/celadonprizeroom.blk"

INCLUDE "maps/headers/celadondiner.asm"
INCLUDE "maps/scripts/celadondiner.asm"
INCLUDE "maps/objects/celadondiner.asm"
CeladonDinerBlocks: INCBIN "maps/celadondiner.blk"

INCLUDE "maps/headers/celadonhouse.asm"
INCLUDE "maps/scripts/celadonhouse.asm"
INCLUDE "maps/objects/celadonhouse.asm"
CeladonHouseBlocks: INCBIN "maps/celadonhouse.blk"

INCLUDE "maps/headers/celadonhotel.asm"
INCLUDE "maps/scripts/celadonhotel.asm"
INCLUDE "maps/objects/celadonhotel.asm"
CeladonHotelBlocks: INCBIN "maps/celadonhotel.blk"

INCLUDE "maps/headers/mtmoonpokecenter.asm"
INCLUDE "maps/scripts/mtmoonpokecenter.asm"
INCLUDE "maps/objects/mtmoonpokecenter.asm"

INCLUDE "maps/headers/rocktunnelpokecenter.asm"
INCLUDE "maps/scripts/rocktunnelpokecenter.asm"
INCLUDE "maps/objects/rocktunnelpokecenter.asm"

INCLUDE "maps/headers/route11gate.asm"
INCLUDE "maps/scripts/route11gate.asm"
INCLUDE "maps/objects/route11gate.asm"

INCLUDE "maps/headers/route11gateupstairs.asm"
INCLUDE "maps/scripts/route11gateupstairs.asm"
INCLUDE "maps/objects/route11gateupstairs.asm"

INCLUDE "maps/headers/route12gate.asm"
INCLUDE "maps/scripts/route12gate.asm"
INCLUDE "maps/objects/route12gate.asm"
Route12GateBlocks: INCBIN "maps/route12gate.blk"

INCLUDE "maps/headers/route12gateupstairs.asm"
INCLUDE "maps/scripts/route12gateupstairs.asm"
INCLUDE "maps/objects/route12gateupstairs.asm"

INCLUDE "maps/headers/route15gate.asm"
INCLUDE "maps/scripts/route15gate.asm"
INCLUDE "maps/objects/route15gate.asm"

INCLUDE "maps/headers/route15gateupstairs.asm"
INCLUDE "maps/scripts/route15gateupstairs.asm"
INCLUDE "maps/objects/route15gateupstairs.asm"

INCLUDE "maps/headers/route16gate.asm"
INCLUDE "maps/scripts/route16gate.asm"
INCLUDE "maps/objects/route16gate.asm"
Route16GateBlocks: INCBIN "maps/route16gate.blk"

INCLUDE "maps/headers/route16gateupstairs.asm"
INCLUDE "maps/scripts/route16gateupstairs.asm"
INCLUDE "maps/objects/route16gateupstairs.asm"

INCLUDE "maps/headers/route18gate.asm"
INCLUDE "maps/scripts/route18gate.asm"
INCLUDE "maps/objects/route18gate.asm"

INCLUDE "maps/headers/route18gateupstairs.asm"
INCLUDE "maps/scripts/route18gateupstairs.asm"
INCLUDE "maps/objects/route18gateupstairs.asm"

INCLUDE "maps/headers/mtmoon1.asm"
INCLUDE "maps/scripts/mtmoon1.asm"
INCLUDE "maps/objects/mtmoon1.asm"
MtMoon1Blocks: INCBIN "maps/mtmoon1.blk"

INCLUDE "maps/headers/mtmoon3.asm"
INCLUDE "maps/scripts/mtmoon3.asm"
INCLUDE "maps/objects/mtmoon3.asm"
MtMoon3Blocks: INCBIN "maps/mtmoon3.blk"

INCLUDE "maps/headers/safarizonewest.asm"
INCLUDE "maps/scripts/safarizonewest.asm"
INCLUDE "maps/objects/safarizonewest.asm"
SafariZoneWestBlocks: INCBIN "maps/safarizonewest.blk"

INCLUDE "maps/headers/safarizonesecrethouse.asm"
INCLUDE "maps/scripts/safarizonesecrethouse.asm"
INCLUDE "maps/objects/safarizonesecrethouse.asm"
SafariZoneSecretHouseBlocks: INCBIN "maps/safarizonesecrethouse.blk"


SECTION "bank13",ROMX,BANK[$13]

TrainerPics::
YoungsterPic::     INCBIN "gfx/gs/trainer/youngster.pic"
BugCatcherPic::    INCBIN "gfx/gs/trainer/bugcatcher.pic"
LassPic::          INCBIN "gfx/gs/trainer/lass.pic"
SailorPic::        INCBIN "gfx/gs/trainer/sailor.pic"
JrTrainerMPic::    INCBIN "gfx/gs/trainer/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "gfx/gs/trainer/jr.trainerf.pic"
PokemaniacPic::    INCBIN "gfx/gs/trainer/pokemaniac.pic"
SuperNerdPic::     INCBIN "gfx/gs/trainer/supernerd.pic"
HikerPic::         INCBIN "gfx/gs/trainer/hiker.pic"
BikerPic::         INCBIN "gfx/gs/trainer/biker.pic"
BurglarPic::       INCBIN "gfx/gs/trainer/burglar.pic"
EngineerPic::      INCBIN "gfx/gs/trainer/engineer.pic"
SwimmerFPic::      INCBIN "gfx/gs/trainer/swimmer_f.pic"
FisherPic::        INCBIN "gfx/gs/trainer/fisher.pic"
SwimmerPic::       INCBIN "gfx/gs/trainer/swimmer.pic"
CueBallPic::       INCBIN "gfx/gs/trainer/cueball.pic"
GamblerPic::       INCBIN "gfx/gs/trainer/gambler.pic"
BeautyPic::        INCBIN "gfx/gs/trainer/beauty.pic"
PsychicPic::       INCBIN "gfx/gs/trainer/psychic.pic"
RockerPic::        INCBIN "gfx/gs/trainer/rocker.pic"
JugglerPic::       INCBIN "gfx/gs/trainer/juggler.pic"
TamerPic::         INCBIN "gfx/gs/trainer/tamer.pic"
BirdKeeperPic::    INCBIN "gfx/gs/trainer/birdkeeper.pic"
BlackbeltPic::     INCBIN "gfx/gs/trainer/blackbelt.pic"
Rival1Pic::        INCBIN "gfx/gs/trainer/rival1.pic"
ProfOakPic::       INCBIN "gfx/gs/trainer/prof.oak.pic"
RocketFPic::       INCBIN "gfx/gs/trainer/rocket_f.pic"
ScientistPic::     INCBIN "gfx/gs/trainer/scientist.pic"
GiovanniPic::      INCBIN "gfx/gs/trainer/giovanni.pic"
RocketPic::        INCBIN "gfx/gs/trainer/rocket.pic"
CooltrainerMPic::  INCBIN "gfx/gs/trainer/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "gfx/gs/trainer/cooltrainerf.pic"
BrunoPic::         INCBIN "gfx/gs/trainer/bruno.pic"
BrockPic::         INCBIN "gfx/gs/trainer/brock.pic"
MistyPic::         INCBIN "gfx/yellow/trainer/misty.pic"
LtSurgePic::       INCBIN "gfx/gs/trainer/lt.surge.pic"
ErikaPic::         INCBIN "gfx/gs/trainer/erika.pic"
KogaPic::          INCBIN "gfx/gs/trainer/koga.pic"
BlainePic::        INCBIN "gfx/gs/trainer/blaine.pic"
SabrinaPic::       INCBIN "gfx/gs/trainer/sabrina.pic"
GentlemanPic::     INCBIN "gfx/gs/trainer/gentleman.pic"
Rival2Pic::        INCBIN "gfx/gs/trainer/rival2.pic"
Rival3Pic::        INCBIN "gfx/gs/trainer/rival3.pic"
LoreleiPic::       INCBIN "gfx/gs/trainer/lorelei.pic"
ChannelerPic::     INCBIN "gfx/gs/trainer/channeler.pic"
AgathaPic::        INCBIN "gfx/gs/trainer/agatha.pic"
LancePic::         INCBIN "gfx/gs/trainer/lance.pic"


	ORG $13, $7d04

INCLUDE "maps/headers/tradecenter.asm"
INCLUDE "maps/scripts/tradecenter.asm"
INCLUDE "maps/objects/tradecenter.asm"
TradeCenterBlocks: INCBIN "maps/tradecenter.blk"

INCLUDE "maps/headers/colosseum.asm"
INCLUDE "maps/scripts/colosseum.asm"
INCLUDE "maps/objects/colosseum.asm"
ColosseumBlocks: INCBIN "maps/colosseum.blk"

INCLUDE "engine/give_pokemon.asm"

INCLUDE "engine/predefs.asm"


SECTION "bank14",ROMX,BANK[$14]

INCLUDE "maps/headers/route22.asm"
INCLUDE "maps/objects/route22.asm"
Route22Blocks: INCBIN "maps/route22.blk"

INCLUDE "maps/headers/route20.asm"
INCLUDE "maps/objects/route20.asm"
Route20Blocks: INCBIN "maps/route20.blk"

INCLUDE "maps/headers/route23.asm"
INCLUDE "maps/objects/route23.asm"
Route23Blocks: INCBIN "maps/route23.blk"

INCLUDE "maps/headers/route24.asm"
INCLUDE "maps/objects/route24.asm"
Route24Blocks: INCBIN "maps/route24.blk"

INCLUDE "maps/headers/route25.asm"
INCLUDE "maps/objects/route25.asm"
Route25Blocks: INCBIN "maps/route25.blk"

INCLUDE "maps/headers/indigoplateau.asm"
INCLUDE "maps/scripts/indigoplateau.asm"
INCLUDE "maps/objects/indigoplateau.asm"
IndigoPlateauBlocks: INCBIN "maps/indigoplateau.blk"

INCLUDE "maps/headers/saffroncity.asm"
INCLUDE "maps/objects/saffroncity.asm"
SaffronCityBlocks: INCBIN "maps/saffroncity.blk"
INCLUDE "maps/scripts/saffroncity.asm"

INCLUDE "maps/scripts/route20.asm"
INCLUDE "maps/scripts/route22.asm"
INCLUDE "maps/scripts/route23.asm"
INCLUDE "maps/scripts/route24.asm"
INCLUDE "maps/scripts/route25.asm"

INCLUDE "maps/headers/victoryroad2.asm"
INCLUDE "maps/scripts/victoryroad2.asm"
INCLUDE "maps/objects/victoryroad2.asm"
VictoryRoad2Blocks: INCBIN "maps/victoryroad2.blk"

INCLUDE "maps/headers/mtmoon2.asm"
INCLUDE "maps/scripts/mtmoon2.asm"
INCLUDE "maps/objects/mtmoon2.asm"
MtMoon2Blocks: INCBIN "maps/mtmoon2.blk"

INCLUDE "maps/headers/silphco7.asm"
INCLUDE "maps/scripts/silphco7.asm"
INCLUDE "maps/objects/silphco7.asm"
SilphCo7Blocks: INCBIN "maps/silphco7.blk"

INCLUDE "maps/headers/mansion2.asm"
INCLUDE "maps/scripts/mansion2.asm"
INCLUDE "maps/objects/mansion2.asm"
Mansion2Blocks: INCBIN "maps/mansion2.blk"

INCLUDE "maps/headers/mansion3.asm"
INCLUDE "maps/scripts/mansion3.asm"
INCLUDE "maps/objects/mansion3.asm"
Mansion3Blocks: INCBIN "maps/mansion3.blk"

INCLUDE "maps/headers/mansion4.asm"
INCLUDE "maps/scripts/mansion4.asm"
INCLUDE "maps/objects/mansion4.asm"
Mansion4Blocks: INCBIN "maps/mansion4.blk"

INCLUDE "engine/battle/init_battle_variables.asm"
INCLUDE "engine/battle/moveEffects/paralyze_effect.asm"

INCLUDE "engine/overworld/card_key.asm"

INCLUDE "engine/menu/prize_menu.asm"

INCLUDE "engine/hidden_object_functions14.asm"


SECTION "bank15",ROMX,BANK[$15]

INCLUDE "maps/headers/route2.asm"
INCLUDE "maps/objects/route2.asm"
Route2Blocks: INCBIN "maps/route2.blk"

INCLUDE "maps/headers/route3.asm"
INCLUDE "maps/objects/route3.asm"
Route3Blocks: INCBIN "maps/route3.blk"

INCLUDE "maps/headers/route4.asm"
INCLUDE "maps/objects/route4.asm"
Route4Blocks: INCBIN "maps/route4.blk"

INCLUDE "maps/headers/route5.asm"
INCLUDE "maps/objects/route5.asm"
Route5Blocks: INCBIN "maps/route5.blk"

INCLUDE "maps/headers/route9.asm"
INCLUDE "maps/objects/route9.asm"
Route9Blocks: INCBIN "maps/route9.blk"

INCLUDE "maps/headers/route13.asm"
INCLUDE "maps/objects/route13.asm"
Route13Blocks: INCBIN "maps/route13.blk"

INCLUDE "maps/headers/route14.asm"
INCLUDE "maps/objects/route14.asm"
Route14Blocks: INCBIN "maps/route14.blk"

INCLUDE "maps/headers/route17.asm"
INCLUDE "maps/objects/route17.asm"
Route17Blocks: INCBIN "maps/route17.blk"

INCLUDE "maps/headers/route19.asm"
INCLUDE "maps/objects/route19.asm"
Route19Blocks: INCBIN "maps/route19.blk"

INCLUDE "maps/headers/route21.asm"
INCLUDE "maps/objects/route21.asm"
Route21Blocks: INCBIN "maps/route21.blk"

VermilionHouse2Blocks:
Route12HouseBlocks:
DayCareMBlocks: INCBIN "maps/daycarem.blk"

FuchsiaHouse3Blocks: INCBIN "maps/fuchsiahouse3.blk"

INCLUDE "engine/battle/experience.asm"

INCLUDE "maps/scripts/route2.asm"
INCLUDE "maps/scripts/route3.asm"
INCLUDE "maps/scripts/route4.asm"
INCLUDE "maps/scripts/route5.asm"
INCLUDE "maps/scripts/route9.asm"
INCLUDE "maps/scripts/route13.asm"
INCLUDE "maps/scripts/route14.asm"
INCLUDE "maps/scripts/route17.asm"
INCLUDE "maps/scripts/route19.asm"
INCLUDE "maps/scripts/route21.asm"

INCLUDE "maps/headers/vermilionhouse2.asm"
INCLUDE "maps/scripts/vermilionhouse2.asm"
INCLUDE "maps/objects/vermilionhouse2.asm"

INCLUDE "maps/headers/celadonmart2.asm"
INCLUDE "maps/scripts/celadonmart2.asm"
INCLUDE "maps/objects/celadonmart2.asm"
CeladonMart2Blocks: INCBIN "maps/celadonmart2.blk"

INCLUDE "maps/headers/fuchsiahouse3.asm"
INCLUDE "maps/scripts/fuchsiahouse3.asm"
INCLUDE "maps/objects/fuchsiahouse3.asm"

INCLUDE "maps/headers/daycarem.asm"
INCLUDE "maps/scripts/daycarem.asm"
INCLUDE "maps/objects/daycarem.asm"

INCLUDE "maps/headers/route12house.asm"
INCLUDE "maps/scripts/route12house.asm"
INCLUDE "maps/objects/route12house.asm"

INCLUDE "maps/headers/silphco8.asm"
INCLUDE "maps/scripts/silphco8.asm"
INCLUDE "maps/objects/silphco8.asm"
SilphCo8Blocks: INCBIN "maps/silphco8.blk"

INCLUDE "engine/menu/diploma.asm"

INCLUDE "engine/overworld/trainers.asm"

INCLUDE "color/exp_bar.asm"

INCLUDE "engine/menu/item_descriptions.asm"


SECTION "bank16",ROMX,BANK[$16]

INCLUDE "maps/headers/route6.asm"
INCLUDE "maps/objects/route6.asm"
Route6Blocks: INCBIN "maps/route6.blk"

INCLUDE "maps/headers/route8.asm"
INCLUDE "maps/objects/route8.asm"
Route8Blocks: INCBIN "maps/route8.blk"

INCLUDE "maps/headers/route10.asm"
INCLUDE "maps/objects/route10.asm"
Route10Blocks: INCBIN "maps/route10.blk"

INCLUDE "maps/headers/route11.asm"
INCLUDE "maps/objects/route11.asm"
Route11Blocks: INCBIN "maps/route11.blk"

INCLUDE "maps/headers/route12.asm"
INCLUDE "maps/objects/route12.asm"
Route12Blocks: INCBIN "maps/route12.blk"

INCLUDE "maps/headers/route15.asm"
INCLUDE "maps/objects/route15.asm"
Route15Blocks: INCBIN "maps/route15.blk"

INCLUDE "maps/headers/route16.asm"
INCLUDE "maps/objects/route16.asm"
Route16Blocks: INCBIN "maps/route16.blk"

INCLUDE "maps/headers/route18.asm"
INCLUDE "maps/objects/route18.asm"
Route18Blocks: INCBIN "maps/route18.blk"

	INCBIN "maps/unusedblocks58d7d.blk"

INCLUDE "engine/battle/common_text.asm"

INCLUDE "engine/experience.asm"

INCLUDE "engine/overworld/oaks_aide.asm"

INCLUDE "maps/scripts/route6.asm"
INCLUDE "maps/scripts/route8.asm"
INCLUDE "maps/scripts/route10.asm"
INCLUDE "maps/scripts/route11.asm"
INCLUDE "maps/scripts/route12.asm"
INCLUDE "maps/scripts/route15.asm"
INCLUDE "maps/scripts/route16.asm"
INCLUDE "maps/scripts/route18.asm"

INCLUDE "maps/headers/fanclub.asm"
INCLUDE "maps/scripts/fanclub.asm"
INCLUDE "maps/objects/fanclub.asm"
FanClubBlocks:
	INCBIN "maps/fanclub.blk"

INCLUDE "maps/headers/silphco2.asm"
INCLUDE "maps/scripts/silphco2.asm"
INCLUDE "maps/objects/silphco2.asm"
SilphCo2Blocks:
	INCBIN "maps/silphco2.blk"

INCLUDE "maps/headers/silphco3.asm"
INCLUDE "maps/scripts/silphco3.asm"
INCLUDE "maps/objects/silphco3.asm"
SilphCo3Blocks:
	INCBIN "maps/silphco3.blk"

INCLUDE "maps/headers/silphco10.asm"
INCLUDE "maps/scripts/silphco10.asm"
INCLUDE "maps/objects/silphco10.asm"
SilphCo10Blocks:
	INCBIN "maps/silphco10.blk"

INCLUDE "maps/headers/lance.asm"
INCLUDE "maps/scripts/lance.asm"
INCLUDE "maps/objects/lance.asm"
LanceBlocks:
	INCBIN "maps/lance.blk"

INCLUDE "maps/headers/halloffameroom.asm"
INCLUDE "maps/scripts/halloffameroom.asm"
INCLUDE "maps/objects/halloffameroom.asm"
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

INCLUDE "maps/headers/redshouse2f.asm"
INCLUDE "maps/scripts/redshouse2f.asm"
INCLUDE "maps/objects/redshouse2f.asm"

INCLUDE "engine/predefs17.asm"

INCLUDE "maps/headers/museum1f.asm"
INCLUDE "maps/scripts/museum1f.asm"
INCLUDE "maps/objects/museum1f.asm"

INCLUDE "maps/headers/museum2f.asm"
INCLUDE "maps/scripts/museum2f.asm"
INCLUDE "maps/objects/museum2f.asm"

INCLUDE "maps/headers/pewtergym.asm"
INCLUDE "maps/scripts/pewtergym.asm"
INCLUDE "maps/objects/pewtergym.asm"
PewterGymBlocks: INCBIN "maps/pewtergym.blk"

INCLUDE "maps/headers/pewterpokecenter.asm"
INCLUDE "maps/scripts/pewterpokecenter.asm"
INCLUDE "maps/objects/pewterpokecenter.asm"

INCLUDE "maps/headers/ceruleanpokecenter.asm"
INCLUDE "maps/scripts/ceruleanpokecenter.asm"
INCLUDE "maps/objects/ceruleanpokecenter.asm"
CeruleanPokecenterBlocks: INCBIN "maps/ceruleanpokecenter.blk"

INCLUDE "maps/headers/ceruleangym.asm"
INCLUDE "maps/scripts/ceruleangym.asm"
INCLUDE "maps/objects/ceruleangym.asm"
CeruleanGymBlocks: INCBIN "maps/ceruleangym.blk"

INCLUDE "maps/headers/ceruleanmart.asm"
INCLUDE "maps/scripts/ceruleanmart.asm"
INCLUDE "maps/objects/ceruleanmart.asm"

INCLUDE "maps/headers/lavenderpokecenter.asm"
INCLUDE "maps/scripts/lavenderpokecenter.asm"
INCLUDE "maps/objects/lavenderpokecenter.asm"

INCLUDE "maps/headers/lavendermart.asm"
INCLUDE "maps/scripts/lavendermart.asm"
INCLUDE "maps/objects/lavendermart.asm"

INCLUDE "maps/headers/vermilionpokecenter.asm"
INCLUDE "maps/scripts/vermilionpokecenter.asm"
INCLUDE "maps/objects/vermilionpokecenter.asm"

INCLUDE "maps/headers/vermilionmart.asm"
INCLUDE "maps/scripts/vermilionmart.asm"
INCLUDE "maps/objects/vermilionmart.asm"

INCLUDE "maps/headers/vermiliongym.asm"
INCLUDE "maps/scripts/vermiliongym.asm"
INCLUDE "maps/objects/vermiliongym.asm"
VermilionGymBlocks: INCBIN "maps/vermiliongym.blk"

INCLUDE "maps/headers/copycatshouse2f.asm"
INCLUDE "maps/scripts/copycatshouse2f.asm"
INCLUDE "maps/objects/copycatshouse2f.asm"

INCLUDE "maps/headers/fightingdojo.asm"
INCLUDE "maps/scripts/fightingdojo.asm"
INCLUDE "maps/objects/fightingdojo.asm"
FightingDojoBlocks: INCBIN "maps/fightingdojo.blk"

INCLUDE "maps/headers/saffrongym.asm"
INCLUDE "maps/scripts/saffrongym.asm"
INCLUDE "maps/objects/saffrongym.asm"
SaffronGymBlocks: INCBIN "maps/saffrongym.blk"

INCLUDE "maps/headers/saffronmart.asm"
INCLUDE "maps/scripts/saffronmart.asm"
INCLUDE "maps/objects/saffronmart.asm"

INCLUDE "maps/headers/silphco1.asm"
INCLUDE "maps/scripts/silphco1.asm"
INCLUDE "maps/objects/silphco1.asm"
SilphCo1Blocks: INCBIN "maps/silphco1.blk"

INCLUDE "maps/headers/saffronpokecenter.asm"
INCLUDE "maps/scripts/saffronpokecenter.asm"
INCLUDE "maps/objects/saffronpokecenter.asm"

INCLUDE "maps/headers/viridianforestexit.asm"
INCLUDE "maps/scripts/viridianforestexit.asm"
INCLUDE "maps/objects/viridianforestexit.asm"

INCLUDE "maps/headers/route2gate.asm"
INCLUDE "maps/scripts/route2gate.asm"
INCLUDE "maps/objects/route2gate.asm"

INCLUDE "maps/headers/viridianforestentrance.asm"
INCLUDE "maps/scripts/viridianforestentrance.asm"
INCLUDE "maps/objects/viridianforestentrance.asm"

INCLUDE "maps/headers/undergroundpathentranceroute5.asm"
INCLUDE "maps/scripts/undergroundpathentranceroute5.asm"
INCLUDE "maps/objects/undergroundpathentranceroute5.asm"

INCLUDE "maps/headers/undergroundpathentranceroute6.asm"
INCLUDE "maps/scripts/undergroundpathentranceroute6.asm"
INCLUDE "maps/objects/undergroundpathentranceroute6.asm"

INCLUDE "maps/headers/undergroundpathentranceroute7.asm"
INCLUDE "maps/scripts/undergroundpathentranceroute7.asm"
INCLUDE "maps/objects/undergroundpathentranceroute7.asm"

INCLUDE "maps/headers/undergroundpathentranceroute7copy.asm"
INCLUDE "maps/scripts/undergroundpathentranceroute7copy.asm"
INCLUDE "maps/objects/undergroundpathentranceroute7copy.asm"

INCLUDE "maps/headers/silphco9.asm"
INCLUDE "maps/scripts/silphco9.asm"
INCLUDE "maps/objects/silphco9.asm"
SilphCo9Blocks: INCBIN "maps/silphco9.blk"

INCLUDE "maps/headers/victoryroad1.asm"
INCLUDE "maps/scripts/victoryroad1.asm"
INCLUDE "maps/objects/victoryroad1.asm"
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

INCLUDE "maps/headers/pokemontower1.asm"
INCLUDE "maps/scripts/pokemontower1.asm"
INCLUDE "maps/objects/pokemontower1.asm"
PokemonTower1Blocks: INCBIN "maps/pokemontower1.blk"

INCLUDE "maps/headers/pokemontower2.asm"
INCLUDE "maps/scripts/pokemontower2.asm"
INCLUDE "maps/objects/pokemontower2.asm"
PokemonTower2Blocks: INCBIN "maps/pokemontower2.blk"

INCLUDE "maps/headers/pokemontower3.asm"
INCLUDE "maps/scripts/pokemontower3.asm"
INCLUDE "maps/objects/pokemontower3.asm"
PokemonTower3Blocks: INCBIN "maps/pokemontower3.blk"

INCLUDE "maps/headers/pokemontower4.asm"
INCLUDE "maps/scripts/pokemontower4.asm"
INCLUDE "maps/objects/pokemontower4.asm"
PokemonTower4Blocks: INCBIN "maps/pokemontower4.blk"

INCLUDE "maps/headers/pokemontower5.asm"
INCLUDE "maps/scripts/pokemontower5.asm"
INCLUDE "maps/objects/pokemontower5.asm"
PokemonTower5Blocks: INCBIN "maps/pokemontower5.blk"

INCLUDE "maps/headers/pokemontower6.asm"
INCLUDE "maps/scripts/pokemontower6.asm"
INCLUDE "maps/objects/pokemontower6.asm"
PokemonTower6Blocks: INCBIN "maps/pokemontower6.blk"

	INCBIN "maps/unusedblocks60cef.blk"

INCLUDE "maps/headers/pokemontower7.asm"
INCLUDE "maps/scripts/pokemontower7.asm"
INCLUDE "maps/objects/pokemontower7.asm"
PokemonTower7Blocks: INCBIN "maps/pokemontower7.blk"

INCLUDE "maps/headers/celadonmart1.asm"
INCLUDE "maps/scripts/celadonmart1.asm"
INCLUDE "maps/objects/celadonmart1.asm"
CeladonMart1Blocks: INCBIN "maps/celadonmart1.blk"

INCLUDE "engine/overworld/cinnabar_lab.asm"

INCLUDE "maps/headers/viridianforest.asm"
INCLUDE "maps/scripts/viridianforest.asm"
INCLUDE "maps/objects/viridianforest.asm"

INCLUDE "maps/headers/ssanne1.asm"
INCLUDE "maps/scripts/ssanne1.asm"
INCLUDE "maps/objects/ssanne1.asm"
SSAnne1Blocks: INCBIN "maps/ssanne1.blk"

INCLUDE "maps/headers/ssanne2.asm"
INCLUDE "maps/scripts/ssanne2.asm"
INCLUDE "maps/objects/ssanne2.asm"
SSAnne2Blocks: INCBIN "maps/ssanne2.blk"

INCLUDE "maps/headers/ssanne4.asm"
INCLUDE "maps/scripts/ssanne4.asm"
INCLUDE "maps/objects/ssanne4.asm"
SSAnne4Blocks: INCBIN "maps/ssanne4.blk"

INCLUDE "maps/headers/ssanne5.asm"
INCLUDE "maps/scripts/ssanne5.asm"
INCLUDE "maps/objects/ssanne5.asm"
SSAnne5Blocks: INCBIN "maps/ssanne5.blk"

INCLUDE "maps/headers/ssanne6.asm"
INCLUDE "maps/scripts/ssanne6.asm"
INCLUDE "maps/objects/ssanne6.asm"
SSAnne6Blocks: INCBIN "maps/ssanne6.blk"

INCLUDE "maps/headers/ssanne7.asm"
INCLUDE "maps/scripts/ssanne7.asm"
INCLUDE "maps/objects/ssanne7.asm"
SSAnne7Blocks: INCBIN "maps/ssanne7.blk"

INCLUDE "maps/headers/ssanne8.asm"
INCLUDE "maps/scripts/ssanne8.asm"
INCLUDE "maps/objects/ssanne8.asm"
SSAnne8Blocks: INCBIN "maps/ssanne8.blk"

INCLUDE "maps/headers/ssanne9.asm"
INCLUDE "maps/scripts/ssanne9.asm"
INCLUDE "maps/objects/ssanne9.asm"

INCLUDE "maps/headers/ssanne10.asm"
INCLUDE "maps/scripts/ssanne10.asm"
INCLUDE "maps/objects/ssanne10.asm"

INCLUDE "maps/headers/undergroundpathns.asm"
INCLUDE "maps/scripts/undergroundpathns.asm"
INCLUDE "maps/objects/undergroundpathns.asm"

INCLUDE "maps/headers/undergroundpathwe.asm"
INCLUDE "maps/scripts/undergroundpathwe.asm"
INCLUDE "maps/objects/undergroundpathwe.asm"

INCLUDE "maps/headers/diglettscave.asm"
INCLUDE "maps/scripts/diglettscave.asm"
INCLUDE "maps/objects/diglettscave.asm"
DiglettsCaveBlocks: INCBIN "maps/diglettscave.blk"

INCLUDE "maps/headers/silphco11.asm"
INCLUDE "maps/scripts/silphco11.asm"
INCLUDE "maps/objects/silphco11.asm"
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

INCLUDE "maps/scripts/ceruleancity2.asm"

INCLUDE "maps/headers/viridiangym.asm"
INCLUDE "maps/scripts/viridiangym.asm"
INCLUDE "maps/objects/viridiangym.asm"
ViridianGymBlocks: INCBIN "maps/viridiangym.blk"

INCLUDE "maps/headers/pewtermart.asm"
INCLUDE "maps/scripts/pewtermart.asm"
INCLUDE "maps/objects/pewtermart.asm"

INCLUDE "maps/headers/unknowndungeon1.asm"
INCLUDE "maps/scripts/unknowndungeon1.asm"
INCLUDE "maps/objects/unknowndungeon1.asm"
UnknownDungeon1Blocks: INCBIN "maps/unknowndungeon1.blk"

INCLUDE "maps/headers/ceruleanhouse2.asm"
INCLUDE "maps/scripts/ceruleanhouse2.asm"
INCLUDE "maps/objects/ceruleanhouse2.asm"

INCLUDE "engine/menu/vending_machine.asm"

INCLUDE "maps/headers/fuchsiahouse1.asm"
INCLUDE "maps/scripts/fuchsiahouse1.asm"
INCLUDE "maps/scripts/move_deleter.asm"
INCLUDE "maps/scripts/move_reminder.asm"
INCLUDE "maps/objects/fuchsiahouse1.asm"

INCLUDE "maps/headers/fuchsiapokecenter.asm"
INCLUDE "maps/scripts/fuchsiapokecenter.asm"
INCLUDE "maps/objects/fuchsiapokecenter.asm"

INCLUDE "maps/headers/fuchsiahouse2.asm"
INCLUDE "maps/scripts/fuchsiahouse2.asm"
INCLUDE "maps/objects/fuchsiahouse2.asm"
FuchsiaHouse2Blocks: INCBIN "maps/fuchsiahouse2.blk"

INCLUDE "maps/headers/safarizoneentrance.asm"
INCLUDE "maps/scripts/safarizoneentrance.asm"
INCLUDE "maps/objects/safarizoneentrance.asm"
SafariZoneEntranceBlocks: INCBIN "maps/safarizoneentrance.blk"

INCLUDE "maps/headers/fuchsiagym.asm"
INCLUDE "maps/scripts/fuchsiagym.asm"
INCLUDE "maps/objects/fuchsiagym.asm"
FuchsiaGymBlocks: INCBIN "maps/fuchsiagym.blk"

INCLUDE "maps/headers/fuchsiameetingroom.asm"
INCLUDE "maps/scripts/fuchsiameetingroom.asm"
INCLUDE "maps/objects/fuchsiameetingroom.asm"
FuchsiaMeetingRoomBlocks: INCBIN "maps/fuchsiameetingroom.blk"

INCLUDE "maps/headers/cinnabargym.asm"
INCLUDE "maps/scripts/cinnabargym.asm"
INCLUDE "maps/objects/cinnabargym.asm"
CinnabarGymBlocks: INCBIN "maps/cinnabargym.blk"

INCLUDE "maps/headers/lab1.asm"
INCLUDE "maps/scripts/lab1.asm"
INCLUDE "maps/objects/lab1.asm"
Lab1Blocks: INCBIN "maps/lab1.blk"

INCLUDE "maps/headers/lab2.asm"
INCLUDE "maps/scripts/lab2.asm"
INCLUDE "maps/objects/lab2.asm"
Lab2Blocks: INCBIN "maps/lab2.blk"

INCLUDE "maps/headers/lab3.asm"
INCLUDE "maps/scripts/lab3.asm"
INCLUDE "maps/objects/lab3.asm"
Lab3Blocks: INCBIN "maps/lab3.blk"

INCLUDE "maps/headers/lab4.asm"
INCLUDE "maps/scripts/lab4.asm"
INCLUDE "maps/objects/lab4.asm"
Lab4Blocks: INCBIN "maps/lab4.blk"

INCLUDE "maps/headers/cinnabarpokecenter.asm"
INCLUDE "maps/scripts/cinnabarpokecenter.asm"
INCLUDE "maps/objects/cinnabarpokecenter.asm"

INCLUDE "maps/headers/cinnabarmart.asm"
INCLUDE "maps/scripts/cinnabarmart.asm"
INCLUDE "maps/objects/cinnabarmart.asm"

INCLUDE "maps/headers/copycatshouse1f.asm"
INCLUDE "maps/scripts/copycatshouse1f.asm"
INCLUDE "maps/objects/copycatshouse1f.asm"

INCLUDE "maps/headers/gary.asm"
INCLUDE "maps/scripts/gary.asm"
INCLUDE "maps/objects/gary.asm"
GaryBlocks: INCBIN "maps/gary.blk"

INCLUDE "maps/headers/lorelei.asm"
INCLUDE "maps/scripts/lorelei.asm"
INCLUDE "maps/objects/lorelei.asm"
LoreleiBlocks: INCBIN "maps/lorelei.blk"

INCLUDE "maps/headers/bruno.asm"
INCLUDE "maps/scripts/bruno.asm"
INCLUDE "maps/objects/bruno.asm"
BrunoBlocks: INCBIN "maps/bruno.blk"

INCLUDE "maps/headers/agatha.asm"
INCLUDE "maps/scripts/agatha.asm"
INCLUDE "maps/objects/agatha.asm"
AgathaBlocks: INCBIN "maps/agatha.blk"

INCLUDE "engine/menu/league_pc.asm"

INCLUDE "engine/overworld/hidden_items.asm"

INCLUDE "engine/overworld/elevator.asm"


SECTION "bank1E",ROMX,BANK[$1E]

INCLUDE "engine/battle/animations.asm"

INCLUDE "engine/overworld/cut2.asm"

INCLUDE "engine/overworld/ssanne.asm"

RedFishingTilesFront: INCBIN "gfx/red_fishing_tile_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/red_fishing_tile_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/red_fishing_tile_side.2bpp"
RedFishingRodTiles:   INCBIN "gfx/red_fishingrod_tiles.2bpp"
GreenFishingTilesFront: INCBIN "gfx/green_fishing_tile_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/green_fishing_tile_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/green_fishing_tile_side.2bpp"

INCLUDE "data/animations.asm"

INCLUDE "engine/evolution.asm"

INCLUDE "color/animations.asm"

; Inserted pokemon images go here

SECTION "bank32",ROMX,BANK[$32]

GrowlithePicFront:   INCBIN "gfx/gs/mon/growlithe.pic"
GrowlithePicBack:    INCBIN "gfx/gs/mon/growlitheb.pic"
OnixPicFront:        INCBIN "gfx/gs/mon/onix.pic"
OnixPicBack:         INCBIN "gfx/gs/mon/onixb.pic"
FearowPicFront:      INCBIN "gfx/gs/mon/fearow.pic"
FearowPicBack:       INCBIN "gfx/gs/mon/fearowb.pic"
PidgeyPicFront:      INCBIN "gfx/gs/mon/pidgey.pic"
PidgeyPicBack:       INCBIN "gfx/gs/mon/pidgeyb.pic"
SlowpokePicFront:    INCBIN "gfx/gs/mon/slowpoke.pic"
SlowpokePicBack:     INCBIN "gfx/gs/mon/slowpokeb.pic"
KadabraPicFront:     INCBIN "gfx/gs/mon/kadabra.pic"
KadabraPicBack:      INCBIN "gfx/gs/mon/kadabrab.pic"
GravelerPicFront:    INCBIN "gfx/gs/mon/graveler.pic"
GravelerPicBack:     INCBIN "gfx/gs/mon/gravelerb.pic"
ChanseyPicFront:     INCBIN "gfx/gs/mon/chansey.pic"
ChanseyPicBack:      INCBIN "gfx/gs/mon/chanseyb.pic"
MachokePicFront:     INCBIN "gfx/gs/mon/machoke.pic"
MachokePicBack:      INCBIN "gfx/gs/mon/machokeb.pic"
MrMimePicFront:      INCBIN "gfx/gs/mon/mr.mime.pic"
MrMimePicBack:       INCBIN "gfx/gs/mon/mr.mimeb.pic"
HitmonleePicFront:   INCBIN "gfx/gs/mon/hitmonlee.pic"
HitmonleePicBack:    INCBIN "gfx/gs/mon/hitmonleeb.pic"
HitmonchanPicFront:  INCBIN "gfx/gs/mon/hitmonchan.pic"
HitmonchanPicBack:   INCBIN "gfx/gs/mon/hitmonchanb.pic"
ArbokPicFront:       INCBIN "gfx/gs/mon/arbok.pic"
ArbokPicBack:        INCBIN "gfx/gs/mon/arbokb.pic"
ParasectPicFront:    INCBIN "gfx/gs/mon/parasect.pic"
ParasectPicBack:     INCBIN "gfx/gs/mon/parasectb.pic"
PsyduckPicFront:     INCBIN "gfx/gs/mon/psyduck.pic"
PsyduckPicBack:      INCBIN "gfx/gs/mon/psyduckb.pic"
DrowzeePicFront:     INCBIN "gfx/gs/mon/drowzee.pic"
DrowzeePicBack:      INCBIN "gfx/gs/mon/drowzeeb.pic"
GolemPicFront:       INCBIN "gfx/gs/mon/golem.pic"
GolemPicBack:        INCBIN "gfx/gs/mon/golemb.pic"
MagmarPicFront:      INCBIN "gfx/gs/mon/magmar.pic"
MagmarPicBack:       INCBIN "gfx/gs/mon/magmarb.pic"
ElectabuzzPicFront:  INCBIN "gfx/gs/mon/electabuzz.pic"
ElectabuzzPicBack:   INCBIN "gfx/gs/mon/electabuzzb.pic"
MagnetonPicFront:    INCBIN "gfx/gs/mon/magneton.pic"
MagnetonPicBack:     INCBIN "gfx/gs/mon/magnetonb.pic"
KoffingPicFront:     INCBIN "gfx/gs/mon/koffing.pic"
KoffingPicBack:      INCBIN "gfx/gs/mon/koffingb.pic"
MankeyPicFront:      INCBIN "gfx/gs/mon/mankey.pic"
MankeyPicBack:       INCBIN "gfx/gs/mon/mankeyb.pic"
SeelPicFront:        INCBIN "gfx/gs/mon/seel.pic"
SeelPicBack:         INCBIN "gfx/gs/mon/seelb.pic"
DiglettPicFront:     INCBIN "gfx/gs/mon/diglett.pic"
DiglettPicBack:      INCBIN "gfx/gs/mon/diglettb.pic"
TaurosPicFront:      INCBIN "gfx/gs/mon/tauros.pic"
TaurosPicBack:       INCBIN "gfx/gs/mon/taurosb.pic"


SECTION "bank33",ROMX,BANK[$33]


RhydonPicFront:      INCBIN "gfx/gs/mon/rhydon.pic"
RhydonPicBack:       INCBIN "gfx/gs/mon/rhydonb.pic"
KangaskhanPicFront:  INCBIN "gfx/gs/mon/kangaskhan.pic"
KangaskhanPicBack:   INCBIN "gfx/gs/mon/kangaskhanb.pic"
NidoranMPicFront:    INCBIN "gfx/gs/mon/nidoranm.pic"
NidoranMPicBack:     INCBIN "gfx/gs/mon/nidoranmb.pic"
ClefairyPicFront:    INCBIN "gfx/gs/mon/clefairy.pic"
ClefairyPicBack:     INCBIN "gfx/gs/mon/clefairyb.pic"
SpearowPicFront:     INCBIN "gfx/gs/mon/spearow.pic"
SpearowPicBack:      INCBIN "gfx/gs/mon/spearowb.pic"
VoltorbPicFront:     INCBIN "gfx/gs/mon/voltorb.pic"
VoltorbPicBack:      INCBIN "gfx/gs/mon/voltorbb.pic"
NidokingPicFront:    INCBIN "gfx/gs/mon/nidoking.pic"
NidokingPicBack:     INCBIN "gfx/gs/mon/nidokingb.pic"
SlowbroPicFront:     INCBIN "gfx/gs/mon/slowbro.pic"
SlowbroPicBack:      INCBIN "gfx/gs/mon/slowbrob.pic"
IvysaurPicFront:     INCBIN "gfx/gs/mon/ivysaur.pic"
IvysaurPicBack:      INCBIN "gfx/gs/mon/ivysaurb.pic"
ExeggutorPicFront:   INCBIN "gfx/gs/mon/exeggutor.pic"
ExeggutorPicBack:    INCBIN "gfx/gs/mon/exeggutorb.pic"
LickitungPicFront:   INCBIN "gfx/gs/mon/lickitung.pic"
LickitungPicBack:    INCBIN "gfx/gs/mon/lickitungb.pic"
ExeggcutePicFront:   INCBIN "gfx/gs/mon/exeggcute.pic"
ExeggcutePicBack:    INCBIN "gfx/gs/mon/exeggcuteb.pic"
GrimerPicFront:      INCBIN "gfx/gs/mon/grimer.pic"
GrimerPicBack:       INCBIN "gfx/gs/mon/grimerb.pic"
GengarPicFront:      INCBIN "gfx/gs/mon/gengar.pic"
GengarPicBack:       INCBIN "gfx/gs/mon/gengarb.pic"
NidoranFPicFront:    INCBIN "gfx/gs/mon/nidoranf.pic"
NidoranFPicBack:     INCBIN "gfx/gs/mon/nidoranfb.pic"
NidoqueenPicFront:   INCBIN "gfx/gs/mon/nidoqueen.pic"
NidoqueenPicBack:    INCBIN "gfx/gs/mon/nidoqueenb.pic"
CubonePicFront:      INCBIN "gfx/gs/mon/cubone.pic"
CubonePicBack:       INCBIN "gfx/gs/mon/cuboneb.pic"
RhyhornPicFront:     INCBIN "gfx/gs/mon/rhyhorn.pic"
RhyhornPicBack:      INCBIN "gfx/gs/mon/rhyhornb.pic"
LaprasPicFront:      INCBIN "gfx/gs/mon/lapras.pic"
LaprasPicBack:       INCBIN "gfx/gs/mon/laprasb.pic"
ArcaninePicFront:    INCBIN "gfx/gs/mon/arcanine.pic"
ArcaninePicBack:     INCBIN "gfx/gs/mon/arcanineb.pic"
GyaradosPicFront:    INCBIN "gfx/gs/mon/gyarados.pic"
GyaradosPicBack:     INCBIN "gfx/gs/mon/gyaradosb.pic"
ShellderPicFront:    INCBIN "gfx/gs/mon/shellder.pic"
ShellderPicBack:     INCBIN "gfx/gs/mon/shellderb.pic"


SECTION "bank34",ROMX,BANK[$34]


ArticunoPicFront:    INCBIN "gfx/gs/mon/articuno.pic"
ArticunoPicBack:     INCBIN "gfx/gs/mon/articunob.pic"
ZapdosPicFront:      INCBIN "gfx/gs/mon/zapdos.pic"
ZapdosPicBack:       INCBIN "gfx/gs/mon/zapdosb.pic"
DittoPicFront:       INCBIN "gfx/gs/mon/ditto.pic"
DittoPicBack:        INCBIN "gfx/gs/mon/dittob.pic"
MeowthPicFront:      INCBIN "gfx/gs/mon/meowth.pic"
MeowthPicBack:       INCBIN "gfx/gs/mon/meowthb.pic"
KrabbyPicFront:      INCBIN "gfx/gs/mon/krabby.pic"
KrabbyPicBack:       INCBIN "gfx/gs/mon/krabbyb.pic"
VulpixPicFront:      INCBIN "gfx/gs/mon/vulpix.pic"
VulpixPicBack:       INCBIN "gfx/gs/mon/vulpixb.pic"
NinetalesPicFront:   INCBIN "gfx/gs/mon/ninetales.pic"
NinetalesPicBack:    INCBIN "gfx/gs/mon/ninetalesb.pic"
PikachuPicFront:     INCBIN "gfx/gs/mon/pikachu.pic"
PikachuPicBack:      INCBIN "gfx/gs/mon/pikachub.pic"
RaichuPicFront:      INCBIN "gfx/gs/mon/raichu.pic"
RaichuPicBack:       INCBIN "gfx/gs/mon/raichub.pic"
DratiniPicFront:     INCBIN "gfx/gs/mon/dratini.pic"
DratiniPicBack:      INCBIN "gfx/gs/mon/dratinib.pic"
DragonairPicFront:   INCBIN "gfx/gs/mon/dragonair.pic"
DragonairPicBack:    INCBIN "gfx/gs/mon/dragonairb.pic"
KabutoPicFront:      INCBIN "gfx/gs/mon/kabuto.pic"
KabutoPicBack:       INCBIN "gfx/gs/mon/kabutob.pic"
KabutopsPicFront:    INCBIN "gfx/gs/mon/kabutops.pic"
KabutopsPicBack:     INCBIN "gfx/gs/mon/kabutopsb.pic"
HorseaPicFront:      INCBIN "gfx/gs/mon/horsea.pic"
HorseaPicBack:       INCBIN "gfx/gs/mon/horseab.pic"
SeadraPicFront:      INCBIN "gfx/gs/mon/seadra.pic"
SeadraPicBack:       INCBIN "gfx/gs/mon/seadrab.pic"
SandshrewPicFront:   INCBIN "gfx/gs/mon/sandshrew.pic"
SandshrewPicBack:    INCBIN "gfx/gs/mon/sandshrewb.pic"
SandslashPicFront:   INCBIN "gfx/gs/mon/sandslash.pic"
SandslashPicBack:    INCBIN "gfx/gs/mon/sandslashb.pic"
OmanytePicFront:     INCBIN "gfx/gs/mon/omanyte.pic"
OmanytePicBack:      INCBIN "gfx/gs/mon/omanyteb.pic"
OmastarPicFront:     INCBIN "gfx/gs/mon/omastar.pic"
OmastarPicBack:      INCBIN "gfx/gs/mon/omastarb.pic"
JigglypuffPicFront:  INCBIN "gfx/gs/mon/jigglypuff.pic"
JigglypuffPicBack:   INCBIN "gfx/gs/mon/jigglypuffb.pic"
WigglytuffPicFront:  INCBIN "gfx/gs/mon/wigglytuff.pic"
WigglytuffPicBack:   INCBIN "gfx/gs/mon/wigglytuffb.pic"
EeveePicFront:       INCBIN "gfx/gs/mon/eevee.pic"
EeveePicBack:        INCBIN "gfx/gs/mon/eeveeb.pic"
FlareonPicFront:     INCBIN "gfx/gs/mon/flareon.pic"
FlareonPicBack:      INCBIN "gfx/gs/mon/flareonb.pic"


SECTION "bank35",ROMX,BANK[$35]


DodrioPicFront:      INCBIN "gfx/gs/mon/dodrio.pic"
DodrioPicBack:       INCBIN "gfx/gs/mon/dodriob.pic"
PrimeapePicFront:    INCBIN "gfx/gs/mon/primeape.pic"
PrimeapePicBack:     INCBIN "gfx/gs/mon/primeapeb.pic"
DugtrioPicFront:     INCBIN "gfx/gs/mon/dugtrio.pic"
DugtrioPicBack:      INCBIN "gfx/gs/mon/dugtriob.pic"
VenomothPicFront:    INCBIN "gfx/gs/mon/venomoth.pic"
VenomothPicBack:     INCBIN "gfx/gs/mon/venomothb.pic"
DewgongPicFront:     INCBIN "gfx/gs/mon/dewgong.pic"
DewgongPicBack:      INCBIN "gfx/gs/mon/dewgongb.pic"
CaterpiePicFront:    INCBIN "gfx/gs/mon/caterpie.pic"
CaterpiePicBack:     INCBIN "gfx/gs/mon/caterpieb.pic"
MetapodPicFront:     INCBIN "gfx/gs/mon/metapod.pic"
MetapodPicBack:      INCBIN "gfx/gs/mon/metapodb.pic"
ButterfreePicFront:  INCBIN "gfx/gs/mon/butterfree.pic"
ButterfreePicBack:   INCBIN "gfx/gs/mon/butterfreeb.pic"
MachampPicFront:     INCBIN "gfx/gs/mon/machamp.pic"
MachampPicBack:      INCBIN "gfx/gs/mon/machampb.pic"
GolduckPicFront:     INCBIN "gfx/gs/mon/golduck.pic"
GolduckPicBack:      INCBIN "gfx/gs/mon/golduckb.pic"
HypnoPicFront:       INCBIN "gfx/gs/mon/hypno.pic"
HypnoPicBack:        INCBIN "gfx/gs/mon/hypnob.pic"
GolbatPicFront:      INCBIN "gfx/gs/mon/golbat.pic"
GolbatPicBack:       INCBIN "gfx/gs/mon/golbatb.pic"
MewtwoPicFront:      INCBIN "gfx/gs/mon/mewtwo.pic"
MewtwoPicBack:       INCBIN "gfx/gs/mon/mewtwob.pic"
SnorlaxPicFront:     INCBIN "gfx/gs/mon/snorlax.pic"
SnorlaxPicBack:      INCBIN "gfx/gs/mon/snorlaxb.pic"
MagikarpPicFront:    INCBIN "gfx/gs/mon/magikarp.pic"
MagikarpPicBack:     INCBIN "gfx/gs/mon/magikarpb.pic"
MukPicFront:         INCBIN "gfx/gs/mon/muk.pic"
MukPicBack:          INCBIN "gfx/gs/mon/mukb.pic"
KinglerPicFront:     INCBIN "gfx/gs/mon/kingler.pic"
KinglerPicBack:      INCBIN "gfx/gs/mon/kinglerb.pic"
CloysterPicFront:    INCBIN "gfx/gs/mon/cloyster.pic"
CloysterPicBack:     INCBIN "gfx/gs/mon/cloysterb.pic"
ElectrodePicFront:   INCBIN "gfx/gs/mon/electrode.pic"
ElectrodePicBack:    INCBIN "gfx/gs/mon/electrodeb.pic"
ClefablePicFront:    INCBIN "gfx/gs/mon/clefable.pic"
ClefablePicBack:     INCBIN "gfx/gs/mon/clefableb.pic"
WeezingPicFront:     INCBIN "gfx/gs/mon/weezing.pic"
WeezingPicBack:      INCBIN "gfx/gs/mon/weezingb.pic"
PersianPicFront:     INCBIN "gfx/gs/mon/persian.pic"
PersianPicBack:      INCBIN "gfx/gs/mon/persianb.pic"



SECTION "bank36",ROMX,BANK[$36]


BulbasaurPicFront:   INCBIN "gfx/gs/mon/bulbasaur.pic"
BulbasaurPicBack:    INCBIN "gfx/gs/mon/bulbasaurb.pic"
VenusaurPicFront:    INCBIN "gfx/gs/mon/venusaur.pic"
VenusaurPicBack:     INCBIN "gfx/gs/mon/venusaurb.pic"
TentacruelPicFront:  INCBIN "gfx/gs/mon/tentacruel.pic"
TentacruelPicBack:   INCBIN "gfx/gs/mon/tentacruelb.pic"
GoldeenPicFront:     INCBIN "gfx/gs/mon/goldeen.pic"
GoldeenPicBack:      INCBIN "gfx/gs/mon/goldeenb.pic"
SeakingPicFront:     INCBIN "gfx/gs/mon/seaking.pic"
SeakingPicBack:      INCBIN "gfx/gs/mon/seakingb.pic"
PonytaPicFront:      INCBIN "gfx/gs/mon/ponyta.pic"
RapidashPicFront:    INCBIN "gfx/gs/mon/rapidash.pic"
PonytaPicBack:       INCBIN "gfx/gs/mon/ponytab.pic"
RapidashPicBack:     INCBIN "gfx/gs/mon/rapidashb.pic"
RattataPicFront:     INCBIN "gfx/gs/mon/rattata.pic"
RattataPicBack:      INCBIN "gfx/gs/mon/rattatab.pic"
RaticatePicFront:    INCBIN "gfx/gs/mon/raticate.pic"
RaticatePicBack:     INCBIN "gfx/gs/mon/raticateb.pic"
NidorinoPicFront:    INCBIN "gfx/gs/mon/nidorino.pic"
NidorinoPicBack:     INCBIN "gfx/gs/mon/nidorinob.pic"
NidorinaPicFront:    INCBIN "gfx/gs/mon/nidorina.pic"
NidorinaPicBack:     INCBIN "gfx/gs/mon/nidorinab.pic"
GeodudePicFront:     INCBIN "gfx/gs/mon/geodude.pic"
GeodudePicBack:      INCBIN "gfx/gs/mon/geodudeb.pic"
PorygonPicFront:     INCBIN "gfx/gs/mon/porygon.pic"
PorygonPicBack:      INCBIN "gfx/gs/mon/porygonb.pic"
AerodactylPicFront:  INCBIN "gfx/gs/mon/aerodactyl.pic"
AerodactylPicBack:   INCBIN "gfx/gs/mon/aerodactylb.pic"
MagnemitePicFront:   INCBIN "gfx/gs/mon/magnemite.pic"
MagnemitePicBack:    INCBIN "gfx/gs/mon/magnemiteb.pic"
CharmanderPicFront:  INCBIN "gfx/gs/mon/charmander.pic"
CharmanderPicBack:   INCBIN "gfx/gs/mon/charmanderb.pic"
SquirtlePicFront:    INCBIN "gfx/gs/mon/squirtle.pic"
SquirtlePicBack:     INCBIN "gfx/gs/mon/squirtleb.pic"
CharmeleonPicFront:  INCBIN "gfx/gs/mon/charmeleon.pic"
CharmeleonPicBack:   INCBIN "gfx/gs/mon/charmeleonb.pic"
WartortlePicFront:   INCBIN "gfx/gs/mon/wartortle.pic"
WartortlePicBack:    INCBIN "gfx/gs/mon/wartortleb.pic"
CharizardPicFront:   INCBIN "gfx/gs/mon/charizard.pic"
CharizardPicBack:    INCBIN "gfx/gs/mon/charizardb.pic"
FossilKabutopsPic:   INCBIN "gfx/other/fossilkabutops.pic"
FossilAerodactylPic: INCBIN "gfx/other/fossilaerodactyl.pic"
GhostPic:            INCBIN "gfx/other/ghost.pic"
OddishPicFront:      INCBIN "gfx/gs/mon/oddish.pic"
OddishPicBack:       INCBIN "gfx/gs/mon/oddishb.pic"
GloomPicFront:       INCBIN "gfx/gs/mon/gloom.pic"
GloomPicBack:        INCBIN "gfx/gs/mon/gloomb.pic"


SECTION "bank37",ROMX,BANK[$37]


BellsproutPicFront:  INCBIN "gfx/gs/mon/bellsprout.pic"
BellsproutPicBack:   INCBIN "gfx/gs/mon/bellsproutb.pic"
WeepinbellPicFront:  INCBIN "gfx/gs/mon/weepinbell.pic"
WeepinbellPicBack:   INCBIN "gfx/gs/mon/weepinbellb.pic"
VictreebelPicFront:  INCBIN "gfx/gs/mon/victreebel.pic"
VictreebelPicBack:   INCBIN "gfx/gs/mon/victreebelb.pic"

MewPicFront:         INCBIN "gfx/gs/mon/mew.pic"
MewPicBack:          INCBIN "gfx/gs/mon/mewb.pic"

FarfetchdPicFront:   INCBIN "gfx/gs/mon/farfetchd.pic"
FarfetchdPicBack:    INCBIN "gfx/gs/mon/farfetchdb.pic"
VenonatPicFront:     INCBIN "gfx/gs/mon/venonat.pic"
VenonatPicBack:      INCBIN "gfx/gs/mon/venonatb.pic"
DragonitePicFront:   INCBIN "gfx/gs/mon/dragonite.pic"
DragonitePicBack:    INCBIN "gfx/gs/mon/dragoniteb.pic"
DoduoPicFront:       INCBIN "gfx/gs/mon/doduo.pic"
DoduoPicBack:        INCBIN "gfx/gs/mon/doduob.pic"
PoliwagPicFront:     INCBIN "gfx/gs/mon/poliwag.pic"
PoliwagPicBack:      INCBIN "gfx/gs/mon/poliwagb.pic"
JynxPicFront:        INCBIN "gfx/gs/mon/jynx.pic"
JynxPicBack:         INCBIN "gfx/gs/mon/jynxb.pic"
MarowakPicFront:     INCBIN "gfx/gs/mon/marowak.pic"
MarowakPicBack:      INCBIN "gfx/gs/mon/marowakb.pic"
LeafeonPicFront::    INCBIN "gfx/gs/mon/leafeon.pic"
LeafeonPicBack::     INCBIN "gfx/gs/mon/leafeonb.pic"

BillSprite:          INCBIN "gfx/sprites/bill.2bpp"
BlaineSprite:        INCBIN "gfx/sprites/blaine.2bpp"
BrockSprite:         INCBIN "gfx/sprites/brock.2bpp"
KogaSprite:          INCBIN "gfx/sprites/koga.2bpp"
MistySprite:         INCBIN "gfx/sprites/misty.2bpp"
SabrinaSprite:       INCBIN "gfx/sprites/sabrina.2bpp"
SurgeSprite:         INCBIN "gfx/sprites/surge.2bpp"
RocketFSprite:       INCBIN "gfx/sprites/rocket_f.2bpp"
StarterSprite:       INCBIN "gfx/sprites/starter.2bpp"
BallMSprite:         INCBIN "gfx/sprites/ball_m.2bpp"
