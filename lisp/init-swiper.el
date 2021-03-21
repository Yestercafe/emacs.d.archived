;;; -*- lexical-binding: t -*-


(use-package swiper
  :ensure t
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper-isearch-backward))
  :config
  (setq swiper-action-recenter t
	swiper-include-line-number-in-search t)
  )


(provide 'init-swiper)
