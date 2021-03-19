;;; -*- lexical-binding: t -*-

;; 关闭文件备份
(setq make-backup-files nil)

;; 将 yes/no 选择改为 y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 选中文本替换
(delete-selection-mode 1)

;; 关闭警告音
(setq ring-bell-function 'ignore)

;; refs Spdwal
(setq
 ;; 永远延迟加载
 use-package-always-defer t
 ;; demant 选项永远为 t
 use-package-always-demant nil
 ;; 关闭 use-package 的 error check
 use-package-expand-minimally t
 ;; 在 *Message* buffer 里面打印加载 package 的 log 
 use-package-verbose t)


(provide 'init-tmp-preload)
