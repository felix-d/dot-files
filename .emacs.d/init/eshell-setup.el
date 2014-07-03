(defun eshell-mode-hook-func ()
  (setq eshell-path-env (concat "/usr/local/bin:" eshell-path-env))
   (setq eshell-path-env (concat "/Users/felix/bin:" eshell-path-env))
   (setenv "PATH" (concat "/Users/felix/bin:" (getenv "PATH")))
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH"))))
 ; (define-key eshell-mode-map (kbd "M-s") 'other-window-or-split))
 
 (add-hook 'eshell-mode-hook 'eshell-mode-hook-func)
;; (add-hook 'eshell-mode-hook
;;           #'(lambda ()
;;               (define-key eshell-mode-map
;;                 [remap eshell-pcomplete]

(setq pcomplete-cycle-completions t)
(setq eshell-cmpl-ignore-case t)

(provide 'eshell-setup)
