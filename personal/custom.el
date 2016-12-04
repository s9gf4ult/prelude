(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-insert-mode t)
 '(company-dabbrev-downcase nil)
 '(dabbrev-case-distinction nil)
 '(dabbrev-case-fold-search nil)
 '(dabbrev-case-replace nil)
 '(dabbrev-upcase-means-case-search t)
 '(display-buffer-alist
   (quote
    (("widget-choose" ignore
      (nil))
     ("\\*helm.*\\*" ignore
      (nil))
     ("\\*magit-.*-popup\\*" ignore
      (nil))
     ("\\*NeoTree\\*" ignore
      (nil))
     (".*"
      (display-buffer-reuse-window display-buffer-pop-up-window-all-frames display-buffer-use-some-window)
      (reusable-frames . t)))))
 '(flycheck-ghc-language-extensions
   (quote
    ("TemplateHaskell" "QuasiQuotes" "GADTs" "DataKinds" "OverloadedStrings" "RankNTypes" "TypeOperators")))
 '(haskell-compile-cabal-build-command
   "stack build $(basename %s) --fast --ghc-options=-ferror-spans")
 '(helm-ag-insert-at-point (quote word))
 '(helm-etags-execute-action-at-once-if-one nil)
 '(intero-whitelist
   (quote
    ("/mnt/st4000/home/razor/work/redozubov/contractor/b2b/backend")))
 '(magit-commit-show-diff nil)
 '(magit-diff-arguments
   (quote
    ("--stat" "--no-ext-diff" "--diff-algorithm=histogram")))
 '(org-agenda-files
   (quote
    ("~/pers/todo/life.org" "~/projects/contractor/contractor.org" "~/projects/emacs/emacs.org")))
 '(org-agenda-todo-ignore-timestamp (quote all))
 '(org-agenda-todo-ignore-with-date t)
 '(org-capture-templates
   (quote
    (("t" "Todo prefix")
     ("tt" "Todo sometime" entry
      (file+headline "~/pers/refile.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/todo")
      :prepend t)
     ("ts" "Scheduled todo item" entry
      (file+headline "~/pers/refile.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/scheduled")
      :prepend t)
     ("tc" "Code linked todo" entry
      (file+headline "~/pers/refile.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/code")
      :prepend t)
     ("tp" "Pool todo" entry
      (file+headline "~/pers/todo/pool.org" "Pool")
      (file "~/.emacs.d/personal/org-templates/todo")
      :prepend t)
     ("tl" "Life todo" entry
      (file+headline "~/pers/todo/life.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/todo")
      :prepend t)
     ("te" "Emacs todo" entry
      (file+headline "~/projects/emacs/emacs.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/todo")
      :prepend t)
     ("r" "Read something" entry
      (file+headline "~/pers/todo/read.org" "Read")
      (file "~/.emacs.d/personal/org-templates/learn")
      :prepend t)
     ("n" "Note" entry
      (file+headline "~/pers/info/notes.org" "Notes")
      (file "~/.emacs.d/personal/org-templates/note")
      :prepend t)
     ("l" "Log entry")
     ("ll" "Simple log entry" entry
      (file+datetree "~/pers/log/day.org")
      "* %?")
     ("lh" "Health log" entry
      (file+datetree "~/pers/log/hlog.org")
      "* %?")
     ("b" "Buy something")
     ("bb" "Buy must have" entry
      (file+headline "~/pers/todo/buy.org" "Must have")
      (file "~/.emacs.d/personal/org-templates/note")
      :prepend t)
     ("bm" "Buy maybe sometime" entry
      (file+headline "~/pers/todo/buy.org" "Maybe")
      (file "~/.emacs.d/personal/org-templates/note"))
     ("u" "Url" entry
      (file+headline "~/pers/info/urls.org" "Urls")
      (file "~/.emacs.d/personal/org-templates/url")
      :prepend t))))
 '(org-default-notes-file "~/pers/refile.org")
 '(org-refile-targets
   (quote
    (("~/pers/todo/life.org" :level . 1)
     ("~/pers/todo/buy.org" :level . 1)
     ("~/projects/emacs/emacs.org" :level . 1)
     ("~/projects/contractor/contractor.org" :level . 1)
     ("~/pers/todo/read.org" :level . 1)
     ("~/pers/todo/pool.org" :level . 1))))
 '(org-reverse-note-order t)
 '(recentf-mode nil)
 '(scroll-bar-mode nil)
 '(sp-escape-wrapped-region nil)
 '(split-height-threshold nil)
 '(split-width-threshold 100)
 '(split-window-preferred-function (quote split-window-sensibly-reversed))
 '(woman-fill-frame t))

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
