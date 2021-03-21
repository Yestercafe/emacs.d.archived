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

(use-package all-the-icons-ivy-rich
  :ensure t
  :init
  (all-the-icons-ivy-rich-mode)
  )

(provide 'init-ivy)
