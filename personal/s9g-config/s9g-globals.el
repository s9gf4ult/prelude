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

(global-set-key (kbd "C-S-k") 'crux-kill-whole-line)
(global-set-key (kbd "<f12>") 'neotree-toggle)
(global-set-key (kbd "<f7>") 'helm-mini)

(global-set-key (kbd "C-S-c") 'copy-region-as-kill)

(provide 's9g-globals)
;;; s9g-globals.el ends here
