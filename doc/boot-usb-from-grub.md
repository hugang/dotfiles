reboot pc

press esc to enter grub2 command line interpreter

ls
set root=(hd0)
chainloader (hd0,msdos2)/efi/boot/bootx64.efi
boot
