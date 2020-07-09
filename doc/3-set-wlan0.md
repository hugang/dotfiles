loadkeys jp106

## make wlan0 up
ip link set wlan0 up
## scan available wifi
iwlist wlan0 scan | grep ESSID
## generate wifi config
wpa_passphrase WIFI-ID PASSWD > wlan.cfg
## connect wifi with generated config in background
wpa_supplicant -c wlan.cfg -i wlan0 &
## test connection
ping www.google.com
## sync date
timedatectl set-ntp true
