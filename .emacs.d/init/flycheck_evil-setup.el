(setq evil-auto-indent t)
(setq evil-regexp-search t)
(setq evil-want-C-i-jump t)
;(add-hook 'text-mode-hook 'turn-on-evil-mode)
;;(add-hook 'prog-mode-hook 'turn-on-evil-mode)
;;(add-hook 'eshell-mode-hook 'turn-on-evil-mode)
;;(add-hook 'comint-mode-hook 'turn-on-evil-mode)
;;(add-hook 'Info-mode-hook 'turn-off-evil-mode)
(global-evil-surround-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-force-normal-state)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-A")
  'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-S-A")
  'evil-numbers/dec-at-pt)
(defun prelude-yank-to-end-of-line ()
  "Yank to end of line."
  (interactive)
  (evil-yank (point) (point-at-eol)))

(define-key evil-normal-state-map
  (kbd "Y") 'prelude-yank-to-end-of-line)
(defun prelude-evil-scroll-down-other-window ()
  (interactive)
  (scroll-other-window))

(defun prelude-evil-scroll-up-other-window ()
  (interactive)
  (scroll-other-window '-))

(define-key evil-normal-state-map
  (kbd "C-S-d") 'prelude-evil-scroll-down-other-window)

(define-key evil-normal-state-map
  (kbd "C-S-u") 'prelude-evil-scroll-up-other-window)
(evil-add-hjkl-bindings magit-log-mode-map 'emacs)
(evil-add-hjkl-bindings magit-commit-mode-map 'emacs)
(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

(setq evil-shift-width 2)
;;; snagged from Eric S. Fraga
;;; http://lists.gnu.org/archive/html/emacs-orgmode/2012-05/msg00153.html
(defun prelude-evil-key-bindings-for-org ()
  ;;(message "Defining evil key bindings for org")
  (evil-declare-key 'normal org-mode-map
    "gk" 'outline-up-heading
    "gj" 'outline-next-visible-heading
    "H" 'org-beginning-of-line ; smarter behaviour on headlines etc.
    "L" 'org-end-of-line ; smarter behaviour on headlines etc.
    "t" 'org-todo ; mark a TODO item as DONE
    ",c" 'org-cycle
    (kbd "TAB") 'org-cycle
    ",e" 'org-export-dispatch
    ",n" 'outline-next-visible-heading
    ",p" 'outline-previous-visible-heading
    ",t" 'org-set-tags-command
    ",u" 'outline-up-heading
    "$" 'org-end-of-line ; smarter behaviour on headlines etc.
    "^" 'org-beginning-of-line ; ditto
    "-" 'org-ctrl-c-minus ; change bullet style
    "<" 'org-metaleft ; out-dent
    ">" 'org-metaright ; indent
    ))
(prelude-evil-key-bindings-for-org)
(provide 'evil-setup)
