bspwm
=====

[bspwm](https://github.com/baskerville/bspwm) is a tiling window manager that
represents windows as the leaves of a full binary tree.

```bash
sudo pacman -S bspwm

cat << EOF > /usr/share/xsessions/bspwm.desktop
[Desktop Entry]
Encoding=UTF-8
Name=bspwm
Comment=Binary space partitioning window manager
Exec=bspwm
Type=Application
EOF
```

sxhkd
-----

[sxhkd](https://github.com/baskerville/sxhkd) is a simple X hotkey daemon with
a powerful and compact configuration syntax. sxhkd is used to communicate with
bspwm through bspc as well as launch your applications of choice.

[rofi](https://www.archlinux.org/packages/community/x86_64/rofi/), `i3lock`,
and `xorg-xbacklight` are required for some of the keybindings.

```bash
sudo pacman -S sxhkd i3lock rofi xorg-xbacklight
```
