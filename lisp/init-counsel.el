;;; -*- lexical-binding: t -*-

(use-package counsel
  :ensure t
  :after (ivy)
  :bind
  ;; 使用 counsel-switch-buffer 替换 switch-to-buffer
  (([remap ivy-switch-buffer] . counsel-switch-buffer)
   ("M-x" . counsel-M-x)
   ("C-c f" . counsel-recentf)
   ("C-c g" . counsel-git))
  )


(provide 'init-counsel)
