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

RedPicFront:: INCBIN "pic/gstrainer/red.pic"
rept 11 ; Padding
	db 0
endr

ShrinkPic1::  INCBIN "pic/other/shrink1.pic"
ShrinkPic2::  INCBIN "pic/other/shrink2.pic"

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

MoltresPicFront:    INCBIN "pic/gsmon/moltres.pic"
MoltresPicBack:     INCBIN "pic/gsmonback/moltresb.pic"

TentacoolPicFront:  INCBIN "pic/gsmon/tentacool.pic"
TentacoolPicBack:   INCBIN "pic/gsmonback/tentacoolb.pic"
ScytherPicFront:    INCBIN "pic/gsmon/scyther.pic"
ScytherPicBack:     INCBIN "pic/gsmonback/scytherb.pic"
StaryuPicFront:     INCBIN "pic/gsmon/staryu.pic"
StaryuPicBack:      INCBIN "pic/gsmonback/staryub.pic"
BlastoisePicFront:  INCBIN "pic/gsmon/blastoise.pic"
BlastoisePicBack:   INCBIN "pic/gsmonback/blastoiseb.pic"
PinsirPicFront:     INCBIN "pic/gsmon/pinsir.pic"
PinsirPicBack:      INCBIN "pic/gsmonback/pinsirb.pic"
TangelaPicFront:    INCBIN "pic/gsmon/tangela.pic"
TangelaPicBack:     INCBIN "pic/gsmonback/tangelab.pic"

JolteonPicFront:    INCBIN "pic/gsmon/jolteon.pic"
JolteonPicBack:     INCBIN "pic/gsmonback/jolteonb.pic"
VaporeonPicFront:   INCBIN "pic/gsmon/vaporeon.pic"
VaporeonPicBack:    INCBIN "pic/gsmonback/vaporeonb.pic"
MachopPicFront:     INCBIN "pic/gsmon/machop.pic"
MachopPicBack:      INCBIN "pic/gsmonback/machopb.pic"
ZubatPicFront:      INCBIN "pic/gsmon/zubat.pic"
ZubatPicBack:       INCBIN "pic/gsmonback/zubatb.pic"
EkansPicFront:      INCBIN "pic/gsmon/ekans.pic"
EkansPicBack:       INCBIN "pic/gsmonback/ekansb.pic"
ParasPicFront:      INCBIN "pic/gsmon/paras.pic"
ParasPicBack:       INCBIN "pic/gsmonback/parasb.pic"
PoliwhirlPicFront:  INCBIN "pic/gsmon/poliwhirl.pic"
PoliwhirlPicBack:   INCBIN "pic/gsmonback/poliwhirlb.pic"
PoliwrathPicFront:  INCBIN "pic/gsmon/poliwrath.pic"
PoliwrathPicBack:   INCBIN "pic/gsmonback/poliwrathb.pic"
WeedlePicFront:     INCBIN "pic/gsmon/weedle.pic"
WeedlePicBack:      INCBIN "pic/gsmonback/weedleb.pic"
KakunaPicFront:     INCBIN "pic/gsmon/kakuna.pic"
KakunaPicBack:      INCBIN "pic/gsmonback/kakunab.pic"
BeedrillPicFront:   INCBIN "pic/gsmon/beedrill.pic"
BeedrillPicBack:    INCBIN "pic/gsmonback/beedrillb.pic"



SECTION "Battle (bank 9)", ROMX[$7d6b], BANK[$9]
INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/save_trainer_name.asm"
INCLUDE "engine/battle/moveEffects/focus_energy_effect.asm"


SECTION "Pics 2", ROMX, BANK[PICS_2]


