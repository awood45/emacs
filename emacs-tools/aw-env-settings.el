;; aw-env-settings.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; Global environment settings are specified here.
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

;; Turn off that stupid intro message!
(setq inhibit-startup-message t)

;; No audible beep when hitting the edges of a buffer.
(setq visible-bell t)

;; Use spaces instead of tabs in fundamental mode.
(setq-default indent-tabs-mode nil)

;; Default to tab width of two spaces.
(setq-default tab-width 2)

;; Show matching parens
(show-paren-mode t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; default to better frame titles
(setq frame-title-format
      (concat "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; No backup files.
(setq make-backup-files nil)


(provide 'aw-env-settings)
