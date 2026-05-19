" Disable compatibility with vi which can cause unexpectedissues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the letf-hand side.
set number

" Hightlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns..
set tabstop=4

" Use space characters instead of tabs.
set expandtab

"Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS --------------------------------------------------------------{{{

call plug#begin('~/.vim/plugged')

" VIMTEX
    Plug 'lervag/vimtex'

    Plug 'dense-analysis/ale'

    Plug 'preservim/nerdtree'

    " Preview de Markdown no navegador
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

    " Sintaxe melhorada para Markdown
    Plug 'preservim/vim-markdown'

call plug#end()


" }}}

" CONFIGURAÇÃO DOS PLUGINS (Adicione aqui) -----------------------------{{{

" Configurações do ALE para Python e C
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'c': ['gcc', 'cppcheck'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\   'c': ['clang-format'],
\}

" Corrigir arquivos automaticamente ao salvar
let g:ale_fix_on_save = 1

" }}}
