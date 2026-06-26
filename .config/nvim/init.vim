" ===============================
" NEOVIM CONFIG - CLEAN & FAST
" ===============================

call plug#begin('~/.vim/plugged')

" Theme
Plug 'ghifarit53/tokyonight-vim'
Plug 'morhetz/gruvbox'

" File Explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'DaikyXendo/nvim-material-icon'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Utility
Plug 'jiangmiao/auto-pairs'
Plug 'Exafunction/windsurf.vim', {'branch': 'main'}

call plug#end()

" ===============================
" BASIC SETTINGS
" ===============================

syntax on
set number
set mouse=a
set nowrap
set termguicolors
set background=dark

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background =0
colorscheme tokyonight

set clipboard=unnamedplus
set guicursor=a:ver25

set sidescroll=1
set sidescrolloff=8

highlight LineNr guifg=white

" ===============================
" NERDTREE
" ===============================

let NERDTreeShowHidden=1

nnoremap <silent><C-b> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree
autocmd VimEnter * if argc() > 0 | wincmd p | endif
autocmd BufEnter NERD_tree_* silent execute 'normal R'

" ===============================
" TERMINAL AUTO OPEN
" ===============================

autocmd VimEnter * belowright split | resize 10 | terminal
autocmd VimEnter * wincmd p

tnoremap <Esc> <C-\><C-n>

" ===============================
" SAVE / QUIT
" ===============================

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>:qa<CR>

nnoremap <C-q> :qa<CR>
inoremap <C-q> <Esc>:qa<CR>
nnoremap <C-S-q> :qa!<CR>

" ===============================
" COPY / PASTE
" ===============================

nnoremap <C-c> "+yy
vnoremap <C-c> "+y

nnoremap <C-v> "+p
inoremap <C-v> <C-r>+

nnoremap <C-x> dd
vnoremap <C-x> d

nnoremap <C-a> ggVG

" ===============================
" MOVE LINE LIKE VSCODE
" ===============================

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up>   :m .-2<CR>==

inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up>   <Esc>:m .-2<CR>==gi

vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up>   :m '<-2<CR>gv=gv

" Duplicate Line
nnoremap <S-A-Down> :t.<CR>
inoremap <S-A-Down> <Esc>:t.<CR>gi
vnoremap <S-A-Down> :t'>+<CR>gv


" Shift + Arrow = Select text like normal editor

nnoremap <S-Left>  v<Left>
nnoremap <S-Right> v<Right>
nnoremap <S-Up>    v<Up>
nnoremap <S-Down>  v<Down>

vnoremap <S-Left>  <Left>
vnoremap <S-Right> <Right>
vnoremap <S-Up>    <Up>
vnoremap <S-Down>  <Down>

inoremap <S-Left>  <Esc>v<Left>
inoremap <S-Right> <Esc>v<Right>
inoremap <S-Up>    <Esc>v<Up>
inoremap <S-Down>  <Esc>v<Down>

" ===============================
" COC AUTOCOMPLETE
" ===============================

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Format on Save
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.html,*.json,*.java,*.py,*.go :CocCommand prettier.formatFile

nnoremap <leader>p :CocCommand prettier.formatFile<CR>

" ===============================
" ULTISNIPS
" ===============================

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" ===============================
" FILETYPE
" ===============================

au BufRead,BufNewFile *.java set filetype=java

" ===============================
" LUASNIP
" ===============================

lua << EOF
require("luasnip.loaders.from_lua").lazy_load({
  paths = "~/.config/nvim/LuaSnip/"
})
EOF

" ===============================
" DELETE VISUAL
" ===============================

vnoremap <Del> d
