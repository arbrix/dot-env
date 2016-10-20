set nocompatible
filetype off


"{{{ Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins
Plugin 'VundleVim/Vundle.vim'

" UI
Plugin 'gundo'
Plugin 'itchyny/lightline.vim'
" Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
" Plugin 'Valloric/MatchTagAlways'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vasconcelloslf/vim-interestingwords'
Plugin 'kshenoy/vim-signature'
Plugin 'haya14busa/incsearch.vim'
Plugin 'airblade/vim-rooter'
Plugin 'mhinz/vim-startify'

" Misc
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'jpalardy/vim-slime'

" Languages
Plugin 'fatih/vim-go'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'rust-lang/rust.vim'

" Text editing
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'easymotion/vim-easymotion'

" Completion
"Plugin 'Valloric/YouCompleteMe'
Plugin 'maralla/completor.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'marijnh/tern_for_vim'

" VCS
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'

" Color themes
Plugin 'sjl/badwolf'
Plugin 'altercation/vim-colors-solarized'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'abra/vim-obsidian'
Plugin 'daddye/soda.vim'
Plugin 'john2x/flatui.vim'
Plugin 'nice/sweater'
Plugin 'junegunn/seoul256.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'jordwalke/flatlandia'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'fatih/molokai'
Plugin 'joshdick/onedark.vim'
"Plugin 'joshdick/airline-onedark.vim'
Plugin 'mkarmona/colorsbox'

" Unite
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tsukkee/unite-tag'

" DB
" Plugin 'dbext.vim'

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
set autowrite
set autoread                    " Automatically read changed files
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
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set laststatus=2                " Show status line always
" set ruler
set backspace=indent,eol,start
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

" easier to jump between errors in quickfix list
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

""""""""""
" Split window
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>
""""""""""
" Buffer nav
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
" Close buffer
noremap <leader>d :bd<CR>
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



" Act like D and C
nnoremap Y y$

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h

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
" nnoremap <C-j> <C-w>j
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
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
" Enable goimports to automatically insert import paths instead of gofmt:
let g:go_fmt_command = "goimports"
let g:go_snippet_case_type = "camelcase"
" By default vim-go shows errors for the fmt command, to disable it:
let g:go_fmt_fail_silently = 1
let g:go_imports_fail_silently = 1
let g:go_play_open_browser = 1
let g:go_play_browser_command = "chrome"
" By default new terminals are opened in a vertical split.
let g:go_term_mode = "split"
" By default the testing commands run asynchronously in the background and display results with go#jobcontrol#Statusline().
let g:go_term_enabled = 1
let g:go_auto_type_info = 1 " automatically show the information whenever you move your cursor
let g:go_def_mode = 'godef'
let g:go_decls_includes = "func,type"

let g:completor_go_omni_trigger = '(?:\b[^\W\d]\w*|[\]\)])\.(?:[^\W\d]\w*)?'

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>


augroup go
autocmd!

" Show by default 4 spaces for a tab
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" :GoBuild and :GoTestCompile
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" :GoTest
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" :GoRun
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" :GoDoc
" autocmd FileType go nmap <Leader>d <Plug>(go-doc)

" :GoCoverageToggle
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" :GoInfo
autocmd FileType go nmap <Leader>i <Plug>(go-info)

" :GoMetaLinter
autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

" :GoDef but opens in a vertical split
autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" :GoDef but opens in a horizontal split
autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)

" :GoAlternate  commands :A, :AV, :AS and :AT
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
let l:file = expand('%')
if l:file =~# '^\f\+_test\.go$'
call go#cmd#Test(0, 1)
elseif l:file =~# '^\f\+\.go$'
call go#cmd#Build(0)
endif
endfunction

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
" Lightline
let g:lightline = {
      \ 'colorscheme':'solarized',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightLineModified',
      \   'readonly': 'LightLineReadonly',
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? '⭠ '.branch : ''
  endif
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
""""''''""""
"  let g:airline_theme='onedark'
"  let g:airline_powerline_fonts=1
"  let g:airline_enable_branch = 1
""""""""""
"" vim-airline
"  let g:airline#extensions#tabline#enabled = 1
"  let g:airline#extensions#csv#enabled = 1
"  let g:airline#extensions#tagbar#enabled = 1
"  let g:airline#extensions#hunks#enabled = 1
"  let g:airline#extensions#syntastic#enabled = 1
"  let g:airline#extensions#branch#enabled = 1
"  
"  if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"  endif
"  
"  if !exists('g:airline_powerline_fonts')
"    let g:airline#extensions#tabline#left_sep = ' '
"    let g:airline#extensions#tabline#left_alt_sep = '|'
"    let g:airline_left_sep          = '▶'
"    let g:airline_left_alt_sep      = '»'
"    let g:airline_right_sep         = '◀'
"    let g:airline_right_alt_sep     = '«'
"    let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
"    let g:airline#extensions#readonly#symbol   = '⊘'
"    let g:airline#extensions#linecolumn#prefix = '¶'
"    let g:airline#extensions#paste#symbol      = 'ρ'
"    let g:airline_symbols.linenr    = '␊'
"    let g:airline_symbols.branch    = '⎇'
"    let g:airline_symbols.paste     = 'ρ'
"    let g:airline_symbols.paste     = 'Þ'
"    let g:airline_symbols.paste     = '∥'
"    let g:airline_symbols.whitespace = 'Ξ'
"  endif

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

