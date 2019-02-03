#! /usr/bin/env sh

# Mounts
mount /dev/disk/by-label/nixos /mnt
mount /dev/disk/by-label/boot /mnt/boot

# NixOS
nixos-generate-config --root /mnt
nixos-install

