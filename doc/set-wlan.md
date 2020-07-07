loadkeys jp106

ip link set wlan0 up
iwlist wlan0 scan | grep ESSID
wpa_passphrase WIFI-ID PASSWD > wlan.cfg
wpa_supplicant -c wlan.cfg -i wlan0 &

ping www.google.com

timedatectl set-ntp true
