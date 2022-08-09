;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       company             ; the ultimate code completion backend
       (vertico +icons)    ; the search engine of the future

       :ui
       doom                ; what makes DOOM look the way it does
       doom-dashboard      ; a nifty splash screen for Emacs
       (emoji +unicode)    ; 🙂
       hl-todo             ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       modeline            ; snazzy, Atom-inspired modeline, plus API
       nav-flash           ; blink cursor line after big motions
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints             ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       ;;tabs              ; a tab bar for Emacs
       ;;treemacs          ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       vc-gutter           ; vcs diff in the fringe
       vi-tilde-fringe     ; fringe tildes to mark beyond EOB
       ;;window-select     ; visually switch windows
       workspaces          ; tab emulation, persistence & separate workspaces
       zen                 ; distraction-free coding or writing

       :editor
       (evil +everywhere)  ; come to the dark side, we have cookies
       file-templates      ; auto-snippets for empty files
       fold                ; (nigh) universal code folding
       ;;(format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who don't like vim
       ;;multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       ;;rotate-text       ; cycle region at point between text candidates
       snippets            ; my elves. They type so I don't have to
       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired               ; making dired pretty [functional]
       electric            ; smarter, keyword-based electric-indent
       ;;ibuffer           ; interactive buffer management
       undo                ; persistent, smarter undo for your inevitable mistakes
       vc                  ; version-control and Emacs, sitting in a tree

       :term
       eshell              ; the elisp shell that works everywhere
       ;;vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       ;;(spell +flyspell) ; tasing you for misspelling mispelling
       ;;grammar           ; tasing grammar mistake every you make

       :tools
       direnv
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       ;;lsp               ; M-x vscode
       magit               ; a git porcelain for Emacs
       ;;terraform         ; infrastructure as code
       ;;tree-sitter       ; syntax and parsing, sitting in a tree...
       ;;upload            ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS
       ;;tty               ; improve the terminal Emacs experience

       :lang
       ;;(clojure +lsp)    ; java with a lisp
       ;;csharp            ; unity, .NET, and mono shenanigans
       ;;data              ; config/data formats
       emacs-lisp          ; drown in parentheses
       ;;fsharp            ; ML stands for Microsoft's Language
       ;;(graphql +lsp)    ; Give queries a REST
       ;;json              ; At least it ain't XML
       ;;javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;kotlin            ; a better, slicker Java(Script)
       ;;lua               ; one-based indices? one-based indices
       markdown            ; writing docs for people to ignore
       org                 ; organize your plain life in plain text
       ;;rest              ; Emacs as a REST client
       (sh +fish)          ; she sells {ba,z,fi}sh shells on the C xor
       ;;web               ; the tubes
       ;;yaml              ; JSON, but readable

       :config
       ;;literate
       (default +bindings +smartparens))
