;;; sculpture-light-theme.el --- Light theme with vivid colors -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 t-e-r-m
;;
;; Author: t-e-r-m <newenewen@tutanota.com>
;; URL: https://github.com/t-e-r-m/sculpture-theme
;; Created: January 06, 2021
;; Modified: May 07, 2021
;; Version: 0.2.0
;; Package-Requires: ((emacs "26.1")(autothemer "0.2"))
;;
;; Sculpture-theme : A dark theme for emacs with vivid colors, inspired by
;; coloring pigments.
;;
;; Copyright (C) 2021 t-e-r-m

;; This program is free software: you can redistribute it and/or modify
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
;;
;; This theme takes inspiration from the pigments found on
;; now bare Greco-Roman statues.
;;
;; Monospace fonts are boring -- they make my eyes sore.
;;
;; The light version prizes readability over colors.
;;
;;; Code:

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

;;;; Custom Faces
(defgroup sculpture-light-theme ()
  "Group for sculpture-light-theme"
  :group 'faces)

(defface head-outline-1        nil nil)
(defface head-outline-2        nil nil)
(defface head-outline-3        nil nil)
(defface head-outline-4        nil nil)
(defface head-outline-5        nil nil)
(defface head-outline-6        nil nil)
(defface head-outline-7        nil nil)
(defface head-outline-8        nil nil)
(defface modeline-percent      nil nil)
(defface modeline-line         nil nil)
(defface modeline-mode         nil nil)
(defface modeline-workspace    nil nil)
(defface variable-pitch-italic nil nil)
(defface elfeed-title-1        nil nil)
(defface elfeed-title-2        nil nil)
(defface elfeed-title-3        nil nil)
(defface elfeed-title-4        nil nil)
(defface elfeed-title-5        nil nil)
(defface elfeed-title-6        nil nil)
(defface elfeed-title-7        nil nil)
(defface elfeed-title-8        nil nil)
(defface elfeed-star-face      nil nil)

(autothemer-deftheme
 sculpture-light "Sculpture-light theme"

;;;; definition
 ((((class color) (min-colors #xFFFFFF)))
;;;;; palette

  (fg "#000000")
  (bw00 "#000000")
  (bw01 "#111111")
  (bw02 "#222222")
  (bw03 "#333333")
  (bw04 "#444444")
  (bw06 "#666666")
  (bw07 "#777777")
  (bw08 "#888888")
  (bw09 "#999999")
  (bw10 "#aaaaaa")
  (bw11 "#bbbbbb")
  (bw12 "#cccccc")
  (bw13 "#dddddd")
  (bw14 "#eeeeee")

  (ha00 "#713238")
  (ha01 "#003564")
  (ha02 "#5B542E")
  (ha04 "#BDA500")
  (ha04-dark "#C8BF19")
  (ha05 "#421212")
  (ha06 "#642105")
  (ha07 "#767650")
  (ha08-light "#FBFBFE")
  (ha09 "#f0f0f0")
  (ha10 "#2B1B26")
  (ha11 "#811B1B")
  (ha12 "#34274B")

  (cs00 "#B2280E")
  (cs01 "#FF6E6F")
  (cs02 "#E9A039")
  (bg   "#FDFFF3")

  (ot00 "#776677")
  (ot01 "#3E6911")
  (ot02 "#8EBE58")
  (ot03 "#500D0E")
  (ot04 "#21A167")
  (ot05 "#1979EA")
  (ot06 "#F1ECE4")
  (ot07 "#386C7A")
  (ot08 "#103185")
  (ot09 "#9F143B")
  (ot10 "#713764")
  (ot11 "#201F0E")
  (ot11-light "#DFE0F1")
  (ot12 "#D0CA62")) (
;;;;; definitions
;;;;;; base
  (bold                       (:weight 'bold))
  (bold-italic                (:weight 'bold :slant 'italic))
  (fixed-pitch                (:height 1.0))
  (fixed-pitch-serif          (:height 1.0))
  (italic                     (:slant 'italic))
  (underline                  (:underline t))
  (variable-pitch             (:height 1.0))
  (variable-pitch-italic      (:inherit 'variable-pitch :slant 'italic))
  (fringe                     (:background bg))
  (vertical-border            (:foreground bw11))
  (window-divider             (:foreground bw13))
  (window-divider-first-pixel (:foreground bw13))
  (window-divider-last-pixel  (:foreground bw13))
  (hl-line                    (:background ot06))
  (button                     (:foreground fg :background ot06 :box (:line-width -1 :color bw06)))

  (default              (:foreground fg :background bg))
  (error                (:foreground cs00))
  (highlight            (:background cs02))
  (match                (:foreground ot01))
  (menu                 (:foreground fg :background bg))
  (minibuffer-prompt    (:foreground fg :slant 'italic))
  (read-multiple-choice (:foreground fg :slant 'italic))
  (region               (:background bw13))
  (secondary-selection  (:background cs01))
  (shadow               (:foreground ha09))
  (success              (:foreground ot02))
  (warning              (:foreground ot03))
  (cursor               (:background cs02))
  (whitespace-tab       (:foreground ot00 :background ot06))
  (escape-glyph         (:foreground ot07))

;;;;;; font-lock
  (font-lock-builtin-face              (:foreground ot05 :weight 'bold))
  (font-lock-comment-face              (:foreground bw07 :background ha09 :slant 'italic))
  (font-lock-comment-delimiter-face    (:foreground bw07 :background ha09 :slant 'italic))
  (font-lock-constant-face             (:foreground ha04))
  (font-lock-function-name-face        (:foreground ot09))
  (font-lock-keyword-face              (:foreground ot04 :weight 'bold))
  (font-lock-string-face               (:foreground ha00))
  (font-lock-type-face                 (:foreground ha07))
  (font-lock-variable-name-face        (:foreground cs01))
  (font-lock-doc-face                  (:foreground fg))
  (font-lock-warning-face              (:foreground cs00))
  (font-lock-preprocessor-face         (:background ha01))
  (font-lock-negation-char-face        (:foreground ha04))
  (font-lock-regexp-grouping-construct (:foreground cs01))
  (font-lock-regexp-grouping-backslash (:foreground cs01))

;;;;;; Header line and mode line
  (header-line                (:foreground fg   :background bw14))
  (header-line-highlight      (:foreground fg   :background bw14))
  (mode-line                  (:foreground fg   :background bw14 :box (:line-width 1 :color bw10)))
  (mode-line-buffer-id        (:foreground fg   :background bw14))
  (mode-line-emphasis         (:foreground ha05 :background bw14))
  (mode-line-highlight        (:foreground ha05 :background bw14))
  (mode-line-inactive         (:foreground bw03 :background bw14 :box (:line-width 1 :color bw12)))

;;;;;;; custom
  (modeline-line                     (:inherit '(cursor variable-pitch) :foreground fg))
  (modeline-percent                  (:inherit '(cursor variable-pitch) :foreground bg :background bw00))
  (modeline-mode                     (:inherit 'variable-pitch :foreground bw04 :weight 'bold))
  (modeline-workspace                (:inherit 'variable-pitch :foreground bw06))
  (doom-modeline-highlight           (:inherit 'variable-pitch :foreground ot04 :weight 'bold))
  (doom-modeline-alternate-highlight (:inherit 'variable-pitch :foreground cs02))

;;;;;; Info mode
  (Info-quoted       (:foreground ha02 :background bg))
  (info-header-node  (:foreground fg   :background bg :weight 'bold))
  (info-header-xref  (:foreground fg   :background bg :underline t))
  (info-node         (:foreground cs02 :background bg))
  (info-index-match  (:foreground fg   :background ha10))
  (info-menu-header  (:foreground fg   :background ha00 :weight 'bold))
  (info-menu-star    (:foreground fg   :background ha04))
  (info-title-1      (:foreground ha00 :background bg :weight 'bold))
  (info-title-2      (:foreground ha04 :background bg :weight 'bold))
  (info-title-3      (:foreground ha07 :background bg :weight 'bold))
  (info-title-4      (:foreground ha11 :background bg :weight 'bold))
  (info-xref         (:foreground ha01 :background bg :underline t))
  (info-xref-visited (:foreground ha12 :background bg :underline t))

;;;;;; Info mode
  (helpful-heading (:inherit 'variable-pitch :foreground ha02 :height 1.1 :underline t))

;;;;;; evil
  (evil-ex-info                   (:foreground bw13 :slant 'italic))
  (evil-ex-search                 (:foreground cs00 :background ha02 :weight 'bold))
  (evil-ex-substitute-matches     (:foreground cs00 :strike-through t :weight 'bold))
  (evil-ex-substitute-replacement (:foreground ot04 :weight 'bold))

;;;;;; diredfl
  (diredfl-dir-name               (:foreground fg :weight 'bold :inherit 'variable-pitch))
  (diredfl-number                 (:foreground bw06))
  (diredfl-symlink                (:foreground ot05))
  (diredfl-no-priv                (:foreground bw04))
  (diredfl-dir-priv               (:foreground ha02))
  (diredfl-read-priv              (:foreground ha01))
  (diredfl-rare-priv              (:foreground ha01))
  (diredfl-link-priv              (:foreground ha01))
  (diredfl-file-name              (:foreground fg :inherit 'variable-pitch))
  (diredfl-exec-priv              (:foreground ha11))
  (diredfl-date-time              (:foreground bw08 :underline t))
  (diredfl-write-priv             (:foreground ha01))
  (diredfl-other-priv             (:foreground ha01))
  (diredfl-file-suffix            (:foreground bw09 :inherit 'variable-pitch))
  (diredfl-dir-heading            (:foreground ha02 :box t))
  (diredfl-autofile-name          (:foreground bw09))
  (diredfl-flag-mark              (:foreground ha02))
  (diredfl-flag-mark-line         (:slant 'italic :underline ha02))
  (diredfl-executable-tag         (:foreground bw09))
  (diredfl-ignored-file-name      (:foreground bw09))
  (diredfl-deletion               (:foreground cs00))
  (diredfl-deletion-file-name     (:slant 'italic :strike-through cs00))
  (diredfl-tagged-autofile-name   (:foreground bw09))
  (diredfl-compressed-file-name   (:foreground bw09))
  (diredfl-compressed-file-suffix (:foreground bw09))

;;;;;; dired-subtree
  (dired-subtree-depth-1-face (:background bg))
  (dired-subtree-depth-2-face (:background bg))
  (dired-subtree-depth-3-face (:background bg))
  (dired-subtree-depth-4-face (:background bg))
  (dired-subtree-depth-5-face (:background bg))
  (dired-subtree-depth-6-face (:background bg))

;;;;;; Ivy
  (ivy-action                      (:foreground fg :slant 'italic))
  (ivy-completion-annotations      (:foreground bw06))
  (ivy-confirm-face                (:foreground ha12))
  (ivy-current-match               (:underline (:line-width -1 :color ot04) :weight 'bold))
  (ivy-cursor                      (:foreground bg :background fg))
  (ivy-grep-info                   (:foreground fg))
  (ivy-grep-line-number            (:foreground fg))
  (ivy-highlight-face              (:foreground ot07 :slant 'italic))
  (ivy-match-required-face         (:foreground ha00))
  (ivy-minibuffer-match-face-1     (:foreground ot08 :underline t))
  (ivy-minibuffer-match-face-2     (:foreground ot00 :underline t))
  (ivy-minibuffer-match-face-3     (:foreground ha04 :underline t))
  (ivy-minibuffer-match-face-4     (:foreground ha00 :underline t))
  (ivy-minibuffer-match-highlight  (:foreground ot07 :box t))
  (ivy-modified-buffer             (:foreground fg :weight 'bold))
  (ivy-modified-outside-buffer     (:foreground fg :weight 'bold))
  (ivy-org                         (:foreground fg))
  (ivy-prompt-match                (:inherit 'ivy-current-match))
  (ivy-remote                      (:foreground ha07))
  (ivy-separator                   (:foreground bw06))
  (ivy-subdir                      (:foreground fg))
  (ivy-virtual                     (:foreground bw06 :slant 'italic))
  (ivy-yanked-word                 (:foreground ot07))

;;;;;; Swiper
  (swiper-background-match-face-1  (:inherit 'head-outline-2))
  (swiper-background-match-face-2  (:inherit 'head-outline-4))
  (swiper-background-match-face-3  (:inherit 'head-outline-5))
  (swiper-background-match-face-4  (:inherit 'head-outline-3))
  (swiper-line-face                (:underline ha04 :extend t))
  (swiper-match-face-1             (:inherit 'head-outline-2 :weight 'bold))
  (swiper-match-face-2             (:inherit 'head-outline-4 :weight 'bold))
  (swiper-match-face-3             (:inherit 'head-outline-5 :weight 'bold))
  (swiper-match-face-4             (:inherit 'head-outline-3 :weight 'bold))

;;;;;; rainbow-delimiter
  (rainbow-delimiters-base-face       (:foreground cs01))
  (rainbow-delimiters-depth-1-face    (:foreground cs02))
  (rainbow-delimiters-depth-2-face    (:foreground ha00))
  (rainbow-delimiters-depth-3-face    (:foreground ot05))
  (rainbow-delimiters-depth-4-face    (:foreground ha04))
  (rainbow-delimiters-depth-5-face    (:foreground ot04))
  (rainbow-delimiters-depth-6-face    (:foreground ot10))
  (rainbow-delimiters-depth-7-face    (:foreground ha06))
  (rainbow-delimiters-depth-8-face    (:foreground ot07))
  (rainbow-delimiters-depth-9-face    (:foreground ot00))
  (rainbow-delimiters-unmatched-face  (:foreground cs00))
  (rainbow-delimiters-mismatched-face (:foreground cs00))
  (rainbow-delimiters-base-error-face (:foreground cs00))

;;;;;; Line Numbers
  (line-number              (:foreground bw03 :background ha09))
  (line-number-current-line (:foreground bw03 :background bg :box (:line-width -1)))

;;;;;; isearch, occur
  (isearch        (:foreground fg   :background ot02))
  (isearch-fail   (:foreground bg   :background ot03))
  (lazy-highlight (:foreground bw14 :background ot05))
  (match          (:foreground fg   :background cs02))
  (query-replace  (:foreground bg   :background ot08))

;;;;;; workspace, doom
  (+workspace-tab-face          (:foreground fg))
  (+workspace-tab-selected-face (:foreground ha04 :background ot05))

;;;;;; +org-todo, custom
  (+org-todo-cancel  (:inherit 'fixed-pitch :underline (:color cs00 :line-width -1)))
  (+org-todo-done    (:inherit 'fixed-pitch :underline (:color ot01 :line-width -1)))
  (+org-todo-onhold  (:inherit 'fixed-pitch :underline (:color ha04 :line-width -1)))
  (+org-todo-active  (:inherit 'fixed-pitch :underline (:color ha01 :line-width -1)))
  (+org-todo-project (:inherit 'fixed-pitch :underline (:color ot00 :line-width -1)))

;;;;;; ido
  (ido-subdir            (:foreground bw13))
  (ido-virtual           (:foreground ha04))
  (ido-indicator         (:foreground cs02))
  (ido-only-match        (:foreground ot04))
  (ido-first-match       (:foreground ot05))
  (ido-incomplete-regexp (:foreground ha06))

;;;;;; imenu-list
  (imenu-list-entry-face            (:foreground fg))
  (imenu-list-entry-face-3          (:foreground ha01))
  (imenu-list-entry-face-2          (:foreground ha04))
  (imenu-list-entry-face-1          (:foreground ot12))
  (imenu-list-entry-face-0          (:foreground ot04))
  (imenu-list-entry-subalist-face-3 (:foreground ha01 :underline t))
  (imenu-list-entry-subalist-face-2 (:foreground ha04 :underline t))
  (imenu-list-entry-subalist-face-1 (:foreground ot12 :underline t))
  (imenu-list-entry-subalist-face-0 (:foreground ot04 :underline t))

;;;;;; Head-Outline
  (head-outline-1 (:foreground ha04))
  (head-outline-2 (:foreground ot05))
  (head-outline-3 (:foreground ot04))
  (head-outline-4 (:foreground cs02))
  (head-outline-5 (:foreground ha00))
  (head-outline-6 (:foreground ot10))
  (head-outline-7 (:foreground ha06))
  (head-outline-8 (:foreground ot07))

;;;;;; Outline
  (outline-1 (:inherit '(head-outline-1 variable-pitch) :overline t)) ;; :background ot06
  (outline-2 (:inherit '(head-outline-2 variable-pitch) :overline t)) ;; :background ot06
  (outline-3 (:inherit '(head-outline-3 variable-pitch) :overline t)) ;; :background ot06
  (outline-4 (:inherit '(head-outline-4 variable-pitch) :overline t)) ;; :background ot06
  (outline-5 (:inherit '(head-outline-5 variable-pitch) :overline t)) ;; :background ot06
  (outline-6 (:inherit '(head-outline-6 variable-pitch) :overline t)) ;; :background ot06
  (outline-7 (:inherit '(head-outline-7 variable-pitch) :overline t)) ;; :background ot06
  (outline-8 (:inherit '(head-outline-8 variable-pitch) :overline t)) ;; :background ot06
  (outline-minor-0 (:background bg))
  (outline-minor-1 (:inherit 'outline-1 :extend t))
  (outline-minor-2 (:inherit 'outline-2 :extend t))
  (outline-minor-3 (:inherit 'outline-3 :extend t))
  (outline-minor-4 (:inherit 'outline-4 :extend t))
  (outline-minor-5 (:inherit 'outline-5 :extend t))
  (outline-minor-6 (:inherit 'outline-6 :extend t))
  (outline-minor-7 (:inherit 'outline-7 :extend t))
  (outline-minor-8 (:inherit 'outline-8 :extend t))

;;;;;; markdown
  (markdown-header-face-1 (:inherit 'head-outline-1))
  (markdown-header-face-2 (:inherit 'head-outline-2))
  (markdown-header-face-3 (:inherit 'head-outline-3))
  (markdown-header-face-4 (:inherit 'head-outline-4))
  (markdown-header-face-5 (:inherit 'head-outline-5))
  (markdown-header-face-6 (:inherit 'head-outline-6))
  (markdown-link-face (:inherit 'org-link))

;;;;;; org
  (org-archived                  (:foreground ha00))
  (org-clock-overlay             (:foreground ha00))
  (org-code                      (:foreground ot09))
  (org-column                    (:foreground ha00))
  (org-column-title              (:foreground ha00))
  (org-date                      (:foreground bw01 :background ot11-light))
  (org-date-selected             (:foreground cs02))
  (org-default                   (:foreground fg))
  (org-dispatcher-highlight      (:foreground ha00))
  (org-document-info             (:foreground bg :background ha01 :height 1.2))
  (org-document-info-keyword     (:foreground bg :background ha01 :height 1.2))
  (org-document-title            (:foreground bg :background ha01 :height 1.9))
  (org-done                      (:underline (:color ot02 :line-width -1)))
  (org-drawer                    (:foreground ha00))
  (org-ellipsis                  (:foreground ha00))
  (org-footnote                  (:foreground ha00))
  (org-formula                   (:foreground ha00))
  (org-headline-done             nil)
  (org-headline-todo             nil)
  (org-hide                      (:foreground bg))
  (org-indent                    (:foreground bg))
  (org-latex-and-related         (:foreground ha00))
  (org-link                      (:foreground ot07 :underline t))
  (org-list-dt                   (:foreground ot05))
  (org-macro                     (:foreground ha00))
  (org-meta-line                 (:foreground bg :background ha11))
  (org-mode-line-clock           (:foreground ha00))
  (org-mode-line-clock-overrun   (:foreground ha00))
  (org-priority                  (:foreground ha00))
  (org-property-value            (:foreground ha00))
  (org-scheduled                 (:foreground ha00))
  (org-scheduled-previously      (:foreground ha00))
  (org-scheduled-today           (:foreground ha00))
  (org-sexp-date                 (:foreground ha00))
  (org-special-keyword           (:foreground cs02 :background ha10))
  (org-table                     (:foreground cs01))
  (org-table-header              (:foreground fg :weight 'bold))
  (org-tag                       (:foreground cs01))
  (org-tag-group                 (:foreground cs01))
  (org-target                    (:foreground ha00))
  (org-time-grid                 (:foreground ha00))
  (org-todo                      (:inherit 'fixed-pitch :underline (:color ot09 :line-width -1)))
  (org-upcoming-deadline         (:foreground ha00))
  (org-upcoming-distant-deadline (:foreground ha00))
  (org-verbatim                  (:foreground cs02 :background ot06))
  (org-verse                     (:foreground ha00))
  (org-warning                   (:foreground ha00))

;;;;;;; agenda
  (org-agenda-calendar-event   (:foreground ha00))
  (org-agenda-calendar-sexp    (:foreground ha00))
  (org-agenda-clocking         (:foreground ha00))
  (org-agenda-column-dateline  (:foreground ha00))
  (org-agenda-current-time     (:foreground ha00))
  (org-agenda-date             (:foreground ha00))
  (org-agenda-date-today       (:foreground ha00))
  (org-agenda-date-weekend     (:foreground ha00))
  (org-agenda-diary            (:foreground ha00))
  (org-agenda-dimmed-todo-face (:foreground ha00 :underline (:color ha01 :line-width -1)))
  (org-agenda-done             (:foreground ha00))
  (org-agenda-filter-category  (:foreground ha00))
  (org-agenda-filter-effort    (:foreground ha00))
  (org-agenda-filter-regexp    (:foreground ha00))
  (org-agenda-filter-tags      (:foreground ha00))
  (org-agenda-restriction-lock (:foreground ha00))
  (org-agenda-structure        (:inherit 'variable-pitch :foreground ha00 :height 1.2))

;;;;;;; block
  (org-block            (:foreground fg   :background ha09 :extend t))
  (org-block-begin-line (:foreground bw10 :background ot06 :weight 'normal :extend t :height 0.8 :inherit 'variable-pitch))
  (org-block-end-line   (:foreground bw10 :background ot06 :weight 'normal :extend t :height 0.8 :inherit 'variable-pitch))
  (org-quote            (:foreground fg   :background ha08-light :extend t))

;;;;;;; checkbox
  (org-checkbox                 (:foreground ot05))
  (org-checkbox-statistics-done (:foreground ot04))
  (org-checkbox-statistics-todo (:foreground cs02))

;;;;;;; level
  (org-level-1 (:inherit 'head-outline-1))
  (org-level-2 (:inherit 'head-outline-2))
  (org-level-3 (:inherit 'head-outline-3))
  (org-level-4 (:inherit 'head-outline-4))
  (org-level-5 (:inherit 'head-outline-5))
  (org-level-6 (:inherit 'head-outline-6))
  (org-level-7 (:inherit 'head-outline-7))
  (org-level-8 (:inherit 'head-outline-8))

;;;;;; shr
  (shr-link (:inherit 'org-link))
  (shr-selected-link (:inherit 'org-link :background ot08))

;;;;;; git-gutter
  (git-gutter:added       (:background ot04))
  (git-gutter:deleted     (:background cs00))
  (git-gutter:modified    (:background ha04-dark))
  (git-gutter:unchanged   (:background ha02))
  (git-gutter:separator   (:background bw01))
  (git-gutter-fr:added    (:background ot04))
  (git-gutter-fr:deleted  (:background cs00))
  (git-gutter-fr:modified (:background ha04-dark))

;;;;;; company
  (company-tooltip-selection  (:foreground fg :underline (:color bw07) :weight 'semibold))
  (company-tooltip-common     (:foreground fg))
  (company-tooltip-annotation (:foreground ha02))
  (company-tooltip            (:foreground fg :background ha09 :box (:color bw01)))
  (company-scrollbar-bg       (:background bg))
  (company-scrollbar-fg       (:background bw02))

;;;;;; message
  (message-header-name    (:foreground ot00 :inherit 'variable-pitch))
  (message-header-cc      (:foreground ot02 :inherit 'variable-pitch))
  (message-header-to      (:foreground ot04 :inherit 'variable-pitch))
  (message-header-subject (:foreground ot05 :inherit 'variable-pitch))

;;;;;; elfeed
  (elfeed-show-tag-face            (:foreground ha02))
  (elfeed-show-misc-face           (:foreground fg))
  (elfeed-show-feed-face           (:foreground fg))
  (elfeed-show-title-face          (:foreground fg :inherit 'variable-pitch))
  (elfeed-show-author-face         (:foreground ha01))
  (elfeed-log-date-face            (:foreground bw08))
  (elfeed-search-tag-face          (:inherit 'elfeed-show-tag-face))
  (elfeed-search-feed-face         (:inherit 'elfeed-show-feed-face))
  (elfeed-search-date-face         (:inherit 'elfeed-log-date-face))
  (elfeed-search-title-face        (:inherit 'elfeed-show-title-face))
  (elfeed-search-filter-face       (:foreground ha04 :inherit 'variable-pitch :height 1.3))
  (elfeed-log-info-level-face      (:foreground ot08))
  (elfeed-log-warn-level-face      (:foreground ot03))
  (elfeed-log-debug-level-face     (:foreground ot05))
  (elfeed-log-error-level-face     (:foreground ot09))
  (elfeed-search-last-update-face  (:foreground bg :background ha06 :inherit 'variable-pitch))
  (elfeed-search-unread-count-face (:foreground bg :background ot09 :inherit 'variable-pitch))
  (elfeed-search-unread-title-face (:weight 'semibold))
  (elfeed-title-1 (:inherit 'head-outline-1))
  (elfeed-title-2 (:inherit 'head-outline-2))
  (elfeed-title-3 (:inherit 'head-outline-3))
  (elfeed-title-4 (:inherit 'head-outline-4))
  (elfeed-title-5 (:inherit 'head-outline-5))
  (elfeed-title-6 (:inherit 'head-outline-6))
  (elfeed-title-7 (:inherit 'head-outline-7))
  (elfeed-title-8 (:inherit 'head-outline-8))
  (elfeed-star-face (:underline (:color ha04 :line-width -1)))

;;;;;; transient
  (transient-unreachable       (:foreground bw04))
  (transient-inactive-value    (:foreground bw04))
  (transient-unreachable-key   (:foreground bw04))
  (transient-inactive-argument (:foreground bw04))
  (transient-inapt-suffix      (:foreground bw04 :inherit 'italic))
  (transient-heading           (:foreground ot05 :inherit 'variable-pitch :height 1.2 :overline t :extend t))
  (transient-key               (:foreground ot09 :underline t))

;;;;;; magit
  (magit-section-heading        (:foreground ot01 :inherit 'variable-pitch :height 1.2))
  (magit-hash                   (:foreground cs01))
  (magit-branch-local           (:foreground cs01 :background ot05 :inherit 'variable-pitch))
  (magit-branch-remote          (:foreground bg :background ot12 :inherit 'variable-pitch))
  (magit-diff-file-heading      (:foreground fg :weight 'bold :inherit 'variable-pitch))
  (magit-diff-removed-highlight (:foreground bg :background ot03))
  (magit-diff-added-highlight   (:foreground fg :background ot02))
  (magit-diff-removed           (:foreground cs01 :background cs00))
  (magit-diff-added             (:foreground bg :background ot01))
  (magit-log-author             (:foreground ot05))
  (magit-log-date               (:foreground cs01))
  (magit-log-graph              (:foreground ot00))
  (magit-tag                    (:foreground ha04 :underline t :inherit 'variable-pitch))
  (magit-popup-disabled-argument(:foreground ot11))

;;;;;; orderless
  (orderless-match-face-0 (:inherit 'head-outline-2 :weight 'bold))
  (orderless-match-face-1 (:inherit 'head-outline-4 :weight 'bold))
  (orderless-match-face-2 (:inherit 'head-outline-5 :weight 'bold))
  (orderless-match-face-3 (:inherit 'head-outline-3 :weight 'bold))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'sculpture-light)

;;; sculpture-light-theme.el ends here
