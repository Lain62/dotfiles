;;Rosevu Theme
(deftheme rosevu "Ivulai/lain62 theme")
(let ((rosevu-black-darker "#1B2021")
      (rosevu-black "#30343F")
      (rosevu-pink "#f8a9b4")
      (rosevu-pink-darker "#a24174")
      (rosevu-red "#B23350")
      (rosevu-white "#F0F0F0")
      (rosevu-yellow "#EFEC9b")
      (rosevu-gray "#C2C2C2")
      (rosevu-gray-lighter "#E2E2E2")
      (rosevu-cream "#FFD9DA")
      (rosevu-cream-darker "#E3CEB4")
      (rosevu-green "#3CD37D")
      (rosevu-purple "#8282fe")
      (rosevu-purple-darker "#B7A0FF")
      (rosevu-cyan "#8FE1FF"))

  (custom-theme-set-variables
   'rosevu
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces 'rosevu
                          `(default ((t (:foreground ,rosevu-cream :background ,rosevu-black-darker))))
                          `(cursor ((t (:background ,rosevu-pink ))))
                          `(fringe ((t (:background ,rosevu-black ))))
                          `(mode-line ((t (:foreground ,rosevu-cream :background ,rosevu-black ))))
                          `(region ((t (:foreground ,rosevu-pink-darker :background ,rosevu-yellow))))
                          `(secondary-selection ((t (:background ,rosevu-purple ))))
                          `(font-lock-builtin-face ((t (:foreground ,rosevu-pink ))))
                          `(font-lock-comment-face ((t (:foreground  ,rosevu-purple-darker))))
                          `(font-lock-function-name-face ((t (:foreground ,rosevu-cream ))))
                          `(font-lock-keyword-face ((t (:foreground ,rosevu-pink ))))
                          `(font-lock-string-face ((t (:foreground ,rosevu-green ))))
                          `(font-lock-type-face ((t (:foreground ,rosevu-pink ))))
                          `(font-lock-constant-face ((t (:foreground ,rosevu-pink ))))
                          `(font-lock-variable-name-face ((t (:foreground ,rosevu-pink ))))
                          `(minibuffer-prompt ((t (:foreground ,rosevu-pink-darker))))
                          `(font-lock-warning-face ((t (:foreground ,rosevu-red ))))

                          `(dired-directory ((t (:foreground ,rosevu-purple :weight bold))))

                          `(whitespace-space ((t ,(list :background rosevu-black-darker
                                                        :foreground rosevu-black))))
                          `(whitespace-newline ((t ,(list :background rosevu-black-darker
                                                          :foreground rosevu-black-darker))))
                          ))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'rosevu)

;;; rosevu.el ends here
