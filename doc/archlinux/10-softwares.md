# lightdm

## install

```shell
pacman -S lightdm
```

## enable lightdm autostart

```shell
systemctl enable lightdm
```

## set greeter

vim /etc/lightdm/lightdm.conf

uncomment greeter-session and set your own
# use ls /usr/share/xgreeters to check what you can set
