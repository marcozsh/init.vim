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
set colorcolumn=100

autocmd VimEnter * syntax on


call plug#begin()

"plugins"

"colorschemes
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }
Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }
Plug 'zootedb0t/citruszest.nvim'
Plug 'rose-pine/neovim', { 'branch': 'main' }
Plug 'nonetallt/vim-neon-dark', { 'tag': '2.1.0' }
Plug 'stankovictab/mgz.nvim'

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
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'HiPhish/rainbow-delimiters.nvim'


"html
Plug 'mattn/emmet-vim'

"css color
Plug 'ap/vim-css-color'

"javascript
Plug 'yuezk/vim-js'


"git
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'

"copilot
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'CopilotC-Nvim/CopilotChat.nvim'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"commentFunction
Plug 'scrooloose/nerdcommenter'

call plug#end()



"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"
" let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " enable folder glyph flag
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1


"Keys Maps

let mapleader=" " 
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>ga <Plug>(coc-codeaction-line)
nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gy <Plug>(coc-type-definition)
nmap <Leader>gi <Plug>(coc-implementation)
nmap <Leader>gr <Plug>(coc-references)
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
"nnoremap <Leader>py :silent %!prettier --stdin-filepath %<CR>
"nnoremap <Leader>py :let save_pos = getpos(".")<CR>:silent %!prettier --stdin-filepath %<CR>:call setpos(".", save_pos)<CR>
nnoremap <Leader>py :let save_pos = getpos(".")<CR>:silent %!prettier --stdin-filepath %<CR>:call setpos(".", save_pos)<CR>zz

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>lg <cmd>LazyGit<cr>
"End Keys Maps


"airline setup
"https://github.com/vim-airline/vim-airline/wiki/Screenshots

let g:airline_theme='serene'
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


lua << EOF


require("CopilotChat").setup {
  -- See Configuration section for options
}


local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "tsx"},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },

}

local rainbow_delimiters = require "rainbow-delimiters"

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)


require("ibl").setup { indent = { highlight = highlight } }

vim.g.mgz_disable_background = false
vim.g.mgz_disable_nc_coloring = true
vim.g.mgz_italic_comments = false

vim.cmd("colorscheme mgz")


EOF
let g:rainbow_delimiters = {
    \ 'strategy': {
        \ '': rainbow_delimiters#strategy.global,
        \ 'vim': rainbow_delimiters#strategy.local,
    \ },
    \ 'query': {
        \ '': 'rainbow-delimiters',
        \ 'lua': 'rainbow-blocks',
    \ },
    \ 'priority': {
        \ '': 110,
        \ 'lua': 210,
    \ },
    \ 'highlight': [
        \ 'RainbowDelimiterRed',
        \ 'RainbowDelimiterYellow',
        \ 'RainbowDelimiterBlue',
        \ 'RainbowDelimiterOrange',
        \ 'RainbowDelimiterGreen',
        \ 'RainbowDelimiterViolet',
        \ 'RainbowDelimiterCyan',
    \ ],
\ }



