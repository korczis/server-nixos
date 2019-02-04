# server-nixos

NixOS Configuration

## One liner 

```
curl -L http://bit.ly/nixos-server-setup | /bin/sh
```


## Prerequisites

```
# Install git
$ nix-env -iAv nixos.pkgs.gitAndTools.git


# Clone server-nixos
$ git clone https://github.com/korczis/server-nixos

# Enter the server-nixos directory
$ cd server-nixos

# Run install script
$ ./scripts/install.sh
```
