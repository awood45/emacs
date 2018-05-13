;; aw-org-settings.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; Custom general settings for Org Mode.
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

;; Use Visual Line Mode with Org Mode
(add-hook 'org-mode-hook 'visual-line-mode)

;; Specify that agenda files come from the org folder located in the home dir
(setq org-agenda-files (quote ("~/org")))

;;;; Sync Org Mode with Dropbox

;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/collect-mobile.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;; Sync all files in directory.
(setq org-mobile-files (quote ("~/org")))
;; Set up local collect/capture
(setq org-default-notes-file (concat org-directory "/collect-local.org"))
(define-key global-map "\C-cc" 'org-capture)

;; Set Up Babel Code Executables
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ruby . t)
   (scheme . t)))

(provide 'aw-org-settings)
