set mouse=a
set number
set numberwidth=1
set clipboard=unnamed
set encoding=utf-8
set autoindent
set smartindent
set showmatch
set laststatus=2
set noshowmode
set smartindent
set nowrap
set relativenumber

autocmd VimEnter * syntax on


call plug#begin()

"plugins"

"colorschemes
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }

"fonts
Plug 'powerline/fonts'

"editor plugins
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion' 
Plug 'windwp/nvim-autopairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/windwp/nvim-ts-autotag'
Plug 'ryanoasis/vim-devicons'
"jinga syntax (flask, django)
Plug 'glench/vim-jinja2-syntax'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }


"html
Plug 'mattn/emmet-vim'

"css color
Plug 'ap/vim-css-color'

"javascript
Plug 'yuezk/vim-js'


"git
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'

"typing
Plug 'jiangmiao/auto-pairs'

"commentFunction
Plug 'scrooloose/nerdcommenter'

"Rainbow Parentheses Improved

Plug 'frazrepo/vim-rainbow'

call plug#end()

let g:onedark_config = {
  \ 'style': 'darker',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'transparent':v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }
colorscheme gruvbox
"Rainbow Parentheses Improved configuration

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"


"Keys Maps

let mapleader=" " 
nmap <Leader>nt :NERDTreeToggle<CR>
"nmap <silent> ga <Plug>(coc-codeaction-line)
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nmap <Leader>w :w <CR>
"nmap <Leader>q :q <CR>
"nmap <Leader>pl :PlugInstall<CR>
nmap <Leader>te :terminal<CR>
"noremap <Leader>gs :CocSearch 
nnoremap <silent> ba  :bprevious<cr>
nnoremap <silent> bb :bnext<cr>
nnoremap <silent> cb :bd<cr>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"prettier
nnoremap <Leader>py :silent %!prettier --stdin-filepath %<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>lg <cmd>LazyGit<cr>
"End Keys Maps


"airline setup

let g:airline_theme='kolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#coc#enabled = 0 
let g:airline#extensions#whitespace#enabled = 0
function! AccentDemo()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = airline#section#create(['',' ','filetype'])
  let g:airline_section_c = airline#section#create(['branch'])
  let g:airline_section_z = airline#section#create([' ','%f'])
  let g:airline_section_y = airline#section#create([' ','%p'])
  
  let keys = ['m','a','r','c','o','z','s','h']
    for k in keys
      call airline#parts#define_text(k, k)
    endfor
    call airline#parts#define_accent('m', 'red')
    call airline#parts#define_accent('a', 'green')
    call airline#parts#define_accent('r', 'blue')
    call airline#parts#define_accent('c', 'yellow')
    call airline#parts#define_accent('o', 'orange')
    call airline#parts#define_accent('z', 'purple')
    call airline#parts#define_accent('s', 'red')
    call airline#parts#define_accent('h', 'blue')
  let g:airline_section_x= airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()

"End airline setup

