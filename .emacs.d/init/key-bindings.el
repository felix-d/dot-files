(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(global-set-key (kbd "C-x c g") 'helm-do-grep)
;(global-set-key (kbd "C-x C-k") 'kill-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-o") 'other-window)

(global-set-key [f1] 'previous-buffer)
(global-set-key [f2] 'next-buffer)
;(key-chord-define-global "jj" 'ace-jump-word-mode)
;(key-chord-define-global "jk" 'ace-jump-char-mode)
;(key-chord-define-global "jl" 'ace-jump-line-mode)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key (kbd "C-x t") 'trim-empty-lines-in-selection)
(global-set-key (kbd "C-x C-r") 'rename-file-and-buffer)

(provide 'key-bindings)



