#! /usr/bin/env sh

SERVER_NIXOS_ROOT="~/.server-nixos"

echo ""
echo "-----------"
echo "NixOS setup"
echo "-----------"

echo ""
echo "--------------"
echo "Installing git"
echo "--------------"

nix-env -iAv nixos.pkgs.gitAndTools.git

echo ""
echo "---------------"
echo "Installing ruby"
echo "---------------"

nix-env -iAv nixos.ruby

echo ""
echo "------------------"
echo "Installing OpenSSH"
echo "------------------"

nix-env -iAv nixos.openssh

systemctl start sshd

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCu0w8+zEfKGl//hGj1DwIjn+Gq6FxY3t1Zy8Sf+X9SCv8C+jt8ALxCIP1FJ6UZAahKnXF7y1rsTavNYHz7qLoIJRcg1/qmyi4uo7T5rbBm+jLkcXBxKXYMmgScgyXcfiEHY1Ht7KJSMryLdqeYonIDu1yEfLoAHIMUTUCyttcZ9j4VkxRGJDlb2Zt4wnfSVQMDgMsY4wwNb2LKug5SZpm3IThoqgsGZIscMIofVAOo/ksJBF2iyoQtttDJ+b98srbClimRoltk56OLkIWkl0l2Erj5yTBv9BDj91qcVp44iCqxzjiUqb0LsQaMrY24IT4lS5P1uGsz7UZS6vKLlM1jmZEdvCAvtvKIkhxZDGjTGKPf1B/4npsm50vke7gky1vy4BQ2OIUHOX2BsfZfx9FKiFKX7Li9vdytskCGQBgf84sGDuiP3CNQA4zmWGtzfIM3M68GBn9AvScOjskHmx3sm5KTZMakW1JSGJNrj+hxnRds9P+JVi8YQRNc3KZMxfnd2phX8itGzN966eSvGPDldsaJ3wClEdtTijA2jqQ96QMBEggUWbDHJE/BCCPGfanVqyFppzovZmKKW89nLsh0xlv4CMlDQQ/0eVlkuzHbo7ZlpsKtGBw+fnNiOMCJgZxD2UCsi2MLfNW+mfjAWAPHthBFbSIfz5XuCtqG0Dm59w== korczis@gmail.com" \
    > ".ssh/authorized_keys"

#if [ ! -d "${SERVER_NIXOS_ROOT}" ]; then
#  # Control will enter here if $DIRECTORY doesn't exist.
#  echo "Creating "${SERVER_NIXOS_ROOT}"
#fi

# git clone https://github.com/korczis/server-nixos ${SERVER_NIXOS_ROOT}
