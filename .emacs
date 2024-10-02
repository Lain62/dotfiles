(package-initialize)
(require 'package)
(load "~/.emacs.rc/rc.el")

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

(rc/require-theme 'dracula)

(rc/require 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(rc/require 'ido-yes-or-no)
(ido-yes-or-no-mode 1)

(electric-pair-mode 1)

(rc/require 'cl-lib)
(rc/require 'magit)



