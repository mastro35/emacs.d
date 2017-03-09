;;; package --- Main init file
;;; Commentary:
;;; This is my init file

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)
(require 'base-theme)
(require 'base-extensions)
(require 'base-functions)
(require 'base-global-keys)
(require 'lang-python)
(require 'lang-javascript)
(require 'lang-web)
(require 'lang-haskell)
(require 'lang-c)
(require 'powerline)

(powerline-default-theme)

(put 'dired-find-alternate-file 'disabled nil)
(blink-cursor-mode 0)
(global-hl-line-mode)
(setq-default cursor-type 'hbar)
