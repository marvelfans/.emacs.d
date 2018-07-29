;;; package --- Summary
;;; Commentary: 下方状态栏相关设置
;; Code:


;; smex 方便输入命令
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-x") 'smex-major-mode-commands)
;;;; 这是以前的M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; ido 打开文件更方便
(require 'ido)
(ido-mode t)



(provide 'init-minibuffer)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init-minibuffer.el ends here
