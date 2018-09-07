(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-insert-mode t)
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(calendar-week-start-day 1)
 '(case-fold-search nil)
 '(clean-buffer-list-delay-general 30)
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
      (display-buffer-reuse-window display-buffer-pop-up-window display-buffer-use-some-window)
      (reusable-frames . t)))))
 '(flycheck-display-errors-delay 10)
 '(flycheck-ghc-language-extensions
   (quote
    ("TemplateHaskell" "QuasiQuotes" "GADTs" "DataKinds" "OverloadedStrings" "RankNTypes" "TypeOperators")))
 '(flycheck-global-modes nil)
 '(haskell-ask-also-kill-buffers nil)
 '(haskell-compile-cabal-build-alt-command
   "nice -n5 stack build --bench --test --no-run-tests --no-run-benchmarks --fast --pedantic --ghc-options='-ferror-spans -j +RTS -A128m -n2m -qb0 -RTS' $(basename %s)")
 '(haskell-compile-cabal-build-command
   "nice -n5 stack build --bench --test --no-run-tests --no-run-benchmarks --fast --ghc-options='-ferror-spans -instances -j +RTS -A128m -n2m -qb0 -RTS' $(basename %s)")
 '(haskell-process-args-stack-ghci (quote ("--ghci-options" "-ferror-spans")))
 '(helm-ag-insert-at-point (quote word))
 '(helm-autoresize-mode nil)
 '(helm-buffer-details-flag nil)
 '(helm-buffer-max-length 80)
 '(helm-etags-execute-action-at-once-if-one nil)
 '(helm-mini-default-sources
   (quote
    (helm-source-buffers-list helm-source-buffer-not-found)))
 '(helm-turn-on-recentf nil)
 '(hyai-basic-offset 2)
 '(intero-whitelist (quote ("~/tmp/credit")))
 '(js-indent-level 2)
 '(json-reformat:indent-width 2)
 '(kill-ring-max 1000)
 '(magit-commit-show-diff nil)
 '(magit-diff-arguments
   (quote
    ("--stat" "--no-ext-diff" "--diff-algorithm=histogram")))
 '(midnight-mode t nil (midnight))
 '(nxml-child-indent 2)
 '(org-agenda-files
   (quote
    ("~/pers/todo/life.org" "~/projects/contractor/contractor.org" "~/projects/emacs/emacs.org")))
 '(org-agenda-todo-ignore-timestamp (quote all))
 '(org-agenda-todo-ignore-with-date t)
 '(org-capture-templates
   (quote
    (("t" "Todo prefix")
     ("tt" "Todo sometime" entry
      (file+headline "~/pers/capture.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/todo")
      :prepend t)
     ("ts" "Scheduled todo item" entry
      (file+headline "~/pers/capture.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/scheduled")
      :prepend t)
     ("tc" "Code linked todo" entry
      (file+headline "~/pers/capture.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/code")
      :prepend t)
     ("tu" "Url assigned todo" entry
      (file+headline "~/pers/capture.org" "Tasks")
      (file "~/.emacs.d/personal/org-templates/urltodo")
      :prepend t)
     ("n" "Note" entry
      (file+headline "~/pers/projects/life/info/notes.org" "Notes")
      (file "~/.emacs.d/personal/org-templates/note")
      :prepend t)
     ("l" "Log entry")
     ("ll" "Simple log entry" entry
      (file+datetree "~/pers/projects/life/log/log.org")
      "* %?")
     ("lh" "Health log" entry
      (file+datetree "~/pers/projects/life/log/health.org")
      "* %?")
     ("lm" "Mother log" entry
      (file+datetree "~/pers/projects/life/log/mother.org")
      "* %? ")
     ("u" "Url" entry
      (file+headline "~/pers/urls.org" "Urls")
      (file "~/.emacs.d/personal/org-templates/url")
      :prepend t))))
 '(org-default-notes-file "~/pers/refile.org")
 '(org-extend-today-until 5)
 '(org-refile-targets
   (quote
    (("~/pers/projects/life/todo/life.org" :level . 1)
     ("~/pers/projects/instruments/instruments.org" :level . 1)
     ("~/pers/projects/typeableio/typeableio.org" :level . 1)
     ("~/pers/projects/life/todo/read.org" :level . 1)
     ("~/pers/pool.org" :level . 1)
     ("~/pers/projects/haskell/haskell.org" :level . 1)
     ("~/pers/projects/credit/credit.org" :level . 1))))
 '(org-reverse-note-order t)
 '(prelude-auto-save nil)
 '(prelude-flyspell nil)
 '(recentf-mode nil)
 '(safe-local-variable-values (quote ((flycheck-disabled-checkers emacs-lisp-checkdoc))))
 '(scroll-bar-mode nil)
 '(sh-basic-offset 2)
 '(sh-indentation 2)
 '(sp-escape-wrapped-region nil)
 '(split-height-threshold nil)
 '(split-width-threshold 100)
 '(split-window-preferred-function (quote split-window-sensibly-reversed))
 '(tags-table-list nil)
 '(woman-fill-frame t)
 '(yas-indent-line (quote fixed)))

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
 '(web-mode-doctype-face ((t (:foreground "black"))))
 '(web-mode-html-attr-name-face ((t (:foreground "blue4"))))
 '(web-mode-html-tag-face ((t (:foreground "RoyalBlue4"))))
 '(whitespace-empty ((t nil)))
 '(whitespace-tab ((t (:background "gainsboro"))))
 '(whitespace-trailing ((t nil))))
