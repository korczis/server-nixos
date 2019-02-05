#! /usr/bin/env sh

SERVER_NIXOS_ROOT="~/.server-nixos"

# ----------------

echo ""
echo "-----------"
echo "NixOS setup"
echo "-----------"

# -------------------

echo ""
echo "--------------"
echo "Installing git"
echo "--------------"

nix-env -iAv nixos.pkgs.gitAndTools.git

echo ""
echo "--------------"
echo "Installing OpenSSH server"
echo "--------------"

# nix-env -iAv nixos.pkgs.

if [ ! -d "${SERVER_NIXOS_ROOT}" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "Creating "${SERVER_NIXOS_ROOT}"
fi

# git clone https://github.com/korczis/server-nixos ${SERVER_NIXOS_ROOT}
