;;; s9g-defuns.el --- global usefull defuns not assigned to some mode
;;; or something -*- lexical-binding: t; -*-

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

(defun s9g-windmove-other-frame (dir &optional arg window)
  "Move to other window in specified DIR or switch to other frame.

  Optional ARG and WINDOW are passed down for some reason"
  (let ((other-window (windmove-find-other-window dir arg window)))
    (cond ((null other-window)
           (other-frame 1))
          ((and (window-minibuffer-p other-window)
                (not (minibuffer-window-active-p other-window)))
           (error "Minibuffer is inactive"))
          (t
           (select-window other-window)))))

(defun s9g-windmove-left (&optional arg)
  (interactive "P")
  (s9g-windmove-other-frame 'left arg))

(defun s9g-windmove-right (&optional arg)
  (interactive "P")
  (s9g-windmove-other-frame 'right arg))


(provide 's9g-defuns)
;;; s9g-defuns.el ends here
