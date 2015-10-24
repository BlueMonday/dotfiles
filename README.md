dotfiles
========

Install `dotfiles` python tool.

```
pip install dotfiles
```

Sync dotfiles!

```
dotfiles --sync -C .dotfilesrc
```

Vim
---

Install `gvim-python3` for vim with python3 interpreter support and full X support.

```
sudo pacman -S gvim-python3
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

Install python libraries required by plugins.

```
pip install isort flake8
```
