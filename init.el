;;;; Emacs Configure File

;;;; the package manager
(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("org" . "http://orgmode.org/elpa/")
	("melpa" . "http://melpa.org/packages/")
	("melpa-stable" . "http://stable.melpa.org/packages/"))
      package-archive-priorities '(("melpa-stable" . 1)));; the package manager

;; (package-initialize)
;; (when (not package-archive-contents)
;;   (package-refresh-contents)
;;   (package-install 'use-package))
;; (require 'use-package)

;; Initialize packages
(setq package-enable-at-startup nil)    ; To prevent initialising twice
(package-initialize)

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Should set before loading `use-package'
(defvar use-package-always-ensure t)
(defvar use-package-always-defer t)
(defvar use-package-expand-minimally t)
(defvar use-package-enable-imenu-support t)

(eval-when-compile
  (require 'use-package))


;;;; basic
(setq make-backup-files nil)         ;; no backup files
(fset 'yes-or-no-p 'y-or-n-p)        ;; use y, n stand for yes and no
(global-auto-revert-mode t)          ;; revert mode
(add-hook 'after-init-hook 'global-company-mode)   ;; use tab for complete


;;;; key binding
(global-unset-key (kbd "C-t")) 
;; (global-set-key (kbd "C-]") 'xref-find-definitions)            ;; jump to difinition position
(global-set-key (kbd "C-]") 'anaconda-mode-find-definitions)      ;; jump to difinition position
(global-set-key (kbd "C-t") 'xref-pop-marker-stack)               ;; jump to previous position
(global-set-key (kbd "M-n") 'scroll-up-line)                      ;; scroll line up
(global-set-key (kbd "M-p") 'scroll-down-line)                    ;; scroll line next
(global-set-key (kbd "<f2>") 'ido-find-file)                      ;; open file
(global-set-key (kbd "<f3>") 'ido-switch-buffer)                  ;; open buffers

;;;; ui
;; (load-theme 'molokai)          ;; theme
(use-package solarized-theme
  :ensure t)
(require 'solarized)
(deftheme solarized-dark "The dark variant of the Solarized colour theme")
(create-solarized-theme 'dark 'solarized-dark)
(provide-theme 'solarized-dark)

(require 'hl-line)                ;; highlight current line
(global-hl-line-mode t)           ;; highlight current line
(setq linum-format "%4d| ")       ;; line format
(global-linum-mode t)             ;; show line number
(setq column-number-mode t)       ;; display current column number
(setq line-number-mode t)         ;; display current line number
(show-paren-mode t)
(setq show-paren-style "parentneses")  ;; show match parentneses

(display-time-mode t)                  ;; show time
(setq display-time-day-and-date t)     ;; time format
(setq display-time-24hr-format t)      ;; time format
(setq display-time-interval 10)        ;; time format
(set-default-font "-*-Courier-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")    ;; typeface setting for client
(setq blink-cursor-mode 1)   ;; cursor setting
(setq cursor-type "bar")     ;; cursor shape
(menu-bar-mode -1)           ;; no menu
(tool-bar-mode -1)           ;; no tool


;;;; packages settings
;; auto complete
(use-package company
  :ensure t
  :bind (("<C-tab> /". company-complete))
  :diminish company-mode
  :commands company-mode
  :init
  (global-company-mode)
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-to-list 'company-backends '(company-anaconda :with company-yasnippet))
  (setq
   ;; company-dabbrev-ignore-case nil
   ;; company-dabbrev-code-ignore-case nil
   ;; company-dabbrev-downcase nil
   company-idle-delay 0  
   company-minimum-prefix-length 1)
  :config
  ;; disables TAB in company-mode, freeing it for yasnippet
  ;; (define-key company-active-map [tab] nil)
  ;; (define-key company-active-map (kbd "TAB") nil)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (setq
   company-show-numbers t
   company-idle-delay 0.2
   company-minimum-prefix-length 1
   company-require-match nil
   ;; company-dabbrev-ignore-case nil
   company-transformers '(company-sort-by-backend-importance)))
   ;; company-condinue-commands '(not helm-dabbrev)))

(use-package anaconda-mode
  :ensure t)

(use-package python-mode
  :ensure t)

;; for markdown
(use-package markdown-mode
  :ensure t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" default)))
 '(package-selected-packages
   (quote
    (youdao-dictionary use-package super-save smex scala-mode neotree markdown-mode jedi-core flycheck evil-nerd-commenter evil-leader elpy counsel color-theme anaconda-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
