
;;; bindings.el
;;; Time-stamp: <2012-11-07 19:00:30 CST gongzhitaao>

(global-set-key (kbd "C-c k") 'browse-kill-ring)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-<tab>") 'other-window)

(global-set-key (kbd "C-r") 'query-replace-regexp)

(global-set-key (kbd "<f2>") 'isearch-repeat-forward)
(global-set-key (kbd "<f11>") 'ispell)

(defun my-insert-time ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S %Z" (current-time))))
(global-set-key (kbd "<f12>") 'my-insert-time)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-iswitchb)

(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-g") 'goto-line)
(global-set-key (kbd "s-r") 'set-visited-file-name)
(global-set-key (kbd "s-s") 'save-buffer)

(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

(provide 'bindings)
