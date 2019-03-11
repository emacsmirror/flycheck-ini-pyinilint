;;; flycheck-ini-pyinilint.el --- Flycheck integration for PyINILint

;; Copyright (c) 2019 Daniel J. R. May

;; Author: Daniel J. R. May <daniel.may@danieljrmay.com>
;; URL: https://gitlab.com/danieljrmay/flycheck-ini-pyinilint
;; Package-Requires: ((flycheck "31"))
;; Created: 8 March 2019
;; Version: 0.1.0
;; Keywords: convenience, languages, tools

;; TODO license see what the MELPA default is

;;; Commentary:
;; See https://www.flycheck.org/en/latest/developer/developing.html

;;; Code:

(require 'flycheck)

(flycheck-define-checker ini-pyinilint
  "A INI-file checker using PyINILint.

See URL `https://gitlab.com/danieljrmay/pyinilint'."
  :command ("pyinilint" "--interpolate" source)
  :error-patterns (
		   (info line-start "[WARNING] " (id (one-or-more not-newline)) " at line " line " of " (file-name) ": " (message) line-end)
		   (error line-start "[ERROR] " (id (one-or-more not-newline)) " at line " line " of " (file-name) ": " (message) line-end)
		   )
  :modes conf-colon-mode)

(provide 'flycheck-ini-pyinilint)

(add-to-list 'flycheck-checkers 'ini-pyinilint)
;;; flycheck-ini-pyinilint.el ends here
