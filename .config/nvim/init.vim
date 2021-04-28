call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/NERDTree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'Shougo/neocomplete.vim'

" Display indents
Plug 'yggdroot/indentline'

Plug 'Townk/vim-autoclose'
Plug 'vim-syntastic/syntastic'
Plug 'yuezk/vim-js'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Replacement for coc.vim (auto complete)
" Plug 'ycm-core/YouCompleteMe'

Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'

" Vue syntax highlighter
Plug 'posva/vim-vue'

" Grep utility for whole project
Plug 'jremmen/vim-ripgrep'
" Git integration
Plug 'tpope/vim-fugitive'

Plug 'chrisbra/Colorizer'
" Ctrl-z tree still history manager
Plug 'mbbill/undotree'

" Python auto completion engine
Plug 'davidhalter/jedi-vim'

" LaTeX plugin
Plug 'lervag/vimtex'

" Dockerfile syntax highlighter
Plug 'ekalinin/Dockerfile.vim'

" docker-compose wrapper
Plug 'skanehira/docker-compose.vim'

" Nginx syntax highlighter
Plug 'chr4/nginx.vim'

" Ayu color scheme
Plug 'TanguyHerbron/ayu-vim'

" Nvim in the browser
Plug 'glacambre/firenvim', {'do': { _ -> firenvim#install(0) }}

" Highlight indicator
Plug 'machakann/vim-highlightedyank'

" Markdown preview in browser
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" React syntax highlighter
Plug 'maxmellon/vim-jsx-pretty'
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

" Remove the duplicate --INSERT-- information
set noshowmode

" rg smart root founder and adds git ingore loading for faster execution
if executable('rg')
    let g:rg_derive_root="true"
endif

" let g:airline_powerline_fonts = 1

source ~/.config/nvim/coc.vim

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt

" Add folding shortcuts and settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=99
set signcolumn=no

" indentline configs
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 1
let g:indentLine_color_gui = "#5C6370"
let g:indentLine_showFirstIndentLevel = 1

" vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_latexmk = {
            \'build_dir': 'build',
            \}

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
set t_Co=256

" Ayu colors scheme settings
set termguicolors
let ayucolor="mirage"
colorscheme ayu

" Syntastic default configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlage()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Neomutt configuration for nvim compatibility
au BufRead /tmp/neomutt-* set tw=72

" Line wrapping shortcuts
function! ToggleWrap()
    set wrap! linebreak! nolist!
endfunction

nnoremap <leader>w :call ToggleWrap()<CR>
