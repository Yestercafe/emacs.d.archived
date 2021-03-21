;;; -*- lexical-binding: t -*-

;; evil-mode
(use-package evil
  :ensure t
  :config
  (dolist (p '((minibuffer-inactive-mode . emacs)
             (term-mode . emacs)
             (erc-mode . emacs)
             (help-mode . emacs)
             (eshell-mode . emacs)
             (shell-mode . emacs)
             (dired-mode . emacs)))
    (evil-set-initial-state (car p) (cdr p)))
  )

;; ESC 键映射
(use-package evil-escape
  :ensure t
  :hook
  ((evil-mode . evil-escape-mode))
  :config
  (setq evil-escape-delay 0.3)
  (setq evil-escape-excluded-major-modes '(dired-mode))
  (setq evil-escape-key-sequence "kj")
  )



(provide 'init-evil)
