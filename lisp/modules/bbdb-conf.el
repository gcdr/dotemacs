
(require 'bbdb)
(require 'bbdb-autoloads)
(require 'timezone)
(require 'bbdb-site)

(bbdb-initialize 'gnus 'mail 'message)
(setq bbdb-complete-mail-allow-cycling t)

(setq bbdb-message-all-addresses t)
(add-hook 'message-setup-hook 'bbdb-mail-aliases)

(setq bbdb-file (expand-file-name "contacts.bbdb" my-personal-dir)
      bbdb-north-american-phone-numbers-p nil)
