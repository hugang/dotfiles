## list disk partitions
fdisk -l

## format disk
fdisk /dev/nvme0n1
m: help
p: print
g: generate a new GPT empty partition label

+512m
remainder of the device
+1024m

## format partitions with file system
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2
mkswap /dev/nvme0n1p3
swapon /dev/nvme0n1p3




