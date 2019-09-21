(setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
			 ("melpa" . "https://elpa.emacs-china.org/melpa/")))

(package-initialize)

(require 'neotree)
(require 'markdown-mode)
(require 'all-the-icons)


(setq inhibit-splash-screen t)

(setq initial-scratch-message "Happy Hacking!")

(tool-bar-mode 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "pandoc -f markdown -t html -s --highlight-style espresso")
 '(package-selected-packages
   (quote
    (all-the-icons neotree markdown-mode rainbow-delimiters dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'dracula t)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(global-set-key [f8] 'neotree-toggle)

(global-linum-mode t)
