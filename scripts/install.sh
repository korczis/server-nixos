#! /usr/bin/env sh

# Install prerequisites
./prerequisites.sh

# FS
# mkfs.ext4 -L nixos /dev/sda1
# mkfs.fat -F 32 -n boot /dev/disk/

# mounts
mount /dev/disk/by-label/nixos /mnt
mount /dev/disk/by-label/boot /mnt/boot

# NixOS
nixos-generate-config --root /mnt
nixos-install
