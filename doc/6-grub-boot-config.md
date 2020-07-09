## generate init boot
mkinitcpio -P

## grub packages
pacman -S  grub efibootmgr os-prober intel-ucode 

## grub setting
mkdir /boot/grub
grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=x86_64-efi --efi-director=/boot
