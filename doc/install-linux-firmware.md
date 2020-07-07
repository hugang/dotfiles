vim /etc/pacman.d/mirrorlist
make sure the fastest mirror at top of list

mount /dev/nvme0n1p2 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab

