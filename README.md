# nwg-iso

This repository is a part of the nwg-shell project. Please check the [project website](https://nwg-piotr.github.io/nwg-shell).

[![Download nwg-iso](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/nwg-iso)

[![Download nwg-iso](https://img.shields.io/sourceforge/dm/nwg-iso.svg)](https://sourceforge.net/projects/nwg-iso/files/latest/download)

The nwg-iso project provides an ISO image built with [archiso](https://wiki.archlinux.org/title/Archiso), with additions to ensure a simple way to install [Arch Linux](https://archlinux.org), [sway](https://swaywm.org/) & [Hyprland](https://hyprland.org/) Wayland compositors, and the [nwg-shell](https://nwg-piotr.github.io/nwg-shell) toolbox.

The live environment comes with live sway & Hyprland sessions, so that you can test compositors 
and the shell before installation. It also contains the `installer` command, which is a simplified 
version of the interactive installation with the [archinstall](https://github.com/archlinux/archinstall) script. Some must have stuff has 
already been pre-selected.

## Installation

1. Download the nwg-live ISO.
2. [Create USB flash installation medium](https://wiki.archlinux.org/title/USB_flash_installation_medium).
3. Boot from the flash drive, enjoy the live sway and Hyprland environment. **User**: `nwg` **Password**: `nwg`
4. If you decide to install, use the "Installer" item in the top panel menu. The script will run in the terminal emulator.

## Post-installation

Find the 'Shell settings' item in the top panel menu. Review your settings here.

![2023-09-16-001157_hypr_screenshot](https://github.com/nwg-piotr/nwg-iso/assets/20579136/a11a9786-558e-4567-a7f4-8b2a5226032c)

Click the (i) icon in the top panel to see key bindings help. Open the Controls menu in the top panel to see more configuration tools.

## AUR helpers

As for August 21st, 2024, we no longer use any pre-installed AUR helper. All the former AUR stuff
made it to the Arch [Extra] repository. Just installed system will use pacman/checkupdates in the
tray update notification applet. If you want it to look for AUR updates, install one of supported 
AUR helpers, and those are [baph](https://bitbucket.org/natemaia/baph) and [yay](https://github.com/Jguer/yay).

## Preinstalled stuff

- azote
- engrampa
- fastfetch
- foot
- gnome-themes-extra
- gopsuinfo
- grim
- gtklock
- gtklock-playerctl-module
- gtklock-powerbar-module
- gtklock-userinfo-module
- hyprland
- imagemagick
- iwd
- jq
- libappindicator-gtk3
- networkmanager
- network-manager-applet
- nano
- nwg-clipman
- nwg-displays
- nwg-dock
- nwg-dock-hyprland
- nwg-drawer
- nwg-icon-browser
- nwg-hello
- nwg-look
- nwg-menu
- nwg-panel
- nwg-readme-browser
- nwg-shell-config
- nwg-shell-wallpapers
- otf-font-awesome
- papirus-icon-theme
- playerctl
- polkit-gnome
- python
- slurp
- swappy
- sway
- swaybg
- swayidle
- swayimg
- swaylock
- swaync
- ttf-dejavu
- udisks2
- wl-clipboard
- wlsunset
- xdg-desktop-portal-hyprland
- xdg-user-dirs
- xorg-xwayland
- web browser, text editor, file manager chosen during installation
- optionally: extra GTK themes, icon themes

## Aliases

- `cls` for `clear`

## sway session on Nvidia GPU

To be able to run sway on Nvidia GPU w/ proprietary drivers, you need to use the `--unsupported-gpu` flag. Since the 2023.11.09 ISO version the installer should do it for you, but I have no Nvidia in range and haven't yet tested it. So, just in case - the sway.desktop file should look as below:

`# nano /usr/share/wayland-sessions/sway.desktop`

```text
[Desktop Entry]
Name=Sway
Comment=An i3-compatible Wayland compositor
Exec=sway --unsupported-gpu
Type=Application
```

## Testing on a virtual machine

is neither recommended nor supported. Running sway and Hyprland on a VM is possible, but frustrating (well, Hyprland 
freezes for me very often). If you do need to do so, remember to enable 3D acceleration and EFI.

## Contact

See my [GitHub profile](https://github.com/nwg-piotr) for contact info.
