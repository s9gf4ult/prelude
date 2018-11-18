;;; s9g-globals.el --- global hotkeys defined here   -*- lexical-binding: t; -*-

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

(require 's9g-override)
(require 's9g-defuns)

(global-set-key (kbd "<f12>") 'neotree-toggle)
(global-set-key (kbd "<f7>") 'helm-mini)
(global-set-key (kbd "<f8>") 'helm-projectile)
(global-set-key (kbd "C-c b") 'org-switchb)

(global-set-key (kbd "C-S-k") 'crux-kill-whole-line)
(global-set-key (kbd "C-S-c") 'copy-region-as-kill)
(global-set-key (kbd "C-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-S-y") 'yank)
(global-set-key (kbd "M-\\") 'delete-horizontal-and-surround-space)
(global-set-key (kbd "C-j") 'join-line)
(global-set-key (kbd "C-S-j") 'crux-top-join-line)
(global-set-key (kbd "C-;") 'comment-dwim-line)
(global-set-key (kbd "C-S-k") 'kill-line-or-region)

(global-set-key (kbd "<C-tab>") #'s9g-indent-up)
(global-set-key (kbd "<C-S-iso-lefttab>") #'s9g-indent-down)
(global-set-key (kbd "C-c j") 'avy-goto-word-1)
(global-set-key (kbd "C-c l") 'locate-key-binding)
(global-set-key (kbd "M-*") 'pop-tag-mark)

(dotimes (i 8)
  (lexical-let* ((idx (+ 1 i))
                 (key (kbd (format "C-%d" idx))))
    (global-set-key
     key
     (lambda ()
       (interactive)
       (let* ((wlist (aw-window-list))
              (w (or
                  (nth (- idx 1) wlist)
                  (car (last wlist)))))
         (unless (null w)
           (aw-switch-to-window w)))))))

(global-set-key (kbd "<S-left>") #'aw-switch-prev-window)
(global-set-key (kbd "<S-right>") #'aw-switch-next-window)

(global-set-key (kbd "C-x x") 'first-error)

(global-set-key
 (kbd "C-c T")
 '(lambda ()
    (interactive)
    (insert-commented-keyword "TODO")))

(global-set-key
 (kbd "C-c F")
 '(lambda ()
    (interactive)
    (insert-commented-keyword "FIXME")))

(global-set-key (kbd "C-c c") 'org-capture)

(provide 's9g-globals)
;;; s9g-globals.el ends here
