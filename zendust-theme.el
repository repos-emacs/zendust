;;; zendust-theme.el --- Mid-tone, low-contrast custom theme for faces

;; Copyright (C) 2010 Yavuz Arkun

;;; Commentary

;; The colors in this theme come from the Tango palette, which is in
;; the public domain: http://tango.freedesktop.org/

;;; Code:

(deftheme zendust
    "Theme for faces, based on an extended Tango palette on a
 mid-level background.  Basic, Font Lock, Isearch, Gnus, and
 Message faces are included.")

;; color set definitions

;; standard tango colors
                                    ; H   L   S   Luminance
(defvar zd-aluminium+2   "#d3d7cf") ; 90  81  9   83
(defvar zd-aluminium+1   "#babdb6") ; 86  73  5   73
(defvar zd-aluminium     "#888a85") ; 84  53  2   54
(defvar zd-aluminium-1   "#555753") ; 90  33  2   34
(defvar zd-aluminium-2   "#2e3436") ; 195 20  8   20
(defvar zd-butter-1      "#fce94f") ; 53  65  97  90
(defvar zd-butter-2      "#edd400") ; 54  46  100 82
(defvar zd-butter-3      "#c4a000") ; 49  38  100 63
(defvar zd-chameleon-1   "#8ae234") ; 90  55  75  80
(defvar zd-chameleon-2   "#73d216") ; 90  45  81  73
(defvar zd-chameleon-3   "#4e9a06") ; 91  31  93  53
(defvar zd-chocolate-1   "#e9b96e") ; 37  67  74  76
(defvar zd-chocolate-2   "#c17d11") ; 37  41  84  55
(defvar zd-chocolate-3   "#8f5902") ; 37  28  97  40
(defvar zd-orange-1      "#fcaf3e") ; 36  62  97  75
(defvar zd-orange-2      "#f57900") ; 30  48  100 61
(defvar zd-orange-3      "#ce5c00") ; 27  40  100 50
(defvar zd-plum-1        "#ad7fa8") ; 307 59  22  56
(defvar zd-plum-2        "#75507b") ; 292 40  21  36
(defvar zd-plum-3        "#5c3566") ; 282 30  32  27
(defvar zd-scarlet-red-1 "#ef2929") ; 9   55  86  49
(defvar zd-scarlet-red-2 "#cc0000") ; 0   40  100 40
(defvar zd-scarlet-red-3 "#a40000") ; 0   32  100 31
(defvar zd-sky-blue-1    "#729fcf") ; 211 63  49  61
(defvar zd-sky-blue-2    "#3465a4") ; 214 42  52  39
(defvar zd-sky-blue-3    "#204a87") ; 216 33  62  29
 
;; extended colors

(defvar zd-dust+4        "#E6E4E0")
(defvar zd-dust+3        "#D4D0C9")
(defvar zd-dust+2        "#c1bdb5")
(defvar zd-dust+1        "#b0aca5")
(defvar zd-dust+05       "#A5A29C")
(defvar zd-dust          "#9E9A94")
(defvar zd-dust-1        "#8e8b85")
(defvar zd-dust-2        "#4f4c48")
(defvar zd-dust-3        "#363431")
(defvar zd-dust-4        "#262421")

(defvar zd-ash+1         "#9CA3A5")
(defvar zd-ash           "#858a8c")

(defvar zd-selection-fg  zd-dust-2) ; FIXME:

(defvar zd-moss          "#6E7665")
(defvar zd-chameleon-4   "#346605")

;(defvar zd-ll-1          "#606060") ; FIXME:
;(defvar zd-ll-2          zd-moss) ; FIXME:

(defvar zd-rust+3        "#9A7E7E")
(defvar zd-rust+2        "#998F8F")
(defvar zd-rust          "#725A5A")



(defvar zd-dark-gray     zd-aluminium-1)
(defvar zd-light-blue    zd-sky-blue-1)
(defvar zd-light-cyan    "#6b9898")
(defvar zd-light-green   zd-chameleon-3)
(defvar zd-light-magenta "#895e84")
(defvar zd-light-red     "#cb5151") ; keep
(defvar zd-light-yellow  "#c1a128")
(defvar zd-white         "#f0eee4")
(defvar zd-black         "#000000")
(defvar zd-dark-blue     zd-sky-blue-3)
(defvar zd-dark-cyan     "#338f96")
(defvar zd-dark-green    "#4d6b31")
(defvar zd-dark-magenta  "#56355c")
(defvar zd-dark-red      "#993d3d") ; keep
(defvar zd-dark-yellow   "#c08b18")
(defvar zd-light-gray    "#adb3b5")


(defvar zd-yellow        zd-dark-yellow)
(defvar zd-yellow-1      "#e0cf9f")
(defvar zd-yellow-2      "#C4A244")
(defvar zd-yellow-3      zd-light-yellow)

(defvar zd-orange        "#D38226")
(defvar zd-brown         "#6B3722")

(defvar zd-red+1         "#dca3a3")
(defvar zd-red           zd-dark-red)
(defvar zd-red-1         "#8C5D5D")
(defvar zd-red-2         "#BF7575")
(defvar zd-red-3         "#9c6363")
(defvar zd-red-4         zd-light-red)

(defvar zd-green-1       "#457C7D")
(defvar zd-green         zd-dark-green)
(defvar zd-green+1       "#457C7D")
(defvar zd-green+2       "#457C7D")
(defvar zd-green+3       "#457C7D")
(defvar zd-green+4       zd-light-green)

(defvar zd-blue+1        "#94bff3")
(defvar zd-blue          zd-dark-blue)
(defvar zd-blue-1        "#3E80B4")
(defvar zd-blue-2        "#547093")
(defvar zd-blue-3        "#718093")
(defvar zd-blue-4        zd-light-blue)

(defvar zd-cyan          zd-dark-cyan)


(custom-theme-set-faces
 'zendust
 `(default                       ((t (:foreground ,zd-dust-2 :background ,zd-dust)))) ; basic
 `(cursor                        ((t (:background ,zd-orange-3)))) ; basic
 `(highlight                     ((t (:background ,zd-dust+05)))) ; basic
 `(region                        ((t (:background ,zd-ash)))) ; basic
 `(font-lock-builtin-face        ((t (:foreground ,zd-dust-4)))) ; basic
 `(font-lock-comment-delimiter-face  ((t (:foreground ,zd-moss))))
 `(font-lock-comment-face        ((t (:foreground ,zd-moss)))) ; basic
 `(font-lock-constant-face       ((t (:weight bold :foreground ,zd-chocolate-3)))) ; basic
 `(font-lock-function-name-face  ((t (:weight bold :foreground ,zd-sky-blue-3)))) ; basic
 `(font-lock-keyword-face        ((t (:weight bold :foreground ,zd-dust-4)))) ; basic
 `(font-lock-negation-char-face  ((t (:weight bold :foreground ,zd-dust-4))))
 `(font-lock-operator-face       ((t (:foreground ,zd-dust-3))))
 `(font-lock-preprocessor-face   ((t (:foreground ,zd-chameleon-4))))
 `(font-lock-pseudo-keyword-face ((t (:foreground ,zd-dust-4))))
 `(font-lock-string-face         ((t (:foreground ,zd-rust)))) ; basic
 `(font-lock-type-face           ((t (:weight bold :foreground ,zd-chameleon-4)))) ; basic
 `(font-lock-variable-name-face  ((t (:foreground ,zd-sky-blue-3)))) ; basic
 `(font-lock-warning-face        ((t (:background ,zd-rust+2)))) ; basic

 `(button                        ((t (:underline t :foreground ,zd-sky-blue-3)))) ; basic
 `(link                          ((t (:weight bold :foreground ,zd-rust)))) ; basic
 `(link-visited                  ((t (:foreground ,zd-rust)))) ; basic
 `(mode-line                     ((t (:box (:line-width -1 :style released-button)
                                           :background ,zd-dust-1 :foreground ,zd-moss)))) ; basic
 `(mode-line-inactive            ((t (:background ,zd-dust :foreground ,zd-moss)))) ; basic
 `(isearch                       ((t (:foreground "#ffffff" :background ,zd-orange-3)))) ; basic
 `(lazy-highlight                ((t (:background ,zd-chocolate-1)))) ; basic
 `(gnus-group-news-1             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-1-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-2             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-2-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-3             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-3-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-4             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-4-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-5             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-5-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-news-low           ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-1             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-1-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-2             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-2-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-3             ((t (:weight bold :foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-3-low         ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-group-mail-low           ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-header-content           ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-header-from              ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-header-subject           ((t (:foreground ,zd-dust-3)))) ; basic
 `(gnus-header-name              ((t (:foreground ,zd-sky-blue-3)))) ; basic
 `(gnus-header-newsgroups        ((t (:foreground ,zd-dust-3)))) ; basic
 `(message-header-name           ((t (:foreground ,zd-sky-blue-3)))) ; basic
 `(message-header-cc             ((t (:foreground ,zd-moss)))) ; basic
 `(message-header-other          ((t (:foreground ,zd-moss)))) ; basic
 `(message-header-subject        ((t (:foreground ,zd-dust-3)))) ; basic
 `(message-header-to             ((t (:foreground ,zd-moss)))) ; basic
 `(message-cited-text            ((t (:foreground ,zd-moss)))) ; basic
 `(message-separator             ((t (:foreground ,zd-moss)))) ; basic

 `(border                          ((t (:background ,zd-dust))))
 `(fringe                          ((t (:foreground ,zd-dust+1))))
 `(header-line                     ((t (:foreground ,zd-dust :background ,zd-dust-2))))
 `(mode-line-buffer-id             ((t (:weight bold :foreground ,zd-dust+2))))
 `(mode-line-highlight             ((t (:background ,zd-dust+2))))
 `(mode-line-emphasis              ((t (:weight bold))))
 `(minibuffer-prompt               ((t (:inherit font-lock-function-name-face))))
 `(Buffer-menu-buffer              ((t (:weight bold))))

 `(secondary-selection             ((t (:background ,zd-ash+1))))

 `(trailing-whitespace             ((t (:background ,zd-rust))))
 `(highlight-current-line          ((t (:background ,zd-dust+05))))
 `(esk-paren-face                  ((t (:foreground ,zd-dust-1))))
 `(show-paren-mismatch             ((t (:foreground ,zd-dust+4 :background ,zd-scarlet-red-3))))
 `(show-paren-match                ((t (:foreground ,zd-dust+4 :background ,zd-sky-blue-1))))
 ;; `(match                           ((t (:weight bold))))

 ;; `(menu                            ((t nil)))
 ;; `(mouse                           ((t (:inherit zd-foreground))))
 ;; `(scroll-bar                      ((t (:background ,zd-bg+2))))
 ;; `(tool-bar                        ((t (:background ,zd-bg+2))))
 `(vertical-border                 ((t (:foreground ,zd-dust+1))))

 `(ido-first-match                 ((t (:weight bold :foreground ,zd-dust+4 :background ,zd-ash))))
 `(ido-only-match                  ((t (:weight bold :foreground ,zd-dust+4 :background ,zd-sky-blue-1))))
 `(ido-subdir                      ((t (:weight bold))))

 `(idle-highlight-face             ((t (:background ,zd-dust+05))))
 
 `(hover-highlight                 ((t (:background ,zd-dust-1))))
 
 `(info-xref                       ((t (:inherit link))))
 `(info-xref-visited               ((t (:inherit link-visited))))
 `(info-header-xref                ((t (:foreground ,zd-dust+2))))
 `(info-menu-star                  ((t (:inherit link))))
 `(info-menu-5                     ((t (:inherit info-menu-star))))
 `(info-node                       ((t (:weight bold))))
 `(info-header-node                ((t (:weight normal))))

 `(outline-8                       ((t (:inherit default :foreground ,zd-dust-4))))
 `(outline-7                       ((t (:inherit outline-8 :height 1.0))))
 `(outline-6                       ((t (:inherit outline-7 :height 1.0))))
 `(outline-5                       ((t (:inherit outline-6 :height 1.0))))
 `(outline-4                       ((t (:inherit outline-5 :height 1.0))))
 `(outline-3                       ((t (:inherit outline-4 :height 1.0))))
 `(outline-2                       ((t (:inherit outline-3 :height 1.0))))
 `(outline-1                       ((t (:inherit outline-2 :height 1.0))))

 `(org-hide                        ((t (:foreground ,zd-dust))))
 `(org-special-keyword             ((t (:inherit font-lock-comment-face))))
 `(org-tag                         ((t (:inherit font-lock-comment-face))))
 `(org-table                       ((t (:background ,zd-dust+05))))
 `(org-link                        ((t (:inherit link))))
 `(org-todo                        ((t (:inherit font-lock-variable-name-face))))
 `(org-formula                     ((t (:inherit font-lock-variable-name-face))))
 `(org-document-title              ((t (:inherit font-lock-variable-name-face))))
 `(org-document-info               ((t (:inherit font-lock-variable-name-face))))
 `(org-date                        ((t (:inherit font-lock-string-face))))
 `(org-agenda-date                 ((t (:inherit default))))
 `(org-agenda-date-weekend         ((t (:inherit font-lock-comment-face))))
 `(org-agenda-date-today           ((t (:inherit font-lock-keyword-face))))
 `(org-agenda-structure            ((t (:inherit font-lock-variable-name-face))))
 
 `(flyspell-incorrect              ((t (:inherit font-lock-warning-face))))
 `(flyspell-duplicate              ((t (:inherit font-lock-warning-face))))
 
 `(term-default-bg                 ((t (nil))))
 `(term-default-bg-inv             ((t (nil))))
 `(term-default-fg                 ((t (nil))))
 `(term-default-fg-inv             ((t (nil))))
 `(term-invisible                  ((t (nil)))) ;; FIXME: Security risk?
 `(term-invisible-inv              ((t (nil))))
 `(term-bold                       ((t (:weight bold))))
 `(term-underline                  ((t (:underline t))))

 `(eshell-prompt                   ((t (:inherit font-lock-variable-name-face))))
 `(eshell-ls-archive               ((t (:inherit font-lock-keyword-face))))
 `(eshell-ls-backup                ((t (:inherit font-lock-comment-face))))
 `(eshell-ls-clutter               ((t (:inherit font-lock-comment-face))))
 `(eshell-ls-directory             ((t (:inherit font-lock-function-name-face))))
 `(eshell-ls-executable            ((t (:inherit font-lock-warning-face))))
 `(eshell-ls-unreadable            ((t (:inherit font-lock-warning-face :foreground ,zd-dust+4))))
 `(eshell-ls-missing               ((t (:inherit font-lock-warning-face))))
 `(eshell-ls-product               ((t (:inherit font-lock-type-face))))
 `(eshell-ls-special               ((t (:foreground ,zd-plum-3))))
 `(eshell-ls-symlink               ((t (:inherit link))))

  ;; `(zd-term-dark-gray           ((t (:foreground ,zd-dark-gray))))
 ;; `(zd-term-light-blue          ((t (:foreground ,zd-light-blue))))
 ;; `(zd-term-light-cyan          ((t (:foreground ,zd-light-cyan))))
 ;; `(zd-term-light-green         ((t (:foreground ,zd-light-green))))
 ;; `(zd-term-light-magenta       ((t (:foreground ,zd-light-magenta))))
 ;; `(zd-term-light-red           ((t (:foreground ,zd-light-red))))
 ;; `(zd-term-light-yellow        ((t (:foreground ,zd-light-yellow))))
 ;; `(zd-term-white               ((t (:foreground ,zd-white))))

 ;; `(zd-term-black               ((t (:foreground ,zd-black))))
 ;; `(zd-term-dark-blue           ((t (:foreground ,zd-dark-blue))))
 ;; `(zd-term-dark-cyan           ((t (:foreground ,zd-dark-cyan))))
 ;; `(zd-term-dark-green          ((t (:foreground ,zd-dark-green))))
 ;; `(zd-term-dark-magenta        ((t (:foreground ,zd-dark-magenta))))
 ;; `(zd-term-dark-red            ((t (:foreground ,zd-dark-red))))
 ;; `(zd-term-dark-yellow         ((t (:foreground ,zd-dark-yellow))))
 ;; `(zd-term-light-gray          ((t (:foreground ,zd-light-gray))))

 ;; `(plain-widget-button             ((t (:weight bold))))
 ;; `(plain-widget-button-pressed     ((t (:inverse-video t))))
 ;; `(plain-widget-documentation      ((t (:inherit font-lock-doc-face))))
 ;; `(plain-widget-field              ((t (:background ,zd-dust-1))))
 ;; `(plain-widget-inactive           ((t (:strike-through t))))
 ;; `(plain-widget-single-line-field  ((t (:background ,zd-dust-1))))

 ;; `(fancy-widget-button             ((t (:background ,zd-dust+2 :box (:line-width -1 :style released-button)))))
 ;; `(fancy-widget-button-pressed     ((t (:background ,zd-dust+2 :box (:line-width -1 :style pressed-button)))))
 ;; `(fancy-widget-button-highlight   ((t (:background ,zd-dust+3 :box (:line-width -1 :style released-button)))))
 ;; `(fancy-widget-button-pressed-highlight ((t (:background ,zd-dust+2 :box (:line-width -1 :style pressed-button)))))
 ;; `(fancy-widget-documentation      ((t (:inherit font-lock-doc-face))))
 ;; `(fancy-widget-field              ((t (:background ,zd-dust-1))))
 ;; `(fancy-widget-inactive           ((t (:strike-through t))))
 ;; `(fancy-widget-single-line-field  ((t (:background ,zd-dust-1))))

 `(widget-button                   ((t (:background ,zd-dust :box (:line-width -1 :style released-button)))))
 `(widget-button-pressed           ((t (:background ,zd-dust+2 :box (:line-width -1 :style pressed-button)))))
 `(widget-button-highlight         ((t (:background ,zd-dust+1 :box (:line-width -1 :style released-button)))))
 `(widget-button-pressed-highlight ((t (:background ,zd-dust+2 :box (:line-width -1 :style pressed-button)))))
 `(widget-documentation            ((t (:inherit default))))
 `(widget-field                    ((t (:background ,zd-dust-1))))
 `(widget-inactive                 ((t (:strike-through t))))
 `(widget-single-line-field        ((t (:background ,zd-dust-1))))

 ;; `(mtorus-highlight                ((t (:inherit zd-highlight-bluish))))
 ;; `(mtorus-notify-highlight         ((t (:inherit zd-primary-1))))

 ;; `(apt-utils-normal-package        ((t (:inherit zd-primary-1))))
 ;; `(apt-utils-virtual-package       ((t (:inherit zd-primary-2))))
 ;; `(apt-utils-field-keyword         ((t (:inherit font-lock-doc))))
 ;; `(apt-utils-field-contents        ((t (:inherit font-lock-comment))))
 ;; `(apt-utils-summary               ((t (:inherit bold))))
 ;; `(apt-utils-description           ((t (:inherit default))))
 ;; `(apt-utils-version               ((t (:inherit zd-blue))))
 ;; `(apt-utils-broken                ((t (:inherit font-lock-warning))))

 ;; `(breakpoint-enabled-bitmap       ((t (:inherit zd-primary-1))))
 ;; `(breakpoint-disabled-bitmap      ((t (:inherit font-lock-comment))))

 ;; `(calendar-today                  ((t (:underline nil :inherit zd-primary-2))))
 ;; `(diary                           ((t (:underline nil :inherit zd-primary-1))))
 ;; `(holiday                         ((t (:underline t :inherit zd-primary-4))))

 ;; `(change-log-date                 ((t (:inherit zd-blue))))

 ;; `(comint-highlight-input          ((t (:inherit zd-primary-1))))
 ;; `(comint-highlight-prompt         ((t (:inherit zd-primary-2))))

`(compilation-info                ((t (:inherit font-lock-builtin-face))))
`(compilation-warning             ((t (:inherit font-lock-warning-face))))

 ;; ;; TODO
 ;; `(cua-rectangle                   ((t (:inherit region))))

 `(custom-button                     ((t (:inherit widget-button))))
 `(custom-button-pressed             ((t (:inherit widget-button-pressed))))
 `(custom-changed                    ((t (:foreground ,zd-rust))))
 `(custom-comment                    ((t (:inherit default))))
 `(custom-comment-tag                ((t (:inherit default))))
 `(custom-documentation              ((t (:inherit default))))
 `(custom-tag                        ((t (:inherit font-lock-keyword-face))))
 `(Custom-group-tag                  ((t (:inherit font-lock-keyword-face))))
 `(custom-group-tag-1                ((t (:inherit font-lock-keyword-face))))
 `(custom-invalid                    ((t (:inherit font-lock-warning-face))))
 `(custom-modified                   ((t (:foreground ,zd-rust))))
 `(custom-rogue                      ((t (:inhrit font-lock-warning-face))))
 `(custom-saved                      ((t (:underline t))))
 `(custom-set                        ((t (:inverse-video t :foreground ,zd-sky-blue-3))))
 `(custom-state                      ((t (:inherit font-lock-variable-name-face))))
 `(custom-variable-button            ((t (:weight bold :underline t))))
 `(custom-variable-tag               ((t (:inherit font-lock-keyword-face))))

 ;; `(dictionary-button               ((t (:inherit fancy-widget-button))))
 ;; `(dictionary-reference            ((t (:inherit zd-primary-1))))
 ;; `(dictionary-word-entry           ((t (:inherit font-lock-keyword))))

 `(diff-header                      ((t (:background ,zd-dust-1))))
 `(diff-index                       ((t (:weight bold))))
 `(diff-file-header                 ((t (:foreground ,zd-sky-blue-2))))
 `(diff-hunk-header                 ((t (:inherit font-lock-keyword-face))))
 `(diff-added                       ((t (:foreground ,zd-chameleon-4))))
 `(diff-removed                     ((t (:foreground ,zd-rust))))
 `(diff-context                     ((t (:inherit font-lock-comment-face))))

 `(magit-diff-file-header           ((t (:inherit diff-file-header))))
 `(magit-diff-add                   ((t (:inherit diff-added))))
 `(magit-diff-del                   ((t (:inherit diff-removed))))
 `(magit-diff-hunk-header           ((t (:inherit diff-hunk-header))))
 `(magit-diff-none                  ((t (:inherit diff-context))))
 `(magit-item-highlight             ((t (:background ,zd-dust+1))))
 `(magit-log-sha1                   ((t (:inherit font-lock-string-face))))
 `(magit-section-title              ((t (:foreground ,zd-sky-blue-3))))
 `(magit-branch                     ((t (:inherit font-lock-function-name-face))))
 `(magit-log-tag-label              ((t (:foreground ,zd-sky-blue-2))))
 `(magit-log-head-label             ((t (:foreground ,zd-sky-blue-2))))
 `(magit-item-mark                  ((t (:inherit isearch-lazy-highlight))))
 
 ;; `(emms-pbi-song                   ((t (:foreground ,zd-yellow))))
 ;; `(emms-pbi-current                ((t (:inherit zd-primary-1))))
 ;; `(emms-pbi-mark-marked            ((t (:inherit zd-primary-2))))

 `(epa-field-name                   ((t (:inherit font-lock-comment-face))))
 `(epa-field-body                   ((t (:inherit font-lock-builtin-face))))
 `(epa-validity-low                 ((t (:inherit default))))
 `(epa-validity-high                ((t (:inherit font-lock-builtin-face))))

 `(erc-default-face                     ((t (:foreground ,zd-dust-2))))
 `(erc-action-face                      ((t (:inherit erc-default-face))))
 `(erc-bold-face                        ((t (:weight bold))))
 `(erc-current-nick-face                ((t (:foreground ,zd-sky-blue-3))))
 `(erc-dangerous-host-face              ((t (:inherit font-lock-warning-face))))
 `(erc-direct-msg-face                  ((t (:inherit erc-default-face))))
 `(erc-error-face                       ((t (:inherit font-lock-warning))))
 `(erc-fool-face                        ((t (:foreground ,zd-dust-2))))
 `(erc-highlight-face                   ((t (:inherit hover-highlight))))
 `(erc-input-face                       ((t (:foreground ,zd-rust))))
 `(erc-keyword-face                     ((t (:inherit font-lock-keyword-face))))
 `(erc-nick-default-face                ((t (:inherit font-lock-variable-name-face))))
 `(erc-nick-msg-face                    ((t (:inherit erc-default-face))))
 `(erc-notice-face                      ((t (:inherit font-lock-comment-face))))
 `(erc-pal-face                         ((t (:foreground ,zd-butter-3))))
 `(erc-prompt-face                      ((t (:inherit eshell-prompt))))
 `(erc-timestamp-face                   ((t (:inherit font-lock-comment-face))))
 `(erc-underline-face                   ((t (:underline t))))

`(undo-tree-visualizer-current-face     ((t (:inherit show-paren-match))))
`(undo-tree-visualizer-active-branch-face ((t (:inherit font-lock-builtin-face))))
`(undo-tree-visualizer-default-face     ((t (:inherit font-lock-comment-face))))

`(sh-quoted-exec                        ((t (:inherit font-lock-preprocessor-face))))
`(sh-escaped-newline                    ((t (:inherit paren-matching))))
`(sh-quoted-exec                        ((t (:inherit font-lock-preprocessor-face))))

;; `(ibuffer-deletion                ((t (:inherit zd-primary-2))))
 ;; `(ibuffer-marked                  ((t (:inherit zd-primary-1))))
 ;; `(ibuffer-special-buffer          ((t (:inherit font-lock-doc))))
 ;; `(ibuffer-help-buffer             ((t (:inherit font-lock-comment :slant normal))))

 ;; `(message-cited-text              ((t (:inherit font-lock-comment))))
 ;; ;;`(message-cited-text ((t (:foreground ,zd-blue))))
 ;; `(message-header-name             ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-header-other            ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-header-to               ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-header-from             ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-header-cc               ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-header-newsgroups       ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-header-subject          ((t (:inherit font-lock-keyword :slant normal))))
 ;; `(message-header-xheader          ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-mml                     ((t (:inherit font-lock-comment :slant normal))))
 ;; `(message-separator               ((t (:inherit font-lock-comment :slant normal))))

 ;; `(gnus-header-name                ((t (:inherit message-header-name))))
 ;; `(gnus-header-content             ((t (:inherit message-header-other))))
 ;; `(gnus-header-from                ((t (:inherit message-header-from))))
 ;; `(gnus-header-subject             ((t (:inherit message-header-subject))))
 ;; `(gnus-header-newsgroups          ((t (:inherit message-header-other))))

 ;; `(gnus-x-face                     ((t (:background ,zd-fg :foreground ,zd-bg))))
 ;; `(gnus-button                     ((t (:weight bold))))

 ;; `(gnus-cite-1  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-2  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-3  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-4  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-5  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-6  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-7  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-8  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-9  ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-10 ((t (:inherit message-cited-text))))
 ;; `(gnus-cite-11 ((t (:inherit message-cited-text))))

 ;; `(gnus-group-mail-1           ((t (:inherit zd-primary-1))))
 ;; `(gnus-group-mail-2           ((t (:inherit zd-primary-1))))
 ;; `(gnus-group-mail-3           ((t (:inherit zd-primary-1))))
 ;; `(gnus-group-mail-1-empty     ((t (:inherit default))))
 ;; `(gnus-group-mail-2-empty     ((t (:inherit default))))
 ;; `(gnus-group-mail-3-empty     ((t (:inherit default))))
 ;; `(gnus-group-news-1-empty     ((t (:inherit default))))
 ;; `(gnus-group-news-2-empty     ((t (:inherit default))))
 ;; `(gnus-group-news-3-empty     ((t (:inherit default))))

 ;; `(gnus-signature              ((t (:inherit font-lock-comment))))

 ;; `(gnus-summary-selected       ((t (:inherit font-lock-keyword))))
 ;; `(gnus-summary-cancelled      ((t (:inherit zd-highlight-alerting))))

 ;; `(gnus-summary-low-ticked     ((t (:inherit font-lock-builtin))))
 ;; `(gnus-summary-normal-ticked  ((t (:inherit font-lock-builtin))))
 ;; `(gnus-summary-high-ticked    ((t (:inherit font-lock-builtin))))

 ;; `(gnus-summary-low-unread     ((t (:inherit zd-foreground :weight normal))))
 ;; `(gnus-summary-normal-unread  ((t (:inherit zd-foreground :weight normal))))
 ;; `(gnus-summary-high-unread    ((t (:inherit zd-foreground :weight bold))))

 ;; `(gnus-summary-low-read       ((t (:inherit font-lock-comment :slant normal))))
 ;; `(gnus-summary-normal-read    ((t (:inherit font-lock-comment :slant normal))))
 ;; `(gnus-summary-high-read      ((t (:inherit font-lock-comment :slant normal))))

 ;; `(gnus-summary-low-ancient    ((t (:inherit paren))))
 ;; `(gnus-summary-normal-ancient ((t (:inherit paren))))
 ;; `(gnus-summary-high-ancient   ((t (:inherit paren))))

 ;; `(help-argument-name          ((t (:weight bold))))

 ;; ;; See also the variable definitions at the top of this file
 ;; `(imaxima-latex-error         ((t (:inherit font-lock-warning))))

 ;; `(jabber-roster-user-chatty   ((t (:inherit zd-primary-1))))
 ;; `(jabber-roster-user-online   ((t (:inherit zd-primary-2))))
 ;; `(jabber-roster-user-away     ((t (:inherit font-lock-doc))))
 ;; `(jabber-roster-user-xa       ((t (:inherit font-lock-comment))))
 ;; `(jabber-roster-user-offline  ((t (:inherit zd-lowlight-1))))
 ;; `(jabber-roster-user-dnd      ((t (:inherit zd-primary-5))))
 ;; `(jabber-roster-user-error    ((t (:inherit font-lock-warning))))

 ;; `(jabber-title-small          ((t (:inherit zd-title :height 1.2))))
 ;; `(jabber-title-medium         ((t (:inherit jabber-title-small :height 1.2))))
 ;; `(jabber-title-large          ((t (:inherit jabber-title-medium :height 1.2))))

 ;; `(jabber-chat-prompt-local    ((t (:inherit zd-primary-1))))
 ;; `(jabber-chat-prompt-foreign  ((t (:inherit zd-primary-2))))

 ;; `(jde-java-font-lock-modifier ((t (:inherit zd-primary-2))))
 ;; `(jde-java-font-lock-doc-tag  ((t (:inherit zd-primary-1))))
 ;; `(jde-java-font-lock-constant ((t (:inherit font-lock-constant))))
 ;; `(jde-java-font-lock-package  ((t (:inherit zd-primary-3))))
 ;; `(jde-java-font-lock-number   ((t (:inherit font-lock-constant))))
 ;; `(jde-java-font-lock-operator ((t (:inherit font-lock-keyword))))
 ;; `(jde-java-font-lock-link     ((t (:inherit zd-primary-5 :underline t))))

 ;; `(keywiz-right                ((t (:inherit zd-primary-1))))
 ;; `(keywiz-wrong                ((t (:inherit font-lock-warning))))
 ;; `(keywiz-command              ((t (:inherit zd-primary-2))))

 ;; `(font-latex-bold             ((t (:inherit bold))))
 ;; `(font-latex-warning          ((t (:inherit font-lock-warning))))
 ;; `(font-latex-sedate           ((t (:inherit zd-primary-1))))
 ;; `(font-latex-title-4          ((t (:inherit zd-title))))

 ;; `(makefile-space              ((t (:inherit font-lock-warning))))
 ;; `(makefile-shell              ((t (nil))))
 ;; ;; This does not work very well because everything that`s highlighted
 ;; ;; inside the shell region will get its own box.
 ;; ;; (makefile-shell ((t (:background "#4f4f4f"
 ;; ;;                           :box (:line-width 2 :color "#4f4f4f")))))

 ;; `(nxml-delimited-data                   ((t (:inherit font-lock-string))))
 ;; `(nxml-name                             ((t (:inherit zd-primary-1))))
 ;; `(nxml-ref                              ((t (:inherit zd-primary-5))))
 ;; `(nxml-delimiter                        ((t (:inherit default))))
 ;; `(nxml-text                             ((t (:inherit default))))

 ;; `(nxml-comment-content                  ((t (:inherit font-lock-comment))))
 ;; `(nxml-comment-delimiter                ((t (:inherit nxml-comment-content))))
 ;; `(nxml-processing-instruction-target    ((t (:inherit zd-primary-2))))
 ;; `(nxml-processing-instruction-delimiter ((t (:inherit nxml-processing-instruction-target))))
 ;; `(nxml-processing-instruction-content   ((t (:inherit nxml-processing-instruction-target))))
 ;; `(nxml-cdata-section-CDATA              ((t (:inherit zd-primary-4))))
 ;; `(nxml-cdata-section-delimiter          ((t (:inherit nxml-cdata-section-CDATA))))
 ;; `(nxml-cdata-section-content            ((t (:inherit nxml-text))))
 ;; `(nxml-entity-ref-name                  ((t (:inherit zd-primary-5))))
 ;; `(nxml-entity-ref-delimiter             ((t (:inherit nxml-entity-ref-name))))
 ;; `(nxml-char-ref-number                  ((t (:inherit nxml-entity-ref-name))))
 ;; `(nxml-char-ref-delimiter               ((t (:inherit nxml-entity-ref-delimiter))))

 ;; `(nxml-tag-delimiter                    ((t (:inherit default))))
 ;; `(nxml-tag-slash                        ((t (:inherit default))))
 ;; `(nxml-element-local-name               ((t (:inherit zd-primary-1))))
 ;; `(nxml-element-prefix                   ((t (:inherit default))))
 ;; `(nxml-element-colon                    ((t (:inherit default))))

 ;; `(nxml-attribute-local-name             ((t (:inherit zd-primary-3))))
 ;; `(nxml-namespace-attribute-prefix       ((t (:inherit nxml-attribute-local-name))))
 ;; `(nxml-attribute-value                  ((t (:inherit font-lock-string))))
 ;; `(nxml-attribute-value-delimiter        ((t (:inherit nxml-attribute-value))))
 ;; `(nxml-attribute-prefix                 ((t (:inherit default))))
 ;; `(nxml-namespace-attribute-xmlns        ((t (:inherit nxml-attribute-prefix))))
 ;; `(nxml-attribute-colon                  ((t (:inherit default))))
 ;; `(nxml-namespace-attribute-colon        ((t (:inherit nxml-attribute-colon))))

 ;; ;; TODO
 ;; `(setnu-line-number                     ((t (:inherit zd-lowlight-2))))

 ;; `(speedbar-button                       ((t (:inherit zd-primary-1))))
 ;; `(speedbar-file                         ((t (:inherit zd-primary-2))))
 ;; `(speedbar-directory                    ((t (:inherit zd-primary-5))))
 ;; `(speedbar-tag                          ((t (:inherit font-lock-function-name))))
 ;; `(speedbar-highlight                    ((t (:underline t))))

 ;; `(strokes-char                          ((t (:inherit font-lock-keyword))))

 ;; `(todoo-item-header                     ((t (:inherit zd-primary-1))))
 ;; `(todoo-item-assigned-header            ((t (:inherit zd-primary-2))))
 ;; `(todoo-sub-item-header                 ((t (:foreground ,zd-yellow))))

 ;; `(tuareg-font-lock-governing            ((t (:inherit zd-primary-2))))
 ;; `(tuareg-font-lock-interactive-error    ((t (:inherit font-lock-warning))))
 ;; `(tuareg-font-lock-interactive-output   ((t (:inherit zd-primary-3))))
 ;; `(tuareg-font-lock-operator             ((t (:inherit font-lock-operator))))

 ;; `(w3m-form-button                       ((t (:inherit widget-button))))
 ;; `(w3m-form-button-pressed               ((t (:inherit widget-button-pressed))))
 ;; `(w3m-form-button-mouse                 ((t (:inherit widget-button-pressed))))
 ;; `(w3m-tab-unselected                    ((t (:box (:line-width 1 :style released-button)))))
 ;; `(w3m-tab-selected                      ((t (:box (:line-width 1 :style pressed-button)))))
 ;; `(w3m-tab-unselected-retrieving         ((t (:inherit (w3m-tab-unselected widget-inactive)))))
 ;; `(w3m-tab-selected-retrieving           ((t (:inherit (w3m-tab-selected widget-inactive)))))
 ;; `(w3m-tab-background                    ((t (:inherit zd-highlight-subtle))))
 ;; `(w3m-anchor                            ((t (:inherit zd-primary-1))))
 ;; `(w3m-arrived-anchor                    ((t (:inherit zd-primary-2))))
 ;; `(w3m-image                             ((t (:inherit zd-primary-4))))
 ;; `(w3m-form                              ((t (:inherit widget-field))))
 )

(provide-theme 'zendust)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; zendust-theme.el ends here
