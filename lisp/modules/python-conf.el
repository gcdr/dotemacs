;;; python-conf.el --- Python intepreter
;;; Time-stamp: <2014-07-11 10:47:30 CDT gongzhitaao>

(require 'python-mode)
(when (featurep 'python) (unload-feature 'python t))

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args ""
      python-shell-prompt-regexp "In \\[[0-9]+\\]: "
      python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
      python-shell-completion-setup-code
      (format "%s\nfrom IPython.core.completerlib import module_completion"
              python-shell-completion-setup-code)
      python-shell-completion-module-string-code
      "';'.join(module_completion('''%s'''))\n"
      python-shell-completion-string-code
      "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

(provide 'python-conf)
;;; python-conf.el ends here
