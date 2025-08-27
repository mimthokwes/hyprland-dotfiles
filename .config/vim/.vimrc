call plug#begin('~/.vim/plugged')

Plug 'ghifarit53/tokyonight-vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" === Settings ===
syntax on
set termguicolors
set background=dark
colorscheme tokyonight
set mouse=a
set nowrap
set sidescroll=1
set sidescrolloff=8
set guicursor=a:ver25

" Gunakan Enter untuk menerima suggestion dari coc.nvim
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

set number
highlight LineNr guifg=orange

" Shortcut
nnoremap <C-b> :NERDTreeToggle<CR>

" Buka NERDTree otomatis saat Vim start
autocmd VimEnter * NERDTree

" Kalau buka file langsung, fokus ke file (bukan ke NERDTree)
autocmd VimEnter * if argc() > 0 | wincmd p | endif

" Auto save setiap kali ada perubahan saat menulis
autocmd TextChanged,TextChangedI * silent! write

" Buka terminal di bawah dengan tinggi 10 baris
:belowright split| resize 20 | terminal


