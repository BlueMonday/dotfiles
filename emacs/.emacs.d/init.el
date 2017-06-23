;;; init.el -- My Emacs configuration
;-*-Emacs-Lisp-*-

;;; Commentary:

;;; Code:

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(when (boundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(setq column-number-mode t)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default fill-column 79)
(global-hl-line-mode 1)
(global-linum-mode t)
(setq vc-follow-symlinks t)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq backup-directory-alist `((".*" . "~/.emacs.d/backups/")))
(setq auto-save-file-name-transforms `((".*" "~/.emacs.d/backups/" t)))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(setq mouse-drag-copy-region t)

;; Start maximized
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; Smoother scrolling
(setq
  scroll-margin 5
  scroll-step 1
  scroll-preserve-screen-position 1)

;; Disable startup message in scratch buffer
(setq-default initial-scratch-message nil)

(use-package diminish
  :ensure t
  :config
  (diminish 'abbrev-mode))

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :config
  (projectile-mode 1))

(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config
  (ivy-mode 1)
  (define-key ivy-minibuffer-map (kbd "<escape>") 'minibuffer-keyboard-quit)
  (setq ivy-use-virtual-buffers t))

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-on))

(use-package magit
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "C-p") 'counsel-projectile-find-file)
  (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
  (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
  (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
  ;; vim-unimpaired like bindings
  (define-key evil-normal-state-map (kbd "[ b") 'previous-buffer)
  (define-key evil-normal-state-map (kbd "] b") 'next-buffer)
  ;; esc quits
  (defun minibuffer-keyboard-quit ()
    "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
    (interactive)
    (if (and delete-selection-mode transient-mark-mode mark-active)
        (setq deactivate-mark  t)
      (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
      (abort-recursive-edit)))
  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
  (global-set-key [escape] 'evil-exit-emacs-state)
  (evil-set-initial-state 'term-mode 'emacs)
  ;; https://github.com/emacs-evil/evil/issues/532
  (defun evil-visual-update-x-selection (&optional buffer)
    "Update the X selection with the current visual region."
    (with-current-buffer (or buffer (current-buffer))
      (when (and (evil-visual-state-p)
                 (fboundp 'x-set-selection)   ; <-- small change, hope it works ;)
                 (or (not (boundp 'ns-initialized))
                     (with-no-warnings ns-initialized))
                 (not (eq evil-visual-selection 'block)))
        (x-set-selection 'PRIMARY (buffer-substring-no-properties
                                   evil-visual-beginning
                                   evil-visual-end))
        (defvar x-last-selected-text-primary)))))

(use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader ",")
    (evil-leader/set-key
     "b" 'switch-to-buffer
     "e" 'counsel-find-file
     "k" 'kill-buffer
     "x" 'counsel-M-x))

(use-package evil-magit
  :ensure t)

(use-package evil-numbers
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt))

(use-package evil-commentary
  :ensure t
  :config
  (evil-commentary-mode))

(use-package linum-relative
  :ensure t
  :config
  (linum-relative-toggle)
  (setq linum-relative-current-symbol ""))

(use-package powerline
  :ensure t
  :config
  (powerline-default-theme))

(use-package company
  :ensure t
  :diminish company-mode
  :config
  (global-company-mode)
  (setq company-idle-delay 0.2)
  (setq company-selection-wrap-around t)
  (define-key company-active-map [tab] 'company-complete-common-or-cycle))

(use-package company-quickhelp
  :ensure t
  :config
  (company-quickhelp-mode 1))

(use-package company-jedi
    :ensure t
    :config
    (add-to-list 'company-backends 'company-jedi))

(use-package company-go
  :ensure t
  :config
  (add-to-list 'company-backends 'company-go))

(use-package go-mode
  :ensure t
  :config
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook #'gofmt-before-save))

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :init (global-flycheck-mode))

(use-package fill-column-indicator
  :ensure t
  :config
  (setq fci-rule-column 80)
  (setq fci-rule-width 1)
  (add-hook 'python-mode-hook fci-mode))

; https://github.com/alpaker/Fill-Column-Indicator/issues/21
(defvar fci-mode-suppressed nil)
(defadvice popup-create (before suppress-fci-mode activate)
  "Suspend fci-mode while popups are visible."
  (set (make-local-variable 'fci-mode-suppressed) fci-mode)
  (when fci-mode
    (turn-off-fci-mode)))

(defadvice popup-delete (after restore-fci-mode activate)
  "Restore fci-mode when all popups have closed."
  (when (and (not popup-instances) fci-mode-suppressed)
    (setq fci-mode-suppressed nil)
    (turn-on-fci-mode)))

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package git-gutter
  :ensure t
  :diminish git-gutter-mode
  :config
  (global-git-gutter-mode t)
  (git-gutter:linum-setup)
  (setq  git-gutter:hide-gutter t
         git-gutter:modified-sign "!"))

(use-package vi-tilde-fringe
  :ensure t
  :config
  (global-vi-tilde-fringe-mode))

(use-package dockerfile-mode
  :ensure t)

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :config
  (setq undo-tree-auto-save-history t)
  (setq undo-tree-history-directory-alist
        (list (cons "." (expand-file-name "undo-tree-history" user-emacs-directory)))))

(use-package mode-icons
  :ensure t
  :config
  (mode-icons-mode))

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode t))

(use-package markdown-mode
  :ensure t
  :config
  (add-hook 'markdown-mode-hook 'flyspell-mode))

(use-package ag
  :ensure t
  :config
  (setq ag-highlight-search t)
  (setq ag-reuse-buffers t)
  (setq ag-reuse-window t))

(use-package groovy-mode
  :ensure t
  :mode (("\\.groovy\\'" . groovy-mode)
         ("Jenkinsfile\\'" . groovy-mode)))

(use-package org-evil
  :ensure t)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package python-docstring
  :ensure t)

(use-package py-isort
  :ensure t)

(use-package yaml-mode
  :ensure t
  :mode ("\\.yml\\'" . yaml-mode))

(use-package web-mode
  :ensure t
  :mode ("\\.html?\\'" . web-mode))

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'css-mode-hook 'rainbow-mode))

(use-package tex
  :ensure auctex
  :config
  (setq
   TeX-auto-save t
   TeX-parse-self t
   TeX-PDF-mode t))

(use-package latex-preview-pane
  :ensure t)

(use-package protobuf-mode
  :ensure t)

(provide 'init)
;;; init.el ends here
