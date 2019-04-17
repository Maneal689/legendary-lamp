;;; PACKAGE -- Summary:
;;; Commentary:
(require 'package)

;;; Code:
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


(global-visual-line-mode t)
(show-paren-mode t)
(setq ring-bell-function 'ignore)
(setq indent-tabs-mode nil)
(display-time-mode t)

(require 'autopair)
(require 'powerline)
(require 'helm)
(require 'helm-config)
(require 'emmet-mode)
(require 'projectile)
(require 'evil)

(global-flycheck-mode t)
(autopair-global-mode t)

(global-company-mode t)
(company-mode t)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))

(global-evil-surround-mode)
(evilnc-default-hotkeys)
(evil-mode 1)


(load-theme 'one-dark t)
(powerline-default-theme)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(helm-autoresize-mode 1)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(helm-mode 1)

(emmet-mode t)
(add-hook 'sgml-mode-hook 'emmet-mode)
(setq emmet-expand-jsx-className? t)

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

(defun indent-buffer()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))


(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-f") 'indent-buffer)
(global-set-key (kbd "C-x g") 'magit-status)

(provide '.emacs)
;;; .emacs ends here
