fdisk -l


fdisk /dev/nvme0n1
m
p
g

512m
remainder of the device
1024m

mkfs.fat -F32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2
mkswap /dev/nvme0n1p3
swapon /dev/nvme0n1p3




