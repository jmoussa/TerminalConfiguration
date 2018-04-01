"JOSEPH MOUSSA VIMRC

"Pathogen
"Syntastic
"NerdTree
"flazz/vim-colorschemes
"sheerun/vim-polyglot
"Emmet
"gruvbox
"mxw/vim-jsx
"pangloss/vim-javascript


"Pathogen Plugin Manager
execute pathogen#infect()

"VISUALS
syntax enable
set background=dark
colorscheme solarized
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set number
set clipboard=unnamed
set hlsearch
set cursorline
set showcmd
set wildmenu
set lazyredraw
set showmatch


filetype on
filetype plugin on

"Don't need to enable these for neovim
if !has('nvim')
    set term=screen-256color
    filetype plugin indent on 
    set autoindent
    set nocompatible
    set smarttab
    set smartindent
    set cindent    
endif


"NERDTREE TOGGLE Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Emmet
let g:user_emmet_leader_key='<C-M>'

"Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

au BufReadPost,BufNewFile *.twig colorscheme koehler 
au BufReadPost,BufNewFile *.css colorscheme monokai
au BufReadPost,BufNewFile *.js colorscheme gruvbox
au BufReadPost,BufNewFile *.py colorscheme gruvbox
au BufReadPost,BufNewFile *.html colorscheme gruvbox 
au BufReadPost,BufNewFile *.java colorscheme solarized 
au BufReadPost,BufNewFile *.php colorscheme monokai
au BufReadPost,BufNewFile *.c colorscheme gruvbox

au BufReadPost,BufNewFile *.c set syntax=c 
au BufReadPost,BufNewFile *.py set syntax=python 
au BufReadPost,BufNewFile *.html set syntax=html
au BufReadPost,BufNewFile *.java set syntax=java
au BufReadPost,BufNewFile *.php set syntax=php



" Default line highlighting for unknown filetypes
hi String ctermfg=140
hi CursorLine ctermbg=235
hi CursorLine guibg=#D3D3D3 cterm=none

autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

"These extra commands tell syntastic to ignore the following kinds of warnings                                                               
let g:syntastic_quiet_messages = { "regex": 'superfluous' }
let g:syntastic_quiet_messages = { "regex": 'superfluous-parens\|too-many-instance-attributes\|too-few-public-methods' }

"I like the vertical bar on insert mode, others do not like.  You decide.
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode

if !has('nvim')
    "Powerline
    set  rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
    set laststatus=2
    set t_Co=256
endif

"vim-javascript (enable code-folding)
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END

"vim-jsx
let g:jsx_ext_required = 0

"Polyglot
let g:polyglot_disabled = ['applescript', 'blade', 'caddyfile', 'cql', 'cucumber', 'crystal', 'dart', 'cryptol', 'fish', 'haml', 'julia', 'mathematica', 'opencl', 'pgsql', 'raml', 'solidity', 'sbt', 'stylus', 'terraform', 'tomdoc', 'textile', 'vala', 'vcl', 'vifm', 'xls']