HaunterPicFront:    INCBIN "pic/gsmon/haunter.pic"
HaunterPicBack:     INCBIN "pic/gsmonback/haunterb.pic"
AbraPicFront:       INCBIN "pic/gsmon/abra.pic"
AbraPicBack:        INCBIN "pic/gsmonback/abrab.pic"
AlakazamPicFront:   INCBIN "pic/gsmon/alakazam.pic"
AlakazamPicBack:    INCBIN "pic/gsmonback/alakazamb.pic"
PidgeottoPicFront:  INCBIN "pic/gsmon/pidgeotto.pic"
PidgeottoPicBack:   INCBIN "pic/gsmonback/pidgeottob.pic"
PidgeotPicFront:    INCBIN "pic/gsmon/pidgeot.pic"
PidgeotPicBack:     INCBIN "pic/gsmonback/pidgeotb.pic"
StarmiePicFront:    INCBIN "pic/gsmon/starmie.pic"
StarmiePicBack:     INCBIN "pic/gsmonback/starmieb.pic"
RedPicBack:         INCBIN "pic/gstrainer/redb.pic"
OldManPic:          INCBIN "pic/gstrainer/oldman.pic"

GastlyPicFront:     INCBIN "pic/gsmon/gastly.pic"
GastlyPicBack:      INCBIN "pic/gsmonback/gastlyb.pic"
VileplumePicFront:  INCBIN "pic/gsmon/vileplume.pic"
VileplumePicBack:   INCBIN "pic/gsmonback/vileplumeb.pic"



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
YoungsterPic::     INCBIN "pic/gstrainer/youngster.pic"
BugCatcherPic::    INCBIN "pic/gstrainer/bugcatcher.pic"
LassPic::          INCBIN "pic/gstrainer/lass.pic"
SailorPic::        INCBIN "pic/gstrainer/sailor.pic"
JrTrainerMPic::    INCBIN "pic/gstrainer/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "pic/gstrainer/jr.trainerf.pic"
PokemaniacPic::    INCBIN "pic/gstrainer/pokemaniac.pic"
SuperNerdPic::     INCBIN "pic/gstrainer/supernerd.pic"
HikerPic::         INCBIN "pic/gstrainer/hiker.pic"
BikerPic::         INCBIN "pic/gstrainer/biker.pic"
BurglarPic::       INCBIN "pic/gstrainer/burglar.pic"
EngineerPic::      INCBIN "pic/gstrainer/engineer.pic"
SwimmerFPic::      INCBIN "pic/gstrainer/swimmer_f.pic"
FisherPic::        INCBIN "pic/gstrainer/fisher.pic"
SwimmerPic::       INCBIN "pic/gstrainer/swimmer.pic"
CueBallPic::       INCBIN "pic/gstrainer/cueball.pic"
GamblerPic::       INCBIN "pic/gstrainer/gambler.pic"
BeautyPic::        INCBIN "pic/gstrainer/beauty.pic"
PsychicPic::       INCBIN "pic/gstrainer/psychic.pic"
RockerPic::        INCBIN "pic/gstrainer/rocker.pic"
JugglerPic::       INCBIN "pic/gstrainer/juggler.pic"
TamerPic::         INCBIN "pic/gstrainer/tamer.pic"
BirdKeeperPic::    INCBIN "pic/gstrainer/birdkeeper.pic"
BlackbeltPic::     INCBIN "pic/gstrainer/blackbelt.pic"
Rival1Pic::        INCBIN "pic/gstrainer/rival1.pic"
ProfOakPic::       INCBIN "pic/gstrainer/prof.oak.pic"
RocketFPic::       INCBIN "pic/gstrainer/rocket_f.pic"
ScientistPic::     INCBIN "pic/gstrainer/scientist.pic"
GiovanniPic::      INCBIN "pic/gstrainer/giovanni.pic"
RocketPic::        INCBIN "pic/gstrainer/rocket.pic"
CooltrainerMPic::  INCBIN "pic/gstrainer/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "pic/gstrainer/cooltrainerf.pic"
BrunoPic::         INCBIN "pic/gstrainer/bruno.pic"
BrockPic::         INCBIN "pic/gstrainer/brock.pic"
MistyPic::         INCBIN "pic/ytrainer/misty.pic"
LtSurgePic::       INCBIN "pic/gstrainer/lt.surge.pic"
ErikaPic::         INCBIN "pic/gstrainer/erika.pic"
KogaPic::          INCBIN "pic/gstrainer/koga.pic"
BlainePic::        INCBIN "pic/gstrainer/blaine.pic"
SabrinaPic::       INCBIN "pic/gstrainer/sabrina.pic"
GentlemanPic::     INCBIN "pic/gstrainer/gentleman.pic"
Rival2Pic::        INCBIN "pic/gstrainer/rival2.pic"
Rival3Pic::        INCBIN "pic/gstrainer/rival3.pic"
LoreleiPic::       INCBIN "pic/gstrainer/lorelei.pic"
ChannelerPic::     INCBIN "pic/gstrainer/channeler.pic"
AgathaPic::        INCBIN "pic/gstrainer/agatha.pic"
LancePic::         INCBIN "pic/gstrainer/lance.pic"


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
	INCBIN "gfx/red/redgreenversion.1bpp" ; 10 tiles
