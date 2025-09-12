# Emacs and Common Lisp Setup

This repository contains instructions for setting up a Common Lisp development environment with Emacs, SBCL, and SLIME.

## Installation Guide

### 1. Install Emacs

**Windows:**
- Download from https://www.gnu.org/software/emacs/download.html
- Or use Chocolatey: `choco install emacs`

**macOS:**
- Using Homebrew: `brew install emacs`
- Or download from https://emacsformacosx.com/

**Linux:**
- Ubuntu/Debian: `sudo apt-get install emacs`
- Fedora: `sudo dnf install emacs`
- Arch: `sudo pacman -S emacs`

### 2. Install SBCL (Steel Bank Common Lisp)

**Windows:**
- Download from http://www.sbcl.org/platform-table.html
- Or use Chocolatey: `choco install sbcl`

**macOS:**
- Using Homebrew: `brew install sbcl`

**Linux:**
- Ubuntu/Debian: `sudo apt-get install sbcl`
- Fedora: `sudo dnf install sbcl`
- Arch: `sudo pacman -S sbcl`

### 3. Install Quicklisp (Common Lisp Package Manager)

1. Download quicklisp.lisp from https://www.quicklisp.org/beta/
2. Start SBCL and run:
   ```lisp
   (load "quicklisp.lisp")
   (quicklisp-quickstart:install)
   (ql:add-to-init-file)
   ```

### 4. Install SLIME (Superior Lisp Interaction Mode for Emacs)

**Method 1: Using Quicklisp (Recommended)**
```lisp
(ql:quickload "quicklisp-slime-helper")
```

**Method 2: Using MELPA**
1. Add MELPA to your Emacs configuration
2. `M-x package-install RET slime RET`

### 5. Configure Emacs

Add to your `~/.emacs` or `~/.emacs.d/init.el`:

```elisp
;; SLIME configuration
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
```

## Usage

1. Start Emacs
2. Run `M-x slime` to start the SLIME REPL
3. Begin writing Common Lisp code!

## Basic SLIME Commands

- `M-x slime` - Start SLIME
- `C-c C-c` - Compile current form
- `C-c C-k` - Compile and load current file
- `C-c C-z` - Switch to REPL