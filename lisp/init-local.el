;;; init-local.el --- My Customize
;;; Commentary:
;;; Code:

(defun my-font-set()
  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" "Meslo LG S" 22))
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Noto Sans CJK SC" :size 20))))

(when (display-graphic-p)
  (my-font-set))

(provide 'init-local)

;;; init-local ends here
