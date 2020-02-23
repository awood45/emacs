;; aw-org-agenda.el
;; Copyright (C) 2014 -- Alex Wood
;;
;; Org Agenda related customizations.
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

;; Make it Easy to Enter Agenda
(global-set-key "\C-ca" 'org-agenda)

;; org-mode TODO Keywords
(setq org-todo-keywords
      '((type "TODO(t)" "WAITING(w)" "WIP"
              "|" "DONE(d)" "CANCELLED")
        (sequence "BACKLOG(b)" "ONDECK(o)" "PLAN(l)" "WIP(i)" "REVIEW(r)"
                  "|" "COMPLETE(c)" "STOPPED(s)")
        (sequence "MAYBE(m)" "PROJECT(p)"
                  "|" "FINISHED(f) ABANDONED(a)")
        (sequence "APPT(a)"
                  "|" "DONE" "CANCELLED")))

(setq org-agenda-custom-commands
      '(("K" "Kanban View"
         ((agenda)
          (todo "ONDECK")
          (todo "PLAN")
          (todo "WIP")
          (todo "REVIEW")))
        ("B" "Backlog Grooming View"
         ((agenda)
          (todo "BACKLOG")))))

;; Alternate binding for moving Org tasks up and down.
(define-key org-mode-map (kbd "M-p") 'org-metaup)
(define-key org-mode-map (kbd "M-n") 'org-metadown)

(provide 'aw-org-agenda)
