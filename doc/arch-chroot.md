arch-chroot /mnt

pacman -S vim base-devel wpa_supplicant dhcpcd networkmanager

ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --systohc

vim /etc/locale.gen uncomment en_US.UTF-8
locale-gen


vim /etc/locale.conf
LANG=en_US.UTF-8

vim /etc/vconsole.conf
KEYMAP=jp106

vim /etc/hostname
hg

vim /etc/hosts
127.0.0.1	localhost
::1				localhost
127.0.0.1	hg.localdomain hg

passwd

