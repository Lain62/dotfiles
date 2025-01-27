;;Rosevu Theme

(deftheme rosevu "Ivulai/lain62 theme")
(let ((rosevu-black "#1B2021")
      (rosevu-black+1 "#30343F")
      (rosevu-rose "#EA638C")
      (rosevu-rose-1 "#89023E")
      (white "#ffd9da")
      (rosevu-yellow "#efec9b")
      (rosevu-blue "#8282fe")
      (rosevu-gray "#c2c2c2"))
  
  (custom-theme-set-variables
   'rosevu
   '(frame-brackground-mode (quote dark)))
  
  (custom-theme-set-faces 'rosevu
			`(default ((t (:foreground "#ffd9da" :background "#1b2021"))))
			`(cursor ((t (:background "#ea638c" ))))
			`(fringe ((t (:background "#30343f" ))))
			`(mode-line ((t (:foreground "#ffd9da" :background "#30343f" ))))
			`(region ((t (:foreground "#1b2021" :background "#efec9b"))))
			`(secondary-selection ((t (:background "#8282fe" ))))
			`(font-lock-builtin-face ((t (:foreground "#ea638c" ))))
			`(font-lock-comment-face ((t (:foreground  "#c2c2c2"))))
			`(font-lock-function-name-face ((t (:foreground "#ffd9da" ))))
			`(font-lock-keyword-face ((t (:foreground "#ea638c" ))))
			`(font-lock-string-face ((t (:foreground "#c2c2c2" :background "#30343f" ))))
			`(font-lock-type-face ((t (:foreground "#ea638c" ))))
			`(font-lock-constant-face ((t (:foreground "#ea638c" ))))
			`(font-lock-variable-name-face ((t (:foreground "#ea638c" ))))
			`(minibuffer-prompt ((t (:foreground "#EA638C"))))
			`(font-lock-warning-face ((t (:foreground "red" ))))
			))

(when load-file-name
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))

(provide-theme 'rosevu)

;;; untitled-theme.el ends here
