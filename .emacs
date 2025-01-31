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

(defun vu/get-default-font ()
  (cond
   ((eq system-type 'windows-nt) "Iosevka NF-20")
   ((eq system-type 'gnu/linux) "Iosevka Nerd Font-20")))

(set-face-attribute 'default nil :font (vu/get-default-font))
(setq dired-dwim-target t)

(setq treesit-language-source-alist
  '((c3 "https://github.com/c3lang/tree-sitter-c3")))

;;(rc/require-theme 'phoenix-dark-pink)
(require 'rosevu-theme)
(load-theme 'rosevu t)


(rc/require 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(setq magit-completing-read-function 'magit-ido-completing-read)

(rc/require 'ido-yes-or-no)
(ido-yes-or-no-mode 1)

(electric-pair-mode 1)

;; Disabled for windows cuz i cant get it to work
(defun vu/get-magit ()
  (cond
   ((eq system-type 'gnu/linux)
	(rc/require 'cl-lib)
	(rc/require 'magit))))

(vu/get-magit)

(rc/require 'crystal-mode)

(rc/require 'markdown-mode)
(rc/require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
(require 'squirrel-mode)
(require 'odin-mode)
(require 'c3-ts-mode)
(setq c3-ts-mode-indent-offset 4)
(setq ruby-indent-level 4)
(setq-default tab-width 4)

(rc/require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
