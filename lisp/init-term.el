;;; -*- lexical-binding: t -*-

;; refs https://laptrinhx.com/customizable-256-colors-for-emacs-term-and-ansi-term-3643817902/ thanx

(use-package eterm-256color
  :ensure t
  :hook
  ((term-mode . eterm-256color-mode))
  )

;; 关闭 ansi-term 显示行号
(add-hook 'term-mode-hook
          (lambda ()
            (display-line-numbers-mode 0)))

;; 设置终端全局键
(global-set-key (kbd "C-c t") 'ansi-term)


(provide 'init-term)