ENDC
IF DEF(_GREEN)
	INCBIN "gfx/red/redgreenversion.1bpp" ; 10 tiles
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

GrowlithePicFront:   INCBIN "pic/gsmon/growlithe.pic"
GrowlithePicBack:    INCBIN "pic/gsmonback/growlitheb.pic"
OnixPicFront:        INCBIN "pic/gsmon/onix.pic"
OnixPicBack:         INCBIN "pic/gsmonback/onixb.pic"
FearowPicFront:      INCBIN "pic/gsmon/fearow.pic"
FearowPicBack:       INCBIN "pic/gsmonback/fearowb.pic"
PidgeyPicFront:      INCBIN "pic/gsmon/pidgey.pic"
PidgeyPicBack:       INCBIN "pic/gsmonback/pidgeyb.pic"
SlowpokePicFront:    INCBIN "pic/gsmon/slowpoke.pic"
SlowpokePicBack:     INCBIN "pic/gsmonback/slowpokeb.pic"
KadabraPicFront:     INCBIN "pic/gsmon/kadabra.pic"
KadabraPicBack:      INCBIN "pic/gsmonback/kadabrab.pic"
GravelerPicFront:    INCBIN "pic/gsmon/graveler.pic"
GravelerPicBack:     INCBIN "pic/gsmonback/gravelerb.pic"
ChanseyPicFront:     INCBIN "pic/gsmon/chansey.pic"
ChanseyPicBack:      INCBIN "pic/gsmonback/chanseyb.pic"
MachokePicFront:     INCBIN "pic/gsmon/machoke.pic"
MachokePicBack:      INCBIN "pic/gsmonback/machokeb.pic"
MrMimePicFront:      INCBIN "pic/gsmon/mr.mime.pic"
MrMimePicBack:       INCBIN "pic/gsmonback/mr.mimeb.pic"
HitmonleePicFront:   INCBIN "pic/gsmon/hitmonlee.pic"
HitmonleePicBack:    INCBIN "pic/gsmonback/hitmonleeb.pic"
HitmonchanPicFront:  INCBIN "pic/gsmon/hitmonchan.pic"
HitmonchanPicBack:   INCBIN "pic/gsmonback/hitmonchanb.pic"
ArbokPicFront:       INCBIN "pic/gsmon/arbok.pic"
ArbokPicBack:        INCBIN "pic/gsmonback/arbokb.pic"
ParasectPicFront:    INCBIN "pic/gsmon/parasect.pic"
ParasectPicBack:     INCBIN "pic/gsmonback/parasectb.pic"
PsyduckPicFront:     INCBIN "pic/gsmon/psyduck.pic"
PsyduckPicBack:      INCBIN "pic/gsmonback/psyduckb.pic"
DrowzeePicFront:     INCBIN "pic/gsmon/drowzee.pic"
DrowzeePicBack:      INCBIN "pic/gsmonback/drowzeeb.pic"
GolemPicFront:       INCBIN "pic/gsmon/golem.pic"
GolemPicBack:        INCBIN "pic/gsmonback/golemb.pic"
MagmarPicFront:      INCBIN "pic/gsmon/magmar.pic"
MagmarPicBack:       INCBIN "pic/gsmonback/magmarb.pic"
ElectabuzzPicFront:  INCBIN "pic/gsmon/electabuzz.pic"
ElectabuzzPicBack:   INCBIN "pic/gsmonback/electabuzzb.pic"
MagnetonPicFront:    INCBIN "pic/gsmon/magneton.pic"
MagnetonPicBack:     INCBIN "pic/gsmonback/magnetonb.pic"
KoffingPicFront:     INCBIN "pic/gsmon/koffing.pic"
KoffingPicBack:      INCBIN "pic/gsmonback/koffingb.pic"
MankeyPicFront:      INCBIN "pic/gsmon/mankey.pic"
MankeyPicBack:       INCBIN "pic/gsmonback/mankeyb.pic"
SeelPicFront:        INCBIN "pic/gsmon/seel.pic"
SeelPicBack:         INCBIN "pic/gsmonback/seelb.pic"
DiglettPicFront:     INCBIN "pic/gsmon/diglett.pic"
DiglettPicBack:      INCBIN "pic/gsmonback/diglettb.pic"
TaurosPicFront:      INCBIN "pic/gsmon/tauros.pic"
TaurosPicBack:       INCBIN "pic/gsmonback/taurosb.pic"


