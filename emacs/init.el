(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(defvar my-packages '(better-defaults evil paredit idle-highlight-mode ido-ubiquitous find-file-in-project magit smex scpaste color-theme-solarized ruby-end ruby-block ag))

(package-initialize)

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(evil-mode 1)

(global-set-key (kbd "C-x C-a") 'ag-project)
(global-set-key (kbd "C-x f") 'find-file-in-project)

