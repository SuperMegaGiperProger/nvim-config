call plug#begin()
  " IntelliSence
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
        \   'coc-tslint-plugin', 'coc-tsserver', 'coc-eslint',
        \   'coc-json', 'coc-yank', 'coc-highlight', 'coc-pairs', 'coc-solargraph'
        \ ]

  " Autocomplete
  " Plug 'Shougo/deoplete.nvim'

  " Themes
  " Plug 'rafi/awesome-vim-colorschemes'
  " Plug 'tomasiser/vim-code-dark'
  " Plug 'chriskempson/base16-vim'
  " Plug 'mswift42/vim-themes'
  " Plug 'romgrk/doom-one.vim'
  Plug 'rakr/vim-one'
  " Plug 'joshdick/onedark.vim'
  " Plug 'romgrk/doom-one.vim'

  " Highlight
  Plug 'sheerun/vim-polyglot'

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
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

  " Comments
  Plug 'scrooloose/nerdcommenter'

  " Parenthise
  " Plug 'tpope/vim-surround'

  " Bottom line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'itchyny/lightline.vim'
  
  " Git
  Plug 'airblade/vim-gitgutter' " visualization
  Plug 'tpope/vim-fugitive' " commands

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
  " Plug 'leafgarland/typescript-vim'
  " Plug 'maxmellon/vim-jsx-pretty'
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
  " Plug 'dikiaap/minimalist'
  
  " Plug 'roxma/python-support.nvim'
call plug#end()

let g:airline#extensions#branch#enabled=0

" Onedark theme START

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
set termguicolors
set background=dark
colorscheme one " Best: one afterglow jellybeans ron murphy industry elford

" Onedark theme END

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

" Popup
highlight Pmenu ctermbg=DarkGrey ctermfg=White

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

" let g:airline_theme='minimalist'

" Autocompletion
" let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx




" Coc config

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" Hotkeys
map <c-i> :CocCommand tsserver.organizeImports<CR>
map <c-l> :CocCommand eslint.executeAutofix<CR>
map <c-f> :CocFix<CR>
