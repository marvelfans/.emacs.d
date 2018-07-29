;;; package --- Summary
;;; Commentary: 一些绑定键
;; Code:


;; 快捷键绑定
;;;; Tag跳到定义与回跳到上一个位置
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-]") 'xref-find-definitions)
(global-set-key (kbd "C-t") 'xref-pop-marker-stack)

;;;; 向上下滚屏
(global-set-key (kbd "M-n") 'scroll-up-line)
(global-set-key (kbd "M-p") 'scroll-down-line)


;;;; 打开文件
(global-set-key (kbd "<f2>") 'ido-find-file)

;;;; 缓冲区列表
(global-set-key (kbd "<f3>") 'ido-switch-buffer)



(provide 'init-keybinding)
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init-keybinding.el ends here
