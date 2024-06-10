set number
set nowrap
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set relativenumber
set mouse=a

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminaol
Plug 'https://github.com/rstacruz/vim-closer' " For brackets autocompletion
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'sainnhe/gruvbox-material'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {'do': 'npm install'}
Plug 'styled-components/vim-styled-components'
Plug 'https://github.com/barrett-ruth/live-server.nvim.git'
Plug 'https://github.com/norcalli/nvim-colorizer.lua.git'
Plug 'https://github.com/js-everts/cmp-tailwind-colors.git'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

colorscheme nightfly

autocmd FileType typescript,json,c,html,css,javascript,typescriptreact,java,lua,react
let g:airline#extensions#tabline#enabled = 1

let g:auto_pairs_map = {
      \ '(' : ')',
      \ '[' : ']',
      \ '{' : '}',
      \ '"' : '"',
      \ "'" : "'"
      \ }

let g:airline_powerline_fonts = 1 

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

nnoremap <A-f> :NERDTreeFocus<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"
