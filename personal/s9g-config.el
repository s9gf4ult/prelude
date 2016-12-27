;;; s9g-config.el --- my main config starter         -*- lexical-binding: t; -*-

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

;; We expect this file to be loaded by prelude
(add-to-list 'load-path (expand-file-name "s9g-config" prelude-personal-dir))

(require 's9g-override)
(require 's9g-packages)
(require 's9g-modes)
(require 's9g-globals)

(winner-mode 1)
(desktop-save-mode 1)

(provide 's9g-config)
;;; s9g-config.el ends here
