;;; display-time-conf.el --- display-time modebar config
;;; Time-stamp: <2015-05-05 20:22:15 CDT gongzhitaao>

(setq display-time-24hr-format t
      display-time-day-and-date nil)

(setq display-time-mail-function
      (lambda ()
        ;; Gnus launched?
        (when (boundp 'gnus-newsrc-alist)
          (dolist (entry gnus-newsrc-alist)
            (let ((group (car entry)))
              (when (< (gnus-group-level group) 2)
                (let ((unread (gnus-group-unread group)))
                  (when (and (numberp unread)
                             (> unread 0))
                    (return group)))))))))

(setq display-time-use-mail-icon t)
(setq display-time-mail-icon
      `(image :type png
              :file ,(expand-file-name "mail-unread.png" my-icons-dir)
              :ascent center))
(display-time)

;;; display-time-conf.el ends here