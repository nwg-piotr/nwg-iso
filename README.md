# nwg-iso

This repository is a part of the nwg-shell project. Please check the [project website](https://nwg-piotr.github.io/nwg-shell).

This is an Arch Linux ISO built with [archiso](https://wiki.archlinux.org/title/Archiso), with additions to provide a simple way to install nwg-shell, together with sway and Hyprland Wayland compositors. The live environment (CLI) comes with the `installer` command, which is a simplified version of the interactive installation with the [archinstall](https://python-archinstall.readthedocs.io/en/latest/installing/guided.html#description-individual-steps) script. Some must have stuff has already been pre-selected. The iso also provides a script to install the shell itself - from the user account. Some packages (installer, AUR helper, customized sddm theme and `pythod-dasbus`) have been provided in a local repository. Besides, we only use Arch and AUR repositories.

## Installation

1. Download the iso [here](https://drive.google.com/file/d/1goXg3jmsOWgq_G1BTg1Bje28rfqtnb9L/view?usp=sharing) (will publish on some more trustful place ASAP).
2. Create USB flash installation medium, as decribed in [Arch Wiki](https://wiki.archlinux.org/title/USB_flash_installation_medium). Or just use SUSE Studio ImageWriter, as I do.
3. Boot from the iso, run the `installer` command. Go through the interactive Arch Linux installation.
4. Reboot.
5. Run the `install-shell` command. Answer questions on your preferred file manager, text editor and web browser. Wait for the script to finish.
6. Reboot and you're ready to go.

**Preinstalled stuff:**

- baph - [Basic AUR Package Helper](https://bitbucket.org/natemaia/baph);
- [sddm](https://wiki.archlinux.org/title/SDDM) Display Manager w/ customized [sddm-sugar-candy-nwg](https://github.com/nwg-piotr/sddm-sugar-candy-nwg) theme;
- [foot](https://wiki.archlinux.org/title/Foot) terminal emulator (Super+T);
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) (alias 'fetch') - a fetch tool.

![image](https://github.com/nwg-piotr/nwg-iso/assets/20579136/14587d6e-f794-4cc7-8830-5a955aaa9776)

## Post-installation

On first run of as well sway, as Hyprland, the shell config utility will be auto-started. Review your settings here. Uncheck the 'Show on startup` box for the config utility not to be auto-started any longer. Don't forget to press the "Apply" button, or the file manager, text editor and web browser keyboard bindings will not work.

![2023-09-16-001157_hypr_screenshot](https://github.com/nwg-piotr/nwg-iso/assets/20579136/a11a9786-558e-4567-a7f4-8b2a5226032c)

Click the (i) icon in the top panel to see key bindings help. Open the Controls menu in the top panel to see more configuration tools.

## Testing on a virtual machine

Running sway and Hyprland on a VM is possible, but frustrating. You'd need to `export WLR_NO_HARDWARE_CURSORS=1` in `/etc/profile` to see the mouse pointer, and it would be sluggish and slow-reacting. I highly recommend testing on real hardware. If you still want to test on a VM, remember to enable graphics 3D acceleration and EFI.

## Contact

See my [GitHub profile](https://github.com/nwg-piotr) for contact info.
