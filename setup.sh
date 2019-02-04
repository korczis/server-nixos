#! /usr/bin/env sh

echo "-----------"
echo "NixOS setup"
echo "-----------"

echo ""

echo "Installing git"
nix-env -iAv nixos.pkgs.gitAndTools.git
