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
;;(global-set-key (kbd "C-c t") 'ansi-term)

;; refs https://emacs.stackexchange.com/questions/48472/how-to-make-m-x-ansi-term-behave-like-m-x-shell-opening-in-new-window
;; 下面的代码为了实现在新窗口中打开终端，这里选择的是 M-x ansi-term <RET> zsh <RET>

;; 为 zsh 提供窗口模式
(defun ns/my-term-p (name _action)
  "Determine whether NAME names a `term-mode' buffer."
  (with-current-buffer name
    (derived-mode-p #'term-mode)))

;; 直接打开 zsh
(defun zsh ()
  (interactive)
  (let ((switch-to-buffer-obey-display-actions t))
    (ansi-term "zsh")))

(add-to-list 'display-buffer-alist '(ns/my-term-p () (inhibit-same-window . t)))

;; 设置 zsh 快捷键
(global-set-key (kbd "C-c t") 'zsh)


(provide 'init-term)
