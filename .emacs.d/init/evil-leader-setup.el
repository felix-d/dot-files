(evil-leader/set-leader "<SPC>")
(unless (featurep 'helm)
  (evil-leader/set-key
    "e" 'find-file
    "b" 'switch-to-buffer))
(eval-after-load "helm"
  (evil-leader/set-key
    "f" 'helm-for-files
    "c" 'ace-jump-char-mode
    "j" 'ace-jump-line-mode
    "l" 'helm-locate
    "y" 'helm-show-kill-ring
    "t" 'helm-top
    "m" 'helm-man-woman
;    "j" 'helm-M-x
    "e" 'helm-find-files
    "b" 'helm-buffers-list))
(eval-after-load "expand-region"
  (progn
    (setq expand-region-contract-fast-key "z")
    (evil-leader/set-key "xx" 'er/expand-region)))
(eval-after-load "magit"
  (evil-leader/set-key "g" 'magit-status))
(eval-after-load "git-gutter-mode"
  (evil-leader/set-key
    "s" 'git-gutter:stage-hunk
    "n" 'git-gutter:next-hunk
    "p" 'git-gutter:previous-hunk))
(evil-leader/set-key
  "k" 'kill-buffer)
(global-evil-leader-mode)

(provide 'evil-leader-setup)
