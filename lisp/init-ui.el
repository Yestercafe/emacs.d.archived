;;; -*- lexical-binding: t -*-

;; 关闭启动界面
(setq inhibit-startup-screen t)

;; 关闭工具栏、滚动条
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; 显示关联行号
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; 默认最大化 window/frame
;;(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;(add-hook 'before-make-frame-hook
;;	  #'(lambda ()
;;              (add-to-list 'initial-frame-alist '(fullscreen . maximized))
;;              (add-to-list 'default-frame-alist '(fullscreen . maximized))))

;; 全屏 frame 快捷键
(global-set-key (kbd "<f12>") #'toggle-frame-fullscreen)



(provide 'init-ui)
