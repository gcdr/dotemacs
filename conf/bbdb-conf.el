;;; bbdb-conf.el
;;; Time-stamp: <2015-05-05 20:18:48 CDT gongzhitaao>

(require 'bbdb)
;; (require 'bbdb-autoloads)
(require 'timezone)
(require 'bbdb-site)

(bbdb-initialize 'gnus 'mail 'message 'anniv)
(setq bbdb-complete-mail-allow-cycling t)

(setq bbdb-allow-duplicates t)
(setq bbdb-message-all-addresses t)
(add-hook 'message-setup-hook 'bbdb-mail-aliases)

(setq bbdb-file (expand-file-name "contacts.bbdb.gz" my-personal-dir)
      bbdb-north-american-phone-numbers-p nil)

;;; bbdb-conf.el ends here