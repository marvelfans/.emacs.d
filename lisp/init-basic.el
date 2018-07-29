;;; package --- Summary
;;; Commentary: My Emacs 配置入口
;; Code:

;; 忽略提示声音
(setq ring-bell-function "ignore")
(setq visiable-bell t)


;; 用y/n代表yes/no
(fset 'yes-or-no-p 'y-or-n-p)


;; 高亮选中区域
(transient-mark-mode t)


;; tab设置
(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq c-basic-offset 4)


;; 将备份文件放到特定路径中
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))


;; 跳过开始界面
(setq inhibit-startup-message t)


(provide 'init-basic)
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init-basic.el ends here
