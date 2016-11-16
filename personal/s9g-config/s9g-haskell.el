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

(defun s9g-cabal-mode-hook ()
  (local-set-key (kbd "<f5>") 'haskell-compile))

(defun s9g-haskell-mode-!hook ()
  (local-set-key (kbd "<f5>") 'haskell-compile))

(add-hook
 'haskell-cabal-mode-hook 's9g-cabal-mode-hook)

(add-hook
 'haskell-mode-hook 's9g-haskell-mode-hook)

(provide 's9g-haskell)
;;; s9g-haskell.el ends here
