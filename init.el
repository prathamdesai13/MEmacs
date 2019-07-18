
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; neotree
(add-to-list 'load-path "/elpa/neotree-20181121.2026")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(exec-path-from-shell-initialize)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-p") 'run-python)

(tool-bar-mode -1)
(menu-bar-mode -1)
(display-time-mode)
(toggle-frame-fullscreen) ;; toggles fullscreen on startup
(scroll-bar-mode -1)

(setq visible-bell nil)

;;all the icons
(require 'all-the-icons)
(insert (all-the-icons-icon-for-file "foo.py"))
(insert (all-the-icons-icon-for-file "foo.js"))

;;; open up the todo list for the day
(setq initial-buffer-choice "~/Pratham/today.org")

(require 'ein)

;; rainbow delims
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; ido mode
(require 'ido)
(ido-mode t)

;; org mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-support-shift-select t)

;; doom theme
(require 'doom-themes)
(setq doom-themes-enabled-bold t
      doom-themes-enabled-italic t)

(load-theme 'doom-city-lights t)
(doom-themes-org-config)
(doom-themes-neotree-config)

;; rebecca turtle theme
;;(load-theme #'rebecca t)

;; misterioso theme
;;(load-theme 'misterioso)

;; dracula theme
;;(load-theme 'dracula t)

;; material theme
;;(load-theme 'material t)

;; line numbers
(global-linum-mode t)
(set-face-foreground 'linum "#77ed6d")

;; beacon mode
(beacon-mode 1)
(setq beacon-blink-when-buffer-changes t)
(setq beacon-blink-when-window-changes t)
(setq beacon-blink-when-window-scrolls t)
(setq beacon-size 25)
(setq beacon-color "#77ed6d")
(setq beacon-blink-duration 0.5)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (all-the-icons neotree doom-themes material-theme exec-path-from-shell ein ## rainbow-delimiters rebecca-theme dracula-theme beacon))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "OrangeRed1"))))
 '(font-lock-comment-face ((t (:foreground "OrangeRed1"))))
 '(font-lock-doc-face ((t (:foreground "plum1"))))
 '(font-lock-string-face ((t (:foreground "turquoise1")))))
