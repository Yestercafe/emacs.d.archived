;;; -*- lexical-binding: t -*-

;; 关闭自定义主题警告
(setq custom-safe-themes t)

;; spacemacs theme
(use-package spacemacs-theme
  :ensure t
  :init (load-theme 'spacemacs-dark t))

;; 设置字体
(set-frame-font "Iosevka SS05-14")
(setq default-frame-alist '((font . "Iosevka SS05-14")))


(provide 'init-themes)
