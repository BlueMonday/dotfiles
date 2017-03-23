Emacs
=====

Spelling
--------

The aspell package is required in order to check spelling:

```bash
pacman -S apsell
```

go-mode
-------

[go-mode](https://github.com/dominikh/go-mode.el) requires having the following
packages installed:

```bash
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/guru
go get -u golang.org/x/tools/cmd/godoc
go get -u github.com/golang/lint/golint
go get -u github.com/nsf/gocode
go get -u golang.org/x/tools/cmd/gorename
go get -u github.com/rogpeppe/godef
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
