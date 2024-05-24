#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="nwg-live"
iso_label="NWG-LIVE_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m%d)"
iso_publisher="Piotr Miller <https://nwg-piotr.github.io/nwg-shell>"
iso_application="Arch Linux w/ nwg-shell Live/Installer CD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/installer"]="0:0:755"
  ["/etc/sudoers"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
  ["/etc/skel/.azotebg"]="0:0:755"
  ["/etc/skel/.azotebg-hyprland"]="0:0:755"
)
