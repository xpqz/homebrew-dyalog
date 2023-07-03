# Experimental Dyalog Tap

This [Homebrew](https://brew.sh) tap contains casks and formulae for installing the various components required to run [Dyalog](https://dyalog.com/) on a Mac.

## The Dyalog APL Interpreter (Bundle)

[Casks/dyalog-full.rb](Casks/dyalog-full.rb) -- the standard install image, identical to the installer available from the [Dyalog download page](https://www.dyalog.com/download-zone.htm).

This is a merged bundle of the interpreter and RIDE.

1. This version supports [HTMLRenderer](https://docs.dyalog.com/latest/HTMLRenderer%20User%20Guide.pdf). If you want to use HTMLRenderer, this is the version you want.
1. This version lacks a convenient way to run Dyalog from the command-line.
1. Latest official release (v18.2-x86).

To install, use `brew install --cask xpqz/dyalog/dyalog-full`.

## The Dyalog APL Interpreter (TTY-only)

[Formula/dyalog-tty.rb](Formula/dyalog-tty.rb) -- TTY-only version of the Dyalog APL interpreter. 

Note: 

1. This version does not support [HTMLRenderer](https://docs.dyalog.com/latest/HTMLRenderer%20User%20Guide.pdf). If you want to use HTMLRenderer, install the combined bundle above.
1. You must install a keyboard layout suitable for your locale, and an APL font for the best results (see below). 
1. This version does not contain RIDE, which should be installed separately.
1. Version 19.0 pre-release only.
1. Apple Silicon Macs (Arm64) only.

To install, use `brew install xpqz/dyalog/dyalog-tty`.

After installation, you should be able to say `dyalog` at the command-line.

## RIDE: Dyalog Remote IDE

RIDE is the cross-platform GUI IDE for Dyalog. See [RIDE](https://github.com/dyalog/ride). If you've chosen to install the TTY-only version of the Dyalog interpreter, you probably want to install RIDE, too.

[Casks/dyalog-ride.rb](Casks/dyalog-ride.rb) -- Dyalog Remote IDE (RIDE)

To install, use `brew install --cask xpqz/dyalog/dyalog-ride`.

Note: this installs the lastest available tagged release from the RIDE GitHub repo. It does not build from source.

## Apl385 font

See Dyalog's page on [APL Fonts and Keyboards](https://www.dyalog.com/apl-font-keyboard.htm).

[Casks/apl385.rb](Casks/apl.385.rb) -- Fixed-width font for APL glyphs.
  
To install, use  `brew install --cask xpqz/dyalog/apl385`

## Keyboard layouts

[dyalog-kbd-dk](Casks/dyalog-kbd-dk.rb) -- Danish keyboard layout for Dyalog APL<br>
[dyalog-kbd-fi](Casks/dyalog-kbd-fi.rb) -- Finnish keyboard layout for Dyalog APL<br>
[dyalog-kbd-it](Casks/dyalog-kbd-it.rb) -- Italian keyboard layout for Dyalog APL<br>
[dyalog-kbd-uk](Casks/dyalog-kbd-uk.rb) -- UK keyboard layout for Dyalog APL<br>
[dyalog-kbd-us](Casks/dyalog-kbd-us.rb) -- US keyboard layout for Dyalog APL
  
To install, use `brew install --cask xpqz/dyalog/dyalog-kbd-{YOUR_LAYOUT}`, with `{YOUR_LAYOUT}` being one of `dk`, `fi`, `it`, `uk`, `us`.
