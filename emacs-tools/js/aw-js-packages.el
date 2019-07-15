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
(defun fix-js2-tab ()
  (setq js2-basic-offset 2))
(add-hook 'js2-mode-hook 'fix-js2-tab)

;; CoffeeScript Mode
(install-package-if-missing 'coffee-mode)
(require 'coffee-mode)
(setq coffee-tab-width 2)

;; TypeScript Mode
(install-package-if-missing 'typescript-mode)
(require 'typescript-mode)

;; Tide (TypeScript IDE)
(install-package-if-missing 'company)
(install-package-if-missing 'tide)
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; Tide Hook for JS
(add-hook 'js2-mode-hook #'setup-tide-mode)

;; JSX
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "jsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; TSX
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'typescript-tslint 'web-mode))

(provide 'aw-js-packages)
