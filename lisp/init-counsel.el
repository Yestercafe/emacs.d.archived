;;; -*- lexical-binding: t -*-

(use-package counsel
  :ensure t
  :bind
  ;; 使用 counsel-switch-buffer 替换 switch-to-buffer
  (([remap switch-to-buffer] . counsel-switch-buffer)))


(provide 'init-counsel)
