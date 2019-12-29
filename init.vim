set nocompatible
set encoding=UTF-8

" [gf] - jump to import under cursor
set path=.,src,node_nodules
set suffixesadd=.js,.jsx

call plug#begin('~/.vim/plugged')
  Plug 'APZelos/blamer.nvim'
  Plug 'junegunn/goyo.vim'
call plug#end()


" Required:
    set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/

  call dein#begin(expand('~/.vim'))
" Required:
  call dein#add('Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')
  " syntax
  call dein#add('moll/vim-node')
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('mhartington/oceanic-next')
  call dein#add('fatih/vim-go')
  call dein#add('Raimondi/delimitMate')
  " colorschema
  call dein#add('Yggdroot/indentLine')
  call dein#add('valloric/MatchTagAlways')
  " Git gutter
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  " utils
  call dein#add('benekastah/neomake')
  call dein#add('scrooloose/nerdtree')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('bling/vim-airline')
  call dein#add('tpope/vim-surround')
  call dein#add('tomtom/tcomment_vim')
  " other
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('Shougo/neomru.vim')
  call dein#add('junegunn/fzf')
  if dein#check_install()
    call dein#install()
  endif
  call dein#end()

" Required:
  filetype plugin indent on
" }}}

" System Settings  ----------------------------------------------------------{{{
" Let airline tell me my status

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
  set termguicolors
  hi SpellBad  gui=undercurl guisp=red term=undercurl cterm=undercurl
  set noshowmode
  set noswapfile
  filetype on
  set number
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
" block select not limited by shortest line
  set virtualedit=
  set wildmenu
  set laststatus=2
  "set colorcolumn=100
  set wrap linebreak nolist
  set undofile
  set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  let g:jsx_ext_required = 0
  let g:gitgutter_max_signs = 1000  " default value

  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
  let g:indentLine_char='│'
  " enable deoplete

  let g:neocomplete#enable_at_startup = 1
  let g:unite_source_codesearch_command = '$HOME/bin/csearch'
  let g:table_mode_corner="|"

" }}}

" System mappings  ----------------------------------------------------------{{{
" Navigate between display lines
  noremap  <silent> <Up>   gk
  noremap  <silent> <Down> gj
  noremap  <silent> k gk
  noremap  <silent> j gj

  noremap H ^
  noremap L g_
  noremap J 5j
  noremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just wap the mapping
" nnoremap : ;
" give it a try and you will like it
  nnoremap ; :

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  vnoremap <c-/> :TComment<cr>
  " map <esc> :noh<cr>
autocmd FileType typescript nmap <buffer> <Leader>T : <C-u>echo tsuquyomi#hint()<CR>

" Theme
syntax enable
colorscheme OceanicNext

let g:deoplete#enable_at_startup = 1
let g:indentLine_char_list = ['|']

nmap <F2> :NERDTreeToggle<CR>

" Git blame ====================================
let g:blamer_enabled = 1
let g:blamer_date_format = '%d/%m/%y'
let g:blamer_delay = 150
highlight Blamer guifg=teal
" End Git blame ================================

autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
