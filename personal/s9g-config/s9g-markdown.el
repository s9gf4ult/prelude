;;; s9g-markdown.el ---                              -*- lexical-binding: t; -*-

;; Copyright (C) 2017

;; Author:  <razor@localhost.localdomain>
;; Keywords: emulations

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

(add-hook
 'markdown-mode-hook
 (lambda ()
   (local-set-key (kbd "<M-left>") 'left-word)
   (local-set-key (kbd "<M-right>") 'right-word)
   (local-set-key (kbd "<C-left>") 'markdown-promote)
   (local-set-key (kbd "<C-right>") 'markdown-demote)
   ))

(provide 's9g-markdown)
;;; s9g-markdown.el ends here
