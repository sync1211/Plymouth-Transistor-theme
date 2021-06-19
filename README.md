# Transistor Plymouth Theme

A Plymouth theme inspired by the game Transistor by Supergiant Games.

It is supposed to be used with the [GRUB2 theme](https://github.com/sync1211/GRUB2-transistor-theme) I made, but will work without it.

## Installation

#### Automatic installation

To install this theme, run the `install.sh` script.

#### Manual installation

Simply copy the contents of the `Resources` folder to `/usr/share/plymouth/themes/transistor` (You will have to create the folder "transistor" yourself) and run `sudo update-alternatives --config default.plymouth && sudo plymouth-set-default-theme -R transistor` in order to enable it.

**NOTE:** This theme shows a list of services during startup. If your distro is not set up to send boot messages to Plymouth, you will need to add it manually.

## Copyright

Transistor © Supergiant Games

All images belong to their respective authors!

