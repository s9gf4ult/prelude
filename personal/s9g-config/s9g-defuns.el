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

(defun delete-horizontal-and-surround-space ()
  (interactive)
  (delete-horizontal-space)
  (insert " ")
  (save-excursion
    (insert " ")))


(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (not (region-active-p))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))

(defun kill-line-or-region (&optional lines-count)
  "Kill whole line if region is not selected. Kill region otherwise."
  (interactive "p")
  (if mark-active
      (delete-region (region-beginning)
                     (region-end))
    (kill-whole-line lines-count)))

(defun split-window-sensibly-reversed (&optional window)
  "Same as split-window-sensibly but with reversed logic about
  horizontal/vertical split."
  (let ((window (or window (selected-window))))
    (or (and (window-splittable-p window t)
             ;; Split window horizontally.
             (with-selected-window window
               (split-window-right)))
        (and (window-splittable-p window)
             ;; Split window vertically.
             (with-selected-window window
               (split-window-below)))
        (and (eq window (frame-root-window (window-frame window)))
             (not (window-minibuffer-p window))
             ;; If WINDOW is the only window on its frame and is not the
             ;; minibuffer window, try to split it vertically disregarding
             ;; the value of `split-height-threshold'.
             (let ((split-height-threshold 0))
               (when (window-splittable-p window)
                 (with-selected-window window
                   (split-window-below))))))))


(provide 's9g-defuns)
;;; s9g-defuns.el ends here
