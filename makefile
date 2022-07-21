PYTHON := python2
MD5 := md5sum -c --quiet

2bpp     := $(PYTHON) -m pret.pokemontools.gfx 2bpp
1bpp     := $(PYTHON) -m pret.pokemontools.gfx 1bpp
pic      := $(PYTHON) -m pret.pokemontools.pic compress
includes := $(PYTHON) -m pret.pokemontools.scan_includes

pokered_obj    := audio_red.o main_red.o text_red.o ram_red.o
pokegreen_obj  := audio_green.o main_green.o text_green.o ram_green.o
pokeblue_obj   := audio_blue.o main_blue.o text_blue.o ram_blue.o
pokeyellow_obj := audio_yellow.o main_yellow.o text_yellow.o ram_yellow.o

.SUFFIXES:
.SUFFIXES: .asm .o .gbc .png .2bpp .1bpp .pic
.SECONDEXPANSION:
# Suppress annoying intermediate file deletion messages.
.PRECIOUS: %.2bpp
.PHONY: all clean red green blue yellow

roms := pokered.gbc pokegreen.gbc pokeblue.gbc pokeyellow.gbc

all: $(roms)
red: pokered.gbc
green: pokegreen.gbc
blue: pokeblue.gbc
yellow: pokeyellow.gbc

clean:
	rm -f $(roms) $(pokered_obj) $(pokegreen_obj) $(pokeblue_obj) $(pokeyellow_obj) $(roms:.gbc=.sym)
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pic' \) -exec rm {} +

%.asm: ;

%_red.o: dep = $(shell $(includes) $(@D)/$*.asm)
$(pokered_obj): %_red.o: %.asm $$(dep)
	rgbasm -D _RED -h -o $@ $*.asm

%_green.o: dep = $(shell $(includes) $(@D)/$*.asm)
$(pokegreen_obj): %_green.o: %.asm $$(dep)
	rgbasm -D _GREEN -h -o $@ $*.asm

%_blue.o: dep = $(shell $(includes) $(@D)/$*.asm)
$(pokeblue_obj): %_blue.o: %.asm $$(dep)
	rgbasm -D _BLUE -h -o $@ $*.asm

%_yellow.o: dep = $(shell $(includes) $(@D)/$*.asm)
$(pokeyellow_obj): %_yellow.o: %.asm $$(dep)
	rgbasm -D _YELLOW -h -o $@ $*.asm

pokered_opt    = -Cjv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON RED"
pokegreen_opt  = -Cjv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON GREEN"
pokeblue_opt   = -Cjv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON BLUE"
pokeyellow_opt = -Cjv -k 01 -l 0x33 -m 0x13 -p 0 -r 03 -t "POKEMON YELLOW"

%.gbc: $$(%_obj)
	rgblink -n $*.sym -o $@ $^
	rgbfix $($*_opt) $@

%.png:  ;
%.2bpp: %.png  ; @$(2bpp) $<
%.1bpp: %.png  ; @$(1bpp) $<
%.pic:  %.2bpp ; @$(pic)  $<
