; start package.el with emacs
(require 'package)

;add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

; initialize package.el
(package-initialize)
  
; start auto-complete with emacs
(require 'auto-complete)

; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories
    "~/.emacs.d/elpa/auto-complete-20160107.8/dict")
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'arduino-mode)


; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

; Fix iedit bug in Mac
(define-key global-map (kbd "C-;") 'iedit-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style
   (quote
    ((c++-mode . "")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Arduino mode
(add-to-list 'load-path "~/.emacs.d/elpa/arduino-mode-20151017.2335")
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
(setq yas/also-auto-indent-first-line)
