;;; init-local.el --- My Customize
;;; Commentary:
;;; Code:

;; font
(defun my-font-set()
  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" "Meslo LG S" 23))
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Noto Sans CJK SC" :size 22))))

(when (display-graphic-p)
  (my-font-set))

(require-package 'spacemacs-theme)
(load-theme 'spacemacs-dark)

;; keybindings
(require-package 'evil)
(require-package 'evil-leader)
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(evil-mode 1)
(global-evil-leader-mode 1)

(global-set-key (kbd "C-@") 'set-mark-command)
(global-unset-key (kbd "C-SPC"))
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "ff" 'counsel-find-file
  "fw" 'find-file-other-window
  "fl" 'counsel-library
  "fr" 'counsel-buffer-or-recentf
  "fd" 'delete-file
  ;; counsel
  "ca" 'counsel-ag
  "cz" 'counsel-fzf
  "bs" 'switch-to-buffer
  "bk" 'kill-buffer
  "be" 'eval-buffer
  "xd" 'xref-find-definitions
  "xf" 'xref-find-references
  "1" 'winum-select-window-1
  "2" 'winum-select-window-2
  "3" 'winum-select-window-3
  "4" 'winum-select-window-4
  "oc" 'counsel-org-capture
  "oa" 'org-agenda
  ;; ivy
  "mc" 'comment-region
  "mu" 'uncomment-region
  )

(require-package 'winum)
(winum-mode 1)

(provide 'init-local)

;;; init-local ends here
