;;; -*- lexical-binding: t -*-

;; 配置路径设置
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

;;; 添加加载路径
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))

;; 常量
(defconst *is-a-mac* (eq system-type 'darwin))

;; 启动时调整 GC 阈值 (purcell)
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))


;; Bootstrap
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-bootstrap)
(require 'init-tmp-preload)

;; 基础设施
(require 'init-package)
(require 'init-macos)
(require 'init-themes)
(require 'init-ui)
(require 'init-modeline)
(require 'init-ace)

;; 核心插件
(require 'init-ivy)
(require 'init-swiper)
(require 'init-counsel)
(require 'init-evil)
(require 'init-company)
(require 'init-flycheck)

;; 小工具
(require 'init-wakatime)
(require 'init-magit)