SECTION "bank33",ROMX,BANK[$33]


RhydonPicFront:      INCBIN "pic/gsmon/rhydon.pic"
RhydonPicBack:       INCBIN "pic/gsmonback/rhydonb.pic"
KangaskhanPicFront:  INCBIN "pic/gsmon/kangaskhan.pic"
KangaskhanPicBack:   INCBIN "pic/gsmonback/kangaskhanb.pic"
NidoranMPicFront:    INCBIN "pic/gsmon/nidoranm.pic"
NidoranMPicBack:     INCBIN "pic/gsmonback/nidoranmb.pic"
ClefairyPicFront:    INCBIN "pic/gsmon/clefairy.pic"
ClefairyPicBack:     INCBIN "pic/gsmonback/clefairyb.pic"
SpearowPicFront:     INCBIN "pic/gsmon/spearow.pic"
SpearowPicBack:      INCBIN "pic/gsmonback/spearowb.pic"
VoltorbPicFront:     INCBIN "pic/gsmon/voltorb.pic"
VoltorbPicBack:      INCBIN "pic/gsmonback/voltorbb.pic"
NidokingPicFront:    INCBIN "pic/gsmon/nidoking.pic"
NidokingPicBack:     INCBIN "pic/gsmonback/nidokingb.pic"
SlowbroPicFront:     INCBIN "pic/gsmon/slowbro.pic"
SlowbroPicBack:      INCBIN "pic/gsmonback/slowbrob.pic"
IvysaurPicFront:     INCBIN "pic/gsmon/ivysaur.pic"
IvysaurPicBack:      INCBIN "pic/gsmonback/ivysaurb.pic"
ExeggutorPicFront:   INCBIN "pic/gsmon/exeggutor.pic"
ExeggutorPicBack:    INCBIN "pic/gsmonback/exeggutorb.pic"
LickitungPicFront:   INCBIN "pic/gsmon/lickitung.pic"
LickitungPicBack:    INCBIN "pic/gsmonback/lickitungb.pic"
ExeggcutePicFront:   INCBIN "pic/gsmon/exeggcute.pic"
ExeggcutePicBack:    INCBIN "pic/gsmonback/exeggcuteb.pic"
GrimerPicFront:      INCBIN "pic/gsmon/grimer.pic"
GrimerPicBack:       INCBIN "pic/gsmonback/grimerb.pic"
GengarPicFront:      INCBIN "pic/gsmon/gengar.pic"
GengarPicBack:       INCBIN "pic/gsmonback/gengarb.pic"
NidoranFPicFront:    INCBIN "pic/gsmon/nidoranf.pic"
NidoranFPicBack:     INCBIN "pic/gsmonback/nidoranfb.pic"
NidoqueenPicFront:   INCBIN "pic/gsmon/nidoqueen.pic"
NidoqueenPicBack:    INCBIN "pic/gsmonback/nidoqueenb.pic"
CubonePicFront:      INCBIN "pic/gsmon/cubone.pic"
CubonePicBack:       INCBIN "pic/gsmonback/cuboneb.pic"
RhyhornPicFront:     INCBIN "pic/gsmon/rhyhorn.pic"
RhyhornPicBack:      INCBIN "pic/gsmonback/rhyhornb.pic"
LaprasPicFront:      INCBIN "pic/gsmon/lapras.pic"
LaprasPicBack:       INCBIN "pic/gsmonback/laprasb.pic"
ArcaninePicFront:    INCBIN "pic/gsmon/arcanine.pic"
ArcaninePicBack:     INCBIN "pic/gsmonback/arcanineb.pic"
GyaradosPicFront:    INCBIN "pic/gsmon/gyarados.pic"
GyaradosPicBack:     INCBIN "pic/gsmonback/gyaradosb.pic"
ShellderPicFront:    INCBIN "pic/gsmon/shellder.pic"
ShellderPicBack:     INCBIN "pic/gsmonback/shellderb.pic"


