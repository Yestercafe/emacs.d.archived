;;; -*- lexical-binding: t -*-

;; restart-emacs 重启 Emacs
(use-package restart-emacs
  :ensure t
  )

;; which-key 智能提示键位
(use-package which-key
  :ensure t
  :init
  (which-key-mode))


(provide 'init-utils)
