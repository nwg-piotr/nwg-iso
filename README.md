# nwg-iso

This is an Arch Linux ISO built by [archiso](https://wiki.archlinux.org/title/Archiso), with additions to provide a simple way to install sway, Hyprland and nwg-shell. The live environment (CLI) comes with the `installer` command, which is a simplified version of the interactive installation with the `archinstall` script: some must have stuff has already been pre-selected. The iso also provides a script to install the shell with its dependencies from the user account. Some packages (installer, AUR helper, customized sddm display manager and `pythod-dasbus) have been provided in a local repositore. Besides, we only use Arch and AUR repositories.

**Installation steps:**

1. Download the iso [here](https://drive.google.com/file/d/1goXg3jmsOWgq_G1BTg1Bje28rfqtnb9L/view?usp=sharing) (will publish on some more trustful place ASAP).
2. Create USB flash installation medium as decribed in [Arch Wiki](https://wiki.archlinux.org/title/USB_flash_installation_medium). Or just use `imagewriter`, as I do.
3. Boot from the iso, run the `installer` command. This customized [archinstall](https://github.com/archlinux/archinstall) will perform interactive installation.
4. Reboot.
5. Run `install-shell`. Answer questions on your preferred file manager, text editor and web browser. Wait for the script to finish.
6. Reboot and you're ready to go.

**Preinstalled stuff:**

- baph - [Basic AUR Package Helper](https://bitbucket.org/natemaia/baph);
- sddm Display Manager w/ customized sddm-sugar-candy-nwg theme;
- foot terminal emulator (Super+T);
- fastfetch (alias 'fetch') - a fetch tool;
- networkmanager
- nano
