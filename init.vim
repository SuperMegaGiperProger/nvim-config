call plug#begin()
  " IntelliSence
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-eslint', 'coc-emmet', 'coc-json', 'coc-yank', 'coc-highlight']

  " Autocomplete
  " Plug 'Shougo/deoplete.nvim'

  " Icons
  Plug 'ryanoasis/vim-devicons'

  " Search
  Plug 'rking/ag.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder.
  Plug 'junegunn/fzf.vim'
  
  " Tree
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Colorize icons

  " Current line
  Plug 'miyakogi/conoline.vim'

  " Markdown
  Plug 'iamcco/markdown-preview.vim'

  " Comments
  Plug 'scrooloose/nerdcommenter'

  " Parenthise
  Plug 'tpope/vim-surround'

  " Bottom line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'itchyny/lightline.vim'
  
  " Git
  Plug 'airblade/vim-gitgutter'

  " Format code to table style
  Plug 'junegunn/vim-easy-align'
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
  
  " Linters
  " Plug 'w0rp/ale'
  
  " Syntax highlight

  " Ruby
  " Plug 'vim-ruby/vim-ruby'
  " Plug 'tpope/vim-rails'
  
  " JS
  " Plug 'pangloss/vim-javascript'
  " Plug 'mxw/vim-jsx'

  " JSX
  " Plug 'neoclide/vim-jsx-improve'

  " TS
  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  " Plug 'HerringtonDarkholme/yats.vim'
  " Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  " Plug 'Shougo/denite.nvim'
  
  " NGINX
  " Plug 'chr4/nginx.vim'

  " Slim
  " Plug 'slim-template/vim-slim'

  " CoffeeScript
  " Plug 'kchmck/vim-coffee-script'

  " Colorschemes
  " Plug 'chriskempson/base16-vim'
  Plug 'dikiaap/minimalist'
  
  " Plug 'roxma/python-support.nvim'
call plug#end()

" colorscheme ron " Best: ron murphy industry elford

" Mouse: scroll, select, tabs, splits
set mouse=a

" Tab size
set tabstop=4
set shiftwidth=2
set expandtab

" Left column
set number
set signcolumn=yes
highlight LineNr ctermfg=grey ctermbg=black
highlight SignColumn guibg=black

let NERDTreeShowHidden=1

" Fzf hot-key for file searching
map <c-p> :Files<CR>

" Ag
set runtimepath^=~/.vim/bundle/ag

let g:nerdtree_tabs_open_on_console_startup=2
let g:nerdtree_tabs_focus_on_files=1

" ALE JS
" highlight ALEWarning ctermbg=DarkMagenta
" let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['eslint'] }
" let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['eslint'], 'ruby': ['rubocop'] }
" map <c-A-l> :ALEFix<CR>

" Comments
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:airline_theme='minimalist'

" Autocompletion
" let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
