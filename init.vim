filetype plugin indent on

set background=dark " use dark mode

syntax on
syntax enable

if has('nvim') || has('termguicolors')
  set termguicolors
endif


set list
set listchars=eol:↵,trail:·,tab:>-,nbsp:○
set guioptions-=L
set scrolloff=999
set smartindent
set undofile
set colorcolumn=80
set number
set shiftwidth=2
set tabstop=4
set expandtab
set smarttab
set incsearch
set ignorecase

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'romainl/Apprentice'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'sbdchd/neoformat'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'yegappan/mru'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'easymotion/vim-easymotion'

call plug#end()

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

let g:airline_theme='violet' " <theme> is a valid theme name
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neomake_python_enabled_makers = ['pylint']
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'


noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> k gk
noremap  <silent> j gj

noremap H ^
noremap L g_
" noremap J 5j
noremap K 5k

nnoremap ; :
vmap < <gv
vmap > >gv

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

colorscheme nightfly
