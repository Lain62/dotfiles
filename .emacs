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
(setq ruby-indent-level 4)
(setq-default tab-width 4)

(rc/require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

(rc/require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; add support for astro even tho its not officially supported
(add-to-list 'auto-mode-alist '("\\.astro\\'" . web-mode))

;;Moving region stolen from emacs wiki	
(defun move-region (start end n)
  "Move the current region up or down by N lines"
  (interactive "r\np")
  (let ((line-text (delete-and-extract-region start end)))
	(forward-line n)
	(let ((start (point)))
	  (insert line-text)
	  (setq deactivate-mark nil)
	  (set-mark start))))

(defun move-region-up (start end n)
  "Move the current line up by N lines"
  (interactive "r\np")
  (move-region start end (if (null n) - 1 (- n))))

(defun move-region-down (start end n)
  "Move the current line down by N lines"
  (interactive "r\np")
  (move-region start end (if (null n) 1 n)))


(global-set-key (kbd "M-<up>") 'move-region-up)
(global-set-key (kbd "M-<down>") 'move-region-down)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs '((odin-mode) . ("ols"))))

(require 'eglot-booster)

(add-hook 'odin-mode-hook #'eglot-ensure)
(add-hook 'eglot 'eglot-booster-mode)
