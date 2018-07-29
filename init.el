;;; package --- Summary
;;; Commentary: My Emacs 配置入口
;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)



;; 添加用户路径
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


;; 添加下载源
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))


;;;; 加载各种配置

;; 快捷键
(require 'init-keybinding)


;; 一些基本设置
(require 'init-basic)


;; python-mode
(require 'init-python)


;; markdown-mode
(require 'markdown-mode)


;; 界面设置
(require 'init-ui)


;; minibuffer一些设置
(require 'init-minibuffer)


;; 自己定义的一些方法
(require 'init-func)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode smex anaconda-mode company-anaconda company-jedi elpy flycheck python))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;
;; init.el ends here
