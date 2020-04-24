call plug#begin()
  Plug 'honza/vim-snippets'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'itchyny/lightline.vim' " A light and configurable statusline/tabline plugin for Vim.
  Plug 'tpope/vim-eunuch' " Vim sugar for the UNIX shell commands that need it the most.
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive' " Git wrapper
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'rking/ag.vim' " A code searching tool similar to ack, with a focus on speed.
  Plug 'whatyouhide/vim-lengthmatters'
  
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder.
  Plug 'junegunn/fzf.vim'
  
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Colorize icons

  Plug 'miyakogi/conoline.vim' " Highlight current line
  
  Plug 'iamcco/markdown-preview.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'sbdchd/neoformat' " Format code
  Plug 'junegunn/vim-easy-align'
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
  
  " Autocompletion
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  autocmd BufEnter * call ncm2#enable_for_buffer() " enable ncm2 for all buffers
  
  set completeopt=noinsert,menuone,noselect
  
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-tmux'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-tagprefix'
  Plug 'filipekiss/ncm2-look.vim'
  Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
  Plug 'wellle/tmux-complete.vim'
  Plug 'yuki-ycino/ncm2-dictionary'
  Plug 'fgrsnau/ncm2-aspell'
  Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
  Plug 'ncm2/ncm2-cssomni'
  Plug 'ncm2/ncm2-vim'
  Plug 'ncm2/ncm2-tern',  {'do': 'npm install'} " JS
  
  " Plug 'roxma/nvim-completion-manager'
  " Plug 'alvan/vim-closetag'
  " Plug 'roxma/ncm-rct-complete' " Ruby
  " Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'} " JS
  " Plug 'roxma/ncm-flow' " JS
  " Plug 'Shougo/neco-vim' " Vim
  
  Plug 'w0rp/ale'
  
  " Ruby
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  " Plug 'dbakker/vim-projectroot' " for solargraph support
  " Plug 'hackhowtofaq/vim-solargraph'
  
  " JS
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " JSX
  Plug 'neoclide/vim-jsx-improve'

  " TS
  Plug 'ianks/vim-tsx'
  Plug 'leafgarland/typescript-vim'
  " Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  " Plug 'Shougo/denite.nvim' " For Denite features
  Plug 'Shougo/deoplete.nvim'
  Plug 'Quramy/tsuquyomi'
  " Installs and builds vimproc (required to launch tsserver)
  Plug 'Shougo/vimproc.vim', {'do': 'make'}
  " Installs this source
  " Plug 'rudism/deoplete-tsuquyomi'
  
  " NGINX
  Plug 'chr4/nginx.vim'

  " Slim
  Plug 'slim-template/vim-slim'

  " CoffeeScript
  Plug 'kchmck/vim-coffee-script'

  " Colorschemes
  Plug 'chriskempson/base16-vim'
  
  Plug 'roxma/python-support.nvim'
call plug#end()

colorscheme ron

" Mouse: scroll, select, tabs, splits
set mouse=a

" Tab size
set tabstop=4
set shiftwidth=2
set expandtab

" Autocompletion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Git gutter
set updatetime=500
set number
set signcolumn=yes

" Show sign column even if gutters don't present
highlight LineNr ctermfg=grey ctermbg=black
highlight SignColumn guibg=black

let NERDTreeShowHidden=1

" Fzf hot-key for file searching
map <c-p> :Files<CR>

let g:lengthmatters_start_at_column=121
call lengthmatters#highlight('ctermbg=0')

" Ag
set runtimepath^=~/.vim/bundle/ag

let g:nerdtree_tabs_open_on_console_startup=2
let g:nerdtree_tabs_focus_on_files=1

let g:python3_host_prog='/usr/bin/python'
let g:python_host_prog='/usr/bin/python3'

" ALE JS
highlight ALEWarning ctermbg=DarkMagenta
let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['eslint'], 'ruby': ['rubocop'] }
map <c-A-l> :ALEFix<CR>

" TS
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
let g:deoplete#enable_at_startup = 1 " Enable deoplete at startup

" Comments
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
