" plugins
source ~/.config/nvim/plugins.vim

" important stuff
set nu
syntax on
let mapleader="|"
set clipboard=unnamedplus
set nohlsearch
set encoding=UTF-8
set expandtab
set autoindent
set smartcase

" emacs tabs
set tabstop=2
set shiftwidth=2
set expandtab

" theme
set termguicolors 
set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox  
let g:airline_theme='gruvbox'
hi NonText guifg=bg
    
" nerdtree
" nnoremap E :NERDTreeToggle <CR> :NERDTreeRefreshRoot <CR>
" autocmd BufWritePost * NERDTreeRefreshRoot
" nnoremap <A-r> :NERDTreeRefreshRoot <CR>

" speed 
nnoremap J o <ESC>
nnoremap K O <ESC>

" working with splits
nnoremap <C-h> <C-w>h  
nnoremap <C-j> <C-w>j  
nnoremap <C-k> <C-w>k  
nnoremap <C-l> <C-w>l  
set splitbelow
set splitright

nnoremap <A-h> :vertical resize -2 <CR>
nnoremap <A-l> :vertical resize +2 <CR>

" external terminal
nnoremap <A-t> :!alacritty &<CR> <CR>

" internal terminal
nnoremap <C-t> :16sp <CR> :term <CR> a
tnoremap <Esc> <C-\><C-n> 
 
" vim rainbow
au FileType c,cpp,objc,objcpp,py,java,js call rainbow#load() 
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" comfortable motion
let g:comfortable_motion_interval = 1000/120 
let g:comfortable_motion_friction = 300.0
let g:comfortable_motion_air_drag = 0.0
 
" coc
source ~/.config/nvim/coc.vim
