" Enable syntax processing
syntax enable

" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Visual autocomplete for command menu
set wildmenu

" Hilight current line
set cursorline

" Highlight matching [{()}]
set showmatch

" Don't redraw while executing macros, registers and other commands that have not been typed
set lazyredraw

" Number of spaces that a <Tab> in the file counts for
set tabstop=4

" Number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=4

" Number of spaces to use for each step of (auto)indent
set shiftwidth=4

" Use the appropriate number of spaces to insert a <Tab>
set expandtab

" Load filetype-specific indent files
filetype indent on

" Ignore case in search patterns
set ignorecase

" Override ignorecase if the search pattern contains upper case characters
set smartcase

" Incremental search
set incsearch

" All matches in a line are substituted instead of just one
set gdefault

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Map leader to <Space>
nnoremap <Space> <Nop>
let mapleader=" "

" evil-escape
imap jk <Esc>

" Inspiration from Doom Emacs
noremap <Leader>: :
noremap <Leader>bs :<C-u>w<CR>
noremap <Leader>bS :<C-u>wa<CR>
noremap <Leader>cd gd
noremap <Leader>fs :<C-u>w<CR>

" Commands for vscode-neovim
if exists('g:vscode')
    map <Leader><Space> <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>. <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>, <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>/ <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
    map <Leader>x <Cmd>call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>

    " buffer
    map <Leader>bs <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
    map <Leader>bS <Cmd>call VSCodeNotify('workbench.action.files.saveAll')<CR>
    map <Leader>bb <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>bd <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
    map <Leader>bk <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
    map <Leader>bK <Cmd>call VSCodeNotify('workbench.action.closeEditorsInGroup')<CR>
    map <Leader>bO <Cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<CR>

    " code
    map <Leader>cd <Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>
    map <Leader>cD <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
    map <Leader>ci <Cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>
    map <Leader>ct <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
    map <Leader>cf <Cmd>call VSCodeNotify('editor.action.formatDocument')<CR>
    map <Leader>ca <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
    map <Leader>cj <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>c/ <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>
    map <Leader>cb <Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>

    " file
    map <Leader>fs <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
    map <Leader>ff <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>fr <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    map <Leader>fy <Cmd>call VSCodeNotify('copyFilePath')<CR>
    map <Leader>fR <Cmd>call VSCodeNotify('editor.action.refactor')<CR>

    " search
    map <Leader>sb <Cmd>call VSCodeNotify('actions.find')<CR>
    map <Leader>ss <Cmd>call VSCodeNotify('actions.find')<CR>
    map <Leader>sp <Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>
endif
