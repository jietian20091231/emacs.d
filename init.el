;; emacs editor base setting

(setq inhibit-startup-message t)

(setq frame-title-format "emacs")

(tool-bar-mode -1)

(menu-bar-mode -1)

(scroll-bar-mode -1)

(ido-mode)

(column-number-mode)

(show-paren-mode)

(when window-system (global-hl-line-mode t))
(when window-system (global-prettify-symbols-mode t))

;;(setq make-backup-file nil)
;;(setq auto-save-default nil)

(winner-mode t)

(windmove-default-keybindings)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)


(defalias 'yes-or-no-p 'y-or-n-p)


;;use sock5 porxy (shadowsocks)

(setq url-gateway-method 'socks)
(setq socks-server '("Default server" "127.0.0.1" 1080 5))


;; install mepla package

(require 'package)
(setq package-enable-at-startup nil)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; install use-package

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; use spacemacs-theme
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))




;; install package which-key
(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; fix which-key error 'whick-key--update'
;;(if (not (version<= emacs-version "26"))
;;    (defalias 'display-buffer-in-major-side-window 'window--make-major-side-window))

;;(defalias 'display-buffer-in-major-side-window 'window--make-major-side-window)

;; install package beacon

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (org-bullets beacon spacemacs-theme which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)
