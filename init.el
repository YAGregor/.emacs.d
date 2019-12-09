(setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
			 ("melpa" . "https://elpa.emacs-china.org/melpa/")))

(package-initialize)

(require 'neotree)
(require 'markdown-mode)
(require 'all-the-icons)
(require 'dashboard)
(require 'use-package)
(require 'evil)
(require 'dracula-theme)
(require 'json-mode)
(require 'rainbow-delimiters)
(require 'airline-themes)

(tool-bar-mode 0)

(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" default)))
 '(markdown-command "pandoc -f markdown -t html -s --highlight-style espresso")
 '(package-selected-packages
   (quote
    (airline-themes json-mode evil-anzu dashboard all-the-icons neotree markdown-mode rainbow-delimiters dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'dracula t)
(load-theme 'airline-dark)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(global-set-key [f8] 'neotree-toggle)

(global-linum-mode t)

(dashboard-setup-startup-hook)

(setq dashboard-banner-logo-title "Happy Hacking!")

(set-default 'truncate-lines t)

(evil-mode 1)

