#! /usr/bin/env sh

# FS
mkfs.ext4 -L nixos /dev/md126p1
mkfs.fat -F 32 -n boot /dev/md127p1


