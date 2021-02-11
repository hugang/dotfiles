##!/bin/bash
#
#/bin/bash ~/scripts/tap-to-click.sh &
#/bin/bash ~/scripts/inverse-scroll.sh &
##nm-applet &
##xfce4-volumed-pulse &
##/bin/bash ~/scripts/run-mailsync.sh &
#/bin/bash ~/scripts/autostart_wait.sh &


/bin/bash ~/scripts/tap-to-click.sh &
# status
/bin/bash ~/scripts/dwm-status.sh &
/bin/bash ~/scripts/wp-autochange.sh &
picom -b
# power
xfce4-power-manager &
# audio
/usr/bin/start-pulseaudio-x11
#xrandr --output eDP1 --mode 1366x768
#xrandr --output HDMI-1 --auto --mode 1920x1080 --left-of eDP1
# multi display
# xrandr --output HDMI1 --auto --mode 1920x1080 --left-of eDP1
# wallpaper
#/bin/bash ~/scripts/setxmodmap-colemak.sh &
/bin/bash ~/scripts/setxmodmap-qwerty.sh &

#TODO can't launch dwm when turn this option on
# install amixer acpi acpitool bc
# refresh status
#/bin/bash ~/scripts/dwm-status-refresh.sh
fcitx &
