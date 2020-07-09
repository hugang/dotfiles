## make sure the fastest mirror at top of list
vim /etc/pacman.d/mirrorlist

## mount /
mount /dev/nvme0n1p2 /mnt
## mount /boot form efi partition
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

## install basic packages
pacstrap /mnt base linux linux-firmware
## generate fstab
genfstab -U /mnt >> /mnt/etc/fstab

