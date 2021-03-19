;;; -*- lexical-binding: t -*-

(when *is-a-mac*
  ;; Command 键修饰
  (setq mac-command-modifier 'super)
  ;; Option 键修饰
  (setq mac-option-modifier 'meta)
  ;; 设置滚动速度
  (setq mouse-wheel-scroll-amount '(1
                                    ((shift) . 5)
                                    ((control))))
  ;; 设置一些 macOS 中常用的 shortcuts
  (global-set-key (kbd "s-a") 'mark-whole-buffer)
  (global-set-key (kbd "s-s") 'save-buffer)
  (global-set-key (kbd "s-v") 'yank))


(provide 'init-macos)
