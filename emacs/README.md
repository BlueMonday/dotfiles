Emacs
=====

Daemon
------

```bash
systemctl --user enable emacs
systemctl --user start emacs
```

Spelling
--------

The aspell package is required in order to check spelling:

```bash
pacman -S aspell aspell-en
```

go-mode
-------

[go-mode](https://github.com/dominikh/go-mode.el) requires having the following
packages installed:

```bash
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/tools/cmd/guru@latest
go install golang.org/x/tools/cmd/godoc@latest
go install golang.org/x/lint/golint@latest
go install github.com/nsf/gocode@latest
go install golang.org/x/tools/cmd/gorename@latest
go install github.com/rogpeppe/godef@latest
```

company-jedi
------------

`company-jedi` requires virtualenv:

```bash
pacman -S python-virtualenv
```

The install server command also needs to be run:

```
M-x jedi:install-server
```

tide
----

[tide](https://github.com/ananthakumaran/tide) requires having nodejs installed.

```bash
pacman -S nodejs
```
