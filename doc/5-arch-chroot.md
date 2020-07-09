## login new system
arch-chroot /mnt

## develop tools, network tools
pacman -S vim base-devel wpa_supplicant dhcpcd networkmanager

## set time zone
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --systohc

## generate locale
vim /etc/locale.gen uncomment en_US.UTF-8
locale-gen

vim /etc/locale.conf
LANG=en_US.UTF-8

## keyboard layout
vim /etc/vconsole.conf
KEYMAP=jp106

## hostname
vim /etc/hostname
hg

## hosts
vim /etc/hosts
127.0.0.1	localhost
::1				localhost
127.0.0.1	hg.localdomain hg

## set root passwd
passwd

