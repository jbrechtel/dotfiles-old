(global-font-lock-mode t)

(windmove-default-keybindings)

(setq use-file-dialog nil)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

(global-set-key "\C-c\C-w" 'backward-kill-word)

;; Remove unnecessary gui stuff
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))

(blink-cursor-mode 0) ;; no blink

(set-background-color "black")
(set-face-background 'default "black")
(set-face-background 'region "black")
(set-face-foreground 'default "white")
(set-face-foreground 'region "gray60")
(set-face-attribute  'default nil :height 130)
(set-foreground-color "white")
(set-cursor-color "red")

(defun me-turn-off-indent-tabs-mode ()
  (setq indent-tabs-mode nil))
(add-hook 'scala-mode-hook 'me-turn-off-indent-tabs-mode)


;; Scala Mode

(let ((path "/home/jbrechtel/opt/scala/misc/scala-tool-support/emacs"))
  (setq load-path (cons path load-path))
  (load "scala-mode-auto.el"))

(defun scala-turnoff-indent-tabs-mode ()
  (setq indent-tabs-mode nil))

;; scala mode hooks
(add-hook 'scala-mode-hook 'scala-turnoff-indent-tabs-mode)

;;semantic-ectag-util.el

(defcustom semantic-ectag-program "/usr/bin/ctags-exuberant"
  "The Exuberent CTags program to use."
  :group 'semantic
  :type 'program)


;; Load the ensime lisp code...
(add-to-list 'load-path "/home/jbrechtel/opt/ensime/elisp/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Vimpulse

(add-to-list `load-path "/home/jbrechtel/opt/vimpulse")
(require 'vimpulse)
;; MINI HOWTO: 
;; Open .scala file. M-x ensime (once per project)

