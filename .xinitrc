#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS="@im=fcitx"
xmodmap ~/.xmodmap
/usr/bin/bash ~/.local/share/dwm/autostart.sh
exec dwm
