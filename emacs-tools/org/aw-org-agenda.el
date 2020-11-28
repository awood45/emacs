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
      '((type "BACKLOG(b)" "ONDECK(o)" "PLAN(l)" "WIP(i)" "REVIEW(r)"
                  "|" "COMPLETE(c)" "STOPPED(s)")
        (sequence "TODO(t)" "WAITING(w)" "WIP"
              "|" "DONE(d)" "CANCELLED(n)")
        (sequence "MAYBE(m)" "PROJECT(p)"
                  "|" "FINISHED(f) ABANDONED(a)")
        (sequence "APPT(a)"
                  "|" "DONE(d)" "CANCELLED(n)")
        (sequence "GOAL(g)"
                  "|" "DONE(d)" "FAILED(x)")
        (sequence "TODO(t)" "READING(e)" "PAUSED(+)" "|" "DONE(d)")))

(setq org-agenda-custom-commands
      '(("K" "Kanban View"
         ((agenda)
          (todo "ONDECK")
          (todo "PLAN")
          (todo "WIP")
          (todo "REVIEW")))
        ("M" "Project Idea View"
         ((todo "MAYBE")))
        ("P" "Project View"
         ((todo "PROJECT")))
        ("B" "Backlog Grooming View"
         ((todo "BACKLOG")))
        ("F" "Full Planning View"
         ((todo "ONDECK")
          (todo "PLAN")
          (todo "WIP")
          (todo "REVIEW")
          (todo "BACKLOG")))
        ("C" "Complete Task View"
         ((todo "COMPLETE")))))

;; Alternate binding for moving Org tasks up and down.
(define-key org-mode-map (kbd "M-p") 'org-metaup)
(define-key org-mode-map (kbd "M-n") 'org-metadown)

(provide 'aw-org-agenda)
