					;(setq debug-on-error t)

(setq exec-path (append exec-path '("/usr/local/bin")))
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/init")
(let ((default-directory "~/.emacs.d/elisp"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/init"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "/usr/local/share/emacs/site-lisp"))
  (normal-top-level-add-subdirs-to-load-path))
(require 'cl)
(require 'advice)
(require 'functions)
(require 'el-get-setup)
(require 'helm-setup)
(require 'auto-complete-setup)
(require 'cc-setup)
(require 'key-bindings)
(require 'gui)
(require 'eshell-setup)
(require 'gambit-setup)
(require 'iy-go-to-char)
(require 'mu4e-setup)
(require 'imenu-setup)
(require 'visible-mark-setup)
(require 'prolog-setup)
(require 'org-mode-setup)
(require 'projectile-setup)
(require 'sr-speedbar)
(require 'evil-setup)
(require 'evil-leader-setup)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)
(require 'misc)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/notes.org"))))

