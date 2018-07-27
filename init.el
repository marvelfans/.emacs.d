;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; 快捷键绑定
;;;; 跳到定义与回跳到上一个位置
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-]") 'xref-find-definitions)
(global-set-key (kbd "C-t") 'xref-pop-marker-stack)


(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 忽略提示声音
(setq ring-bell-function "ignore")
(setq visiable-bell t)


;; 用y/n代表yes/no
(fset 'yes-or-no-p 'y-or-n-p)


;; 高亮当前行
(require 'hl-line)
(global-hl-line-mode t)


;; 高亮选中区域
(transient-mark-mode t)


;; tab设置
(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq c-basic-offset 4)


;; 将备份文件放到特定路径中
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))


;; 主题
(load-theme 'tsdh-dark)


;; 行号
(global-linum-mode t)


;; 显示光标所在行列号
(setq column-number-mode t)
(setq line-number-mode t)


;; 显示匹配括号
(show-paren-mode t)
(setq show-paren-style "parentneses")


;; 显示时间
(display-time-mode t)
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-interval 10)


;; 字体设置(对客户端有效)
(set-default-font "-*-Courier-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")


;; 光标设置
(setq blink-cursor-mode 1)
(setq cursor-type "bar")


;; 跳过开始界面
(setq inhibit-startup-message t)



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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (anaconda-mode company-anaconda company-jedi elpy flycheck python))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
