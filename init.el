;;; package --- Summary
;;; Commentary: My Emacs 配置入口
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;; add user path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


;; add resource
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))


;; short keybinding
(require 'init-keybinding)


;; basic settings
(require 'init-basic)


;; python-mode
(require 'init-python)


;; markdown-mode
(require 'markdown-mode)


;; ui setting
(require 'init-ui)


;; minibuffer setting
(require 'init-minibuffer)


;; some functions of mine
(require 'init-func)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (color-theme-solarized markdown-mode smex anaconda-mode company-anaconda company-jedi elpy flycheck python))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;
;; init.el ends here
