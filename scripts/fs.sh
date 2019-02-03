#! /usr/bin/env sh

# Format
mkfs.ext4 -L nixos /dev/md126p1
mkfs.fat -F 32 -n boot /dev/md127p1

# Mount /
mkdir -p /mnt
mount /dev/disk/by-label/nixos /mnt

# Mount /mnt/boot
mkdir -p /mnt/boot
mount /dev/disk/by-label/boot /mnt/boot
