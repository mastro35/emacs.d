;; Add your custom functions here

;; Custom function to go quicky to my notes
(defun notes ()
  "Go quicky to my note ORG mode"
   (interactive)
   (find-file org-default-notes-file)
   )

;; Speed up emacs when dealing with files that are larger than 5MB
;;(defun my-find-file-check-make-large-file-read-only-hook ()
;;  "If a file is over a given size, make the buffer read only."
;;  (when (and (> (buffer-size) (* 1024 1024 5))
;;             (string-match "\\.log\\'" buffer-file-name))
;;    (setq buffer-read-only t)
;;    (buffer-disable-undo)
;;    (undo-tree-mode 0)
;;    (projectile-mode 0)
;;    (pyenv-mode 0)
;;    (font-lock-mode 0)
;;    (end-of-buffer)
;;    (when (fboundp 'show-smartparens-mode)
;;      (show-smartparens-mode 0))
;;    )
;;  )

;; Hook for log files
(defun open-log-file-hook ()
  "How to open a log file"
  (when (string-match "\\.log\\'" buffer-file-name)
    (setq buffer-read-only t)
    (buffer-disable-undo)
    (undo-tree-mode 0)
    (projectile-mode 0)
    (pyenv-mode 0)
    (font-lock-mode 0)
    (ivy-mode 0)
    (linum-mode 0)
    (end-of-buffer)
    (when (fboundp 'show-smartparens-mode)
      (show-smartparens-mode 0))
    )
)

;; (add-hook 'find-file-hook 'my-find-file-check-make-large-file-read-only-hook)
(add-hook 'find-file-hook 'open-log-file-hook)

;; Don't delete trailing whitespaces for markdown files
(defun delete-trailing-whitespace-no-markdown ()
  "If a file is a markdown file, don't delete trailing whitespaces"
  (when (not (string-match "\\.md\\'" buffer-file-name))
    (delete-trailing-whitespace)
    ))


(provide 'base-functions)
