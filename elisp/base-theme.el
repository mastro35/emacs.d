(use-package spacemacs-theme
  :defer t
  :init
  (load-theme 'spacemacs-dark t))

(blink-cursor-mode 0)
(global-hl-line-mode)

(setq-default cursor-type 'hbar)

(provide 'base-theme)
