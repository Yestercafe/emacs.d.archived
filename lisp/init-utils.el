;;; -*- lexical-binding: t -*-

;; restart-emacs 重启 Emacs
(use-package restart-emacs
  :ensure t
  )

;; which-key 智能提示键位
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  :config
  ;; Allow C-h to trigger which-key before it is done automatically
  (setq which-key-show-early-on-C-h t)
  )

;; undo-fu 为 Emacs 提供 redo 功能
(use-package undo-fu
  :ensure t
  :bind
  (("C-/" . undo-fu-only-undo)
   ("C-S-/" . undo-fu-only-redo))
  )


(provide 'init-utils)
