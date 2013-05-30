;;; bindings.el
;;; Time-stamp: <2013-05-29 20:39:12 CDT gongzhitaao>

(global-set-key (kbd "C-c k") 'browse-kill-ring)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-<tab>") 'other-window)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'query-replace-regexp)

(global-set-key (kbd "<f6>") 'highlight-changes-visible-mode)
(global-set-key (kbd "<f7>") 'compile)
(global-set-key (kbd "<f9>") 'calendar)
;; f10 - menu
(global-set-key (kbd "<f11>") 'ispell)
(global-set-key (kbd "<f12>") 'ibus-mode)

(global-set-key (kbd "C-`") 'hs-toggle-hiding)

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c l") 'org-store-link)

(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-g") 'goto-line)
(global-set-key (kbd "s-r") 'set-visited-file-name)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)

(global-set-key (kbd "M-n") 'highlight-changes-next-change)
(global-set-key (kbd "M-p") 'highlight-changes-previous-change)

(defun gzt/indent-buffer ()
  "Indent the whole buffer"
  (interactive)
  (save-excursion (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "s-\\") 'gzt/indent-buffer)

(defun gzt/untabify-buffer ()
  "Untabify the whole buffer"
  (interactive)
  (save-excursion (untabify (point-min) (point-max))))
(global-set-key (kbd "s-u") 'gzt/untabify-buffer)

(provide 'bindings)
