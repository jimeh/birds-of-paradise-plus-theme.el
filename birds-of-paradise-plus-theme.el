;;
;;; birds-of-paradise-plus-theme.el --- custom theme for faces
;;

;; Original birds-of-paradise-theme.el:
;; Copyright (C) 2011 Paul M. Rodriguez <paulmrodriguez@gmail.com>

;; Tweaked "plus" version by Jim Myhrberg <contact@jimeh.me>
;; https://github.com/jimeh/birds-of-paradise-plus-theme.el

;; This file is not part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Contributions

;; Added "plus" at the end of theme name to signify my personal customized
;; version with show-paren and region (selection) colors changed,
;; and added various whitespace and other color definitions to suit
;; my liking. -- Jim Myhrberg <contact@jimeh.me>

;;; Commentary

;; The colors in this theme come from Joseph Bergantine's "Birds of
;; Paradise" theme, released under the BSD license:
;; http://joebergantine.com/werkstatt/birds-of-paradise.

;;; Code:

;; todo: minibuffer-prompt, isearch, lazy-highlight, secondary-selection, Semantic?
(deftheme birds-of-paradise-plus
  "Port of the brown-based warm light-on-dark theme by Joe Bergantine.")

(let ((brown-1 "#372725") (brown-2 "#6B4E32") (brown-3 "#2A1D1D")
      (brown-4 "#523D2B") (brown-5 "#7D504A")
      (brown-6 "#523E2B")
      (white-1 "#E6E1C4") (white-2 "#E6E1DC")
      (black-1 "#1F1611") (black-2 "#16120E") (black-3 "#000000")
      (gray-1 "#42302D")      ;gray-25
      (yellow-1 "#D9D762") (yellow-2 "#EFAC32") (yellow-3 "#EFCB43")
      (yellow-4 "#EFC232") (yellow-5 "#FFC05C")
      (orange-1 "#EF5D32") (orange-2 "#CC762E") (orange-3 "#C74725")
      (red-1 "#990000") (red-2 "#660000") (red-3 "#CC4232")
      (red-4 "#BE3250") (red-5 "#D23850")
      (blue-1 "#7DAF9C") (blue-2 "#6C99BB") (blue-3 "#5798AE")
      (blue-4 "#93C1BC") (blue-5 "#2F33AB")
      (purple-1 "#BB99BB") (purple-2 "#8856D2") (purple-3 "#BE73FD")
      (green-1 "#144212"))
  (custom-theme-set-faces
   'birds-of-paradise-plus
   ;; The choice of basic font-lock faces is taken from the designer's
   ;; TextMate port of the theme. The rest are either adapted from the
   ;; original Panic Coda styles, or are new.
   `(default ((t (:background ,brown-1 :foreground ,white-1))))
   `(cursor ((t (:foreground ,brown-2 :background ,white-1))))
   `(highlight ((t (:background ,black-1 :foreground ,white-1))))
   `(hl-line ((t (:background ,brown-3))))
   `(region ((t (:background ,brown-4))))
   `(font-lock-builtin-face ((t (:foreground ,blue-2))))
   `(font-lock-comment-face ((t (:italic t :foreground ,brown-2))))
   `(font-lock-constant-face ((t (:foreground ,blue-2))))
   `(font-lock-doc-face ((t (:foreground ,brown-2))))
   `(font-lock-function-name-face ((t (:foreground ,yellow-2))))
   `(font-lock-keyword-face ((t (:foreground ,orange-1))))
   `(font-lock-negation-char-face ((t (:foreground ,blue-1))))
   `(font-lock-preprocessor-face ((t (:foreground ,red-4))))
   `(font-lock-string-face ((t (:foreground ,yellow-1))))
   `(font-lock-type-face ((t (:bold t :foreground ,yellow-2))))
   `(font-lock-variable-name-face ((t (:foreground ,blue-1))))
   `(font-lock-warning-face ((t (:background ,red-1 :foreground "white"))))
   `(escape-glyph ((t (:foreground ,purple-3))))
   `(minibuffer-prompt ((t (:foreground ,blue-2)))) ;todo
   `(ido-only-match ((t (:foreground ,orange-1))))
   `(ido-subdir ((t (:foreground ,yellow-2))))
   `(flyspell-incorrect ((t (:inherit font-lock-warning-face))))
   `(flyspell-duplicate ((t (:inherit font-lock-warning-face))))
   `(whitespace-newline ((t (:foreground ,brown-6))))
   `(whitespace-hspace ((t (:foreground ,brown-6))))
   `(whitespace-space ((t (:foreground ,brown-6))))
   `(whitespace-tab ((t (:foreground ,brown-6))))
   `(whitespace-line ((t (:background ,gray-1))))
   `(show-paren-match ((t (:background ,brown-5))))
   `(show-paren-mismatch ((t (:inherit font-lock-warning-face))))
   `(column-marker-1 ((t (:background ,brown-6))))
   `(button ((t (:foreground ,yellow-1 :background ,blue-1 :weight bold :underline t))))
   `(link ((t (:foreground ,yellow-1))))
   `(mode-line ((t (:background ,brown-2 :foreground ,white-1))))
   `(mode-line-inactive ((t (:background "gray25" :foreground ,white-1))))
   `(gnus-group-news-1 ((t (:foreground ,yellow-1 :weight bold))))
   `(gnus-group-news-1-empty ((t (:foreground ,yellow-1))))
   `(gnus-group-news-2 ((t (:foreground ,orange-1 :weight bold))))
   `(gnus-group-news-2-empty ((t (:foreground ,orange-1))))
   `(gnus-group-news-3 ((t (:foreground ,red-3 :weight bold))))
   `(gnus-group-news-3-empty ((t (:foreground ,red-3))))
   `(gnus-group-news-4 ((t (:foreground ,purple-1 :weight bold))))
   `(gnus-group-news-4-empty ((t (:foreground ,purple-1))))
   `(gnus-group-news-5 ((t (:foreground ,blue-1 :weight bold))))
   `(gnus-group-news-5-empty ((t (:foreground ,blue-1))))
   `(gnus-group-news-6 ((t (:foreground ,blue-2 :weight bold))))
   `(gnus-group-news-6-empty ((t (:foreground ,blue-2))))
   `(gnus-group-news-low ((t (:foreground ,brown-2 :italic t))))
   `(gnus-group-news-low-empty ((t (:foreground ,brown-2))))
   `(gnus-group-mail-1 ((t (:foreground ,yellow-1 :weight bold))))
   `(gnus-group-mail-1-empty ((t (:foreground ,yellow-1))))
   `(gnus-group-mail-2 ((t (:foreground ,orange-1 :weight bold))))
   `(gnus-group-mail-2-empty ((t (:foreground ,orange-1 :weight bold))))
   `(gnus-group-mail-3 ((t (:foreground ,red-3 :weight bold))))
   `(gnus-group-mail-3-empty ((t (:foreground ,red-3))))
   `(gnus-group-mail-low ((t (:foreground ,brown-2 :italic t))))
   `(gnus-group-mail-low-empty ((t (:foreground ,brown-2))))
   `(gnus-header-content ((t (:weight normal :foreground ,yellow-1))))
   `(gnus-header-from ((t (:foreground ,yellow-1))))
   `(gnus-header-subject ((t (:foreground ,red-3))))
   `(gnus-header-name ((t (:foreground ,blue-2))))
   `(gnus-header-newsgroups ((t (:foreground ,yellow-2))))
   `(message-header-name ((t (:foreground ,orange-1))))
   `(message-header-cc ((t (:foreground ,brown-2))))
   `(message-header-other ((t (:foreground ,brown-2))))
   `(message-header-subject ((t (:foreground ,white-1))))
   `(message-header-to ((t (:foreground ,white-1))))
   `(message-cited-text ((t (:foreground ,yellow-2))))
   `(message-separator ((t (:foreground ,yellow-2))))
   `(nxml-comment-content ((t (:inherit 'font-lock-comment-face))))
   `(nxml-tag-delimiter ((t (:foreground ,yellow-3))))
   `(nxml-processing-instruction-target ((t (:foreground ,brown-2))))
   `(nxml-entity-ref-delimiter ((t (:foreground ,blue-2))))
   `(nxml-entity-ref-name ((t (:foreground ,blue-2))))
   `(nxml-element-local-name ((t (:foreground ,yellow-3))))
   `(nxml-cdata-section-content ((t (:foreground ,red-3))))
   `(nxml-attribute-local-name ((t (:foreground ,orange-1))))
   `(nxml-attribute-value ((t (:foreground ,yellow-1)))))
  (custom-theme-set-variables
   'birds-of-paradise-plus
   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,black-1 ,red-2 ,green-1 ,yellow-4 ,blue-3 ,purple-3 ,blue-4 ,white-2])
   `(ansi-term-color-vector
     ;; [unspecified "black" "red3" "green3" "yellow3" "blue2" "magenta3" "cyan3" "white"]
     [unspecified ,black-1 ,red-2 ,green-1 ,yellow-4 ,blue-3 ,purple-3 ,blue-4 ,white-2])))

(provide-theme 'birds-of-paradise-plus)

;; Local Variables:
;; no-byte-compile: t
;; eval:(rainbow-mode 1)
;; End:

;;; birds-of-paradise-plus-theme.el ends here
