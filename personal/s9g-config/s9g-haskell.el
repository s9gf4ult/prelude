;;; s9g-haskell.el --- haskell config                -*- lexical-binding: t; -*-

;; Copyright (C) 2016

;; Author:  <razor@localhost.localdomain>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'haskell-mode)
(require 'neotree)
(require 'yasnippet)
(require 'haskell-snippets)
;; (require 'intero)

(defun haskell-end-of-line-and-indent (arg)
  (interactive "p")
  (end-of-line)
  (let ((lines (or arg
                   1)))
    (dotimes (none lines)
      (haskell-indentation-newline-and-indent))))

(defun s9g-haskell-set-buffer-name ()
  (let ((modname (haskell-guess-module-name)))
    (unless (string-equal "" modname)
      (rename-buffer modname t))))

(defun s9g-haskell-compile (&optional alt)
  (interactive "P")
  (save-some-buffers t)
  (if alt
      (haskell-compile '-)
    (haskell-compile)))

(defun haskell-neotree-open-proj ()
  (interactive)
  (if (neo-global--window-exists-p)
      (neotree-hide)
    (neo-global--open-dir (haskell-cabal-find-dir))))

(defun s9g-cabal-mode-hook ()
  (local-set-key (kbd "<f5>") 's9g-haskell-compile)
  (local-set-key (kbd "<f12>") 'haskell-neotree-open-proj))

(add-hook
 'haskell-cabal-mode-hook 's9g-cabal-mode-hook)

(defun s9g-haskell-mode-hook ()
  (yas-minor-mode 1)
  (local-set-key (kbd "<f5>") 's9g-haskell-compile)
  (local-set-key (kbd "<f12>") 'haskell-neotree-open-proj)
  (local-set-key
   (kbd "<f9>")
   #'(lambda ()
       (interactive)
       (haskell-cabal-visit-file t)))
  (local-set-key (kbd "C-c s") 'haskell-sort-imports)
  (local-set-key (kbd "M-p") 'haskell-navigate-imports)
  (local-set-key (kbd "<S-return>") 'haskell-end-of-line-and-indent)
  (local-set-key (kbd "<M-S-up>") 'move-text-up)
  (local-set-key (kbd "<M-S-down>") 'move-text-down)
  (haskell-indentation-mode +1)
  (s9g-haskell-set-buffer-name)
  )

(add-hook
 'haskell-mode-hook 's9g-haskell-mode-hook)

(provide 's9g-haskell)
;;; s9g-haskell.el ends here
