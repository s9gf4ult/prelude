;;; s9g-helm.el ---                                  -*- lexical-binding: t; -*-

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

(require 'helm)

; (define-key helm-etags-map (kbd "<C-return>") 'helm-etags-run-switch-other-window)
(define-key helm-map (kbd "<C-return>") 'helm-buffer-switch-other-window)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h x") 'helm-do-ag-project-root)
(global-set-key (kbd "C-c h g") 'helm-do-ag)
(global-set-key (kbd "M-/") 'helm-dabbrev)
(global-set-key (kbd "M-.") 'helm-etags-select)


(provide 's9g-helm)
;;; s9g-helm.el ends here