SECTION "bank34",ROMX,BANK[$34]


ArticunoPicFront:    INCBIN "pic/gsmon/articuno.pic"
ArticunoPicBack:     INCBIN "pic/gsmonback/articunob.pic"
ZapdosPicFront:      INCBIN "pic/gsmon/zapdos.pic"
ZapdosPicBack:       INCBIN "pic/gsmonback/zapdosb.pic"
DittoPicFront:       INCBIN "pic/gsmon/ditto.pic"
DittoPicBack:        INCBIN "pic/gsmonback/dittob.pic"
MeowthPicFront:      INCBIN "pic/gsmon/meowth.pic"
MeowthPicBack:       INCBIN "pic/gsmonback/meowthb.pic"
KrabbyPicFront:      INCBIN "pic/gsmon/krabby.pic"
KrabbyPicBack:       INCBIN "pic/gsmonback/krabbyb.pic"
VulpixPicFront:      INCBIN "pic/gsmon/vulpix.pic"
VulpixPicBack:       INCBIN "pic/gsmonback/vulpixb.pic"
NinetalesPicFront:   INCBIN "pic/gsmon/ninetales.pic"
NinetalesPicBack:    INCBIN "pic/gsmonback/ninetalesb.pic"
PikachuPicFront:     INCBIN "pic/gsmon/pikachu.pic"
PikachuPicBack:      INCBIN "pic/gsmonback/pikachub.pic"
RaichuPicFront:      INCBIN "pic/gsmon/raichu.pic"
RaichuPicBack:       INCBIN "pic/gsmonback/raichub.pic"
DratiniPicFront:     INCBIN "pic/gsmon/dratini.pic"
DratiniPicBack:      INCBIN "pic/gsmonback/dratinib.pic"
DragonairPicFront:   INCBIN "pic/gsmon/dragonair.pic"
DragonairPicBack:    INCBIN "pic/gsmonback/dragonairb.pic"
KabutoPicFront:      INCBIN "pic/gsmon/kabuto.pic"
KabutoPicBack:       INCBIN "pic/gsmonback/kabutob.pic"
KabutopsPicFront:    INCBIN "pic/gsmon/kabutops.pic"
KabutopsPicBack:     INCBIN "pic/gsmonback/kabutopsb.pic"
HorseaPicFront:      INCBIN "pic/gsmon/horsea.pic"
HorseaPicBack:       INCBIN "pic/gsmonback/horseab.pic"
SeadraPicFront:      INCBIN "pic/gsmon/seadra.pic"
SeadraPicBack:       INCBIN "pic/gsmonback/seadrab.pic"
SandshrewPicFront:   INCBIN "pic/gsmon/sandshrew.pic"
SandshrewPicBack:    INCBIN "pic/gsmonback/sandshrewb.pic"
SandslashPicFront:   INCBIN "pic/gsmon/sandslash.pic"
SandslashPicBack:    INCBIN "pic/gsmonback/sandslashb.pic"
OmanytePicFront:     INCBIN "pic/gsmon/omanyte.pic"
OmanytePicBack:      INCBIN "pic/gsmonback/omanyteb.pic"
OmastarPicFront:     INCBIN "pic/gsmon/omastar.pic"
OmastarPicBack:      INCBIN "pic/gsmonback/omastarb.pic"
JigglypuffPicFront:  INCBIN "pic/gsmon/jigglypuff.pic"
JigglypuffPicBack:   INCBIN "pic/gsmonback/jigglypuffb.pic"
WigglytuffPicFront:  INCBIN "pic/gsmon/wigglytuff.pic"
WigglytuffPicBack:   INCBIN "pic/gsmonback/wigglytuffb.pic"
EeveePicFront:       INCBIN "pic/gsmon/eevee.pic"
EeveePicBack:        INCBIN "pic/gsmonback/eeveeb.pic"
FlareonPicFront:     INCBIN "pic/gsmon/flareon.pic"
FlareonPicBack:      INCBIN "pic/gsmonback/flareonb.pic"


