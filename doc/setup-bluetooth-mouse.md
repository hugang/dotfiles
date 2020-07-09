## install packages
pacman -S bluez bluez-utils 

## start service
systemctl start bluetooth

## set up device
bluetoothctl
    power on
    scan on
    connect BLUETOOTH-ID
    trust BLUETOOTH-ID
    pair BLUETOOTH-ID
