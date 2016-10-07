set nocompatible
filetype off


"{{{ Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Bundles
Bundle 'VundleVim/Vundle.vim'

" UI
Bundle 'gundo'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-repeat'
" Bundle 'Valloric/MatchTagAlways'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'vasconcelloslf/vim-interestingwords'
Bundle 'kshenoy/vim-signature'
Bundle 'haya14busa/incsearch.vim'
Bundle 'airblade/vim-rooter'
Bundle 'mhinz/vim-startify'

" Misc
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vinegar'
Bundle 'jpalardy/vim-slime'

" Languages
Bundle 'fatih/vim-go'
Bundle 'pangloss/vim-javascript'
" Bundle 'rust-lang/rust.vim'

" Text editing
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'tomtom/tcomment_vim'
Bundle 'Raimondi/delimitMate'
" Bundle 'easymotion/vim-easymotion'

" Completion
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'marijnh/tern_for_vim'

" VCS
Bundle 'tpope/vim-fugitive'
Bundle 'mhinz/vim-signify'

" Color themes
Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Bundle 'abra/vim-obsidian'
Bundle 'daddye/soda.vim'
Bundle 'john2x/flatui.vim'
Bundle 'nice/sweater'
Bundle 'junegunn/seoul256.vim'
Bundle 'whatyouhide/vim-gotham'
Bundle 'jordwalke/flatlandia'
Bundle 'gosukiwi/vim-atom-dark'
Bundle 'fatih/molokai'
Bundle 'joshdick/onedark.vim'
Bundle 'joshdick/airline-onedark.vim'
Bundle 'mkarmona/colorsbox'

" Unite
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'tsukkee/unite-tag'

" DB
" Bundle 'dbext.vim'

call vundle#end()
" Vundle plugins }}}

set runtimepath+=~/.vim/bundle/swift.vim


filetype plugin indent on
colorscheme solarized
syntax on
set background=dark
set mouse=a
set modelines=0

set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,.DS_Store
set shell=/bin/sh
set noerrorbells
set novisualbell
" set cursorline
set ttyfast
" set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
" set relativenumber
set lazyredraw
" set undofile
hi vertsplit guifg=fg guibg=bg

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>


set list
set listchars=tab:│\ ,eol:¬

nmap <leader>w :w!<cr>

" Disabling arrow keys. Use hjkl, Luke!
  nnoremap <up> <nop>
  nnoremap <down> <nop>
  nnoremap <left> <nop>
  nnoremap <right> <nop>
  inoremap <up> <nop>
  inoremap <down> <nop>
  inoremap <left> <nop>
  inoremap <right> <nop>
  nnoremap j gj
  nnoremap k gk

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

" Get efficient: shortcut mappings
nnoremap ; :

" Better buffer search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Move selected text around
vnoremap J :m '>+1<CR>gv
vnoremap K :m '<-2<CR>gv

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Map jk to <Esc>
imap jk <Esc>

""""""""""
" Split window
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>
""""""""""
" Buffer nav
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
" Close buffer
noremap <leader>c :bd<CR>
""""""""""
" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T " Remove toolbar
    set guioptions+=e
    set guioptions-=r  " Remove right-hand scroll bar
    set guioptions-=L  " Remove left-hand scroll bar
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=Meslo\ LG\ S\ for\ Powerline:h12
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set si "Smart indent
set wrap "Wrap lines

set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set foldenable

set backspace=2
"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


" Window navigation
nnoremap <leader>w <C-w>v<C-w>lremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" NERDTree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

nmap <silent> <Leader>n :NERDTreeToggle<CR>
nmap <silent> <Leader>nf :NERDTreeFind<CR>


" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
nmap <silent> <F10> :SyntasticCheck<CR>


" vim-go
let g:go_autodetect_gopath = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
" Enable goimports to automatically insert import paths instead of gofmt:
let g:go_fmt_command = "goimports"
" By default vim-go shows errors for the fmt command, to disable it:
let g:go_fmt_fail_silently = 1
let g:go_imports_fail_silently = 1
let g:go_play_open_browser = 0
" By default new terminals are opened in a vertical split.
let g:go_term_mode = "split"
" By default the testing commands run asynchronously in the background and display results with go#jobcontrol#Statusline().
let g:go_term_enabled = 1


" DelimitMate
let g:delimitMate_expand_cr = 1


" UNITE
nmap <silent> <Leader>t :Unite buffer -auto-resize -start-insert<CR>
nmap <silent> <Leader>p :Unite file_rec/async -start-insert<CR>
nmap <silent> <Leader>faf :Unite grep:.: -no-quit -direction="bottom"<CR>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
        \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
        \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
endif


" Tagbar
nmap <F8> :TagbarToggle<CR>


" UltiSnips
let g:UltiSnipsExpandTrigger = "<c-j>"


au FileType python nmap <Leader>gd :YcmCompleter GoToDefinition<CR>

let g:signify_vcs_list = [ 'git' ]

" map <leader>cd :cd %:p:h<cr>:pwd<cr>

let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline_enable_branch = 1
""""""""""
"" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
endif

""""""""""
"" Status bar
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif
" set statusline+=%#warningmsg#
" enable only after full installation
if exists('g:syntastic#SyntasticStatuslineFlag')
    set statusline+=%{SyntasticStatuslineFlag()}
endif

