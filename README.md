# nwg-iso

This repository is a part of the nwg-shell project. Please check the [project website](https://nwg-piotr.github.io/nwg-shell).

This is an Arch Linux ISO built by [archiso](https://wiki.archlinux.org/title/Archiso), with additions to provide a simple way to install nwg-shell, together with sway and Hyprland Wayland compositors. The live environment (CLI) comes with the `installer` command, which is a simplified version of the interactive installation with the [archinstall](https://python-archinstall.readthedocs.io/en/latest/installing/guided.html#description-individual-steps) script. Some must have stuff has already been pre-selected. The iso also provides a script to install the shell itself - from the user account. Some packages (installer, AUR helper, customized sddm theme and `pythod-dasbus`) have been provided in a local repository. Besides, we only use Arch and AUR repositories.

**Installation steps:**

1. Download the iso [here](https://drive.google.com/file/d/1goXg3jmsOWgq_G1BTg1Bje28rfqtnb9L/view?usp=sharing) (will publish on some more trustful place ASAP).
2. Create USB flash installation medium as decribed in [Arch Wiki](https://wiki.archlinux.org/title/USB_flash_installation_medium). Or just use `imagewriter`, as I do.
3. Boot from the iso, run the `installer` command. Go through the interactive installation.
4. Reboot.
5. Run `install-shell`. Answer questions on your preferred file manager, text editor and web browser. Wait for the script to finish.
6. Reboot and you're ready to go.

**Preinstalled stuff:**

- baph - [Basic AUR Package Helper](https://bitbucket.org/natemaia/baph);
- [sddm](https://wiki.archlinux.org/title/SDDM) Display Manager w/ customized [sddm-sugar-candy-nwg](https://github.com/nwg-piotr/sddm-sugar-candy-nwg) theme;
- [foot](https://wiki.archlinux.org/title/Foot) terminal emulator (Super+T);
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) (alias 'fetch') - a fetch tool.

![image](https://github.com/nwg-piotr/nwg-iso/assets/20579136/14587d6e-f794-4cc7-8830-5a955aaa9776)
