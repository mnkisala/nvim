" plugins
source ~/.config/nvim/plugins.vim

" important stuff
set nu
filetype plugin indent on
set clipboard=unnamedplus
set encoding=UTF-8
set autoindent
set smartcase
set noswapfile
set nobackup
set nowritebackup
 
" emacs tabs
set tabstop=2
set shiftwidth=2
set expandtab

" leader
map <Space> <Nop>
let mapleader=" "

" working with splits
nnoremap <C-h> <C-w>h  
nnoremap <C-j> <C-w>j  
nnoremap <C-k> <C-w>k  
nnoremap <C-l> <C-w>l  
set splitbelow
set splitright

" external terminal
nnoremap <A-t> :!alacritty &<CR> <CR>

" internal terminal
tnoremap <Esc> <C-\><C-n> 

function OpenInternalTerminal()
  execute '16sp'
  execute 'term zsh -o no_vi'
  call feedkeys('a')
endfunction

nnoremap <C-t> :call OpenInternalTerminal() <CR>

" fern
nnoremap <silent> <A-e> :Fern . -drawer -toggle <CR>

" theme
set termguicolors 
set background=dark
colorscheme onedark
let g:airline_theme="minimalist"
hi Normal guibg=NONE ctermbg=NONE
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
highlight Comment cterm=italic gui=italic

" unhighlighting
nnoremap <silent> <Esc> :nohl<CR>

" fern nerdfont
let g:fern#renderer = "nerdfont"

" coc
source ~/.config/nvim/coc.vim
