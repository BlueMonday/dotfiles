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

Fonts
-----

Create user font directory (`~/.fonts` is deprecated).

```
mkdir ~/.local/share/fonts
```

Download font.

```
cd ~/.local/share/fonts && curl -fLo DroidSansMonoforPowerlinePlusNerdFileTypesMonoPlusFontAwesomePlusOcticonsPlusPomicons.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types%20Mono%20Plus%20Font%20Awesome%20Plus%20Octicons%20Plus%20Pomicons.otf
```

Build font information cache files.

```
fc-cache -vf
```

Vim
---

Install `gvim-python3` for vim with python3 interpreter support and full X support.

```
sudo pacman -S gvim-python3
```

Create undo directory.

```
mkdir ~/.vim/undo
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
pip install isort flake8
npm install -g jshint
```
