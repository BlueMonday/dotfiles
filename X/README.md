Xorg
====

setxkbmap
---------

[setxkbmap](http://www.x.org/archive/X11R7.7/doc/man/man1/setxkbmap.1.xhtml) is
a utility for setting the keyboard using the X Keyboard Extension (XKB).

```bash
sudo pacman -S xorg-setxkbmap
```

Wallpaper
---------

Install [feh](http://feh.finalrewind.org/) to set the desktop wallpaper:

```bash
sudo pacman -S feh
```

URxvt
-----

[rxvt-unicode](http://software.schmorp.de/pkg/rxvt-unicode.html) (commonly
known as URxvt) is a highly customizable terminal emulator forked from rxvt.

```bash
sudo pacman -S rxvt-unicode
```

Install the following perl extensions:
* [urxvt-resize-font-git](https://aur.archlinux.org/packages/urxvt-resize-font-git/)

### Font

The font for the URxvt terminal can be set through the font configuration
parameters in `.Xresources`.

Install [powerline-fonts-git](https://aur.archlinux.org/packages/powerline-fonts-git/)
from the AUR.
