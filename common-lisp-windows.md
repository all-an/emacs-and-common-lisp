Install emacs downloading the exe from the official website or from your prefered way
-------------

Install sbcl via chocolatey on a powershell terminal as administrator
-------------
```bash
choco install sbcl

# check if installation is ok:
sbcl --version
```


In your git shell
-------------
```bash
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
(use the file init.el we provide here)
---------------------------
```lisp
;; Windows
(load (expand-file-name "~/../../quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "C:\\ProgramData\\chocolatey\\bin\\sbcl.exe")
```

Enjoy your new Common Lisp REPL!
--------------------------------
```
M-x slime
```