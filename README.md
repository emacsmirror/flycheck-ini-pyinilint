# Flycheck PyINILint Integration

Get INI-file syntax checking in
[Emacs](https://www.gnu.org/software/emacs/) via
[Flycheck](https://www.flycheck.org/) and
[PyINILint](https://gitlab.com/danieljrmay/pyinilint).

## Installation

You need to install two things to get things working:

* The `pyinilint` command line tool which provides the INI-syntax
  checking backend.
* The `flycheck-ini-pyinilint` Emacs package, which provides the
  integration between Emacs and `pyinilint`.

### Install PyINILint

#### PyINILint installation via Copr (recommended)

If you use Fedora or a compatible Linux distribution you can install
PyINILint via a [Copr
repository](https://copr.fedorainfracloud.org/coprs/danieljrmay/pyinilint/).

```sh
dnf copr enable danieljrmay/pyinilint
dnf install pyinilint
```

This RPM based version includes a man page and Bash completion script.

#### PyINILint installation via PyPi

If you have `pip` on your system then you can install from
[PyPi](https://pypi.org/project/pyinilint/).

```sh
pip install pyinilint
```

However, this distribution currently does not include the man page or
Bash completion script. 😞

#### PyINILint installation from source

Otherwise you will have to [install PyINILint from
source](https://gitlab.com/danieljrmay/pyinilint).

### Install `flycheck-ini-pyinilint`

#### `flycheck-ini-pyinilint` installation via MELPA (recommended)

* You can install this package in Emacs directly from MELPA with `M-x` `package-install`
  `flycheck-ini-pyinilint`.
* If you are using `use-package` then you can simply add the following
to your Emacs configuration file e.g. `~/.emacs`

```elisp
(use-package flycheck-ini-pyinilint
  :ensure t
  :hook (flycheck-mode . flycheck-ini-pyinilint-setup))
```

If you don’t have `use-package` then you will need something like:

```elisp
(require 'flycheck-ini-pyinilint)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-ini-pyinilint-setup))
```

#### `flycheck-ini-pyinilint` installation from source

If you don’t want to use MELPA you will have to install from source as
follows:

* Download `flycheck-ini-pyinilint.el` and save it in
  `~/.emacs.d/local/` or a similar directory you already have.
* Add add the following code to your Emacs configuration file
  e.g. `~/.emacs`

```elisp
(add-to-list 'load-path
  (expand-file-name "local" user-emacs-directory))

(require 'flycheck-ini-pyinilint)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-ini-pyinilint-setup))
```
