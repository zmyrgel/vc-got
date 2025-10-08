;;; vc-got-tests.el --- tests for vc/vc-got.el  -*- lexical-binding:t -*-

;; Copyright (C) 2025  Free Software Foundation, Inc.

;; Author: Timo Myyrä <timo.myyra@bittivirhe.fi>
;; URL: https://projects.omarpolo.com/vc-got.html
;; Keywords: vc tools
;; Version: 1.2
;; Package-Requires: ((emacs "25.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'ert-x)
(require 'vc)
(require 'vc-dir)
(require 'vc-got)

(ert-deftest vc-got-test-version ()
  "Check that we parse version info from `got' program correctly."
  (should (string-match-p "^[[:digit:]]+\\.[[:digit:]]+$"
                          (vc-got--version))))

;;; vc-got-tests.el ends here
