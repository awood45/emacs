;; aw-ruby-packages.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; Defines package imports related to Ruby development.
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


;;;; Packages

;; RVM
(install-package-if-missing 'rvm)
(require 'rvm)
(rvm-use-default)

;; Enhanced Ruby Mode
(install-package-if-missing 'enh-ruby-mode)
(require 'enh-ruby-mode)

;; YARD Mode
(install-package-if-missing 'yard-mode)
(require 'yard-mode)

;; inf-ruby provides a REPL buffer connected to a Ruby subprocess
(install-package-if-missing 'inf-ruby)
(require 'inf-ruby)

;; Cucumber Mode
(install-package-if-missing 'feature-mode)
(setq feature-default-language "en")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;;;; Vendored Dependencies
;; Toggle allows you to switch between test and code files with a single chord.
(require 'toggle)

;; Autotest automatically runs unit tests as you code in a buffer.
(require 'autotest)

;;;; Hooks
(add-hook 'enh-ruby-mode-hook 'yard-mode)
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)

(provide 'aw-ruby-packages)
