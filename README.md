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

Install `neovim` and `python-neovim` (for python 3 plugin support).

```
sudo pacman -S neovim python-neovim
mkdir -p ~/.vim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvm/init.vim
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
sudo pacman -S bspwm acpi wireless_tools xorg-xmodmap
```

sxhkd
-----

```
sudo pacman -S sxhkd dmenu rxvt-unicode i3lock xorg-xbacklight
```
