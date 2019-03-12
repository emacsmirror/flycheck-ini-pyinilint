# Flycheck PyINILint Integration

Get INI-file syntax checking in
[Emacs](https://www.gnu.org/software/emacs/) via
[Flycheck](https://www.flycheck.org/) and
[PyINILint](https://gitlab.com/danieljrmay/pyinilint).

## Installation

### Install `pyinilint`

#### Copr (recommended)
If you use Fedora of a compatible Linux distribution you can install
PyINILint via a [Copr
repository](https://copr.fedorainfracloud.org/coprs/danieljrmay/pyinilint/).

```sh
$ dnf copr enable danieljrmay/pyinilint 
$ dnf install pyinilint
```

This RPM based version includes a man page and Bash completion script.

#### PyPi 
If you have `pip` on your system then you can install from
[PyPi](https://pypi.org/project/pyinilint/).

```sh
$ pip install pyinilint
```

However, this distribution currently does not include the man page or
Bash completion script.

#### Source
Otherwise you will have to [install PyINILint from
source](https://gitlab.com/danieljrmay/pyinilint).


### Install `flycheck-ini-pyinilint`

#### MELPA (Hopefully coming soon)
* Install this package in Emacs with `M-x` `package-install` `flycheck-ini-pyinilint`.
* Add the following code to your Emacs configuration file e.g. `~/.emacs`
```elisp
(require 'flycheck-ini-pyinilint)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-ini-pyinilint-setup))
```

#### Source
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
