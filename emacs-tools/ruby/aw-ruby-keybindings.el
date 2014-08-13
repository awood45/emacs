;; aw-ruby-keybindings.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; Custom Ruby keybindings.
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

;; Key Customizations
(eval-after-load 'enh-ruby-mode
  '(progn
     (define-key enh-ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key enh-ruby-mode-map (kbd "C-j") 'reindent-then-newline-and-indent)
     (define-key enh-ruby-mode-map (kbd "C-c l") "lambda")
     (define-key enh-ruby-mode-map (kbd "C-c C-t") 'toggle-buffer)
     (define-key enh-ruby-mode-map (kbd "C-x C-t") 'toggle-style)
     (define-key enh-ruby-mode-map (kbd "C-c C-a") 'inf-ruby-console-auto)))

(provide 'aw-ruby-keybindings)
