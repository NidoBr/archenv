#!/usr/bin/env bash

#
# NidoBr <nidobrcontato@gmail.com>
#

# Configura idioma e hora
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc
echo 'LANG=pt_BR.UTF-8' > /etc/locale.conf
echo 'pt_BR.UTF-8 UTF-8' > /etc/locale.gen
locale-gen
echo 'KEYMAP=br-abnt2' > /etc/vconsole.conf

# Configura usuario
useradd -mU ubuild
echo "ubuild ALL=(ALL:ALL) ALL" >> /etc/sudoers

# Iniciar as chaves do pacman
pacman-key --init
pacman-key --populate archlinux

# Script para iniciar o TMPFS para compilação em RAM
echo "#!/usr/bin/env bash
mount --mkdir -t tmpfs -o size=40G,noatime,nodev,nosuid tmpfs /var/makepkg
exit 0
" > /usr/local/sbin/start_tmpfs
chmod +x /usr/local/sbin/start_tmpfs

exit 0
