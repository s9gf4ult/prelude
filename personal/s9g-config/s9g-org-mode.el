;;; s9g-org-mode.el --- org mode configuration       -*- lexical-binding: t; -*-

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

(require 'org)


(defun s9g-org-hook ()
  (auto-fill-mode 1)
  (local-set-key (kbd "<S-left>") #'windmove-left)
  (local-set-key (kbd "<S-right>") #'windmove-right)
  (local-set-key (kbd "<S-up>") #'windmove-up)
  (local-set-key (kbd "<S-down>") #'windmove-down))

(add-hook
 'org-mode-hook 's9g-org-hook)

(provide 's9g-org-mode)
;;; s9g-org-mode.el ends here
