;;; global settings

;; line numbering
(global-display-line-numbers-mode t)

;; autosave files
(setq auto-save-default t)

;; disabling audio signals
(setq visible-bell t)

;; fullscreen emacs when start
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; hide tool, menu, scroll
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; hide frame with a cap
(add-to-list 'default-frame-alist '(undecorated . t))
