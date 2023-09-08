# nwg-iso

This is an attempt to build an Arch Linux ISO, providing a simple way to install sway, Hyprland and nwg-shell.

**Initial assumption:** the live environment comes with a local repository, containing the `install-shell` script as a package.

**Installation steps:**

1. Boot from the iso, run the `installer` command. This customized [archinstall](https://github.com/archlinux/archinstall) script will:

   - perform interactive installation with the `minimal` profile and `NetworkManager` pre-selected;
   - install the `install-shell` package;
   - install the `baph` ([Basic AUR Package Helper](https://bitbucket.org/natemaia/baph)) package.
     
3. Reboot.
4. Run `install-shell`. It will:

   - initialize XDG user directories;
   - add `$USER` to the `video` group;
   - install `sddm`, enable `sddm.service`;
   - ask the user about their preferred file manager, text editor and web browser, install them;
   - install the GPG key needed by the `wlr-randr` AUR package;
   - install the nwg-shell (AUR) package, together with all dependencies;
   - run the `nwg-shell-installer -w` command, that initializes configs, wallpapers and stuff.
  
5. Reboot and you're ready to go.

**The project is very early in development. Please come back later.**
