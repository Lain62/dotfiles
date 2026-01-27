;;Rosevu Theme
(deftheme brushvu "Ivulai/lain62 theme")
(let ((brushvu-black "#4c1f31")
      (brushvu-radical "#ff3366")
      (brushvu-white "#ffeff8")
      (brushvu-brown "#8e473b")
      (brushvu-cream "#f4aea3"))
  

  (custom-theme-set-variables
   'brushvu
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces 'brushvu
                          `(default ((t (:foreground ,brushvu-white :background ,brushvu-black))))
                          `(cursor ((t (:background ,brushvu-radical ))))
                          `(fringe ((t (:background ,brushvu-black ))))
                          `(mode-line ((t (:foreground ,brushvu-white :background ,brushvu-radical ))))
                          `(region ((t (:foreground ,brushvu-brown :background ,brushvu-cream))))
                          `(font-lock-string-face ((t (:foreground ,brushvu-radical ))))
                          `(font-lock-comment-face ((t (:foreground  ,brushvu-radical))))
                          `(minibuffer-prompt ((t (:foreground ,brushvu-radical ))))
                          `(font-lock-warning-face ((t (:foreground ,brushvu-radical ))))

                          `(secondary-selection ((t (:background ,brushvu-white ))))
                          `(font-lock-builtin-face ((t (:foreground ,brushvu-white ))))
                          `(font-lock-function-name-face ((t (:foreground ,brushvu-white ))))
                          `(font-lock-keyword-face ((t (:foreground ,brushvu-white ))))
                          `(font-lock-type-face ((t (:foreground ,brushvu-white ))))
                          `(font-lock-constant-face ((t (:foreground ,brushvu-white ))))
                          `(font-lock-variable-name-face ((t (:foreground ,brushvu-white ))))

                          `(dired-directory ((t (:foreground ,brushvu-radical :weight bold))))

                          ;; `(whitespace-space ((t ,(list :background brushvu-black-darker
                          ;;                               :foreground brushvu-black))))
                          ;; `(whitespace-newline ((t ,(list :background brushvu-black-darker
                          ;;                                 :foreground brushvu-black-darker))))
                          ))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'brushvu)

;;; brushvu.el ends here
