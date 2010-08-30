(setenv "PATH" (concat "/Users/<user_name>/.cabal/bin:" (getenv "PATH")))

(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/twilight-emacs/color-theme-twilight.el")
(color-theme-twilight)

(global-linum-mode 1)
(line-number-mode 1)
