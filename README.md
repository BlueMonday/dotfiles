dotfiles
========

![screnshot](./screenshot.png)

Install [GNU Stow](https://www.gnu.org/software/stow/).

```bash
sudo pacman -S stow
```

Each directory is a Stow "package" (a related collection of files and
directories administered as a unit). Stow's default action is to create
symbolic links from the target tree to the package tree. The default target
tree is the parent of the current directory.

Use Stow to install one or more packages:

```bash
stow emacs i3 polybar vim X zsh
```
