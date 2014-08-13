;; aw-ruby-configuration.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; General Ruby configuration.
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

;; Auto-Mode Configuration - Prefer Enhanced Ruby Mode
(add-to-list 'auto-mode-alist '("\\.rake$"     . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$"  . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$"       . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$"    . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$"     . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$"     . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))

;; Do not compile SCSS files on saving.
(setq scss-compile-at-save nil)

(provide 'aw-ruby-configuration)
