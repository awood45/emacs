;; aw-js-packages.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; JavaScript Package Imports
;;
;;
;; This file is not part of GNU Emacs.
;;
;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with it. If not, see <http://www.gnu.org/licenses/>.

;; JSON Mode
(install-package-if-missing 'json-mode)
(require 'json-mode)

;; JavaScript IDE Mode
(install-package-if-missing 'js2-mode)
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))
(setq js2-bounce-indent-p t)

;; CoffeeScript Mode
(install-package-if-missing 'coffee-mode)
(require 'coffee-mode)
(setq coffee-tab-width 2)

(provide 'aw-js-packages)
