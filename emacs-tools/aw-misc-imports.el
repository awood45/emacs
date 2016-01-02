;; emacs-core.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; This imports packages that do not fit into a development subcategory.
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

;; Magit
(install-package-if-missing 'magit)
(require 'magit)

;; Gist Support
(install-package-if-missing 'gist)
(require 'gist)

;; Idle Highlight Minor Mode - Highlight Word You're On
(install-package-if-missing 'idle-highlight-mode)
(require 'idle-highlight-mode)

;; Find File in Project
(install-package-if-missing 'find-file-in-project)
(require 'find-file-in-project)

;; HAML Mode
(install-package-if-missing 'haml-mode)
(require 'haml-mode)

;; SASS Mode
(install-package-if-missing 'scss-mode)
(require 'scss-mode)

;; YAML Mode
(install-package-if-missing 'yaml-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

;; Markdown Mode
(install-package-if-missing 'markdown-mode)
(require 'markdown-mode)

;; Elixir Mode
(install-package-if-missing 'elixir-mode)
(require 'elixir-mode)

;; Go Mode
(install-package-if-missing 'go-mode)
(require 'go-mode)

;; Web Mode
(install-package-if-missing 'web-mode)
(require 'web-mode)
(setq web-mode-code-indent-offset 2)

;; Haskell Mode
(install-package-if-missing 'haskell-mode)
(require 'haskell-mode)

(provide 'aw-misc-imports)
