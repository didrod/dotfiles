call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'miyakogi/seiya.vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'embear/vim-localvimrc'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'eagletmt/neco-ghc'

Plug 'idanarye/vim-vebugger'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

call plug#end()


" --------------------------------------------------------------------------------------------------
"
" Airline and Airline-theme
"
set statusline+=%#warningmsg#
set statusline+=%*

let g:airline_powerline_fonts = 1
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Seiya
"
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
let g:seiya_auto_enable = 1
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Deoplete
"
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/opt/llvm/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/opt/llvm/lib/clang/5.0.1/include'
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Neco-ghc
"
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" ALE
"
let g:ale_sign_column_always = 1

highlight ALEError ctermbg=none cterm=underline
highlight ALEWarning ctermbg=none cterm=underline
highlight clear SignColumn

let g:ale_linters = {
\   'haskell': ['stack-build', 'stack-ghc-mod', 'hlint', 'hdevtools'],
\}
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Local vimrc
"
let g:localvimrc_ask = 0
let g:localvimrc_count = 1
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" NerdTree
"
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Custom key mappings
"
map <C-n> :NERDTreeToggle<CR>
map <C-h> :set hlsearch!<CR>
map <F8> :SeiyaEnable<CR>
map <F7> :SeiyaDisable<CR>
map <F10> :VBGstart
imap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:vebugger_leader='<C-c>'
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Separated python host
"
let g:python_host_prog=expand('~/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog=expand('~/.pyenv/versions/neovim3/bin/python3')
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Set colorscheme
"
try
    colorscheme base16-material-palenight
catch /^Vim\%((\a\+)\)\=:E185/
endtry
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Other settings
"
set nu
set autoindent
set cindent
set ts=4
set sw=4
set expandtab
set bs=2

set laststatus=2
set ruler
set hlsearch

if has("termguicolors")
    set termguicolors
endif

set completeopt-=preview
"
" --------------------------------------------------------------------------------------------------
