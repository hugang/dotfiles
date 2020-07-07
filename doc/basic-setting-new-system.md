add user
useradd -d /home/hg -G wheel hg
passwd hg

connect to wifi
ip link set wlan0 up
systemctl enable NetworkManager
systemctl start NetworkManager
nmcli dev wifi connect WIFI-ID password PASSWD

pacman -S sudo
export EDITOR=vim
visudo
uncomment wheel for sudo