SECTION "bank35",ROMX,BANK[$35]


DodrioPicFront:      INCBIN "pic/gsmon/dodrio.pic"
DodrioPicBack:       INCBIN "pic/gsmonback/dodriob.pic"
PrimeapePicFront:    INCBIN "pic/gsmon/primeape.pic"
PrimeapePicBack:     INCBIN "pic/gsmonback/primeapeb.pic"
DugtrioPicFront:     INCBIN "pic/gsmon/dugtrio.pic"
DugtrioPicBack:      INCBIN "pic/gsmonback/dugtriob.pic"
VenomothPicFront:    INCBIN "pic/gsmon/venomoth.pic"
VenomothPicBack:     INCBIN "pic/gsmonback/venomothb.pic"
DewgongPicFront:     INCBIN "pic/gsmon/dewgong.pic"
DewgongPicBack:      INCBIN "pic/gsmonback/dewgongb.pic"
CaterpiePicFront:    INCBIN "pic/gsmon/caterpie.pic"
CaterpiePicBack:     INCBIN "pic/gsmonback/caterpieb.pic"
MetapodPicFront:     INCBIN "pic/gsmon/metapod.pic"
MetapodPicBack:      INCBIN "pic/gsmonback/metapodb.pic"
ButterfreePicFront:  INCBIN "pic/gsmon/butterfree.pic"
ButterfreePicBack:   INCBIN "pic/gsmonback/butterfreeb.pic"
MachampPicFront:     INCBIN "pic/gsmon/machamp.pic"
MachampPicBack:      INCBIN "pic/gsmonback/machampb.pic"
GolduckPicFront:     INCBIN "pic/gsmon/golduck.pic"
GolduckPicBack:      INCBIN "pic/gsmonback/golduckb.pic"
HypnoPicFront:       INCBIN "pic/gsmon/hypno.pic"
HypnoPicBack:        INCBIN "pic/gsmonback/hypnob.pic"
GolbatPicFront:      INCBIN "pic/gsmon/golbat.pic"
GolbatPicBack:       INCBIN "pic/gsmonback/golbatb.pic"
MewtwoPicFront:      INCBIN "pic/gsmon/mewtwo.pic"
MewtwoPicBack:       INCBIN "pic/gsmonback/mewtwob.pic"
SnorlaxPicFront:     INCBIN "pic/gsmon/snorlax.pic"
SnorlaxPicBack:      INCBIN "pic/gsmonback/snorlaxb.pic"
MagikarpPicFront:    INCBIN "pic/gsmon/magikarp.pic"
MagikarpPicBack:     INCBIN "pic/gsmonback/magikarpb.pic"
MukPicFront:         INCBIN "pic/gsmon/muk.pic"
MukPicBack:          INCBIN "pic/gsmonback/mukb.pic"
KinglerPicFront:     INCBIN "pic/gsmon/kingler.pic"
KinglerPicBack:      INCBIN "pic/gsmonback/kinglerb.pic"
CloysterPicFront:    INCBIN "pic/gsmon/cloyster.pic"
CloysterPicBack:     INCBIN "pic/gsmonback/cloysterb.pic"
ElectrodePicFront:   INCBIN "pic/gsmon/electrode.pic"
ElectrodePicBack:    INCBIN "pic/gsmonback/electrodeb.pic"
ClefablePicFront:    INCBIN "pic/gsmon/clefable.pic"
ClefablePicBack:     INCBIN "pic/gsmonback/clefableb.pic"
WeezingPicFront:     INCBIN "pic/gsmon/weezing.pic"
WeezingPicBack:      INCBIN "pic/gsmonback/weezingb.pic"
PersianPicFront:     INCBIN "pic/gsmon/persian.pic"
PersianPicBack:      INCBIN "pic/gsmonback/persianb.pic"



