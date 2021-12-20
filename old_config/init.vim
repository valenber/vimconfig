"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------
set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set signcolumn=yes:2
set relativenumber
set number
set termguicolors
set undofile
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard+=unnamedplus
set confirm
set exrc
set backup
set backupdir=~/.local/share/nvim/backup//
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files

set autoindent "Retain indentation on next line
set smartindent  "Turn on autoindenting of blocks
set noswapfile

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

let mapleader = ","

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

imap jk <esc>
vmap jk <esc>

" start in-file search on Spacebar
nnoremap <Space> /
" clear search highlighting
nnoremap <esc> :noh<return><esc>

" splits navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Navigating buffers
nnoremap gb :ls<CR>:buffer<Space>
nnoremap <C-a> :bprevious<CR>
nnoremap <C-s> :bnext<CR>
"
" replace all
nnoremap S :%s//g<Left><Left>

source ~/.config/nvim/plugins/input-helpers.vim

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/onedark.vim
source ~/.config/nvim/plugins/comfortable-motion.vim
source ~/.config/nvim/plugins/devicons.vim
source ~/.config/nvim/plugins/quick-scope.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/rnvimr.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/utils.vim
source ~/.config/nvim/plugins/nvim-treesitter.vim

call plug#end()


"--------------------------------------------------------------------------
" Visuals
"--------------------------------------------------------------------------

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" set colours
colorscheme onedark

" use terminal background when using vim
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
