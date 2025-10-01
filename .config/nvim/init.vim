call plug#begin('~/.vim/plugged')

Plug 'ghifarit53/tokyonight-vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Exafunction/windsurf.vim', {'branch': 'main'}
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'


call plug#end()

" === Settings ===
syntax on
set termguicolors
set background=dark
colorscheme gruvbox
set mouse=a
set nowrap
set sidescroll=1
set sidescrolloff=8
set guicursor=a:ver25
let NERDTreeShowHidden=1



" Gunakan Enter untuk menerima suggestion dari coc.nvim
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

set number
highlight LineNr guifg=white

" Shortcut
nnoremap <C-b> :NERDTreeToggle<CR>

" Shortcut
nnoremap <C-b> :NERDTreeToggle<CR>
" Shortcut
nnoremap <C-b> :NERDTreeToggle<CR>
" Buka NERDTree otomatis saat Vim start
autocmd VimEnter * NERDTree

" Auto refresh NERDTree ketika ada perubahan di filesystem
autocmd BufEnter NERD_tree_* | execute 'normal R'

" Kalau buka file langsung, fokus ke file (bukan ke NERDTree)
autocmd VimEnter * if argc() > 0 | wincmd p | endif

" Auto save setiap kali ada perubahan saat menulis
autocmd TextChanged,TextChangedI * silent! write

" Buka terminal di bawah dengan tinggi 10 baris
:belowright split| resize 10 | terminal

" Copy (Ctrl+C) di normal mode
nnoremap <C-c> "+yy

" Copy (Ctrl+C) di visual mode
vnoremap <C-c> "+y

" Paste (Ctrl+V) di normal mode
nnoremap <C-v> "+p

" Paste (Ctrl+V) di insert mode
inoremap <C-v> <C-r>+


" SHORTCUT FOR VIM 
" Pindah baris ke bawah/atas
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up>   :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up>   <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up>   :m '<-2<CR>gv=gv

" Duplicate baris ke bawah (Shift+Alt+Down)
nnoremap <S-A-Down> :t.<CR>
inoremap <S-A-Down> <Esc>:t.<CR>gi
vnoremap <S-A-Down> :t'>+<CR>gv

" Trigger UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
au BufRead,BufNewFile *.java set filetype=java

lua << EOF
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip/" })
EOF

" Biar tombol Delete hapus selection di visual mode
vnoremap <Del> d

" CTRL+A = Select All
nnoremap <C-a> ggVG

" CTRL+X = Cut/Delete 1 baris (Normal mode)
nnoremap <C-x> dd

" CTRL+X = Cut/Delete selection (Visual mode)
vnoremap <C-x> d


