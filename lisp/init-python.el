;;; package --- Summary
;;; Commentary: python相关配置
;; Code:


;; python-mode
;;;; 自动完成company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode) ;; 全局开启
(setq company-show-numbers t) ;; 显示序号
(setq company-idle-delay 0.2) ;; 菜单延迟
(setq company-minimum-prefix-length 1) ;; 开始补全长度
(setq company-require-match nil)
(setq company-dabbrev-ignore-case nil)
(setq company-transformers '(company-sort-by-backend-importance))
(setq company-continue-commands '(not helm-dabbrev))
;;;; 补全后端使用anaconda
(add-to-list 'company-backends '(company-anaconda :with company-yasnippet))
;;;; 补全快捷键
(global-set-key (kbd "<C-tab>") 'company-complete)
;;;; 补全菜单快捷键
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
;;;; 在python-mode自动启用
(add-hook 'python-mode-hook 'anaconda-mode)
;;;; elpy
(require 'elpy)
(elpy-enable)
;;;; 语法检查---flycheck
(add-hook 'after-init-hook #'global-flycheck-mode) ;; 全局开启
(when (require 'flycheck nil t)
  (setq elpy-modules(delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
;;;; 显增错误
(add-to-list 'display-buffer-alist
	     `(,(rx bos "*Flycheck errors*" eos)
	       (display-buffer-reuse-window
		display-buffer-in-side-window)
	       (side    . bottom)
	       (reusable-frames . visible)
	       (window-height  . 0.33)))


;;;; flycheck 显示错误
(global-set-key (kbd "C-c l") 'flycheck-list-errors)



(provide 'init-python)
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init-python.el ends here
