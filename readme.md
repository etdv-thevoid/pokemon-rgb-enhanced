[![CI Build](https://github.com/ETDV-TheVoid/pokemon-rgb-enhanced/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/ETDV-TheVoid/pokemon-rgb-enhanced/actions/workflows/build.yml) [![Nightly Build](https://github.com/ETDV-TheVoid/pokemon-rgb-enhanced/actions/workflows/nightly-build.yml/badge.svg?branch=main)](https://github.com/ETDV-TheVoid/pokemon-rgb-enhanced/actions/workflows/nightly-build.yml)

# Pokémon RGB Enhanced

Gen I Pokémon that feels "just like you remember it". But without all the illogical nonsense and crazy bugs.

For additional info, check the [**official website**][website].

## Build Instructions

This repository builds into the following .gbc ROMs:

 * `pokered.gbc`
 * `pokegreen.gbc`
 * `pokeblue.gbc`

### Install Dependencies

Install system tools with package manager (e.g. apt)

```
sudo apt-get install bison gcc git make python2 -y;
```

 Clone and install [**rgbds 0.2.5**][rgbds]

```
git clone https://github.com/gbdev/rgbds --branch=v0.2.5 --depth=1;
pushd rgbds;
sudo make install;
popd;
```

### Cloning source


```
git clone https://github.com/ETDV-TheVoid/pokemon-rgb-enhanced --recursive;
cd pokered;
```

### Make

To build all three ROM files

```
make;
```

To build them individually

```
make red;
make green;
make blue;
```

To clean build files

```
make clean;
```

### Windows

To build on Windows, download and install [**Cygwin**][cygwin].

Run setup and leave the default settings. At the **"Select Packages"** step, choose to install the following, all of which are in the **"Devel"** category:

 * `gcc-core`
 * `gettext`
 * `git`
 * `make`
 * `python`

Then get [**rgbds 0.2.5**][rgbds-windows].
Extract the archive and put `rgbasm.exe`, `rgblink.exe`, `rgbfix.exe` and `rgbgfx.exe` in `C:\cygwin\usr\local\bin`.  If your Cygwin installation directory differs, ensure the `bin` directory is present in the PATH variable.

## See also

This project is based on the [**Pokémon Red Disassembly**][pokered] by all the wonderful people over at the *Pokémon Reverse Engineering Team* ([**PRET**][pret]).

[website]: https://etdv-thevoid.github.io/pokemon-rgb-enhanced/

[pokered]: http://github.com/pret/pokered
[pret]: https://github.com/pret
[rgbds]: https://github.com/gbdev/rgbds

[cygwin]: http://cygwin.com/install.html
[rgbds-windows]: https://github.com/gbdev/rgbds/releases/tag/v0.2.5
