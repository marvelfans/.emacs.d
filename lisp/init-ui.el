;;; package --- Summary
;;; Commentary: My Emacs 的ui设置
;; Code:


;; 主题
;; (load-theme 'tsdh-dark)

;; 高亮当前行
(require 'hl-line)
(global-hl-line-mode t)


;; 行号
(setq linum-format "%4d| ")
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


;; 不要菜单栏
(menu-bar-mode -1)
(tool-bar-mode -1)
;; (scroll-bar-mode -1)
;; (horizontal-scroll-bar-mode -1)



(provide 'init-ui)
;;;;;;;;;;;;;;;;;;;;;;;
;; init-ui.el ends here
