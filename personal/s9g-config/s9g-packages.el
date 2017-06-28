;;; s9g-packages.el --- install required packages    -*- lexical-binding: t; -*-

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

(prelude-require-package 'neotree)

(prelude-require-package 'framemove)
(require 'framemove)
(windmove-default-keybindings)
(setq framemove-hook-into-windmove t)

(prelude-require-package 'expand-region)
(prelude-require-package 'yasnippet)
(prelude-require-package 'haskell-snippets)
(prelude-require-package 'flycheck-haskell)

(prelude-require-packages '(fit-frame frame-fns misc-fns))
(require 'compile+)

(prelude-require-package 'nginx-mode)

(prelude-require-package 'monky)
(prelude-require-package 'ag)

(prelude-require-package 'helm-dash)

(prelude-require-package 'web-mode)

(prelude-require-package 'intero)

(prelude-require-package 'markdown-mode)

(provide 's9g-packages)
;;; s9g-packages.el ends here