SECTION "bank36",ROMX,BANK[$36]


BulbasaurPicFront:   INCBIN "pic/gsmon/bulbasaur.pic"
BulbasaurPicBack:    INCBIN "pic/gsmonback/bulbasaurb.pic"
VenusaurPicFront:    INCBIN "pic/gsmon/venusaur.pic"
VenusaurPicBack:     INCBIN "pic/gsmonback/venusaurb.pic"
TentacruelPicFront:  INCBIN "pic/gsmon/tentacruel.pic"
TentacruelPicBack:   INCBIN "pic/gsmonback/tentacruelb.pic"
GoldeenPicFront:     INCBIN "pic/gsmon/goldeen.pic"
GoldeenPicBack:      INCBIN "pic/gsmonback/goldeenb.pic"
SeakingPicFront:     INCBIN "pic/gsmon/seaking.pic"
SeakingPicBack:      INCBIN "pic/gsmonback/seakingb.pic"
PonytaPicFront:      INCBIN "pic/gsmon/ponyta.pic"
RapidashPicFront:    INCBIN "pic/gsmon/rapidash.pic"
PonytaPicBack:       INCBIN "pic/gsmonback/ponytab.pic"
RapidashPicBack:     INCBIN "pic/gsmonback/rapidashb.pic"
RattataPicFront:     INCBIN "pic/gsmon/rattata.pic"
RattataPicBack:      INCBIN "pic/gsmonback/rattatab.pic"
RaticatePicFront:    INCBIN "pic/gsmon/raticate.pic"
RaticatePicBack:     INCBIN "pic/gsmonback/raticateb.pic"
NidorinoPicFront:    INCBIN "pic/gsmon/nidorino.pic"
NidorinoPicBack:     INCBIN "pic/gsmonback/nidorinob.pic"
NidorinaPicFront:    INCBIN "pic/gsmon/nidorina.pic"
NidorinaPicBack:     INCBIN "pic/gsmonback/nidorinab.pic"
GeodudePicFront:     INCBIN "pic/gsmon/geodude.pic"
GeodudePicBack:      INCBIN "pic/gsmonback/geodudeb.pic"
PorygonPicFront:     INCBIN "pic/gsmon/porygon.pic"
PorygonPicBack:      INCBIN "pic/gsmonback/porygonb.pic"
AerodactylPicFront:  INCBIN "pic/gsmon/aerodactyl.pic"
AerodactylPicBack:   INCBIN "pic/gsmonback/aerodactylb.pic"
MagnemitePicFront:   INCBIN "pic/gsmon/magnemite.pic"
MagnemitePicBack:    INCBIN "pic/gsmonback/magnemiteb.pic"
CharmanderPicFront:  INCBIN "pic/gsmon/charmander.pic"
CharmanderPicBack:   INCBIN "pic/gsmonback/charmanderb.pic"
SquirtlePicFront:    INCBIN "pic/gsmon/squirtle.pic"
SquirtlePicBack:     INCBIN "pic/gsmonback/squirtleb.pic"
CharmeleonPicFront:  INCBIN "pic/gsmon/charmeleon.pic"
CharmeleonPicBack:   INCBIN "pic/gsmonback/charmeleonb.pic"
WartortlePicFront:   INCBIN "pic/gsmon/wartortle.pic"
WartortlePicBack:    INCBIN "pic/gsmonback/wartortleb.pic"
CharizardPicFront:   INCBIN "pic/gsmon/charizard.pic"
CharizardPicBack:    INCBIN "pic/gsmonback/charizardb.pic"
FossilKabutopsPic:   INCBIN "pic/other/fossilkabutops.pic"
FossilAerodactylPic: INCBIN "pic/other/fossilaerodactyl.pic"
GhostPic:            INCBIN "pic/other/ghost.pic"
OddishPicFront:      INCBIN "pic/gsmon/oddish.pic"
OddishPicBack:       INCBIN "pic/gsmonback/oddishb.pic"
GloomPicFront:       INCBIN "pic/gsmon/gloom.pic"
GloomPicBack:        INCBIN "pic/gsmonback/gloomb.pic"


