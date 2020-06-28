call plug#begin()
Plug 'preservim/NERDTree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'Shougo/neocomplete.vim'

Plug 'Townk/vim-autoclose'
Plug 'vim-syntastic/syntastic'
Plug 'maksimr/vim-jsbeautify'
Plug 'storyn26383/vim-vue'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Replacement for coc.vim (auto complete)
Plug 'ycm-core/YouCompleteMe'

Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'

" Grep utility for whole project
Plug 'jremmen/vim-ripgrep'
" Git integration
Plug 'tpope/vim-fugitive'

" Ctrl-z tree still history manager
Plug 'mbbill/undotree'

" Python auto completion engine
Plug 'davidhalter/jedi-vim'
call plug#end()

" autocmd vimenter * NERDTree | wincmd w
map <C-b> :NERDTreeToggle<CR>
autocmd BufEnter * lcd %:p:h
let g:NERDTreeChDirMode = 3 

syntax on

set noerrorbells
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4 softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressng tab, insert 4 spaces
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

set splitright
set splitbelow

" rg smart root founder and adds git ingore loading for faster execution
if executable('rg')
    let g:rg_derive_root="true"
endif

" let g:airline_powerline_fonts = 1

" source ~/.config/nvim/coc.vim

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>ps :Rg<SPACE>

" Add folding shortcuts and settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=99