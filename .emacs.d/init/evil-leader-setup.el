(evil-leader/set-leader "<SPC>")
(unless (featurep 'helm)
  (evil-leader/set-key
    "e" 'find-file
    "b" 'switch-to-buffer))
(eval-after-load "helm"
  (evil-leader/set-key
    "f" 'helm-for-files
    "c" 'ace-jump-char-mode
    "l" 'ace-jump-line-mode
    "g" 'helm-find-files
    "b" 'helm-buffers-list))
(eval-after-load "expand-region"
  (progn
    (setq expand-region-contract-fast-key "z")
    (evil-leader/set-key "xx" 'er/expand-region)))
(eval-after-load "magit"
  (evil-leader/set-key "g" 'magit-status))
(evil-leader/set-key
  "k" 'kill-buffer)
(global-evil-leader-mode)

(provide 'evil-leader-setup)
