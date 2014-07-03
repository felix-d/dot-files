(setq org-log-done t)
(setq org-agenda-include-diary t)
;(setq org-html-use-infojs nil)
;(setq org-html-head "<link rel=\"stylesheet\" type=\"text/css\"
;href=\"http://thomasf.github.io/solarized-css/solarized-light.min.css\" />")


;; (defun my-org-export-change-options (plist backend)
;;   (cond 
;;     ((equal backend 'html)
;;      (plist-put plist :with-toc t)
;;      (plist-put plist :section-numbers t))
;;     ((equal backend 'latex)
;;      ;(plist-put plist :with-toc t)
;;      ;(plist-put plist :section-numbers t)
;;      )) plist)
;; (add-to-list 'org-export-filter-options-functions
;; 	     'my-org-export-change-options)
(defadvice htmlize-buffer-1 (around ome-htmlize-buffer-1 disable)
  (rainbow-delimiters-mode -1)
  ad-do-it
  (rainbow-delimiters-mode t))

(defun ome-htmlize-setup ()
  (if (el-get-read-package-status 'rainbow-delimiters)
      (progn
        (ad-enable-advice 'htmlize-buffer-1 'around 'ome-htmlize-buffer-1)
        (ad-activate 'htmlize-buffer-1))))

(ome-htmlize-setup)
(provide 'org-mode-setup)
