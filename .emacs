(setq inferior-lisp-program "sbcl")
(add-to-list 'load-path "c:/emacs/emacs-22.3/site-lisp/slime")
(require 'slime)
(slime-setup)
(require 'slime-autoloads)
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
