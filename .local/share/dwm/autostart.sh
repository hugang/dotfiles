picom -b
xfce4-power-manager &
/usr/bin/start-pulseaudio-x11
/usr/bin/bash ~/scripts/dwm-status-refresh.sh
xrandr --output LVDS-1 --mode 1366x768
xrandr --output HDMI-1 --auto --mode 1920x1080 --left-of LVDS-1
feh --randomize --bg-fill ~/.local/share/wallpaper/*
