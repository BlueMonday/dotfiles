dotfiles
========

Install `dotfiles` python tool.

```
sudo pip install dotfiles
```

Sync dotfiles!

```
dotfiles --sync -C .dotfilesrc
```

neovim
------

Install `neovim`, `xclip` (clipboard support), `ctags`, and the python 2/3
neovim python modules.

```
sudo pacman -S neovim xclip ctags
sudo pip install neovim
sudo pip2 install neovim
```

Link `vim` and `neovim` configuration.

```
mkdir -p ~/.vim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

Create undo and tags directories.

```
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/tags
```

### Plugins

Install `plug.vim`

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

YCM plugin installation requires CMake

```
sudo pacman -S cmake
```

Install plugins and all the necessary binaries for the go plugin.

```
:PlugInstall
:GoInstallBinaries
```

Install `the_silver_searcher`.

```
sudo pacman -S the_silver_searcher
```

Install python and javascript libraries required by plugins.

```
sudo pip2 install isort flake8
sudo npm install -g jshint
```

Desktop Environment
-------------------

Install `feh` to manage the desktop wallpaper and `xorg-xmodmap` to modify
keymaps in Xorg.

```
sudo pacman -S feh xorg-xmodmap
```

### bspwm

bspwm is a tiling window manager that represents windows as the leaves of a
full binary tree.

```
sudo pacman -S bspwm
```

```
cat << EOF > /usr/share/xsessions/bspwm.desktop
[Desktop Entry]
Encoding=UTF-8
Name=bspwm
Comment=Binary space partitioning window manager
Exec=bspwm
Type=Application
EOF
```

### URxvt

rxvt-unicode is a highly customizable terminal emulator forked from rxvt.

```
sudo pacman -S rxvt-unicode
```

#### Terminal font

The font for the URxvt terminal is set throgh the `.Xresources` font
configuration parameter.

Install the `Dejavu` font family:

```
sudo pacman -S ttf-dejavu
```

### sxhkd

sxhkd is a simple X hotkey daemon with a powerful and compact configuration
syntax.

`dmenu`, `i3lock`, and `xorg-xbacklight` are required for some of the
keybindings.

```
sudo pacman -S sxhkd dmenu i3lock xorg-xbacklight
```

### lemonbar

lemonbar is a lightweight bar entirely based on XCB. Install the [lemonbar
package](https://aur.archlinux.org/packages/lemonbar-xft-git/) with xft support
from the AUR.

The lemonbar panel scripts require a few dditional packages:

```
sudo pacman -S acpi wireless_tools
```

The following fonts are also required by the panel scripts:
* [Powerline fonts](https://aur.archlinux.org/packages/powerline-fonts-git/)
* [FontAwesome](https://aur.archlinux.org/packages/ttf-font-awesome/)
