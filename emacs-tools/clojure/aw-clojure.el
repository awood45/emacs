;; aw-clojure.el
;; Copyright (C) 2016 -- Alex Wood
;;
;; Configuration of a Clojure development environment.
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

;; Clojure Mode Package
(install-package-if-missing 'clojure-mode)
(require 'clojure-mode)

;; CIDER REPL for Clojure
(install-package-if-missing 'cider)
(require 'cider)

;; Paredit On When Developing Clojure
(add-hook 'clojure-mode-hook 'paredit-mode)

(provide 'aw-clojure)
