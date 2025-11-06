;;Rosevu Theme
(deftheme rosevu-light "Ivulai/lain62 theme")
(let ((rosevu-black-darker "#1B2021")
      (rosevu-black "#30343F")
      (rosevu-pink "#f8a9b4")
      (rosevu-pink-darker "#A24174")
      (rosevu-red"#e35676")
      (rosevu-red-darker "#B23350")
      (rosevu-white "#F0F0F0")
      (rosevu-yellow "#EFEC9b")
      (rosevu-gray "#E2E2E2")
      (rosevu-gray-darker "#C2C2C2")
      (rosevu-cream "#FFD9DA")
      (rosevu-cream-darker "#dba7a8")
      (rosevu-green "#3CD37D")
      (rosevu-purple "#B7A0FF")
      (rosevu-purple-darker "#8282fe")
      (rosevu-cyan "#8FE1FF"))

  (custom-theme-set-variables
   'rosevu-light
   '(frame-background-mode (quote light)))

  (custom-theme-set-faces 
   'rosevu-light
   `(default ((t (:foreground ,rosevu-black :background ,rosevu-gray))))
   `(cursor ((t (:foreround ,rosevu-cream :background ,rosevu-red ))))
   `(fringe ((t (:background ,rosevu-black ))))
   `(mode-line ((t (:foreground ,rosevu-black :background ,rosevu-pink ))))
   `(region ((t (:foreground ,rosevu-black :background ,rosevu-gray-darker))))
   `(secondary-selection ((t (:background ,rosevu-purple ))))
   `(font-lock-builtin-face ((t (:foreground ,rosevu-black :background ,rosevu-pink))))
   `(font-lock-comment-face ((t (:foreground ,rosevu-red))))
   `(font-lock-function-name-face ((t (:foreground ,rosevu-black :background ,rosevu-pink ))))
   `(font-lock-keyword-face ((t (:foreground ,rosevu-black :background ,rosevu-pink ))))
   `(font-lock-string-face ((t (:foreground ,rosevu-black :background ,rosevu-cyan ))))
   `(font-lock-type-face ((t (:foreground ,rosevu-black :background ,rosevu-pink ))))
   `(font-lock-constant-face ((t (:foreground ,rosevu-black :background ,rosevu-cream-darker))))
   `(font-lock-variable-name-face ((t (:foreground ,rosevu-black :background ,rosevu-cream-darker ))))
   `(minibuffer-prompt ((t (:foreground ,rosevu-black :background ,rosevu-pink))))
   `(font-lock-warning-face ((t ( :foreground ,rosevu-red))))
   `(dired-directory ((t (:foreground  ,rosevu-black :background ,rosevu-cyan))))
   ))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'rosevu-light)

;;; rosevu.el ends here
