(package-initialize)
(require 'package)
(load "~/.emacs.rc/rc.el")
(add-to-list 'load-path "~/.emacs.pack/")

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers 'relative)
(setq backup-directory-alist '(("." . "~/.emacs.saves")))
(setq custom-file "~/.emacs.custom.el")
(set-face-attribute 'default nil :font "FiraCode Nerd Font-16")
(setq dired-dwim-target t)

(setq treesit-language-source-alist
  '((c3 "https://github.com/c3lang/tree-sitter-c3")))

(rc/require-theme 'badwolf)

(rc/require 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(setq magit-completing-read-function 'magit-ido-completing-read)

(rc/require 'ido-yes-or-no)
(ido-yes-or-no-mode 1)

(electric-pair-mode 1)

(rc/require 'cl-lib)
(rc/require 'magit)

(rc/require 'crystal-mode)

(add-hook 'ruby-mode-hook 'robe-mode)

(add-hook 'after-init-hook 'global-company-mode)

(require 'odin-mode)
(require 'c3-ts-mode)
(setq c3-ts-mode-indent-offset 4)
(setq ruby-indent-level 4)
