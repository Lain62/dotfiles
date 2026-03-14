;;Sunset Theme
(deftheme sunset "Rain62 theme")
(let ((sunset-black "#0a0224")
      (sunset-navy "#180161")
      (sunset-purple "#4f1787")
      (sunset-red "#eb3678")      
      (sunset-orange "#fb773c")
      (sunset-white "#faf0eb"))
  

  (custom-theme-set-variables
   'sunset
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces 'sunset
                          `(default ((t (:foreground ,sunset-white :background ,sunset-black))))
                          `(cursor ((t (:background ,sunset-orange ))))
                          `(fringe ((t (:background ,sunset-purple ))))
                          `(mode-line ((t (:background ,sunset-orange ))))
                          `(region ((t (:background ,sunset-navy))))
                          `(font-lock-string-face ((t (:foreground ,sunset-red ))))
                          `(font-lock-comment-face ((t (:foreground ,sunset-purple))))
                          `(minibuffer-prompt ((t (:foreground ,sunset-orange ))))
                          `(font-lock-warning-face ((t (:foreground ,sunset-red ))))

                          `(secondary-selection ((t (:background ,sunset-orange ))))
                          `(font-lock-builtin-face ((t (:foreground ,sunset-orange ))))
                          `(font-lock-function-name-face ((t (:foreground ,sunset-orange ))))
                          `(font-lock-keyword-face ((t (:foreground ,sunset-orange ))))
                          `(font-lock-type-face ((t (:foreground ,sunset-orange ))))
                          `(font-lock-constant-face ((t (:foreground ,sunset-orange ))))
                          `(font-lock-variable-name-face ((t (:foreground ,sunset-orange ))))

                          `(dired-directory ((t (:foreground ,sunset-orange :weight bold))))

                          ;; `(whitespace-space ((t ,(list :background brushvu-black-darker
                          ;;                               :foreground brushvu-black))))
                          ;; `(whitespace-newline ((t ,(list :background brushvu-black-darker
                          ;;                                 :foreground brushvu-black-darker))))
                          ))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'sunset)

;;; sunset-theme.el ends here
