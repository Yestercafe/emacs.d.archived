;;; -*- lexical-binding: t -*-

(use-package ivy
  :ensure t
  :init
  (ivy-mode)
  :config
  (setq ivy-initial-inputs-alist nil
	ivy-count-format "(%d/%d) "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((counsel-rg . ivy--regex-plus)
				(swiper . ivy--regex-plus)
				(swiper-isearch . ivy--regex-plus)
				(t . ivy--regex-ignore-order)))
  )

(use-package ivy-rich
  :ensure t
  :init
  (ivy-rich-mode)
  )

;; all-the-icons-ivy-rich 装完之后需要执行\
;; `'M-x all-the-icons-install-fonts`' 手动安装支持字体\
;; 注意，这个字体是从 GitHub 上面下载的，所以需要激活代理\
;; 后再在 Emacs 中下载
(use-package all-the-icons-ivy-rich
  :ensure t
  :init
  (all-the-icons-ivy-rich-mode)
  )

(provide 'init-ivy)
