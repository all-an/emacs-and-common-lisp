Install emacs from your package manager or prefered way
-------------

In your shell
-------------
```bash
sudo apt-get install sbcl
curl -O http://beta.quicklisp.org/quicklisp.lisp
sbcl --load quicklisp.lisp
```

Inside the context of sbcl
--------------------------
```lisp
(quicklisp-quickstart:install)
(ql:quickload "quicklisp-slime-helper")
```

Add to init.el configuration on .emacs.d folder
---------------------------
```lisp
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/sbcl")
```

Enjoy your new Common Lisp REPL!
--------------------------------
```
M-x slime
```