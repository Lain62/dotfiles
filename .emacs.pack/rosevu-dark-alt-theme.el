;;Rosevu Theme
(deftheme rosevu-dark-alt "Ivulai/lain62 theme")
(let ((rosevu-black-darker "#1B2021")
      (rosevu-black "#30343F")
      (rosevu-pink "#bf8a9b4")
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
   'rosevu-dark-alt
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces 
   'rosevu-dark-alt
   `(default ((t (:foreground ,rosevu-gray :background ,rosevu-black))))
   `(cursor ((t (:foreround ,rosevu-cream :background ,rosevu-red ))))
   `(fringe ((t (:background ,rosevu-black ))))
   `(mode-line ((t ( :background ,rosevu-pink :foreground ,rosevu-black-darker))))
   `(region ((t ( :background ,rosevu-gray-darker :foreground ,rosevu-black-darker))))
   `(secondary-selection ((t (:background ,rosevu-purple :foreground ,rosevu-black-darker))))
   `(font-lock-builtin-face ((t (:background ,rosevu-pink :foreground ,rosevu-black-darker))))
   `(font-lock-comment-face ((t (:foreground ,rosevu-red))))
   `(font-lock-function-name-face ((t ( :background ,rosevu-cream :foreground ,rosevu-black-darker))))
   `(font-lock-keyword-face ((t ( :background ,rosevu-pink :foreground ,rosevu-black-darker))))
   `(font-lock-string-face ((t ( :background ,rosevu-green :foreground ,rosevu-black-darker))))
   `(font-lock-type-face ((t ( :background ,rosevu-cream :foreground ,rosevu-black-darker))))
   `(font-lock-constant-face ((t ( :background ,rosevu-purple :foreground ,rosevu-black-darker))))
   `(font-lock-variable-name-face ((t ( :background ,rosevu-purple :foreground ,rosevu-black-darker))))
   `(minibuffer-prompt ((t ( :background ,rosevu-pink :foreground ,rosevu-black-darker))))
   `(font-lock-warning-face ((t ( :foreground ,rosevu-red))))
   `(dired-directory ((t ( :background ,rosevu-purple :foreground ,rosevu-black-darker))))
   ))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'rosevu-dark-alt)

;;; rosevu.el ends here
