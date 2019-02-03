#! /usr/bin/env sh

# FS
mkfs.ext4 -L nixos /dev/sda1
mkfs.fat -F 32 -n boot /dev/disk/