SECTION "bank37",ROMX,BANK[$37]


BellsproutPicFront:  INCBIN "pic/gsmon/bellsprout.pic"
BellsproutPicBack:   INCBIN "pic/gsmonback/bellsproutb.pic"
WeepinbellPicFront:  INCBIN "pic/gsmon/weepinbell.pic"
WeepinbellPicBack:   INCBIN "pic/gsmonback/weepinbellb.pic"
VictreebelPicFront:  INCBIN "pic/gsmon/victreebel.pic"
VictreebelPicBack:   INCBIN "pic/gsmonback/victreebelb.pic"

MewPicFront:         INCBIN "pic/gsmon/mew.pic"
MewPicBack:          INCBIN "pic/gsmonback/mewb.pic"

FarfetchdPicFront:   INCBIN "pic/gsmon/farfetchd.pic"
FarfetchdPicBack:    INCBIN "pic/gsmonback/farfetchdb.pic"
VenonatPicFront:     INCBIN "pic/gsmon/venonat.pic"
VenonatPicBack:      INCBIN "pic/gsmonback/venonatb.pic"
DragonitePicFront:   INCBIN "pic/gsmon/dragonite.pic"
DragonitePicBack:    INCBIN "pic/gsmonback/dragoniteb.pic"
DoduoPicFront:       INCBIN "pic/gsmon/doduo.pic"
DoduoPicBack:        INCBIN "pic/gsmonback/doduob.pic"
PoliwagPicFront:     INCBIN "pic/gsmon/poliwag.pic"
PoliwagPicBack:      INCBIN "pic/gsmonback/poliwagb.pic"
JynxPicFront:        INCBIN "pic/gsmon/jynx.pic"
JynxPicBack:         INCBIN "pic/gsmonback/jynxb.pic"
MarowakPicFront:     INCBIN "pic/gsmon/marowak.pic"
MarowakPicBack:      INCBIN "pic/gsmonback/marowakb.pic"
LeafeonPicFront::    INCBIN "pic/gsmon/leafeon.pic"
LeafeonPicBack::     INCBIN "pic/gsmonback/leafeon.pic"

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
