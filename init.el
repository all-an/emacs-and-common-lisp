;; Windows
(load (expand-file-name "~/../../quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "C:\\ProgramData\\chocolatey\\bin\\sbcl.exe")

;; Linux
;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
;; (setq inferior-lisp-program "/usr/bin/sbcl")

(global-display-line-numbers-mode)

(set-face-attribute 'default nil :height 120)

(when (display-graphic-p)
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

(setq inhibit-startup-screen t)

(load-theme 'wombat)

(set-face-background 'default "#111")

(setq show-paren-delay 0)
(show-paren-mode)

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file t)

(add-hook 'emacs-startup-hook 'toggle-frame-maximized)

;; Enable MELPA repository for package installation
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defun clear-kill-ring ()
  "Clear the kill ring."
  (interactive)
  (setq kill-ring nil)
  (message "Kill ring cleared"))

(setq make-backup-files nil)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

(add-hook 'c-mode-hook 'c-mode-common-hook)
