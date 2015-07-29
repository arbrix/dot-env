set nocompatible              " be iMproved, required
" Backups and swapfile
set backup
set backupdir=$HOME/.vim/backup/
silent execute '!mkdir -p $HOME/.vim/backup'
set directory=$HOME/.vim/tmp
silent execute '!mkdir -p $HOME/.vim/tmp'

"set vb
set noswapfile

if version >= 703
	set conceallevel=1
	set concealcursor=nc
	set colorcolumn=+1
	set cinoptions+=L0
	"set undofile
	set undodir=~/.vim/undofiles
	if !isdirectory(&undodir)
		call mkdir(&undodir, "p")
	endif
	map  <C-ScrollWheelDown> <ScrollWheelRight>
	map  <C-ScrollWheelUp>   <ScrollWheelLeft>
	imap <C-ScrollWheelDown> <ScrollWheelRight>
	imap <C-ScrollWheelUp>   <ScrollWheelLeft>
endif


" Status Line
set laststatus=2
"set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
set statusline=File:\ %t\%r%h%w\ [%{&ff},%{&fileencoding},%Y]\ %m%=\ [AscII=\%03.3b]\ [Hex=\%02.2B]\ [Pos=%l,%v,%p%%]\ [LINE=%L]


" Vundle {{{
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
" Plugin 'joonty/vim-phpqa.git'
Plugin 'ervandew/supertab.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'joonty/vdebug.git'
Plugin 'joonty/vim-sauce.git'
Plugin 'spf13/PIV.git'
Plugin 'leshill/vim-json.git'
Plugin 'groenewege/vim-less.git'
Plugin 'hail2u/vim-css3-syntax.git'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'mileszs/ack.vim'
Plugin 'rbgrouleff/bclose.vim.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on }}}

" Colors {{{
" colorscheme badwolf
colorscheme solarized
syntax on           " enable syntax processing
set background=dark
" }}}

" Fonts {{{
if has('gui_running')
  set guifont=Monaco:h14
endif
" }}}

" Spaces & T abs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set noexpandtab       " tabs are spaces
set autoindent
set wrap
" }}}

" UI config {{ {
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
" }}}

" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn of search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" }}}

" Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" STOP using the arrow keys, Dude!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" }}}

" Editing {{{
autocmd BufLeave,FocusLost * silent! wall
let g:SuperTabDefaultCompletionType = ""
" }}}

" Map Shortcuts {{{
let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" save session
nnoremap <leader>s :mksession<CR>
" open ag.vim
nnoremap <leader>a :Ag
map <C-e> :NERDTreeToggle<CR>
" }}}

" CtrlP settings {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}} 

" GOLANG {{{
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" }}}

" Autogroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
" }}}
