(require 'mu4e)
(setq user-mail-address "flx.descoteaux@gmail.com")
(setq mu4e-mu-binary "/usr/local/bin/mu")
;; default
;; (setq mu4e-maildir "~/Maildir")
;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
      '( ("/INBOX"               . ?i)
	 ("/[Gmail].Sent Mail"   . ?s)
	 ("/[Gmail].Trash"       . ?t)
	 ("/[Gmail].All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
 user-mail-address "flx.descoteaux@gmail.com"
 user-full-name  "Felix Descoteaux"
 message-signature "Felix Descoteaux")
(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      starttls-gnutls-program (executable-find "gnutls-cli")
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials
      '(("smtp.gmail.com" 587 "flx.descoteaux@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use: (setq
;;message-send-mail-function 'smtpmail-send-it smtpmail-stream-type
;;'starttls smtpmail-default-smtp-server "smtp.gmail.com"
;;smtpmail-smtp-server "smtp.gmail.com" smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)
;; enable inline images
     (setq mu4e-view-show-images t)
     ;; use imagemagick, if available
     (when (fboundp 'imagemagick-register-types)
        (imagemagick-register-types))
(setq mu4e-view-prefer-html t)
(setq mu4e-html2text-command "html2text")
(provide 'mu4e-setup)
