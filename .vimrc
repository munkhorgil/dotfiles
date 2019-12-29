" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Enable syntax highlighting.
syntax on
syntax enable

" set guioptions-=m  remove menu bar
" set guioptions-=T  remove toolbar
" set guioptions-=r  remove right-hand scroll bar
" remove left sidebar
set guioptions-=L

" Automatically indent when adding a curly bracket, etc.
set smartindent

" Undo file change even after computer restart
set undofile

" Limit text width to 80 chars.
set colorcolumn=80

" tabs should be converted to a group of 4 spaces.
" this is the official python convention
" (http://www.python.org/dev/peps/pep-0008/)
set shiftwidth=2
set tabstop=4
set expandtab
set smarttab

" Theme
colorscheme atom


" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                         " buffer number
set statusline+=%f\                             " filename
set statusline+=%h%m%r%w                        " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}]    " file type
set statusline+=%=                              " right align remainder
set statusline+=0x%-8B                          " character value
set statusline+=%-14(%l,%c%V%)                  " line, character
set statusline+=%<%P                            " file position


" Show line number, cursor position.
set number

" Save file {2
" Need "stty -ixon" command in shell.
" more: http://superuser.com/questions/227588/vim-command-line-imap-problem
nmap <c-s> :w!<cr>
imap <C-s> <ESC>:w!<CR>

" Search as you type.
set incsearch

" Ignore case when searching.
set ignorecase

" remap mru.
" cnoremap mr :MRU<CR>

cnoremap Cmd-p :CtrlP<CR>

" Javascript file indenting.
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

" ALE
" Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_tsserver_autoimport = 1

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Syntastic plugin options.
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" NERDTree
map <F6> <C-W>w
let g:nerdtree_tabs_autoclose=0

" vim jsx in .js files
let g:jsx_ext_required = 0

" set font
set guifont=Operator\ Mono\ Book:h12

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" typescript
let g:typescript_compiler_binary = 'ts'
let g:typescript_compiler_options = ''

" ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
