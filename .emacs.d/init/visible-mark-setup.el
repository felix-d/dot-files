(require 'visible-mark)
(defface visible-mark-face1
  '((((type tty) (class mono))
    (:inverse-video t))
    (t (:background "gray25"))) "")

(setq visible-mark-faces (quote (visible-mark-face1)))

; highlight the last 3 marks
(setq visible-mark-max 1)
; globally activate visible-mark-mode
(global-visible-mark-mode)
(provide 'visible-mark-setup)
