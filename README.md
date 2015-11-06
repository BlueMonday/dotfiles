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

Install `neovim`, `xclip` (clipboard support), and `python-neovim` (for python 3 plugin support).

```
sudo pacman -S neovim xclip python-neovim
mkdir -p ~/.vim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

Create undo directory.

```
mkdir -p ~/.vim/undo
```

### Plugins

Install `plug.vim`

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
sudo pip install isort flake8
sudo npm install -g jshint
```

bspwm
-----

```
sudo pacman -S bspwm lightdm acpi wireless_tools xorg-xmodmap
```

```
cat << EOF /usr/share/xsessions/bspwm.desktop
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

```
sudo pacman -S sxhkd dmenu rxvt-unicode i3lock xorg-xbacklight
```
