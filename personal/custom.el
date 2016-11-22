(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-buffer-alist
   (quote
    (("\\*magit-commit-popup\\*" ignore
      (nil))
     ("\\*NeoTree\\*" ignore
      (nil))
     (".*"
      (display-buffer-reuse-window display-buffer-pop-up-window-all-frames display-buffer-use-some-window)
      (reusable-frames . t)))))
 '(haskell-compile-cabal-build-command "cd %s && stack build --fast --ghc-options=-ferror-spans")
 '(helm-etags-execute-action-at-once-if-one nil)
 '(magit-commit-show-diff nil)
 '(org-agenda-todo-ignore-timestamp (quote all))
 '(org-agenda-todo-ignore-with-date t)
 '(org-capture-templates
   (quote
    (("t" "Todo sometime" entry
      (file+headline "~/pers/refile.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/todo")
      :prepend t)
     ("s" "Scheduled todo item" entry
      (file+headline "~/pers/refile.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/scheduled")
      :prepend t)
     ("c" "Code linked todo" entry
      (file+headline "~/pers/refile.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/code")
      :prepend t)
     ("l" "Learn something" entry
      (file+headline "~/pers/refile.org" "Learn")
      (file "~/.emacs.d/personal/org-templates/learn"))
     ("n" "Note" entry
      (file+headline "~/pers/refile.org" "Notes")
      (file "~/.emacs.d/personal/org-templates/note")
      :prepend t))))
 '(org-default-notes-file "~/pers/refile.org")
 '(org-reverse-note-order t)
 '(recentf-mode nil)
 '(scroll-bar-mode nil)
 '(split-height-threshold nil)
 '(split-width-threshold 100)
 '(split-window-preferred-function (quote split-window-sensibly-reversed)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray80" :foreground "gray17" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "1ASC" :family "Liberation Mono"))))
 '(cursor ((t (:background "OrangeRed2"))))
 '(diff-added ((t (:foreground "green4"))))
 '(diff-context ((t (:inherit shadow :foreground "gray32"))))
 '(diff-file-header ((t (:weight bold))))
 '(diff-hl-change ((t (:background "light sea green" :foreground "blue3"))))
 '(diff-hl-delete ((t (:inherit diff-removed :background "red2" :foreground "red3"))))
 '(diff-hl-insert ((t (:inherit diff-added :background "lime green" :foreground "green4"))))
 '(diff-removed ((t (:foreground "red3"))))
 '(font-lock-comment-face ((t (:foreground "gray53"))))
 '(font-lock-doc-face ((t (:foreground "gray39"))))
 '(font-lock-function-name-face ((t (:foreground "medium blue"))))
 '(font-lock-keyword-face ((t (:foreground "dark red"))))
 '(font-lock-string-face ((t (:foreground "dark green"))))
 '(font-lock-variable-name-face ((t (:foreground "dark magenta"))))
 '(haskell-constructor-face ((t (:foreground "dark slate blue"))))
 '(haskell-indentation-show-hl-line-face ((t nil)))
 '(highlight ((t (:background "gray75"))))
 '(isearch ((t (:background "magenta3" :foreground "dark slate gray"))))
 '(magit-diff-added ((t (:foreground "#22aa22"))))
 '(magit-diff-added-highlight ((t (:background "gray84" :foreground "#22aa22"))))
 '(magit-diff-context-highlight ((t (:background "gray84" :foreground "grey50"))))
 '(magit-diff-removed ((t (:foreground "#aa2222"))))
 '(magit-diff-removed-highlight ((t (:background "gray84" :foreground "#aa2222"))))
 '(magit-hash ((t (:foreground "firebrick4"))))
 '(magit-item-highlight ((t nil)))
 '(magit-section-highlight ((t (:background "gray84"))))
 '(minibuffer-prompt ((t (:foreground "red"))))
 '(monky-diff-add ((t (:foreground "forest green"))))
 '(region ((t (:background "gray61" :distant-foreground "gtk_selection_fg_color"))))
 '(vc-annotate-face-3F3FFF ((t (:foreground "#3F3FFF"))))
 '(warning ((t (:foreground "medium violet red" :weight bold))))
 '(whitespace-empty ((t nil)))
 '(whitespace-tab ((t (:background "gainsboro"))))
 '(whitespace-trailing ((t nil))))
