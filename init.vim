"————————————————————————————————————————————————————————————————
"  ____                _     _       _   ___     _____ __  __   |
" |  _ \ ___  ___  ___| | __| |     | \ | \ \   / /_ _|  \/  |  |
" | |_) / _ \/ __|/ __| |/ _` |_____|  \| |\ \ / / | || |\/| |  |
" |  _ <  __/\__ \ (__| | (_| |_____| |\  | \ V /  | || |  | |  |
" |_| \_\___||___/\___|_|\__,_|     |_| \_|  \_/  |___|_|  |_|  |
"————————————————————————————————————————————————————————————————
" Author: rescld <root@rescld.cn>                  |
" Repository: https://github.com/rescld-code/nvim  |
" Create Date: 2019-11-20                          |
" Update Date: 2020-03-04                          |
"———————————————————————————————————————————————————

set number
set clipboard+=unnamedplus " yay -S xsel
set nofoldenable
set relativenumber
set autoread
set completeopt=preview,menu
set cursorline
set autowrite
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set ignorecase
set smartcase
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set showcmd
set wildmenu
set scrolloff=10
set t_Co=256
set virtualedit=block,onemore
set whichwrap+=<,>,h,l
set nowrap

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" === 
" === other config
" === 
let mapleader = "," 
map <c-s> :w<CR>
map <c-p> :FZF<CR>
map R :source $MYVIMRC<CR>
map <space><CR> :nohlsearch<CR>
map <A-u> ^
map <A-i> $
inoremap qq <esc>
filetype indent on

" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/plugged'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" editor enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'rhysd/clever-f.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'MattesGroeger/vim-bookmarks'

" visual enhancement
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-peekaboo'
Plug 'itchyny/vim-cursorword'
Plug 'ryanoasis/vim-devicons'

" indent
Plug 'nine2/vim-indent-guides'
Plug 'Yggdroot/indentLine'

" vim + ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" chxuan
Plug 'chxuan/tagbar'
Plug 'chxuan/vim-edit'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'theniceboy/bullets.vim'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" python
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'

" cpp
Plug 'octol/vim-cpp-enhanced-highlight'

" HTML, CSS, JavaScript, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'html','javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jelera/vim-javascript-syntax'

" colorscheme
Plug 'liuchengxu/space-vim-dark'

" undo tree
Plug 'mbbill/undotree'

"NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" ===
" === colorscheme
" ===
colorscheme space-vim-dark
" set termguicolors
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Comment cterm=italic
let g:space_vim_dark_background = 234

" ===
" === airline
" ===
let g:airline_theme = "violet"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
		\ 'mkit': {},
		\ 'katex': {},
		\ 'uml': {},
		\ 'maid': {},
		\ 'disable_sync_scroll': 0,
		\ 'sync_scroll_type': 'middle',
		\ 'hide_yaml_meta': 1
		\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === Bullets.vim
" ===
let g:bullets_enabled_file_types = [
		\ 'markdown',
		\ 'text',
		\ 'gitcommit',
		\ 'scratch'
		\]

" ===
" === coc
" ===
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_global_extensions = ['coc-python', 'coc-java', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-snippets', 'coc-translator']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" popup
nmap ts <Plug>(coc-translator-p)
vmap ts <Plug>(coc-translator-pv)
" echo
nmap te <Plug>(coc-translator-e)
vmap te <Plug>(coc-translator-ev)
" replace
nmap tr <Plug>(coc-translator-r)
vmap tr <Plug>(coc-translator-rv)
" history
map th :CocList translation<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>p :CocList -A --normal yank<CR>

" ===
" === coc-snippets && UltiSnips
" ===
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
let g:UltiSnipsExpandTrigger="<c-e>"
" let g:UltiSnipsJumpForwardTrigger="<c-m>"
" let g:UltiSnipsJumpBackwardTrigger="<c-n>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'UltiSnips']

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1

" ===
" === cpp
" ===
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" ===
" === NERDTree
" ===
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
		\ "Modified": "✹",
		\ "Staged": "✚",
		\ "Untracked" : "✭",
		\ "Renamed" : "➜",
		\ "Unmerged": "═",
		\ "Deleted" : "✖",
		\ "Dirty" : "✗",
		\ "Clean" : "✔︎",
		\ "Unknown" : "?"
		\}

" ===
" === tabular
" ===
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>

" ===
" === tagbar
" ===
let g:tagbar_width = 30
nnoremap <silent> <leader>m :TagbarToggle<cr>
inoremap <silent> <leader>m <esc> :TagbarToggle<cr>

" ===
" === buffers
" ===
nnoremap <c-m> :bprevious<cr>
nnoremap <c-n> :bNext<cr>

" ===
" === vim-edit
" ===
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>

" ===
" === split
" ===
map su :set splitright<CR>:vsp<CR>
map si :set splitbelow<CR>:sp<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

" ===
" === Run code
" ===
map <F5> :call Run()<CR>
function! Run()
	exec "w"
	set splitbelow
	if &filetype == 'python'
		" :!python3 %
		:sp
		:terminal python3 %
	elseif &filetype == 'html'
		silent! exec "!chromium % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'cpp'
		exec "!g++ % -Wall -o ./bin/%<"
		:sp
		:terminal ./bin/%<
	elseif &filetype == 'c'
		exec "!gcc % -Wall -o ./bin/%<"
		:sp
		:terminal ./bin/%<
	elseif &filetype == 'go'
		:sp
		:terminal go run %
	elseif &filetype == 'java'
		exec "!find . -name '*.java' > temp"
		exec "!javac -d bin/ @temp"
		exec "!rm temp"
		:sp
		:terminal cd ./bin && java Main.Main
	elseif &filetype == 'sh'
		:sp
		:terminal bash %
	endif
endfunction

" ===
" === terminal
" ===
map <F4> :set splitright<CR>:vsp<CR>:terminal<CR>i

" ===
" === tab
" ===
" map eu :tabe<CR>
" map <C-m> :-tabnext<CR>
" map <C-n> :+tabnext<CR>

" ===
" === spell check and change
" ===
map <leader>sp :set spell!<CR>
noremap <C-x> ea<C-x>s
inoremap <C-x> <C-x>s

" ===
" === find next
" ===
map <space><space> <ESC>/<++><CR>:nohlsearch<CR>c4l

" === 
" === vim-multiple-cursors
" === 
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_start_word_key = '<C-t>'

" === 
" === prepare code
" === 
let g:prepare_code_plugin_path = expand($HOME . "/.config/nvim/plugged/prepare-code")

" ===
" === vim-bookmarks
" ===
let g:bookmark_no_default_key_mappings = 1
nmap ma <Plug>BookmarkToggle
nmap mn <Plug>BookmarkNext
nmap mp <Plug>BookmarkPrev
nmap md <Plug>BookmarkClearAll
nmap <Leader>g <Plug>BookmarkMoveToLine
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_manage_per_buffer = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_center = 1
let g:bookmark_auto_close = 1
let g:bookmark_location_list = 1

" ===
" === undo tree
" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has("persistent_undo")
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif

" === 
" === python path
" === 
let g:python_host_prog="/usr/bin/python"
let g:python3_host_prog="/usr/bin/python3"
