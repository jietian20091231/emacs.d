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

;;(setq url-gateway-method 'socks)
;;(setq socks-server '("Default server" "127.0.0.1" 1080 5))


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

;; install package ace-window
(use-package ace-window
:ensure t
:init
(progn
(setq aw-scope 'frame)
(global-set-key (kbd "C-x O") 'other-frame)
  (global-set-key [remap other-window] 'ace-window)
  (custom-set-faces
   '(aw-leading-char-face
     ((t (:inherit ace-jump-face-foreground :height 3.0))))) 
  ))

;; install package ibuffer
(require 'ido)
(setq ido-enable-flex-matching t)

(setq ido-everywhere t)
(ido-mode 1)

(defalias 'list-buffers 'ibuffer)
(defalias 'list-buffers 'ibuffer-other-window)


;; Swiper/lvy/Counsel
(use-package counsel
  :ensure t
  :bind
  (("M-y" . counsel-yank-pop)
   :map ivy-minibuffer-map
   ("M-y" . ivy-next-line))
  )

(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffer t)
  (setq ivy-count-format "%d/%d ")
  (setq ivy-display-style 'fancy))

(use-package swiper
  :ensure t
  :bind (
    ("C-s" . swiper)
    ("C-r" . swiper)
    ("C-c C-r" . ivy-resume)
    ("M-x" . counsel-M-x)
    ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

;; Avy - navigate by searching for a letter on the screen and jumping to it
(require 'avy)
(global-set-key (kbd "C-:") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

(avy-setup-default)
(global-set-key (kbd "C-c C-j") 'avy-resume)


;; yasnippet
(require 'yasnippet)
(yas-initialize)
(global-set-key (kbd "C-c ; u") 'yas-expand)
(global-set-key (kbd "C-c ; s") 'yas-insert-snippet)
(yas-global-mode 1)

;; auto-completed
(require 'auto-complete)
(ac-config-default)

;; auto-pair
(use-package autopair
  :ensure t
  :init
  :config
  (autopair-global-mode))

(use-package highlight-parentheses
  :ensure t
  :diminish highlight-parentheses-mode
  :config
  (progn
    (set-face-attribute 'hl-paren-face nil :weight 'ultra-bold)
    (global-highlight-parentheses-mode)
    ;;make paren highlight update after stuff like paredit changes
    (add-to-list 'after-change-functions '(lambda (&rest x) (hl-paren-highlight)))))
  
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
    (auto-complete ace-window org-bullets beacon spacemacs-theme which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'scroll-left 'disabled nil)
