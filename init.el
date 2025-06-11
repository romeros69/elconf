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

;; settings package manager MEPLA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ag company flycheck go-mode lsp-ui org-roam org-roam-ui projectile
	solarized-theme treemacs vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; settings of org-roam
(use-package org-roam
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/notes")
  (org-roam-completion-everywhere t)
  (org-roam-capture-templates
   '(("d" "default" plain
      "%?"
      :if-new (file+head
               "%<%Y%m%d%H%M%S>-${slug}.org"
               "#+TITLE: ${title}\n#+AUTHOR: Roman Loginov\n#+LANGUAGE: Russian\n#+LICENSE: CC BY-SA 4.0\n#+DATE: %<%Y-%m-%d>\n#+FILETAGS:\n")
      :unnarrowed t)))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point))
  :config
  (org-roam-setup)
  (org-roam-db-autosync-mode))

;; settings of org-roam-ui
(use-package org-roam-ui
  :disabled
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))
