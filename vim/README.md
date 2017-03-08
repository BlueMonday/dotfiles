vim/neovim
==========

Install [neovim](https://neovim.io/), `xclip` (clipboard support),
`ctags`, and the Python 2/3 neovim Python modules.

```bash
sudo pacman -S neovim xclip ctags
sudo pip install neovim
sudo pip2 install neovim
```

Link the `vim` and `neovim` configuration.

```bash
mkdir -p ~/.vim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

Create undo and tags directories.

```bash
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/tags
```

### Plugins

Install [plug.vim](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[YCM plugin](https://github.com/Valloric/YouCompleteMe) installation requires
CMake

```bash
sudo pacman -S cmake
```

Install plugins and all the necessary binaries for the [vim-go
plugin](https://github.com/fatih/vim-go).

```
:PlugInstall
:GoInstallBinaries
```

Install [the_silver_searcher](https://github.com/ggreer/the_silver_searcher).

```bash
sudo pacman -S the_silver_searcher
```

Install the Python and JavaScript libraries required by the plugins:

```bash
sudo pip2 install isort flake8 pylint
sudo npm install -g jshint
```
