1. reboot pc
> press esc to enter grub2 command line interpreter

2. find partitions
```bash
ls
```

3. load
```bash
set root=(hd0)
chainloader (hd0,msdos2)/efi/boot/bootx64.efi
boot
```
