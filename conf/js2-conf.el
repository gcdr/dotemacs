;;; js2-conf.el --- js2-mode conf
;;; Time-stamp: <2015-05-17 08:36:45 gongzhitaao>

(setq js-indent-level 2)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq js2-basic-offset 2
      js2-bounce-indent-p nil)
(setq js2-mode-indent-ignore-first-tab t)

(rename-modeline "js2-mode" js2-mode "JS2")

(setq-default js2-global-externs
              '("assert" "clearInterval" "clearTimeout" "console" "d3" "describe" "document" "google" "hljs" "Infinity" "io" "jQuery" "JSON" "localStorage" "module" "process" "require" "setInterval" "setTimeout" "window"))

;;; js2-conf.el ends here